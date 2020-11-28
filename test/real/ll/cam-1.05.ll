; ModuleID = '/tmp/tmp.ll'
source_filename = "c/cam-1.05.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._win_st = type { i16, i16, i16, i16, i16, i16, i16, i64, i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.ldat*, i16, i16, i32, i32, %struct._win_st*, %struct.pdat, i16 }
%struct.ldat = type opaque
%struct.pdat = type { i16, i16, i16, i16, i16, i16 }
%struct.__jmp_buf_tag = type { [6 x i32], i32, %struct.__anonstruct___sigset_t_7 }
%struct.__anonstruct___sigset_t_7 = type { [16 x i64] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.devices = type { i32, i32, i32, i32, i32 }

@stdscr = external global %struct._win_st*, align 8
@dev_count = global i32 0, align 4, !dbg !0
@env = common global [1 x %struct.__jmp_buf_tag] zeroinitializer, align 16, !dbg !115
@COLS = external global i32, align 4
@.str = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"05\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"%*cCAM %s.%s for Linux%*c\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c" Cpu's Audio Mixer %s.%s%*cauthor : Jan 'TWP' VANDENBERGHE (c)1994-1996 \00", align 1
@LINES = external global i32, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"Press 'h' for help\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\E1\00", align 1
@devname = global [25 x i8*] [i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.66, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.69, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.70, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.71, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.74, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.77, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.78, i32 0, i32 0)], align 16, !dbg !100
@.str.6 = private unnamed_addr constant [43 x i8] c"\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\CD\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"\F9 \F9 \F9 \F9 \F9 \F9 \F9 \F9\00", align 1
@agc = global i32 0, align 4, !dbg !110
@.str.8 = private unnamed_addr constant [4 x i8] c"AGC\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@a3dse = global i32 2, align 4, !dbg !108
@.str.10 = private unnamed_addr constant [3 x i8] c"3D\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@stereodevs = common global i32 0, align 4, !dbg !112
@.str.12 = private unnamed_addr constant [5 x i8] c"Left\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"Right\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"Mono\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [40 x i8] c"The screensize has to be minimum 80x25\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"The screen width has to be maximum 171\0A\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"                    \00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c" Left/Right : Lower/Higher \00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c" Up/Down    : Previous/Next \00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c" l : Lock/Unlock \00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c" r : Record/Play \00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c" s : Save settings \00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c" g : Load settings \00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c" 3 : Turn 3DSE device on/off \00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c" a : Turn microphone AGC on/off \00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" h : help \00", align 1
@.str.27 = private unnamed_addr constant [15 x i8] c" ESC/q : exit \00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c" Press key to leave help screen \00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"\0AUsage: cam [OPTIONS]\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"OPTIONS\0A\00", align 1
@.str.31 = private unnamed_addr constant [61 x i8] c"-v,  --volume  x,y : Set 'volume' to x (left) and y (right)\0A\00", align 1
@.str.32 = private unnamed_addr constant [59 x i8] c"-b,  --bass    x,y : Set 'bass' to x (left) and y (right)\0A\00", align 1
@.str.33 = private unnamed_addr constant [61 x i8] c"-t,  --treble  x,y : Set 'treble' to x (left) and y (right)\0A\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"-s,  --synth   x,y : Set 'synth' to x (left) and y (right)\0A\00", align 1
@.str.35 = private unnamed_addr constant [58 x i8] c"-p,  --pcm     x,y : Set 'pcm' to x (left) and y (right)\0A\00", align 1
@.str.36 = private unnamed_addr constant [62 x i8] c"-S,  --speaker x,y : Set 'speaker' to x (left) and y (right)\0A\00", align 1
@.str.37 = private unnamed_addr constant [62 x i8] c"-l,  --line    x,y : Set 'line in' to x (left) and y (right)\0A\00", align 1
@.str.38 = private unnamed_addr constant [65 x i8] c"-m,  --mic     x,y : Set 'microphone' to x (left) and y (right)\0A\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"-c,  --cd      x,y : Set 'cd in' to x (left) and y (right)\0A\00", align 1
@.str.40 = private unnamed_addr constant [60 x i8] c"-I,  --imix    x,y : Set 'mixer' to x (left) and y (right)\0A\00", align 1
@.str.41 = private unnamed_addr constant [61 x i8] c"-a,  --altpcm  x,y : Set 'altpcm' to x (left) and y (right)\0A\00", align 1
@.str.42 = private unnamed_addr constant [67 x i8] c"-r,  --reclev  x,y : Set 'record level' to x (left) and y (right)\0A\00", align 1
@.str.43 = private unnamed_addr constant [65 x i8] c"-i,  --igain   x,y : Set 'input gain' to x (left) and y (right)\0A\00", align 1
@.str.44 = private unnamed_addr constant [66 x i8] c"-o,  --ogain   x,y : Set 'output gain' to x (left) and y (right)\0A\00", align 1
@.str.45 = private unnamed_addr constant [69 x i8] c"-l1, --line1   x,y : Set 'input source 1' to x (left) and y (right)\0A\00", align 1
@.str.46 = private unnamed_addr constant [69 x i8] c"-l2, --line2   x,y : Set 'input source 2' to x (left) and y (right)\0A\00", align 1
@.str.47 = private unnamed_addr constant [70 x i8] c"-l3, --line3   x,y : Set 'input source 3' to x (left) and y (right)\0A\0A\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"-get  : restore the saved values\0A\00", align 1
@.str.49 = private unnamed_addr constant [33 x i8] c"-save : save the current values\0A\00", align 1
@.str.50 = private unnamed_addr constant [68 x i8] c"-getfile filename  : restore the saved values from file 'filename'\0A\00", align 1
@.str.51 = private unnamed_addr constant [67 x i8] c"-savefile filename : save the current values from file 'filename'\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"-h, -?, --help : display's this help\0A\00", align 1
@.str.53 = private unnamed_addr constant [43 x i8] c"\0ANOTE : x and y are in range from 0 to 20\0A\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"Vol  \00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"Bass \00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"Trebl\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"Synth\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"Pcm  \00", align 1
@.str.59 = private unnamed_addr constant [6 x i8] c"Spkr \00", align 1
@.str.60 = private unnamed_addr constant [6 x i8] c"Line \00", align 1
@.str.61 = private unnamed_addr constant [6 x i8] c"Mic  \00", align 1
@.str.62 = private unnamed_addr constant [6 x i8] c"CD   \00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"Mix  \00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"Pcm2 \00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"Rec  \00", align 1
@.str.66 = private unnamed_addr constant [6 x i8] c"IGain\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"OGain\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"Line1\00", align 1
@.str.69 = private unnamed_addr constant [6 x i8] c"Line2\00", align 1
@.str.70 = private unnamed_addr constant [6 x i8] c"Line3\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"Digital1\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"Digital2\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"Digital3\00", align 1
@.str.74 = private unnamed_addr constant [8 x i8] c"PhoneIn\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"PhoneOut\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Video\00", align 1
@.str.77 = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@.str.78 = private unnamed_addr constant [8 x i8] c"Monitor\00", align 1
@.str.79 = private unnamed_addr constant [11 x i8] c"/dev/mixer\00", align 1
@mixer_dev = global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.79, i32 0, i32 0), align 8, !dbg !106
@mixer_fd = common global i32 0, align 4, !dbg !122
@.str.80 = private unnamed_addr constant [24 x i8] c"Error closing device %s\00", align 1
@.str.81 = private unnamed_addr constant [34 x i8] c"MIXER_WRITE : Can't write to %s !\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.83 = private unnamed_addr constant [9 x i8] c"--volume\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"-b\00", align 1
@.str.85 = private unnamed_addr constant [7 x i8] c"--bass\00", align 1
@.str.86 = private unnamed_addr constant [3 x i8] c"-t\00", align 1
@.str.87 = private unnamed_addr constant [9 x i8] c"--treble\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"-s\00", align 1
@.str.89 = private unnamed_addr constant [8 x i8] c"--synth\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@.str.91 = private unnamed_addr constant [6 x i8] c"--pcm\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"-S\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"--speaker\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"-l\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"--line\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"-m\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"--mic\00", align 1
@.str.98 = private unnamed_addr constant [3 x i8] c"-c\00", align 1
@.str.99 = private unnamed_addr constant [5 x i8] c"--cd\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"-I\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"--imix\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"-a\00", align 1
@.str.103 = private unnamed_addr constant [9 x i8] c"--altpcm\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@.str.105 = private unnamed_addr constant [9 x i8] c"--reclev\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"-i\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"--igain\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"-o\00", align 1
@.str.109 = private unnamed_addr constant [8 x i8] c"--ogain\00", align 1
@.str.110 = private unnamed_addr constant [4 x i8] c"-l1\00", align 1
@.str.111 = private unnamed_addr constant [8 x i8] c"--line1\00", align 1
@.str.112 = private unnamed_addr constant [4 x i8] c"-l2\00", align 1
@.str.113 = private unnamed_addr constant [8 x i8] c"--line2\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"-l3\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"--line3\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"-3d\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"--3dse\00", align 1
@.str.118 = private unnamed_addr constant [5 x i8] c"-agc\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"--agc\00", align 1
@.str.120 = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@.str.121 = private unnamed_addr constant [3 x i8] c"-?\00", align 1
@.str.122 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.123 = private unnamed_addr constant [5 x i8] c"-get\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"-getfile\00", align 1
@.str.125 = private unnamed_addr constant [6 x i8] c"-save\00", align 1
@.str.126 = private unnamed_addr constant [10 x i8] c"-savefile\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"/.camrc\00", align 1
@.str.129 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.130 = private unnamed_addr constant [31 x i8] c"mising filename for option %s\0A\00", align 1
@.str.131 = private unnamed_addr constant [28 x i8] c"mising value for option %s\0A\00", align 1
@.str.132 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.133 = private unnamed_addr constant [26 x i8] c"\0ANo save file available\0A\0A\00", align 1
@.str.134 = private unnamed_addr constant [10 x i8] c"%i,%i,%i\0A\00", align 1
@.str.135 = private unnamed_addr constant [7 x i8] c"%i %i\0A\00", align 1
@devmask = common global i32 0, align 4, !dbg !126
@.str.136 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"Unable to save settings\00", align 1
@.str.138 = private unnamed_addr constant [8 x i8] c"0,%i,0\0A\00", align 1
@.str.139 = private unnamed_addr constant [31 x i8] c"MIXER_READ : Error reading %s\0A\00", align 1
@.str.140 = private unnamed_addr constant [6 x i8] c"%i,%i\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"\0ADevice not supported\0A\0A\00", align 1
@.str.142 = private unnamed_addr constant [23 x i8] c"\0AIllegal parameter %s\0A\00", align 1
@.str.143 = private unnamed_addr constant [36 x i8] c"\0A3D Stereo Enhancement unsupported\0A\00", align 1
@.str.144 = private unnamed_addr constant [20 x i8] c"\0AIllegal option %s\0A\00", align 1
@dev_vol = common global [25 x %struct.devices] zeroinitializer, align 16, !dbg !130
@recmask = common global i32 0, align 4, !dbg !124
@recsrc = common global i32 0, align 4, !dbg !128
@dev_ind = common global [25 x i32] zeroinitializer, align 16, !dbg !140
@.str.145 = private unnamed_addr constant [11 x i8] c"  LOCKED  \00", align 1
@.str.146 = private unnamed_addr constant [11 x i8] c" UNLOCKED \00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.147 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.148 = private unnamed_addr constant [45 x i8] c"SOUND_MIXER_WRITE_RECSRC : Error reading %s\0A\00", align 1
@.str.149 = private unnamed_addr constant [44 x i8] c"SOUND_MIXER_READ_RECSRC : Error reading %s\0A\00", align 1
@.str.150 = private unnamed_addr constant [15 x i8] c"Settings saved\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"No save file available\00", align 1
@.str.152 = private unnamed_addr constant [16 x i8] c"Settings loaded\00", align 1
@.str.153 = private unnamed_addr constant [79 x i8] c"Error opening %s. : you probably don't have an audiocard that supports a mixer\00", align 1
@.str.154 = private unnamed_addr constant [45 x i8] c"SOUND_MIXER_READ_DEVMASK : Error reading %s\0A\00", align 1
@.str.155 = private unnamed_addr constant [45 x i8] c"SOUND_MIXER_READ_RECMASK : Error reading %s\0A\00", align 1
@.str.156 = private unnamed_addr constant [48 x i8] c"SOUND_MIXER_READ_STEREODEVS : Error reading %s\0A\00", align 1
@.str.157 = private unnamed_addr constant [18 x i8] c"No device found.\0A\00", align 1
@trt = common global %struct._IO_FILE* null, align 8, !dbg !120

; Function Attrs: noinline nounwind ssp uwtable
define void @finish(i32 %sig) #0 !dbg !149 {
entry:
  call void @llvm.dbg.value(metadata i32 %sig, metadata !153, metadata !DIExpression()), !dbg !154
  call void @close_mixer(), !dbg !155
  %call = call i32 @echo(), !dbg !159
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !161
  %call1 = call i32 @wclear(%struct._win_st* %0), !dbg !163
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !164
  %call2 = call i32 @wrefresh(%struct._win_st* %1), !dbg !166
  %call3 = call i32 @endwin(), !dbg !167
  store i32 0, i32* @dev_count, align 4, !dbg !169
  %cmp = icmp eq i32 %sig, 0, !dbg !170
  br i1 %cmp, label %if.then, label %if.else, !dbg !172

if.then:                                          ; preds = %entry
  ret void, !dbg !173

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %sig, 28, !dbg !175
  br i1 %cmp4, label %if.then5, label %if.else6, !dbg !177

if.then5:                                         ; preds = %if.else
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env, i32 0, i32 0), i32 2) #7, !dbg !178
  unreachable, !dbg !178

if.else6:                                         ; preds = %if.else
  call void @exit(i32 1) #7, !dbg !182
  unreachable, !dbg !182
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define void @close_mixer() #0 !dbg !186 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !189, metadata !DIExpression()), !dbg !190
  %0 = load i32, i32* @mixer_fd, align 4, !dbg !191
  %call = call i32 @close(i32 %0), !dbg !195
  call void @llvm.dbg.value(metadata i32 %call, metadata !196, metadata !DIExpression()), !dbg !197
  %cmp = icmp ne i32 %call, 0, !dbg !198
  br i1 %cmp, label %if.then, label %if.end, !dbg !200

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !201
  %2 = load i8*, i8** @mixer_dev, align 8, !dbg !205
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.80, i32 0, i32 0), i8* %2), !dbg !206
  br label %if.end, !dbg !207

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !208
}

declare i32 @echo() #2

declare i32 @wclear(%struct._win_st*) #2

declare i32 @wrefresh(%struct._win_st*) #2

declare i32 @endwin() #2

; Function Attrs: noreturn nounwind
declare void @longjmp(%struct.__jmp_buf_tag*, i32) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @set_screen() #0 !dbg !209 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !210, metadata !DIExpression()), !dbg !211
  call void @llvm.dbg.declare(metadata !4, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata !4, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata !4, metadata !216, metadata !DIExpression()), !dbg !217
  call void @llvm.dbg.declare(metadata !4, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata !4, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata !4, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata !4, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata !4, metadata !226, metadata !DIExpression()), !dbg !227
  call void @llvm.dbg.declare(metadata !4, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata !4, metadata !230, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata !4, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata !4, metadata !234, metadata !DIExpression()), !dbg !235
  %0 = load i32, i32* @COLS, align 4, !dbg !236
  %conv = sext i32 %0 to i64, !dbg !239
  call void @llvm.dbg.value(metadata i64 %conv, metadata !240, metadata !DIExpression()), !dbg !241
  %mul = mul i64 1, %conv, !dbg !242
  %1 = alloca i8, i64 %mul, align 16, !dbg !244
  call void @llvm.dbg.value(metadata i8* %1, metadata !245, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !241
  %call = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #8, !dbg !247
  call void @llvm.dbg.value(metadata i32 %call, metadata !249, metadata !DIExpression()), !dbg !241
  %call1 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !250
  call void @llvm.dbg.value(metadata i32 %call1, metadata !252, metadata !DIExpression()), !dbg !241
  %2 = load i32, i32* @COLS, align 4, !dbg !253
  %sub = sub nsw i32 %2, 15, !dbg !254
  %sub2 = sub i32 %sub, %call, !dbg !255
  %sub3 = sub i32 %sub2, %call1, !dbg !256
  %div = udiv i32 %sub3, 2, !dbg !257
  call void @llvm.dbg.value(metadata i32 %div, metadata !258, metadata !DIExpression()), !dbg !241
  %call4 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #8, !dbg !259
  call void @llvm.dbg.value(metadata i32 %call4, metadata !261, metadata !DIExpression()), !dbg !241
  %call5 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !262
  call void @llvm.dbg.value(metadata i32 %call5, metadata !264, metadata !DIExpression()), !dbg !241
  %3 = load i32, i32* @COLS, align 4, !dbg !265
  %sub6 = sub nsw i32 %3, 15, !dbg !266
  %sub7 = sub i32 %sub6, %call4, !dbg !267
  %sub8 = sub i32 %sub7, %call5, !dbg !268
  %sub9 = sub i32 %sub8, %div, !dbg !269
  call void @llvm.dbg.value(metadata i32 %sub9, metadata !270, metadata !DIExpression()), !dbg !241
  %4 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !271
  %call10 = call i32 @wclear(%struct._win_st* %4), !dbg !273
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !274
  %call11 = call i32 @leaveok(%struct._win_st* %5, i1 zeroext true), !dbg !276
  %6 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !277
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %6, i32 0, i32 7, !dbg !278
  store i64 2097408, i64* %_attrs, align 8, !dbg !279
  %call12 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 %div, i32 32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %sub9, i32 32) #9, !dbg !280
  %7 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !282
  %call13 = call i32 @wmove(%struct._win_st* %7, i32 0, i32 0), !dbg !284
  call void @llvm.dbg.value(metadata i32 %call13, metadata !285, metadata !DIExpression()), !dbg !241
  %cmp = icmp eq i32 %call13, -1, !dbg !286
  br i1 %cmp, label %if.end, label %if.then, !dbg !288

if.then:                                          ; preds = %entry
  %8 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !289
  %call15 = call i32 @waddnstr(%struct._win_st* %8, i8* %1, i32 -1), !dbg !293
  br label %if.end, !dbg !294

if.end:                                           ; preds = %if.then, %entry
  %call16 = call i32 @strlen(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #8, !dbg !295
  call void @llvm.dbg.value(metadata i32 %call16, metadata !298, metadata !DIExpression()), !dbg !241
  %call17 = call i32 @strlen(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0)) #8, !dbg !299
  call void @llvm.dbg.value(metadata i32 %call17, metadata !301, metadata !DIExpression()), !dbg !241
  %9 = load i32, i32* @COLS, align 4, !dbg !302
  %sub18 = sub nsw i32 %9, 20, !dbg !304
  %sub19 = sub nsw i32 %sub18, 45, !dbg !305
  %sub20 = sub i32 %sub19, %call16, !dbg !306
  %sub21 = sub i32 %sub20, %call17, !dbg !307
  %call22 = call i32 (i8*, i8*, ...) @sprintf(i8* %1, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32 %sub21, i32 32) #9, !dbg !308
  %10 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !309
  %11 = load i32, i32* @LINES, align 4, !dbg !311
  %sub23 = sub nsw i32 %11, 1, !dbg !312
  %call24 = call i32 @wmove(%struct._win_st* %10, i32 %sub23, i32 0), !dbg !313
  call void @llvm.dbg.value(metadata i32 %call24, metadata !314, metadata !DIExpression()), !dbg !241
  %cmp25 = icmp eq i32 %call24, -1, !dbg !315
  br i1 %cmp25, label %if.end29, label %if.then27, !dbg !317

if.then27:                                        ; preds = %if.end
  %12 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !318
  %call28 = call i32 @waddnstr(%struct._win_st* %12, i8* %1, i32 -1), !dbg !322
  br label %if.end29, !dbg !323

if.end29:                                         ; preds = %if.then27, %if.end
  %13 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !324
  %_attrs30 = getelementptr inbounds %struct._win_st, %struct._win_st* %13, i32 0, i32 7, !dbg !326
  store i64 2097152, i64* %_attrs30, align 8, !dbg !327
  %14 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !328
  %15 = load i32, i32* @LINES, align 4, !dbg !330
  %sub31 = sub nsw i32 %15, 2, !dbg !331
  %call32 = call i32 @wmove(%struct._win_st* %14, i32 %sub31, i32 4), !dbg !332
  call void @llvm.dbg.value(metadata i32 %call32, metadata !333, metadata !DIExpression()), !dbg !241
  %cmp33 = icmp eq i32 %call32, -1, !dbg !334
  br i1 %cmp33, label %if.end37, label %if.then35, !dbg !336

if.then35:                                        ; preds = %if.end29
  %16 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !337
  %call36 = call i32 @waddnstr(%struct._win_st* %16, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i32 0, i32 0), i32 -1), !dbg !341
  br label %if.end37, !dbg !342

if.end37:                                         ; preds = %if.then35, %if.end29
  ret void, !dbg !343
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #4

declare i32 @leaveok(%struct._win_st*, i1 zeroext) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #5

declare i32 @wmove(%struct._win_st*, i32, i32) #2

declare i32 @waddnstr(%struct._win_st*, i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @draw_rec_lamp(i32 %Y, i32 %X, i32 %record) #0 !dbg !344 {
entry:
  call void @llvm.dbg.value(metadata i32 %Y, metadata !347, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i32 %X, metadata !349, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.value(metadata i32 %record, metadata !350, metadata !DIExpression()), !dbg !348
  call void @llvm.dbg.declare(metadata !4, metadata !351, metadata !DIExpression()), !dbg !352
  %cmp = icmp eq i32 %record, 1, !dbg !353
  br i1 %cmp, label %if.then, label %if.else, !dbg !356

if.then:                                          ; preds = %entry
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !357
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %0, i32 0, i32 7, !dbg !359
  store i64 6292736, i64* %_attrs, align 8, !dbg !360
  br label %if.end, !dbg !361

if.else:                                          ; preds = %entry
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !362
  %_attrs1 = getelementptr inbounds %struct._win_st, %struct._win_st* %1, i32 0, i32 7, !dbg !364
  store i64 6292224, i64* %_attrs1, align 8, !dbg !365
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !366
  %call = call i32 @wmove(%struct._win_st* %2, i32 %Y, i32 %X), !dbg !369
  call void @llvm.dbg.value(metadata i32 %call, metadata !370, metadata !DIExpression()), !dbg !348
  %cmp2 = icmp eq i32 %call, -1, !dbg !371
  br i1 %cmp2, label %if.end5, label %if.then3, !dbg !373

if.then3:                                         ; preds = %if.end
  %3 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !374
  %call4 = call i32 @waddnstr(%struct._win_st* %3, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0), i32 -1), !dbg !378
  br label %if.end5, !dbg !379

if.end5:                                          ; preds = %if.then3, %if.end
  ret void, !dbg !380
}

; Function Attrs: noinline nounwind ssp uwtable
define void @draw_slider(i32 %Y, i32 %X, i32 %device_num) #0 !dbg !381 {
entry:
  %wb = alloca [41 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %Y, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i32 %X, metadata !384, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i32 %device_num, metadata !385, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata [41 x i8]* %wb, metadata !386, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.declare(metadata !4, metadata !391, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.declare(metadata !4, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata !4, metadata !395, metadata !DIExpression()), !dbg !396
  call void @llvm.dbg.declare(metadata !4, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata !4, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata !4, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata !4, metadata !403, metadata !DIExpression()), !dbg !404
  call void @llvm.dbg.declare(metadata !4, metadata !405, metadata !DIExpression()), !dbg !406
  call void @llvm.dbg.declare(metadata !4, metadata !407, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.declare(metadata !4, metadata !409, metadata !DIExpression()), !dbg !410
  %idxprom = sext i32 %device_num to i64, !dbg !411
  %arrayidx = getelementptr inbounds [25 x i8*], [25 x i8*]* @devname, i64 0, i64 %idxprom, !dbg !411
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !411
  call void @llvm.dbg.value(metadata i8* %0, metadata !413, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), metadata !414, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), metadata !415, metadata !DIExpression()), !dbg !383
  %1 = load i32, i32* @COLS, align 4, !dbg !416
  %div = sdiv i32 %1, 4, !dbg !417
  %add = add nsw i32 %div, 1, !dbg !418
  call void @llvm.dbg.value(metadata i32 %add, metadata !419, metadata !DIExpression()), !dbg !383
  %div1 = sdiv i32 %add, 3, !dbg !420
  %add2 = add nsw i32 %div1, 1, !dbg !421
  call void @llvm.dbg.value(metadata i32 %add2, metadata !422, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata i32 %add2, metadata !423, metadata !DIExpression()), !dbg !383
  %cmp = icmp eq i32 %device_num, 7, !dbg !424
  br i1 %cmp, label %if.then, label %if.end17, !dbg !426

if.then:                                          ; preds = %entry
  %2 = load i32, i32* @agc, align 4, !dbg !427
  %cmp3 = icmp eq i32 %2, 1, !dbg !430
  br i1 %cmp3, label %if.then4, label %if.else, !dbg !431

if.then4:                                         ; preds = %if.then
  %3 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !432
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 7, !dbg !435
  store i64 768, i64* %_attrs, align 8, !dbg !436
  %4 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !437
  %add5 = add nsw i32 %Y, 2, !dbg !439
  %call = call i32 @wmove(%struct._win_st* %4, i32 %add5, i32 %X), !dbg !440
  call void @llvm.dbg.value(metadata i32 %call, metadata !441, metadata !DIExpression()), !dbg !383
  %cmp6 = icmp eq i32 %call, -1, !dbg !442
  br i1 %cmp6, label %if.end, label %if.then7, !dbg !444

if.then7:                                         ; preds = %if.then4
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !445
  %call8 = call i32 @waddnstr(%struct._win_st* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 3), !dbg !449
  br label %if.end, !dbg !450

if.end:                                           ; preds = %if.then7, %if.then4
  br label %if.end16, !dbg !451

if.else:                                          ; preds = %if.then
  %6 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !452
  %_attrs9 = getelementptr inbounds %struct._win_st, %struct._win_st* %6, i32 0, i32 7, !dbg !455
  store i64 512, i64* %_attrs9, align 8, !dbg !456
  %7 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !457
  %add10 = add nsw i32 %Y, 2, !dbg !459
  %call11 = call i32 @wmove(%struct._win_st* %7, i32 %add10, i32 %X), !dbg !460
  call void @llvm.dbg.value(metadata i32 %call11, metadata !461, metadata !DIExpression()), !dbg !383
  %cmp12 = icmp eq i32 %call11, -1, !dbg !462
  br i1 %cmp12, label %if.end15, label %if.then13, !dbg !464

if.then13:                                        ; preds = %if.else
  %8 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !465
  %call14 = call i32 @waddnstr(%struct._win_st* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3), !dbg !469
  br label %if.end15, !dbg !470

if.end15:                                         ; preds = %if.then13, %if.else
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  br label %if.end17, !dbg !471

if.end17:                                         ; preds = %if.end16, %entry
  %cmp18 = icmp eq i32 %device_num, 0, !dbg !472
  br i1 %cmp18, label %if.then19, label %if.end38, !dbg !474

if.then19:                                        ; preds = %if.end17
  %9 = load i32, i32* @a3dse, align 4, !dbg !475
  %cmp20 = icmp eq i32 %9, 1, !dbg !478
  br i1 %cmp20, label %if.then21, label %if.else29, !dbg !479

if.then21:                                        ; preds = %if.then19
  %10 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !480
  %_attrs22 = getelementptr inbounds %struct._win_st, %struct._win_st* %10, i32 0, i32 7, !dbg !483
  store i64 768, i64* %_attrs22, align 8, !dbg !484
  %11 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !485
  %add23 = add nsw i32 %Y, 2, !dbg !487
  %call24 = call i32 @wmove(%struct._win_st* %11, i32 %add23, i32 %X), !dbg !488
  call void @llvm.dbg.value(metadata i32 %call24, metadata !489, metadata !DIExpression()), !dbg !383
  %cmp25 = icmp eq i32 %call24, -1, !dbg !490
  br i1 %cmp25, label %if.end28, label %if.then26, !dbg !492

if.then26:                                        ; preds = %if.then21
  %12 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !493
  %call27 = call i32 @waddnstr(%struct._win_st* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 2), !dbg !497
  br label %if.end28, !dbg !498

if.end28:                                         ; preds = %if.then26, %if.then21
  br label %if.end37, !dbg !499

if.else29:                                        ; preds = %if.then19
  %13 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !500
  %_attrs30 = getelementptr inbounds %struct._win_st, %struct._win_st* %13, i32 0, i32 7, !dbg !503
  store i64 512, i64* %_attrs30, align 8, !dbg !504
  %14 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !505
  %add31 = add nsw i32 %Y, 2, !dbg !507
  %call32 = call i32 @wmove(%struct._win_st* %14, i32 %add31, i32 %X), !dbg !508
  call void @llvm.dbg.value(metadata i32 %call32, metadata !509, metadata !DIExpression()), !dbg !383
  %cmp33 = icmp eq i32 %call32, -1, !dbg !510
  br i1 %cmp33, label %if.end36, label %if.then34, !dbg !512

if.then34:                                        ; preds = %if.else29
  %15 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !513
  %call35 = call i32 @waddnstr(%struct._win_st* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 2), !dbg !517
  br label %if.end36, !dbg !518

if.end36:                                         ; preds = %if.then34, %if.else29
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end28
  br label %if.end38, !dbg !519

if.end38:                                         ; preds = %if.end37, %if.end17
  %16 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !520
  %_attrs39 = getelementptr inbounds %struct._win_st, %struct._win_st* %16, i32 0, i32 7, !dbg !522
  store i64 512, i64* %_attrs39, align 8, !dbg !523
  %17 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !524
  %add40 = add nsw i32 %Y, 1, !dbg !526
  %call41 = call i32 @wmove(%struct._win_st* %17, i32 %add40, i32 %X), !dbg !527
  call void @llvm.dbg.value(metadata i32 %call41, metadata !528, metadata !DIExpression()), !dbg !383
  %cmp42 = icmp eq i32 %call41, -1, !dbg !529
  br i1 %cmp42, label %if.end45, label %if.then43, !dbg !531

if.then43:                                        ; preds = %if.end38
  %18 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !532
  %call44 = call i32 @waddnstr(%struct._win_st* %18, i8* %0, i32 7), !dbg !536
  br label %if.end45, !dbg !537

if.end45:                                         ; preds = %if.then43, %if.end38
  %shl = shl i32 1, %device_num, !dbg !538
  %19 = load i32, i32* @stereodevs, align 4, !dbg !540
  %and = and i32 %shl, %19, !dbg !541
  %tobool = icmp ne i32 %and, 0, !dbg !541
  br i1 %tobool, label %if.then46, label %if.else179, !dbg !542

if.then46:                                        ; preds = %if.end45
  %20 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !543
  %add47 = add nsw i32 %Y, 1, !dbg !547
  %add48 = add nsw i32 %X, 8, !dbg !548
  %call49 = call i32 @wmove(%struct._win_st* %20, i32 %add47, i32 %add48), !dbg !549
  call void @llvm.dbg.value(metadata i32 %call49, metadata !550, metadata !DIExpression()), !dbg !383
  %cmp50 = icmp eq i32 %call49, -1, !dbg !551
  br i1 %cmp50, label %if.end53, label %if.then51, !dbg !553

if.then51:                                        ; preds = %if.then46
  %21 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !554
  %call52 = call i32 @waddnstr(%struct._win_st* %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i32 0, i32 0), i32 -1), !dbg !558
  br label %if.end53, !dbg !559

if.end53:                                         ; preds = %if.then51, %if.then46
  %22 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !560
  %_attrs54 = getelementptr inbounds %struct._win_st, %struct._win_st* %22, i32 0, i32 7, !dbg !562
  store i64 512, i64* %_attrs54, align 8, !dbg !563
  %23 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !564
  %add55 = add nsw i32 %Y, 2, !dbg !566
  %add56 = add nsw i32 %X, 8, !dbg !567
  %call57 = call i32 @wmove(%struct._win_st* %23, i32 %add55, i32 %add56), !dbg !568
  call void @llvm.dbg.value(metadata i32 %call57, metadata !569, metadata !DIExpression()), !dbg !383
  %cmp58 = icmp eq i32 %call57, -1, !dbg !570
  br i1 %cmp58, label %if.end61, label %if.then59, !dbg !572

if.then59:                                        ; preds = %if.end53
  %24 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !573
  %call60 = call i32 @waddnstr(%struct._win_st* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i32 0, i32 0), i32 -1), !dbg !577
  br label %if.end61, !dbg !578

if.end61:                                         ; preds = %if.then59, %if.end53
  %25 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !579
  %_attrs62 = getelementptr inbounds %struct._win_st, %struct._win_st* %25, i32 0, i32 7, !dbg !581
  store i64 4194816, i64* %_attrs62, align 8, !dbg !582
  %arraydecay = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !583
  %call63 = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i32 %add) #9, !dbg !585
  %idxprom64 = sext i32 %add to i64, !dbg !586
  %arrayidx65 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom64, !dbg !586
  store i8 0, i8* %arrayidx65, align 1, !dbg !587
  %26 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !588
  %add66 = add nsw i32 %Y, 1, !dbg !590
  %add67 = add nsw i32 %X, 14, !dbg !591
  %call68 = call i32 @wmove(%struct._win_st* %26, i32 %add66, i32 %add67), !dbg !592
  call void @llvm.dbg.value(metadata i32 %call68, metadata !593, metadata !DIExpression()), !dbg !383
  %cmp69 = icmp eq i32 %call68, -1, !dbg !594
  br i1 %cmp69, label %if.end73, label %if.then70, !dbg !596

if.then70:                                        ; preds = %if.end61
  %27 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !597
  %arraydecay71 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !601
  %call72 = call i32 @waddnstr(%struct._win_st* %27, i8* %arraydecay71, i32 -1), !dbg !602
  br label %if.end73, !dbg !603

if.end73:                                         ; preds = %if.then70, %if.end61
  %28 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !604
  %add74 = add nsw i32 %Y, 2, !dbg !607
  %add75 = add nsw i32 %X, 14, !dbg !608
  %call76 = call i32 @wmove(%struct._win_st* %28, i32 %add74, i32 %add75), !dbg !609
  call void @llvm.dbg.value(metadata i32 %call76, metadata !610, metadata !DIExpression()), !dbg !383
  %cmp77 = icmp eq i32 %call76, -1, !dbg !611
  br i1 %cmp77, label %if.end81, label %if.then78, !dbg !613

if.then78:                                        ; preds = %if.end73
  %29 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !614
  %arraydecay79 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !618
  %call80 = call i32 @waddnstr(%struct._win_st* %29, i8* %arraydecay79, i32 -1), !dbg !619
  br label %if.end81, !dbg !620

if.end81:                                         ; preds = %if.then78, %if.end73
  %30 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !621
  %_attrs82 = getelementptr inbounds %struct._win_st, %struct._win_st* %30, i32 0, i32 7, !dbg !623
  store i64 4195072, i64* %_attrs82, align 8, !dbg !624
  %arraydecay83 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !625
  %call84 = call i8* @strncpy(i8* %arraydecay83, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %add2) #9, !dbg !627
  %idxprom85 = sext i32 %add2 to i64, !dbg !628
  %arrayidx86 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom85, !dbg !628
  store i8 0, i8* %arrayidx86, align 1, !dbg !629
  %sub = sub nsw i32 %add2, 1, !dbg !630
  %idxprom87 = sext i32 %sub to i64, !dbg !632
  %arrayidx88 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom87, !dbg !632
  %31 = load i8, i8* %arrayidx88, align 1, !dbg !632
  %conv = sext i8 %31 to i32, !dbg !633
  %cmp89 = icmp eq i32 %conv, -7, !dbg !634
  br i1 %cmp89, label %if.then91, label %if.end96, !dbg !635

if.then91:                                        ; preds = %if.end81
  %idxprom92 = sext i32 %add2 to i64, !dbg !636
  %arrayidx93 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom92, !dbg !636
  store i8 32, i8* %arrayidx93, align 1, !dbg !638
  %inc = add nsw i32 %add2, 1, !dbg !639
  call void @llvm.dbg.value(metadata i32 %inc, metadata !423, metadata !DIExpression()), !dbg !383
  %idxprom94 = sext i32 %inc to i64, !dbg !640
  %arrayidx95 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom94, !dbg !640
  store i8 0, i8* %arrayidx95, align 1, !dbg !641
  br label %if.end96, !dbg !642

if.end96:                                         ; preds = %if.then91, %if.end81
  %v1len.0 = phi i32 [ %inc, %if.then91 ], [ %add2, %if.end81 ], !dbg !643
  call void @llvm.dbg.value(metadata i32 %v1len.0, metadata !423, metadata !DIExpression()), !dbg !383
  %32 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !644
  %add97 = add nsw i32 %X, 14, !dbg !647
  %call98 = call i32 @wmove(%struct._win_st* %32, i32 %Y, i32 %add97), !dbg !648
  call void @llvm.dbg.value(metadata i32 %call98, metadata !649, metadata !DIExpression()), !dbg !383
  %cmp99 = icmp eq i32 %call98, -1, !dbg !650
  br i1 %cmp99, label %if.end104, label %if.then101, !dbg !652

if.then101:                                       ; preds = %if.end96
  %33 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !653
  %arraydecay102 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !657
  %call103 = call i32 @waddnstr(%struct._win_st* %33, i8* %arraydecay102, i32 -1), !dbg !658
  br label %if.end104, !dbg !659

if.end104:                                        ; preds = %if.then101, %if.end96
  %34 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !660
  %add105 = add nsw i32 %Y, 3, !dbg !663
  %add106 = add nsw i32 %X, 14, !dbg !664
  %call107 = call i32 @wmove(%struct._win_st* %34, i32 %add105, i32 %add106), !dbg !665
  call void @llvm.dbg.value(metadata i32 %call107, metadata !666, metadata !DIExpression()), !dbg !383
  %cmp108 = icmp eq i32 %call107, -1, !dbg !667
  br i1 %cmp108, label %if.end113, label %if.then110, !dbg !669

if.then110:                                       ; preds = %if.end104
  %35 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !670
  %arraydecay111 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !674
  %call112 = call i32 @waddnstr(%struct._win_st* %35, i8* %arraydecay111, i32 -1), !dbg !675
  br label %if.end113, !dbg !676

if.end113:                                        ; preds = %if.then110, %if.end104
  %36 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !677
  %_attrs114 = getelementptr inbounds %struct._win_st, %struct._win_st* %36, i32 0, i32 7, !dbg !679
  store i64 4195328, i64* %_attrs114, align 8, !dbg !680
  %arraydecay115 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !681
  %call116 = call i8* @strncpy(i8* %arraydecay115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %add2) #9, !dbg !683
  %idxprom117 = sext i32 %add2 to i64, !dbg !684
  %arrayidx118 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom117, !dbg !684
  store i8 0, i8* %arrayidx118, align 1, !dbg !685
  %sub119 = sub nsw i32 %add2, 1, !dbg !686
  %idxprom120 = sext i32 %sub119 to i64, !dbg !688
  %arrayidx121 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom120, !dbg !688
  %37 = load i8, i8* %arrayidx121, align 1, !dbg !688
  %conv122 = sext i8 %37 to i32, !dbg !689
  %cmp123 = icmp eq i32 %conv122, -7, !dbg !690
  br i1 %cmp123, label %if.then125, label %if.end131, !dbg !691

if.then125:                                       ; preds = %if.end113
  %idxprom126 = sext i32 %add2 to i64, !dbg !692
  %arrayidx127 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom126, !dbg !692
  store i8 32, i8* %arrayidx127, align 1, !dbg !694
  %inc128 = add nsw i32 %add2, 1, !dbg !695
  call void @llvm.dbg.value(metadata i32 %inc128, metadata !422, metadata !DIExpression()), !dbg !383
  %idxprom129 = sext i32 %inc128 to i64, !dbg !696
  %arrayidx130 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom129, !dbg !696
  store i8 0, i8* %arrayidx130, align 1, !dbg !697
  br label %if.end131, !dbg !698

if.end131:                                        ; preds = %if.then125, %if.end113
  %v2len.0 = phi i32 [ %inc128, %if.then125 ], [ %add2, %if.end113 ], !dbg !643
  call void @llvm.dbg.value(metadata i32 %v2len.0, metadata !422, metadata !DIExpression()), !dbg !383
  %38 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !699
  %add132 = add nsw i32 14, %v1len.0, !dbg !702
  %add133 = add nsw i32 %X, %add132, !dbg !703
  %call134 = call i32 @wmove(%struct._win_st* %38, i32 %Y, i32 %add133), !dbg !704
  call void @llvm.dbg.value(metadata i32 %call134, metadata !705, metadata !DIExpression()), !dbg !383
  %cmp135 = icmp eq i32 %call134, -1, !dbg !706
  br i1 %cmp135, label %if.end140, label %if.then137, !dbg !708

if.then137:                                       ; preds = %if.end131
  %39 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !709
  %arraydecay138 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !713
  %call139 = call i32 @waddnstr(%struct._win_st* %39, i8* %arraydecay138, i32 -1), !dbg !714
  br label %if.end140, !dbg !715

if.end140:                                        ; preds = %if.then137, %if.end131
  %40 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !716
  %add141 = add nsw i32 %Y, 3, !dbg !719
  %add142 = add nsw i32 14, %v1len.0, !dbg !720
  %add143 = add nsw i32 %X, %add142, !dbg !721
  %call144 = call i32 @wmove(%struct._win_st* %40, i32 %add141, i32 %add143), !dbg !722
  call void @llvm.dbg.value(metadata i32 %call144, metadata !723, metadata !DIExpression()), !dbg !383
  %cmp145 = icmp eq i32 %call144, -1, !dbg !724
  br i1 %cmp145, label %if.end150, label %if.then147, !dbg !726

if.then147:                                       ; preds = %if.end140
  %41 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !727
  %arraydecay148 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !731
  %call149 = call i32 @waddnstr(%struct._win_st* %41, i8* %arraydecay148, i32 -1), !dbg !732
  br label %if.end150, !dbg !733

if.end150:                                        ; preds = %if.then147, %if.end140
  %42 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !734
  %_attrs151 = getelementptr inbounds %struct._win_st, %struct._win_st* %42, i32 0, i32 7, !dbg !736
  store i64 4195584, i64* %_attrs151, align 8, !dbg !737
  %add152 = add nsw i32 %v2len.0, %v1len.0, !dbg !738
  %sub153 = sub nsw i32 %add, %add152, !dbg !739
  call void @llvm.dbg.value(metadata i32 %sub153, metadata !740, metadata !DIExpression()), !dbg !383
  %arraydecay154 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !741
  %call155 = call i8* @strncpy(i8* %arraydecay154, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %sub153) #9, !dbg !743
  %idxprom156 = sext i32 %sub153 to i64, !dbg !744
  %arrayidx157 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom156, !dbg !744
  store i8 0, i8* %arrayidx157, align 1, !dbg !745
  %43 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !746
  %add158 = add nsw i32 14, %v1len.0, !dbg !748
  %add159 = add nsw i32 %add158, %v2len.0, !dbg !749
  %add160 = add nsw i32 %X, %add159, !dbg !750
  %call161 = call i32 @wmove(%struct._win_st* %43, i32 %Y, i32 %add160), !dbg !751
  call void @llvm.dbg.value(metadata i32 %call161, metadata !752, metadata !DIExpression()), !dbg !383
  %cmp162 = icmp eq i32 %call161, -1, !dbg !753
  br i1 %cmp162, label %if.end167, label %if.then164, !dbg !755

if.then164:                                       ; preds = %if.end150
  %44 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !756
  %arraydecay165 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !760
  %call166 = call i32 @waddnstr(%struct._win_st* %44, i8* %arraydecay165, i32 -1), !dbg !761
  br label %if.end167, !dbg !762

if.end167:                                        ; preds = %if.then164, %if.end150
  %45 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !763
  %add168 = add nsw i32 %Y, 3, !dbg !766
  %add169 = add nsw i32 14, %v1len.0, !dbg !767
  %add170 = add nsw i32 %add169, %v2len.0, !dbg !768
  %add171 = add nsw i32 %X, %add170, !dbg !769
  %call172 = call i32 @wmove(%struct._win_st* %45, i32 %add168, i32 %add171), !dbg !770
  call void @llvm.dbg.value(metadata i32 %call172, metadata !771, metadata !DIExpression()), !dbg !383
  %cmp173 = icmp eq i32 %call172, -1, !dbg !772
  br i1 %cmp173, label %if.end178, label %if.then175, !dbg !774

if.then175:                                       ; preds = %if.end167
  %46 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !775
  %arraydecay176 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !779
  %call177 = call i32 @waddnstr(%struct._win_st* %46, i8* %arraydecay176, i32 -1), !dbg !780
  br label %if.end178, !dbg !781

if.end178:                                        ; preds = %if.then175, %if.end167
  br label %if.end302, !dbg !782

if.else179:                                       ; preds = %if.end45
  %47 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !783
  %add180 = add nsw i32 %Y, 1, !dbg !787
  %add181 = add nsw i32 %X, 8, !dbg !788
  %call182 = call i32 @wmove(%struct._win_st* %47, i32 %add180, i32 %add181), !dbg !789
  call void @llvm.dbg.value(metadata i32 %call182, metadata !790, metadata !DIExpression()), !dbg !383
  %cmp183 = icmp eq i32 %call182, -1, !dbg !791
  br i1 %cmp183, label %if.end187, label %if.then185, !dbg !793

if.then185:                                       ; preds = %if.else179
  %48 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !794
  %call186 = call i32 @waddnstr(%struct._win_st* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i32 0, i32 0), i32 -1), !dbg !798
  br label %if.end187, !dbg !799

if.end187:                                        ; preds = %if.then185, %if.else179
  %49 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !800
  %_attrs188 = getelementptr inbounds %struct._win_st, %struct._win_st* %49, i32 0, i32 7, !dbg !802
  store i64 4194816, i64* %_attrs188, align 8, !dbg !803
  %arraydecay189 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !804
  %call190 = call i8* @strncpy(i8* %arraydecay189, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i32 0, i32 0), i32 %add) #9, !dbg !806
  %idxprom191 = sext i32 %add to i64, !dbg !807
  %arrayidx192 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom191, !dbg !807
  store i8 0, i8* %arrayidx192, align 1, !dbg !808
  %50 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !809
  %add193 = add nsw i32 %Y, 1, !dbg !811
  %add194 = add nsw i32 %X, 14, !dbg !812
  %call195 = call i32 @wmove(%struct._win_st* %50, i32 %add193, i32 %add194), !dbg !813
  call void @llvm.dbg.value(metadata i32 %call195, metadata !814, metadata !DIExpression()), !dbg !383
  %cmp196 = icmp eq i32 %call195, -1, !dbg !815
  br i1 %cmp196, label %if.end201, label %if.then198, !dbg !817

if.then198:                                       ; preds = %if.end187
  %51 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !818
  %arraydecay199 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !822
  %call200 = call i32 @waddnstr(%struct._win_st* %51, i8* %arraydecay199, i32 -1), !dbg !823
  br label %if.end201, !dbg !824

if.end201:                                        ; preds = %if.then198, %if.end187
  %52 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !825
  %_attrs202 = getelementptr inbounds %struct._win_st, %struct._win_st* %52, i32 0, i32 7, !dbg !827
  store i64 4195072, i64* %_attrs202, align 8, !dbg !828
  %arraydecay203 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !829
  %call204 = call i8* @strncpy(i8* %arraydecay203, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %add2) #9, !dbg !831
  %idxprom205 = sext i32 %add2 to i64, !dbg !832
  %arrayidx206 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom205, !dbg !832
  store i8 0, i8* %arrayidx206, align 1, !dbg !833
  %sub207 = sub nsw i32 %add2, 1, !dbg !834
  %idxprom208 = sext i32 %sub207 to i64, !dbg !836
  %arrayidx209 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom208, !dbg !836
  %53 = load i8, i8* %arrayidx209, align 1, !dbg !836
  %conv210 = sext i8 %53 to i32, !dbg !837
  %cmp211 = icmp eq i32 %conv210, -7, !dbg !838
  br i1 %cmp211, label %if.then213, label %if.end219, !dbg !839

if.then213:                                       ; preds = %if.end201
  %idxprom214 = sext i32 %add2 to i64, !dbg !840
  %arrayidx215 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom214, !dbg !840
  store i8 32, i8* %arrayidx215, align 1, !dbg !842
  %inc216 = add nsw i32 %add2, 1, !dbg !843
  call void @llvm.dbg.value(metadata i32 %inc216, metadata !423, metadata !DIExpression()), !dbg !383
  %idxprom217 = sext i32 %inc216 to i64, !dbg !844
  %arrayidx218 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom217, !dbg !844
  store i8 0, i8* %arrayidx218, align 1, !dbg !845
  br label %if.end219, !dbg !846

if.end219:                                        ; preds = %if.then213, %if.end201
  %v1len.1 = phi i32 [ %inc216, %if.then213 ], [ %add2, %if.end201 ], !dbg !643
  call void @llvm.dbg.value(metadata i32 %v1len.1, metadata !423, metadata !DIExpression()), !dbg !383
  %54 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !847
  %add220 = add nsw i32 %X, 14, !dbg !850
  %call221 = call i32 @wmove(%struct._win_st* %54, i32 %Y, i32 %add220), !dbg !851
  call void @llvm.dbg.value(metadata i32 %call221, metadata !852, metadata !DIExpression()), !dbg !383
  %cmp222 = icmp eq i32 %call221, -1, !dbg !853
  br i1 %cmp222, label %if.end227, label %if.then224, !dbg !855

if.then224:                                       ; preds = %if.end219
  %55 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !856
  %arraydecay225 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !860
  %call226 = call i32 @waddnstr(%struct._win_st* %55, i8* %arraydecay225, i32 -1), !dbg !861
  br label %if.end227, !dbg !862

if.end227:                                        ; preds = %if.then224, %if.end219
  %56 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !863
  %add228 = add nsw i32 %Y, 2, !dbg !866
  %add229 = add nsw i32 %X, 14, !dbg !867
  %call230 = call i32 @wmove(%struct._win_st* %56, i32 %add228, i32 %add229), !dbg !868
  call void @llvm.dbg.value(metadata i32 %call230, metadata !869, metadata !DIExpression()), !dbg !383
  %cmp231 = icmp eq i32 %call230, -1, !dbg !870
  br i1 %cmp231, label %if.end236, label %if.then233, !dbg !872

if.then233:                                       ; preds = %if.end227
  %57 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !873
  %arraydecay234 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !877
  %call235 = call i32 @waddnstr(%struct._win_st* %57, i8* %arraydecay234, i32 -1), !dbg !878
  br label %if.end236, !dbg !879

if.end236:                                        ; preds = %if.then233, %if.end227
  %58 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !880
  %_attrs237 = getelementptr inbounds %struct._win_st, %struct._win_st* %58, i32 0, i32 7, !dbg !882
  store i64 4195328, i64* %_attrs237, align 8, !dbg !883
  %arraydecay238 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !884
  %call239 = call i8* @strncpy(i8* %arraydecay238, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %add2) #9, !dbg !886
  %idxprom240 = sext i32 %add2 to i64, !dbg !887
  %arrayidx241 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom240, !dbg !887
  store i8 0, i8* %arrayidx241, align 1, !dbg !888
  %sub242 = sub nsw i32 %add2, 1, !dbg !889
  %idxprom243 = sext i32 %sub242 to i64, !dbg !891
  %arrayidx244 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom243, !dbg !891
  %59 = load i8, i8* %arrayidx244, align 1, !dbg !891
  %conv245 = sext i8 %59 to i32, !dbg !892
  %cmp246 = icmp eq i32 %conv245, -7, !dbg !893
  br i1 %cmp246, label %if.then248, label %if.end254, !dbg !894

if.then248:                                       ; preds = %if.end236
  %idxprom249 = sext i32 %add2 to i64, !dbg !895
  %arrayidx250 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom249, !dbg !895
  store i8 32, i8* %arrayidx250, align 1, !dbg !897
  %inc251 = add nsw i32 %add2, 1, !dbg !898
  call void @llvm.dbg.value(metadata i32 %inc251, metadata !422, metadata !DIExpression()), !dbg !383
  %idxprom252 = sext i32 %inc251 to i64, !dbg !899
  %arrayidx253 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom252, !dbg !899
  store i8 0, i8* %arrayidx253, align 1, !dbg !900
  br label %if.end254, !dbg !901

if.end254:                                        ; preds = %if.then248, %if.end236
  %v2len.1 = phi i32 [ %inc251, %if.then248 ], [ %add2, %if.end236 ], !dbg !643
  call void @llvm.dbg.value(metadata i32 %v2len.1, metadata !422, metadata !DIExpression()), !dbg !383
  %60 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !902
  %add255 = add nsw i32 14, %v1len.1, !dbg !905
  %add256 = add nsw i32 %X, %add255, !dbg !906
  %call257 = call i32 @wmove(%struct._win_st* %60, i32 %Y, i32 %add256), !dbg !907
  call void @llvm.dbg.value(metadata i32 %call257, metadata !908, metadata !DIExpression()), !dbg !383
  %cmp258 = icmp eq i32 %call257, -1, !dbg !909
  br i1 %cmp258, label %if.end263, label %if.then260, !dbg !911

if.then260:                                       ; preds = %if.end254
  %61 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !912
  %arraydecay261 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !916
  %call262 = call i32 @waddnstr(%struct._win_st* %61, i8* %arraydecay261, i32 -1), !dbg !917
  br label %if.end263, !dbg !918

if.end263:                                        ; preds = %if.then260, %if.end254
  %62 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !919
  %add264 = add nsw i32 %Y, 2, !dbg !922
  %add265 = add nsw i32 14, %v1len.1, !dbg !923
  %add266 = add nsw i32 %X, %add265, !dbg !924
  %call267 = call i32 @wmove(%struct._win_st* %62, i32 %add264, i32 %add266), !dbg !925
  call void @llvm.dbg.value(metadata i32 %call267, metadata !926, metadata !DIExpression()), !dbg !383
  %cmp268 = icmp eq i32 %call267, -1, !dbg !927
  br i1 %cmp268, label %if.end273, label %if.then270, !dbg !929

if.then270:                                       ; preds = %if.end263
  %63 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !930
  %arraydecay271 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !934
  %call272 = call i32 @waddnstr(%struct._win_st* %63, i8* %arraydecay271, i32 -1), !dbg !935
  br label %if.end273, !dbg !936

if.end273:                                        ; preds = %if.then270, %if.end263
  %64 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !937
  %_attrs274 = getelementptr inbounds %struct._win_st, %struct._win_st* %64, i32 0, i32 7, !dbg !939
  store i64 4195584, i64* %_attrs274, align 8, !dbg !940
  %add275 = add nsw i32 %v2len.1, %v1len.1, !dbg !941
  %sub276 = sub nsw i32 %add, %add275, !dbg !942
  call void @llvm.dbg.value(metadata i32 %sub276, metadata !740, metadata !DIExpression()), !dbg !383
  %arraydecay277 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !943
  %call278 = call i8* @strncpy(i8* %arraydecay277, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i32 0, i32 0), i32 %sub276) #9, !dbg !945
  %idxprom279 = sext i32 %sub276 to i64, !dbg !946
  %arrayidx280 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i64 0, i64 %idxprom279, !dbg !946
  store i8 0, i8* %arrayidx280, align 1, !dbg !947
  %65 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !948
  %add281 = add nsw i32 14, %v1len.1, !dbg !950
  %add282 = add nsw i32 %add281, %v2len.1, !dbg !951
  %add283 = add nsw i32 %X, %add282, !dbg !952
  %call284 = call i32 @wmove(%struct._win_st* %65, i32 %Y, i32 %add283), !dbg !953
  call void @llvm.dbg.value(metadata i32 %call284, metadata !954, metadata !DIExpression()), !dbg !383
  %cmp285 = icmp eq i32 %call284, -1, !dbg !955
  br i1 %cmp285, label %if.end290, label %if.then287, !dbg !957

if.then287:                                       ; preds = %if.end273
  %66 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !958
  %arraydecay288 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !962
  %call289 = call i32 @waddnstr(%struct._win_st* %66, i8* %arraydecay288, i32 -1), !dbg !963
  br label %if.end290, !dbg !964

if.end290:                                        ; preds = %if.then287, %if.end273
  %67 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !965
  %add291 = add nsw i32 %Y, 2, !dbg !968
  %add292 = add nsw i32 14, %v1len.1, !dbg !969
  %add293 = add nsw i32 %add292, %v2len.1, !dbg !970
  %add294 = add nsw i32 %X, %add293, !dbg !971
  %call295 = call i32 @wmove(%struct._win_st* %67, i32 %add291, i32 %add294), !dbg !972
  call void @llvm.dbg.value(metadata i32 %call295, metadata !973, metadata !DIExpression()), !dbg !383
  %cmp296 = icmp eq i32 %call295, -1, !dbg !974
  br i1 %cmp296, label %if.end301, label %if.then298, !dbg !976

if.then298:                                       ; preds = %if.end290
  %68 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !977
  %arraydecay299 = getelementptr inbounds [41 x i8], [41 x i8]* %wb, i32 0, i32 0, !dbg !981
  %call300 = call i32 @waddnstr(%struct._win_st* %68, i8* %arraydecay299, i32 -1), !dbg !982
  br label %if.end301, !dbg !983

if.end301:                                        ; preds = %if.then298, %if.end290
  br label %if.end302

if.end302:                                        ; preds = %if.end301, %if.end178
  ret void, !dbg !984
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #5

; Function Attrs: noinline nounwind ssp uwtable
define void @draw_handle(i32 %Y, i32 %X, i32 %active, i32 %level) #0 !dbg !985 {
entry:
  call void @llvm.dbg.value(metadata i32 %Y, metadata !988, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %X, metadata !990, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %active, metadata !991, metadata !DIExpression()), !dbg !989
  call void @llvm.dbg.value(metadata i32 %level, metadata !992, metadata !DIExpression()), !dbg !989
  %cmp = icmp eq i32 %level, 1, !dbg !993
  br i1 %cmp, label %if.then, label %if.else, !dbg !996

if.then:                                          ; preds = %entry
  br label %_L, !dbg !997

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i32 %level, 2, !dbg !999
  br i1 %cmp1, label %if.then2, label %if.end6, !dbg !1001

if.then2:                                         ; preds = %if.else
  br label %_L, !dbg !1002

_L:                                               ; preds = %if.then2, %if.then
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1003
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %0, i32 0, i32 7, !dbg !1006
  store i64 4194304, i64* %_attrs, align 8, !dbg !1007
  call void @llvm.dbg.value(metadata i32 %X, metadata !1008, metadata !DIExpression()), !dbg !989
  %inc = add nsw i32 %X, 1, !dbg !1009
  call void @llvm.dbg.value(metadata i32 %inc, metadata !990, metadata !DIExpression()), !dbg !989
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1010
  %call = call i32 @wmove(%struct._win_st* %1, i32 %Y, i32 %X), !dbg !1012
  call void @llvm.dbg.value(metadata i32 %call, metadata !1013, metadata !DIExpression()), !dbg !989
  %cmp3 = icmp eq i32 %call, -1, !dbg !1014
  br i1 %cmp3, label %if.end, label %if.then4, !dbg !1016

if.then4:                                         ; preds = %_L
  %2 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1017
  %call5 = call i32 @waddch(%struct._win_st* %2, i64 205), !dbg !1021
  br label %if.end, !dbg !1022

if.end:                                           ; preds = %if.then4, %_L
  br label %if.end6, !dbg !1023

if.end6:                                          ; preds = %if.end, %if.else
  %X.addr.0 = phi i32 [ %inc, %if.end ], [ %X, %if.else ]
  call void @llvm.dbg.value(metadata i32 %X.addr.0, metadata !990, metadata !DIExpression()), !dbg !989
  br label %if.end7

if.end7:                                          ; preds = %if.end6
  %cmp8 = icmp ne i32 %level, 5, !dbg !1024
  br i1 %cmp8, label %if.then9, label %if.end22, !dbg !1026

if.then9:                                         ; preds = %if.end7
  %cmp10 = icmp eq i32 %active, 1, !dbg !1027
  br i1 %cmp10, label %if.then11, label %if.else13, !dbg !1030

if.then11:                                        ; preds = %if.then9
  %3 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1031
  %_attrs12 = getelementptr inbounds %struct._win_st, %struct._win_st* %3, i32 0, i32 7, !dbg !1033
  store i64 6292992, i64* %_attrs12, align 8, !dbg !1034
  br label %if.end15, !dbg !1035

if.else13:                                        ; preds = %if.then9
  %4 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1036
  %_attrs14 = getelementptr inbounds %struct._win_st, %struct._win_st* %4, i32 0, i32 7, !dbg !1038
  store i64 5244416, i64* %_attrs14, align 8, !dbg !1039
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  call void @llvm.dbg.value(metadata i32 %X.addr.0, metadata !1040, metadata !DIExpression()), !dbg !989
  %inc16 = add nsw i32 %X.addr.0, 1, !dbg !1041
  call void @llvm.dbg.value(metadata i32 %inc16, metadata !990, metadata !DIExpression()), !dbg !989
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1043
  %call17 = call i32 @wmove(%struct._win_st* %5, i32 %Y, i32 %X.addr.0), !dbg !1045
  call void @llvm.dbg.value(metadata i32 %call17, metadata !1046, metadata !DIExpression()), !dbg !989
  %cmp18 = icmp eq i32 %call17, -1, !dbg !1047
  br i1 %cmp18, label %if.end21, label %if.then19, !dbg !1049

if.then19:                                        ; preds = %if.end15
  %6 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1050
  %call20 = call i32 @waddch(%struct._win_st* %6, i64 178), !dbg !1054
  br label %if.end21, !dbg !1055

if.end21:                                         ; preds = %if.then19, %if.end15
  br label %if.end22, !dbg !1056

if.end22:                                         ; preds = %if.end21, %if.end7
  %X.addr.1 = phi i32 [ %inc16, %if.end21 ], [ %X.addr.0, %if.end7 ], !dbg !1057
  call void @llvm.dbg.value(metadata i32 %X.addr.1, metadata !990, metadata !DIExpression()), !dbg !989
  %cmp23 = icmp eq i32 %level, 3, !dbg !1058
  br i1 %cmp23, label %if.then24, label %if.else25, !dbg !1060

if.then24:                                        ; preds = %if.end22
  br label %_L___0, !dbg !1061

if.else25:                                        ; preds = %if.end22
  %cmp26 = icmp eq i32 %level, 2, !dbg !1063
  br i1 %cmp26, label %if.then27, label %if.end35, !dbg !1065

if.then27:                                        ; preds = %if.else25
  br label %_L___0, !dbg !1066

_L___0:                                           ; preds = %if.then27, %if.then24
  %7 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1067
  %_attrs28 = getelementptr inbounds %struct._win_st, %struct._win_st* %7, i32 0, i32 7, !dbg !1070
  store i64 4194304, i64* %_attrs28, align 8, !dbg !1071
  call void @llvm.dbg.value(metadata i32 %X.addr.1, metadata !1072, metadata !DIExpression()), !dbg !989
  %inc29 = add nsw i32 %X.addr.1, 1, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !990, metadata !DIExpression()), !dbg !989
  %8 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1074
  %call30 = call i32 @wmove(%struct._win_st* %8, i32 %Y, i32 %X.addr.1), !dbg !1076
  call void @llvm.dbg.value(metadata i32 %call30, metadata !1077, metadata !DIExpression()), !dbg !989
  %cmp31 = icmp eq i32 %call30, -1, !dbg !1078
  br i1 %cmp31, label %if.end34, label %if.then32, !dbg !1080

if.then32:                                        ; preds = %_L___0
  %9 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1081
  %call33 = call i32 @waddch(%struct._win_st* %9, i64 205), !dbg !1085
  br label %if.end34, !dbg !1086

if.end34:                                         ; preds = %if.then32, %_L___0
  br label %if.end35, !dbg !1087

if.end35:                                         ; preds = %if.end34, %if.else25
  %X.addr.2 = phi i32 [ %inc29, %if.end34 ], [ %X.addr.1, %if.else25 ], !dbg !1057
  call void @llvm.dbg.value(metadata i32 %X.addr.2, metadata !990, metadata !DIExpression()), !dbg !989
  br label %if.end36

if.end36:                                         ; preds = %if.end35
  %cmp37 = icmp eq i32 %level, 5, !dbg !1088
  br i1 %cmp37, label %if.then38, label %if.end46, !dbg !1090

if.then38:                                        ; preds = %if.end36
  %10 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1091
  %_attrs39 = getelementptr inbounds %struct._win_st, %struct._win_st* %10, i32 0, i32 7, !dbg !1094
  store i64 4194304, i64* %_attrs39, align 8, !dbg !1095
  call void @llvm.dbg.value(metadata i32 %X.addr.2, metadata !1096, metadata !DIExpression()), !dbg !989
  %inc40 = add nsw i32 %X.addr.2, 1, !dbg !1097
  call void @llvm.dbg.value(metadata i32 %inc40, metadata !990, metadata !DIExpression()), !dbg !989
  %11 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1098
  %call41 = call i32 @wmove(%struct._win_st* %11, i32 %Y, i32 %X.addr.2), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %call41, metadata !1101, metadata !DIExpression()), !dbg !989
  %cmp42 = icmp eq i32 %call41, -1, !dbg !1102
  br i1 %cmp42, label %if.end45, label %if.then43, !dbg !1104

if.then43:                                        ; preds = %if.then38
  %12 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1105
  %call44 = call i32 @waddch(%struct._win_st* %12, i64 205), !dbg !1109
  br label %if.end45, !dbg !1110

if.end45:                                         ; preds = %if.then43, %if.then38
  br label %if.end46, !dbg !1111

if.end46:                                         ; preds = %if.end45, %if.end36
  ret void, !dbg !1112
}

declare i32 @waddch(%struct._win_st*, i64) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @init_screen() #0 !dbg !1113 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1114, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.declare(metadata !4, metadata !1116, metadata !DIExpression()), !dbg !1117
  call void @llvm.dbg.declare(metadata !4, metadata !1118, metadata !DIExpression()), !dbg !1119
  %call = call %struct._win_st* @initscr(), !dbg !1120
  store %struct._win_st* %call, %struct._win_st** @stdscr, align 8, !dbg !1124
  %0 = load i32, i32* @COLS, align 4, !dbg !1125
  %cmp = icmp slt i32 %0, 80, !dbg !1127
  br i1 %cmp, label %if.then, label %if.else, !dbg !1128

if.then:                                          ; preds = %entry
  call void @finish(i32 0), !dbg !1129
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1133
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0)), !dbg !1135
  call void @exit(i32 1) #7, !dbg !1136
  unreachable, !dbg !1136

if.else:                                          ; preds = %entry
  %2 = load i32, i32* @LINES, align 4, !dbg !1138
  %cmp2 = icmp slt i32 %2, 25, !dbg !1140
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !1125

if.then3:                                         ; preds = %if.else
  call void @finish(i32 0), !dbg !1141
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1145
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i32 0, i32 0)), !dbg !1147
  call void @exit(i32 1) #7, !dbg !1148
  unreachable, !dbg !1148

if.end:                                           ; preds = %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end
  %4 = load i32, i32* @COLS, align 4, !dbg !1150
  %cmp6 = icmp sgt i32 %4, 171, !dbg !1152
  br i1 %cmp6, label %if.then7, label %if.end9, !dbg !1153

if.then7:                                         ; preds = %if.end5
  call void @finish(i32 0), !dbg !1154
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1158
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i32 0, i32 0)), !dbg !1160
  call void @exit(i32 1) #7, !dbg !1161
  unreachable, !dbg !1161

if.end9:                                          ; preds = %if.end5
  call void @make_colors(), !dbg !1163
  %call10 = call i32 @curs_set(i32 0), !dbg !1166
  ret void, !dbg !1168
}

declare %struct._win_st* @initscr() #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @make_colors() #0 !dbg !1169 {
entry:
  %call = call i32 @start_color(), !dbg !1170
  %call1 = call zeroext i1 @has_colors(), !dbg !1174
  %frombool = zext i1 %call1 to i8, !dbg !1176
  call void @llvm.dbg.value(metadata i8 %frombool, metadata !1177, metadata !DIExpression()), !dbg !1178
  %tobool = trunc i8 %frombool to i1, !dbg !1179
  br i1 %tobool, label %if.then, label %if.else, !dbg !1181

if.then:                                          ; preds = %entry
  %call2 = call i32 @init_pair(i16 signext 1, i16 signext 3, i16 signext 4), !dbg !1182
  %call3 = call i32 @init_pair(i16 signext 2, i16 signext 7, i16 signext 0), !dbg !1186
  %call4 = call i32 @init_pair(i16 signext 3, i16 signext 2, i16 signext 0), !dbg !1188
  %call5 = call i32 @init_pair(i16 signext 4, i16 signext 3, i16 signext 0), !dbg !1190
  %call6 = call i32 @init_pair(i16 signext 5, i16 signext 1, i16 signext 0), !dbg !1192
  %call7 = call i32 @init_pair(i16 signext 6, i16 signext 4, i16 signext 0), !dbg !1194
  %call8 = call i32 @init_pair(i16 signext 7, i16 signext 3, i16 signext 4), !dbg !1196
  %call9 = call i32 @init_pair(i16 signext 8, i16 signext 7, i16 signext 1), !dbg !1198
  %call10 = call i32 @init_pair(i16 signext 9, i16 signext 3, i16 signext 0), !dbg !1200
  br label %if.end, !dbg !1202

if.else:                                          ; preds = %entry
  %call11 = call i32 @init_pair(i16 signext 1, i16 signext 0, i16 signext 7), !dbg !1203
  %call12 = call i32 @init_pair(i16 signext 2, i16 signext 7, i16 signext 0), !dbg !1207
  %call13 = call i32 @init_pair(i16 signext 3, i16 signext 7, i16 signext 0), !dbg !1209
  %call14 = call i32 @init_pair(i16 signext 4, i16 signext 7, i16 signext 0), !dbg !1211
  %call15 = call i32 @init_pair(i16 signext 5, i16 signext 7, i16 signext 0), !dbg !1213
  %call16 = call i32 @init_pair(i16 signext 6, i16 signext 7, i16 signext 0), !dbg !1215
  %call17 = call i32 @init_pair(i16 signext 7, i16 signext 7, i16 signext 0), !dbg !1217
  %call18 = call i32 @init_pair(i16 signext 8, i16 signext 0, i16 signext 7), !dbg !1219
  %call19 = call i32 @init_pair(i16 signext 9, i16 signext 7, i16 signext 0), !dbg !1221
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1223
}

declare i32 @curs_set(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @status(i8* %status_line) #0 !dbg !1224 {
entry:
  %line = alloca [20 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %status_line, metadata !1227, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.declare(metadata [20 x i8]* %line, metadata !1229, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.declare(metadata !4, metadata !1234, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.declare(metadata !4, metadata !1236, metadata !DIExpression()), !dbg !1237
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %line, i64 0, i64 0, !dbg !1238
  store i8 0, i8* %arrayidx, align 16, !dbg !1240
  call void @llvm.dbg.value(metadata i32 1, metadata !1241, metadata !DIExpression()), !dbg !1228
  br label %while.body, !dbg !1242

while.body:                                       ; preds = %if.end, %entry
  %tmp.0 = phi i32 [ 1, %entry ], [ %inc, %if.end ], !dbg !1245
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !1241, metadata !DIExpression()), !dbg !1228
  br label %while_continue___0, !dbg !1246

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1246

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp uge i32 %tmp.0, 20, !dbg !1247
  br i1 %cmp, label %if.then, label %if.end, !dbg !1250

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1251

if.end:                                           ; preds = %while_continue
  %idxprom = zext i32 %tmp.0 to i64, !dbg !1253
  %arrayidx1 = getelementptr inbounds [20 x i8], [20 x i8]* %line, i64 0, i64 %idxprom, !dbg !1253
  store i8 0, i8* %arrayidx1, align 1, !dbg !1254
  %inc = add i32 %tmp.0, 1, !dbg !1250
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1241, metadata !DIExpression()), !dbg !1228
  br label %while.body, !dbg !1242, !llvm.loop !1255

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1257

while_break:                                      ; preds = %while_break___0, %if.then
  %arraydecay = getelementptr inbounds [20 x i8], [20 x i8]* %line, i32 0, i32 0, !dbg !1258
  %call = call i8* @strncpy(i8* %arraydecay, i8* %status_line, i32 20) #9, !dbg !1261
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1262
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %0, i32 0, i32 7, !dbg !1263
  store i64 0, i64* %_attrs, align 8, !dbg !1264
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1265
  %2 = load i32, i32* @LINES, align 4, !dbg !1267
  %sub = sub nsw i32 %2, 2, !dbg !1268
  %3 = load i32, i32* @COLS, align 4, !dbg !1269
  %sub2 = sub nsw i32 %3, 20, !dbg !1270
  %div = sdiv i32 %sub2, 2, !dbg !1271
  %call3 = call i32 @wmove(%struct._win_st* %1, i32 %sub, i32 %div), !dbg !1272
  call void @llvm.dbg.value(metadata i32 %call3, metadata !1273, metadata !DIExpression()), !dbg !1228
  %cmp4 = icmp eq i32 %call3, -1, !dbg !1274
  br i1 %cmp4, label %if.end7, label %if.then5, !dbg !1276

if.then5:                                         ; preds = %while_break
  %4 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1277
  %call6 = call i32 @waddnstr(%struct._win_st* %4, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i32 0, i32 0), i32 -1), !dbg !1281
  br label %if.end7, !dbg !1282

if.end7:                                          ; preds = %if.then5, %while_break
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1283
  %_attrs8 = getelementptr inbounds %struct._win_st, %struct._win_st* %5, i32 0, i32 7, !dbg !1285
  store i64 2099200, i64* %_attrs8, align 8, !dbg !1286
  %arraydecay9 = getelementptr inbounds [20 x i8], [20 x i8]* %line, i32 0, i32 0, !dbg !1287
  %call10 = call i32 @strlen(i8* %arraydecay9) #8, !dbg !1289
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1290, metadata !DIExpression()), !dbg !1228
  %6 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1291
  %7 = load i32, i32* @LINES, align 4, !dbg !1293
  %sub11 = sub nsw i32 %7, 2, !dbg !1294
  %8 = load i32, i32* @COLS, align 4, !dbg !1295
  %sub12 = sub i32 %8, %call10, !dbg !1296
  %div13 = udiv i32 %sub12, 2, !dbg !1297
  %call14 = call i32 @wmove(%struct._win_st* %6, i32 %sub11, i32 %div13), !dbg !1298
  call void @llvm.dbg.value(metadata i32 %call14, metadata !1299, metadata !DIExpression()), !dbg !1228
  %cmp15 = icmp eq i32 %call14, -1, !dbg !1300
  br i1 %cmp15, label %if.end19, label %if.then16, !dbg !1302

if.then16:                                        ; preds = %if.end7
  %9 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1303
  %arraydecay17 = getelementptr inbounds [20 x i8], [20 x i8]* %line, i32 0, i32 0, !dbg !1307
  %call18 = call i32 @waddnstr(%struct._win_st* %9, i8* %arraydecay17, i32 -1), !dbg !1308
  br label %if.end19, !dbg !1309

if.end19:                                         ; preds = %if.then16, %if.end7
  %10 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1310
  %_attrs20 = getelementptr inbounds %struct._win_st, %struct._win_st* %10, i32 0, i32 7, !dbg !1311
  store i64 0, i64* %_attrs20, align 8, !dbg !1312
  ret void, !dbg !1313
}

; Function Attrs: noinline nounwind ssp uwtable
define void @message(i8* %message_line) #0 !dbg !1314 {
entry:
  %line = alloca [25 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %message_line, metadata !1315, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.declare(metadata [25 x i8]* %line, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.declare(metadata !4, metadata !1320, metadata !DIExpression()), !dbg !1321
  %arraydecay = getelementptr inbounds [25 x i8], [25 x i8]* %line, i32 0, i32 0, !dbg !1322
  %call = call i8* @strncpy(i8* %arraydecay, i8* %message_line, i32 25) #9, !dbg !1326
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1327
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %0, i32 0, i32 7, !dbg !1328
  store i64 0, i64* %_attrs, align 8, !dbg !1329
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1330
  %2 = load i32, i32* @LINES, align 4, !dbg !1332
  %sub = sub nsw i32 %2, 2, !dbg !1333
  %3 = load i32, i32* @COLS, align 4, !dbg !1334
  %sub1 = sub nsw i32 %3, 26, !dbg !1335
  %call2 = call i32 @wmove(%struct._win_st* %1, i32 %sub, i32 %sub1), !dbg !1336
  %4 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1337
  %call3 = call i32 @wclrtoeol(%struct._win_st* %4), !dbg !1339
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1340
  %_attrs4 = getelementptr inbounds %struct._win_st, %struct._win_st* %5, i32 0, i32 7, !dbg !1341
  store i64 2304, i64* %_attrs4, align 8, !dbg !1342
  %6 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1343
  %7 = load i32, i32* @LINES, align 4, !dbg !1345
  %sub5 = sub nsw i32 %7, 2, !dbg !1346
  %8 = load i32, i32* @COLS, align 4, !dbg !1347
  %sub6 = sub nsw i32 %8, 26, !dbg !1348
  %call7 = call i32 @wmove(%struct._win_st* %6, i32 %sub5, i32 %sub6), !dbg !1349
  call void @llvm.dbg.value(metadata i32 %call7, metadata !1350, metadata !DIExpression()), !dbg !1316
  %cmp = icmp eq i32 %call7, -1, !dbg !1351
  br i1 %cmp, label %if.end, label %if.then, !dbg !1353

if.then:                                          ; preds = %entry
  %9 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1354
  %arraydecay8 = getelementptr inbounds [25 x i8], [25 x i8]* %line, i32 0, i32 0, !dbg !1358
  %call9 = call i32 @waddnstr(%struct._win_st* %9, i8* %arraydecay8, i32 -1), !dbg !1359
  br label %if.end, !dbg !1360

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1361
  %_attrs10 = getelementptr inbounds %struct._win_st, %struct._win_st* %10, i32 0, i32 7, !dbg !1362
  store i64 0, i64* %_attrs10, align 8, !dbg !1363
  ret void, !dbg !1364
}

declare i32 @wclrtoeol(%struct._win_st*) #2

declare i32 @start_color() #2

declare zeroext i1 @has_colors() #2

declare i32 @init_pair(i16 signext, i16 signext, i16 signext) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @help() #0 !dbg !1365 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1366, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.declare(metadata !4, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.declare(metadata !4, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.declare(metadata !4, metadata !1372, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.declare(metadata !4, metadata !1374, metadata !DIExpression()), !dbg !1375
  call void @llvm.dbg.declare(metadata !4, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.declare(metadata !4, metadata !1378, metadata !DIExpression()), !dbg !1379
  call void @llvm.dbg.declare(metadata !4, metadata !1380, metadata !DIExpression()), !dbg !1381
  call void @llvm.dbg.declare(metadata !4, metadata !1382, metadata !DIExpression()), !dbg !1383
  call void @llvm.dbg.declare(metadata !4, metadata !1384, metadata !DIExpression()), !dbg !1385
  call void @llvm.dbg.declare(metadata !4, metadata !1386, metadata !DIExpression()), !dbg !1387
  %0 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1388
  %tobool = icmp ne %struct._win_st* %0, null, !dbg !1388
  br i1 %tobool, label %if.then, label %if.else, !dbg !1391

if.then:                                          ; preds = %entry
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1392
  %_maxy = getelementptr inbounds %struct._win_st, %struct._win_st* %1, i32 0, i32 2, !dbg !1394
  %2 = load i16, i16* %_maxy, align 4, !dbg !1394
  %conv = sext i16 %2 to i32, !dbg !1395
  %add = add nsw i32 %conv, 1, !dbg !1396
  call void @llvm.dbg.value(metadata i32 %add, metadata !1397, metadata !DIExpression()), !dbg !1398
  br label %if.end, !dbg !1399

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 -1, metadata !1397, metadata !DIExpression()), !dbg !1398
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i32 [ %add, %if.then ], [ -1, %if.else ], !dbg !1400
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !1397, metadata !DIExpression()), !dbg !1398
  %3 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1401
  %call = call i32 @wtouchln(%struct._win_st* %3, i32 0, i32 %tmp.0, i32 1), !dbg !1404
  %4 = load i32, i32* @LINES, align 4, !dbg !1405
  %sub = sub nsw i32 %4, 15, !dbg !1407
  %div = sdiv i32 %sub, 2, !dbg !1408
  %5 = load i32, i32* @COLS, align 4, !dbg !1409
  %sub1 = sub nsw i32 %5, 50, !dbg !1410
  %div2 = sdiv i32 %sub1, 2, !dbg !1411
  %call3 = call %struct._win_st* @newwin(i32 16, i32 50, i32 %div, i32 %div2), !dbg !1412
  call void @llvm.dbg.value(metadata %struct._win_st* %call3, metadata !1413, metadata !DIExpression()), !dbg !1398
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %call3, i32 0, i32 7, !dbg !1455
  store i64 6293248, i64* %_attrs, align 8, !dbg !1456
  %call4 = call i32 @leaveok(%struct._win_st* %call3, i1 zeroext true), !dbg !1457
  %call5 = call i32 @wborder(%struct._win_st* %call3, i64 179, i64 179, i64 196, i64 196, i64 218, i64 191, i64 192, i64 217), !dbg !1459
  %_attrs6 = getelementptr inbounds %struct._win_st, %struct._win_st* %call3, i32 0, i32 7, !dbg !1461
  store i64 2097152, i64* %_attrs6, align 8, !dbg !1462
  %call7 = call i32 @wmove(%struct._win_st* %call3, i32 2, i32 2), !dbg !1463
  call void @llvm.dbg.value(metadata i32 %call7, metadata !1465, metadata !DIExpression()), !dbg !1398
  %cmp = icmp eq i32 %call7, -1, !dbg !1466
  br i1 %cmp, label %if.end11, label %if.then9, !dbg !1468

if.then9:                                         ; preds = %if.end
  %call10 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0), i32 -1), !dbg !1469
  br label %if.end11, !dbg !1473

if.end11:                                         ; preds = %if.then9, %if.end
  %call12 = call i32 @wmove(%struct._win_st* %call3, i32 3, i32 2), !dbg !1474
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1477, metadata !DIExpression()), !dbg !1398
  %cmp13 = icmp eq i32 %call12, -1, !dbg !1478
  br i1 %cmp13, label %if.end17, label %if.then15, !dbg !1480

if.then15:                                        ; preds = %if.end11
  %call16 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i32 0, i32 0), i32 -1), !dbg !1481
  br label %if.end17, !dbg !1485

if.end17:                                         ; preds = %if.then15, %if.end11
  %call18 = call i32 @wmove(%struct._win_st* %call3, i32 5, i32 2), !dbg !1486
  call void @llvm.dbg.value(metadata i32 %call18, metadata !1489, metadata !DIExpression()), !dbg !1398
  %cmp19 = icmp eq i32 %call18, -1, !dbg !1490
  br i1 %cmp19, label %if.end23, label %if.then21, !dbg !1492

if.then21:                                        ; preds = %if.end17
  %call22 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i32 0, i32 0), i32 -1), !dbg !1493
  br label %if.end23, !dbg !1497

if.end23:                                         ; preds = %if.then21, %if.end17
  %call24 = call i32 @wmove(%struct._win_st* %call3, i32 6, i32 2), !dbg !1498
  call void @llvm.dbg.value(metadata i32 %call24, metadata !1501, metadata !DIExpression()), !dbg !1398
  %cmp25 = icmp eq i32 %call24, -1, !dbg !1502
  br i1 %cmp25, label %if.end29, label %if.then27, !dbg !1504

if.then27:                                        ; preds = %if.end23
  %call28 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i32 0, i32 0), i32 -1), !dbg !1505
  br label %if.end29, !dbg !1509

if.end29:                                         ; preds = %if.then27, %if.end23
  %call30 = call i32 @wmove(%struct._win_st* %call3, i32 7, i32 2), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %call30, metadata !1513, metadata !DIExpression()), !dbg !1398
  %cmp31 = icmp eq i32 %call30, -1, !dbg !1514
  br i1 %cmp31, label %if.end35, label %if.then33, !dbg !1516

if.then33:                                        ; preds = %if.end29
  %call34 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0), i32 -1), !dbg !1517
  br label %if.end35, !dbg !1521

if.end35:                                         ; preds = %if.then33, %if.end29
  %call36 = call i32 @wmove(%struct._win_st* %call3, i32 8, i32 2), !dbg !1522
  call void @llvm.dbg.value(metadata i32 %call36, metadata !1525, metadata !DIExpression()), !dbg !1398
  %cmp37 = icmp eq i32 %call36, -1, !dbg !1526
  br i1 %cmp37, label %if.end41, label %if.then39, !dbg !1528

if.then39:                                        ; preds = %if.end35
  %call40 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 -1), !dbg !1529
  br label %if.end41, !dbg !1533

if.end41:                                         ; preds = %if.then39, %if.end35
  %6 = load i32, i32* @a3dse, align 4, !dbg !1534
  %cmp42 = icmp ne i32 %6, -1, !dbg !1536
  br i1 %cmp42, label %if.then44, label %if.end51, !dbg !1537

if.then44:                                        ; preds = %if.end41
  %call45 = call i32 @wmove(%struct._win_st* %call3, i32 9, i32 2), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %call45, metadata !1542, metadata !DIExpression()), !dbg !1398
  %cmp46 = icmp eq i32 %call45, -1, !dbg !1543
  br i1 %cmp46, label %if.end50, label %if.then48, !dbg !1545

if.then48:                                        ; preds = %if.then44
  %call49 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0), i32 -1), !dbg !1546
  br label %if.end50, !dbg !1550

if.end50:                                         ; preds = %if.then48, %if.then44
  br label %if.end51, !dbg !1551

if.end51:                                         ; preds = %if.end50, %if.end41
  %7 = load i32, i32* @agc, align 4, !dbg !1552
  %cmp52 = icmp ne i32 %7, -1, !dbg !1554
  br i1 %cmp52, label %if.then54, label %if.end61, !dbg !1555

if.then54:                                        ; preds = %if.end51
  %call55 = call i32 @wmove(%struct._win_st* %call3, i32 10, i32 2), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %call55, metadata !1560, metadata !DIExpression()), !dbg !1398
  %cmp56 = icmp eq i32 %call55, -1, !dbg !1561
  br i1 %cmp56, label %if.end60, label %if.then58, !dbg !1563

if.then58:                                        ; preds = %if.then54
  %call59 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0), i32 -1), !dbg !1564
  br label %if.end60, !dbg !1568

if.end60:                                         ; preds = %if.then58, %if.then54
  br label %if.end61, !dbg !1569

if.end61:                                         ; preds = %if.end60, %if.end51
  %call62 = call i32 @wmove(%struct._win_st* %call3, i32 11, i32 2), !dbg !1570
  call void @llvm.dbg.value(metadata i32 %call62, metadata !1573, metadata !DIExpression()), !dbg !1398
  %cmp63 = icmp eq i32 %call62, -1, !dbg !1574
  br i1 %cmp63, label %if.end67, label %if.then65, !dbg !1576

if.then65:                                        ; preds = %if.end61
  %call66 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), i32 -1), !dbg !1577
  br label %if.end67, !dbg !1581

if.end67:                                         ; preds = %if.then65, %if.end61
  %call68 = call i32 @wmove(%struct._win_st* %call3, i32 12, i32 2), !dbg !1582
  call void @llvm.dbg.value(metadata i32 %call68, metadata !1585, metadata !DIExpression()), !dbg !1398
  %cmp69 = icmp eq i32 %call68, -1, !dbg !1586
  br i1 %cmp69, label %if.end73, label %if.then71, !dbg !1588

if.then71:                                        ; preds = %if.end67
  %call72 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.27, i32 0, i32 0), i32 -1), !dbg !1589
  br label %if.end73, !dbg !1593

if.end73:                                         ; preds = %if.then71, %if.end67
  %call74 = call i32 @wmove(%struct._win_st* %call3, i32 14, i32 8), !dbg !1594
  call void @llvm.dbg.value(metadata i32 %call74, metadata !1597, metadata !DIExpression()), !dbg !1398
  %cmp75 = icmp eq i32 %call74, -1, !dbg !1598
  br i1 %cmp75, label %if.end79, label %if.then77, !dbg !1600

if.then77:                                        ; preds = %if.end73
  %call78 = call i32 @waddnstr(%struct._win_st* %call3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i32 0, i32 0), i32 -1), !dbg !1601
  br label %if.end79, !dbg !1605

if.end79:                                         ; preds = %if.then77, %if.end73
  %call80 = call i32 @wgetch(%struct._win_st* %call3), !dbg !1606
  call void @llvm.dbg.value(metadata i32 %call80, metadata !1609, metadata !DIExpression()), !dbg !1398
  %conv81 = trunc i32 %call80 to i8, !dbg !1610
  call void @llvm.dbg.value(metadata i8 %conv81, metadata !1611, metadata !DIExpression()), !dbg !1398
  %call82 = call i32 @delwin(%struct._win_st* %call3), !dbg !1612
  ret void, !dbg !1614
}

declare i32 @wtouchln(%struct._win_st*, i32, i32, i32) #2

declare %struct._win_st* @newwin(i32, i32, i32, i32) #2

declare i32 @wborder(%struct._win_st*, i64, i64, i64, i64, i64, i64, i64, i64) #2

declare i32 @wgetch(%struct._win_st*) #2

declare i32 @delwin(%struct._win_st*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @comm_help() #0 !dbg !1615 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !1616, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.declare(metadata !4, metadata !1618, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.declare(metadata !4, metadata !1620, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.declare(metadata !4, metadata !1622, metadata !DIExpression()), !dbg !1623
  call void @llvm.dbg.declare(metadata !4, metadata !1624, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.declare(metadata !4, metadata !1626, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.declare(metadata !4, metadata !1628, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.declare(metadata !4, metadata !1630, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.declare(metadata !4, metadata !1632, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.declare(metadata !4, metadata !1634, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.declare(metadata !4, metadata !1636, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.declare(metadata !4, metadata !1638, metadata !DIExpression()), !dbg !1639
  call void @llvm.dbg.declare(metadata !4, metadata !1640, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.declare(metadata !4, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @llvm.dbg.declare(metadata !4, metadata !1644, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.declare(metadata !4, metadata !1646, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.declare(metadata !4, metadata !1648, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.declare(metadata !4, metadata !1650, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.declare(metadata !4, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.declare(metadata !4, metadata !1654, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.declare(metadata !4, metadata !1656, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.declare(metadata !4, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.declare(metadata !4, metadata !1660, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.declare(metadata !4, metadata !1662, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.declare(metadata !4, metadata !1664, metadata !DIExpression()), !dbg !1665
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1666
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.29, i32 0, i32 0)), !dbg !1670
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1671
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i32 0, i32 0)), !dbg !1673
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1674
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.31, i32 0, i32 0)), !dbg !1676
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1677
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.32, i32 0, i32 0)), !dbg !1679
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1680
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.33, i32 0, i32 0)), !dbg !1682
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1683
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.34, i32 0, i32 0)), !dbg !1685
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1686
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.35, i32 0, i32 0)), !dbg !1688
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1689
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.36, i32 0, i32 0)), !dbg !1691
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1692
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.37, i32 0, i32 0)), !dbg !1694
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1695
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.38, i32 0, i32 0)), !dbg !1697
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1698
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.39, i32 0, i32 0)), !dbg !1700
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1701
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.40, i32 0, i32 0)), !dbg !1703
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1704
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.41, i32 0, i32 0)), !dbg !1706
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1707
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.42, i32 0, i32 0)), !dbg !1709
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1710
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.43, i32 0, i32 0)), !dbg !1712
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1713
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.44, i32 0, i32 0)), !dbg !1715
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1716
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.45, i32 0, i32 0)), !dbg !1718
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1719
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.46, i32 0, i32 0)), !dbg !1721
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1722
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.47, i32 0, i32 0)), !dbg !1724
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1725
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i32 0, i32 0)), !dbg !1727
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1728
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.49, i32 0, i32 0)), !dbg !1730
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1731
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.50, i32 0, i32 0)), !dbg !1733
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1734
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.51, i32 0, i32 0)), !dbg !1736
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1737
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.52, i32 0, i32 0)), !dbg !1739
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1740
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.53, i32 0, i32 0)), !dbg !1742
  ret void, !dbg !1743
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !1744 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1748, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1750, metadata !DIExpression()), !dbg !1749
  %cmp = icmp eq i32 %argc, 1, !dbg !1751
  br i1 %cmp, label %if.then, label %if.else, !dbg !1754

if.then:                                          ; preds = %entry
  %call = call void (i32)* @signal(i32 2, void (i32)* @finish) #9, !dbg !1755
  %call1 = call void (i32)* @signal(i32 15, void (i32)* @finish) #9, !dbg !1759
  %call2 = call void (i32)* @signal(i32 9, void (i32)* @finish) #9, !dbg !1761
  %call3 = call i32 @_setjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env, i32 0, i32 0)) #10, !dbg !1763
  %call4 = call void (i32)* @signal(i32 28, void (i32)* @finish) #9, !dbg !1765
  call void @init_screen(), !dbg !1767
  call void @set_screen(), !dbg !1769
  call void @ctrl_sliders(), !dbg !1771
  call void @finish(i32 0), !dbg !1773
  call void @exit(i32 0) #7, !dbg !1775
  unreachable, !dbg !1775

if.else:                                          ; preds = %entry
  call void @set_sound(i32 %argc, i8** %argv), !dbg !1777
  br label %if.end

if.end:                                           ; preds = %if.else
  ret i32 0, !dbg !1781
}

; Function Attrs: nounwind
declare void (i32)* @signal(i32, void (i32)*) #5

; Function Attrs: nounwind returns_twice
declare i32 @_setjmp(%struct.__jmp_buf_tag*) #6

; Function Attrs: noinline nounwind ssp uwtable
define void @ctrl_sliders() #0 !dbg !1782 {
entry:
  %locked = alloca i32, align 4
  %pos = alloca i32, align 4
  %vol_left = alloca i32, align 4
  %vol_right = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %locked, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !1785, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.declare(metadata i32* %vol_left, metadata !1787, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.declare(metadata i32* %vol_right, metadata !1789, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.declare(metadata !4, metadata !1791, metadata !DIExpression()), !dbg !1792
  call void @llvm.dbg.declare(metadata !4, metadata !1793, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.declare(metadata !4, metadata !1795, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.declare(metadata !4, metadata !1797, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.declare(metadata !4, metadata !1799, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.declare(metadata !4, metadata !1801, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.declare(metadata !4, metadata !1803, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.declare(metadata !4, metadata !1805, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.declare(metadata !4, metadata !1807, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.declare(metadata !4, metadata !1809, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.declare(metadata !4, metadata !1811, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.declare(metadata !4, metadata !1813, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.declare(metadata !4, metadata !1815, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.declare(metadata !4, metadata !1817, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.declare(metadata !4, metadata !1819, metadata !DIExpression()), !dbg !1820
  call void @llvm.dbg.declare(metadata !4, metadata !1821, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.declare(metadata !4, metadata !1823, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.declare(metadata !4, metadata !1825, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.declare(metadata !4, metadata !1827, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.declare(metadata !4, metadata !1829, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.declare(metadata !4, metadata !1831, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.declare(metadata !4, metadata !1833, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.declare(metadata !4, metadata !1835, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.declare(metadata !4, metadata !1837, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i32 1, metadata !1839, metadata !DIExpression()), !dbg !1840
  store i32 0, i32* %locked, align 4, !dbg !1841
  call void @llvm.dbg.value(metadata i32 0, metadata !1844, metadata !DIExpression()), !dbg !1840
  %0 = load i32, i32* @COLS, align 4, !dbg !1845
  %div = sdiv i32 %0, 18, !dbg !1846
  %add = add nsw i32 %div, 14, !dbg !1847
  call void @llvm.dbg.value(metadata i32 %add, metadata !1848, metadata !DIExpression()), !dbg !1840
  %call = call i8* @get_default_filename(), !dbg !1849
  call void @llvm.dbg.value(metadata i8* %call, metadata !1851, metadata !DIExpression()), !dbg !1840
  call void @init_sound(), !dbg !1852
  call void @init_sliders(), !dbg !1854
  %1 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1856
  %call1 = call i32 @keypad(%struct._win_st* %1, i1 zeroext true), !dbg !1858
  %call2 = call i32 @cbreak(), !dbg !1859
  %call3 = call i32 @noecho(), !dbg !1861
  %idxprom = sext i32 0 to i64, !dbg !1863
  %arrayidx = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom, !dbg !1863
  %vol_left4 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx, i32 0, i32 0, !dbg !1864
  call void @llvm.dbg.value(metadata i32* %vol_left4, metadata !1865, metadata !DIExpression()), !dbg !1840
  %2 = load i32, i32* %vol_left4, align 4, !dbg !1867
  %add5 = add nsw i32 %add, %2, !dbg !1868
  call void @llvm.dbg.value(metadata i32 %add5, metadata !1869, metadata !DIExpression()), !dbg !1840
  %idxprom6 = sext i32 0 to i64, !dbg !1870
  %arrayidx7 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom6, !dbg !1870
  %Y8 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx7, i32 0, i32 4, !dbg !1871
  %3 = load i32, i32* %Y8, align 4, !dbg !1871
  %add9 = add nsw i32 %3, 1, !dbg !1872
  call void @llvm.dbg.value(metadata i32 %add9, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @draw_handle(i32 %add9, i32 %add5, i32 1, i32 4), !dbg !1874
  br label %while.body, !dbg !1876

while.body:                                       ; preds = %if.end954, %entry
  %X_rest.0 = phi i32 [ %add, %entry ], [ %X_rest.3, %if.end954 ], !dbg !1879
  %volume.0 = phi i32* [ %vol_left4, %entry ], [ %volume.10, %if.end954 ], !dbg !1880
  %dev_nr.0 = phi i32 [ 0, %entry ], [ %dev_nr.3, %if.end954 ], !dbg !1881
  %left.0 = phi i32 [ 1, %entry ], [ %left.10, %if.end954 ], !dbg !1882
  %Y.0 = phi i32 [ %add9, %entry ], [ %Y.10, %if.end954 ], !dbg !1883
  %X.0 = phi i32 [ %add5, %entry ], [ %X.24, %if.end954 ], !dbg !1884
  call void @llvm.dbg.value(metadata i32 %X.0, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.0, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.0, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %dev_nr.0, metadata !1844, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.0, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %X_rest.0, metadata !1848, metadata !DIExpression()), !dbg !1840
  br label %while_continue___3, !dbg !1885

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !1885

while_continue:                                   ; preds = %while_continue___3
  %4 = load i32, i32* %locked, align 4, !dbg !1886
  %cmp = icmp eq i32 %4, 1, !dbg !1889
  br i1 %cmp, label %if.then, label %if.else, !dbg !1890

if.then:                                          ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.145, i32 0, i32 0), metadata !1891, metadata !DIExpression()), !dbg !1840
  br label %if.end, !dbg !1892

if.else:                                          ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i32 0, i32 0), metadata !1891, metadata !DIExpression()), !dbg !1840
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.145, i32 0, i32 0), %if.then ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.146, i32 0, i32 0), %if.else ], !dbg !1894
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !1891, metadata !DIExpression()), !dbg !1840
  call void @status(i8* %tmp.0), !dbg !1895
  %5 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !1898
  %call10 = call i32 @wgetch(%struct._win_st* %5), !dbg !1900
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1901, metadata !DIExpression()), !dbg !1840
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1902
  %call11 = call i32 @fflush(%struct._IO_FILE* %6), !dbg !1904
  call void @message(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.147, i32 0, i32 0)), !dbg !1905
  %cmp12 = icmp eq i32 %call10, 81, !dbg !1907
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !1910

if.then13:                                        ; preds = %if.end
  br label %case_81, !dbg !1911

if.end14:                                         ; preds = %if.end
  %cmp15 = icmp eq i32 %call10, 113, !dbg !1913
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1910

if.then16:                                        ; preds = %if.end14
  br label %case_81, !dbg !1915

if.end17:                                         ; preds = %if.end14
  %cmp18 = icmp eq i32 %call10, 27, !dbg !1917
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !1910

if.then19:                                        ; preds = %if.end17
  br label %case_81, !dbg !1919

if.end20:                                         ; preds = %if.end17
  %cmp21 = icmp eq i32 %call10, 260, !dbg !1921
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !1923

if.then22:                                        ; preds = %if.end20
  br label %case_260, !dbg !1924

if.end23:                                         ; preds = %if.end20
  %cmp24 = icmp eq i32 %call10, 261, !dbg !1926
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !1928

if.then25:                                        ; preds = %if.end23
  br label %case_261, !dbg !1929

if.end26:                                         ; preds = %if.end23
  %cmp27 = icmp eq i32 %call10, 259, !dbg !1931
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !1933

if.then28:                                        ; preds = %if.end26
  br label %case_259, !dbg !1934

if.end29:                                         ; preds = %if.end26
  %cmp30 = icmp eq i32 %call10, 258, !dbg !1936
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !1938

if.then31:                                        ; preds = %if.end29
  br label %case_258, !dbg !1939

if.end32:                                         ; preds = %if.end29
  %cmp33 = icmp eq i32 %call10, 82, !dbg !1941
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !1943

if.then34:                                        ; preds = %if.end32
  br label %case_82, !dbg !1944

if.end35:                                         ; preds = %if.end32
  %cmp36 = icmp eq i32 %call10, 114, !dbg !1946
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !1943

if.then37:                                        ; preds = %if.end35
  br label %case_82, !dbg !1948

if.end38:                                         ; preds = %if.end35
  %cmp39 = icmp eq i32 %call10, 76, !dbg !1950
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !1952

if.then40:                                        ; preds = %if.end38
  br label %case_76, !dbg !1953

if.end41:                                         ; preds = %if.end38
  %cmp42 = icmp eq i32 %call10, 108, !dbg !1955
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !1952

if.then43:                                        ; preds = %if.end41
  br label %case_76, !dbg !1957

if.end44:                                         ; preds = %if.end41
  %cmp45 = icmp eq i32 %call10, 83, !dbg !1959
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !1961

if.then46:                                        ; preds = %if.end44
  br label %case_83, !dbg !1962

if.end47:                                         ; preds = %if.end44
  %cmp48 = icmp eq i32 %call10, 115, !dbg !1964
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !1961

if.then49:                                        ; preds = %if.end47
  br label %case_83, !dbg !1966

if.end50:                                         ; preds = %if.end47
  %cmp51 = icmp eq i32 %call10, 71, !dbg !1968
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !1970

if.then52:                                        ; preds = %if.end50
  br label %case_71, !dbg !1971

if.end53:                                         ; preds = %if.end50
  %cmp54 = icmp eq i32 %call10, 103, !dbg !1973
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !1970

if.then55:                                        ; preds = %if.end53
  br label %case_71, !dbg !1975

if.end56:                                         ; preds = %if.end53
  %cmp57 = icmp eq i32 %call10, 51, !dbg !1977
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !1979

if.then58:                                        ; preds = %if.end56
  br label %case_51, !dbg !1980

if.end59:                                         ; preds = %if.end56
  %cmp60 = icmp eq i32 %call10, 65, !dbg !1982
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !1984

if.then61:                                        ; preds = %if.end59
  br label %case_65, !dbg !1985

if.end62:                                         ; preds = %if.end59
  %cmp63 = icmp eq i32 %call10, 97, !dbg !1987
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !1984

if.then64:                                        ; preds = %if.end62
  br label %case_65, !dbg !1989

if.end65:                                         ; preds = %if.end62
  %cmp66 = icmp eq i32 %call10, 72, !dbg !1991
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !1993

if.then67:                                        ; preds = %if.end65
  br label %case_72, !dbg !1994

if.end68:                                         ; preds = %if.end65
  %cmp69 = icmp eq i32 %call10, 104, !dbg !1996
  br i1 %cmp69, label %if.then70, label %if.end71, !dbg !1993

if.then70:                                        ; preds = %if.end68
  br label %case_72, !dbg !1998

if.end71:                                         ; preds = %if.end68
  %cmp72 = icmp eq i32 %call10, 90, !dbg !2000
  br i1 %cmp72, label %if.then73, label %if.end74, !dbg !2002

if.then73:                                        ; preds = %if.end71
  br label %case_90, !dbg !2003

if.end74:                                         ; preds = %if.end71
  %cmp75 = icmp eq i32 %call10, 12, !dbg !2005
  br i1 %cmp75, label %if.then76, label %if.end77, !dbg !2007

if.then76:                                        ; preds = %if.end74
  br label %case_12, !dbg !2008

if.end77:                                         ; preds = %if.end74
  br label %switch_break, !dbg !2010

case_81:                                          ; preds = %if.then19, %if.then16, %if.then13
  br label %case_113, !dbg !2010

case_113:                                         ; preds = %case_81
  br label %case_27, !dbg !2010

case_27:                                          ; preds = %case_113
  br label %switch_break, !dbg !2011

case_260:                                         ; preds = %if.then22
  %7 = load i32, i32* %volume.0, align 4, !dbg !2012
  %cmp78 = icmp sgt i32 %7, 0, !dbg !2014
  br i1 %cmp78, label %if.then79, label %if.end94, !dbg !2015

if.then79:                                        ; preds = %case_260
  %8 = load i32, i32* %volume.0, align 4, !dbg !2016
  %dec = add nsw i32 %8, -1, !dbg !2016
  store i32 %dec, i32* %volume.0, align 4, !dbg !2016
  %dec80 = add nsw i32 %X.0, -1, !dbg !2019
  call void @llvm.dbg.value(metadata i32 %dec80, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @draw_handle(i32 %Y.0, i32 %dec80, i32 1, i32 3), !dbg !2020
  %9 = load i32, i32* %locked, align 4, !dbg !2022
  %tobool = icmp ne i32 %9, 0, !dbg !2022
  br i1 %tobool, label %if.then81, label %if.end93, !dbg !2024

if.then81:                                        ; preds = %if.then79
  %idxprom82 = sext i32 %dev_nr.0 to i64, !dbg !2025
  %arrayidx83 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom82, !dbg !2025
  %dev_nr84 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx83, i32 0, i32 2, !dbg !2028
  %10 = load i32, i32* %dev_nr84, align 4, !dbg !2028
  %shl = shl i32 1, %10, !dbg !2029
  %11 = load i32, i32* @stereodevs, align 4, !dbg !2030
  %and = and i32 %shl, %11, !dbg !2031
  %tobool85 = icmp ne i32 %and, 0, !dbg !2031
  br i1 %tobool85, label %if.then86, label %if.end92, !dbg !2032

if.then86:                                        ; preds = %if.then81
  %idxprom87 = sext i32 %dev_nr.0 to i64, !dbg !2033
  %arrayidx88 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom87, !dbg !2033
  %vol_right89 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx88, i32 0, i32 1, !dbg !2036
  %12 = load i32, i32* %vol_right89, align 4, !dbg !2037
  %dec90 = add nsw i32 %12, -1, !dbg !2037
  store i32 %dec90, i32* %vol_right89, align 4, !dbg !2037
  %add91 = add nsw i32 %Y.0, 1, !dbg !2038
  call void @draw_handle(i32 %add91, i32 %dec80, i32 1, i32 3), !dbg !2040
  br label %if.end92, !dbg !2041

if.end92:                                         ; preds = %if.then86, %if.then81
  br label %if.end93, !dbg !2042

if.end93:                                         ; preds = %if.end92, %if.then79
  br label %if.end94, !dbg !2043

if.end94:                                         ; preds = %if.end93, %case_260
  %X.1 = phi i32 [ %dec80, %if.end93 ], [ %X.0, %case_260 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.1, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %switch_break, !dbg !2045

case_261:                                         ; preds = %if.then25
  %13 = load i32, i32* %volume.0, align 4, !dbg !2046
  %14 = load i32, i32* @COLS, align 4, !dbg !2048
  %div95 = sdiv i32 %14, 4, !dbg !2049
  %cmp96 = icmp slt i32 %13, %div95, !dbg !2050
  br i1 %cmp96, label %if.then97, label %if.end116, !dbg !2051

if.then97:                                        ; preds = %case_261
  %15 = load i32, i32* %volume.0, align 4, !dbg !2052
  %inc = add nsw i32 %15, 1, !dbg !2052
  store i32 %inc, i32* %volume.0, align 4, !dbg !2052
  %inc98 = add nsw i32 %X.0, 1, !dbg !2055
  call void @llvm.dbg.value(metadata i32 %inc98, metadata !1869, metadata !DIExpression()), !dbg !1840
  %sub = sub nsw i32 %inc98, 1, !dbg !2056
  call void @draw_handle(i32 %Y.0, i32 %sub, i32 1, i32 1), !dbg !2058
  %16 = load i32, i32* %locked, align 4, !dbg !2059
  %tobool99 = icmp ne i32 %16, 0, !dbg !2059
  br i1 %tobool99, label %if.then100, label %if.end115, !dbg !2061

if.then100:                                       ; preds = %if.then97
  %idxprom101 = sext i32 %dev_nr.0 to i64, !dbg !2062
  %arrayidx102 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom101, !dbg !2062
  %dev_nr103 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx102, i32 0, i32 2, !dbg !2065
  %17 = load i32, i32* %dev_nr103, align 4, !dbg !2065
  %shl104 = shl i32 1, %17, !dbg !2066
  %18 = load i32, i32* @stereodevs, align 4, !dbg !2067
  %and105 = and i32 %shl104, %18, !dbg !2068
  %tobool106 = icmp ne i32 %and105, 0, !dbg !2068
  br i1 %tobool106, label %if.then107, label %if.end114, !dbg !2069

if.then107:                                       ; preds = %if.then100
  %idxprom108 = sext i32 %dev_nr.0 to i64, !dbg !2070
  %arrayidx109 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom108, !dbg !2070
  %vol_right110 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx109, i32 0, i32 1, !dbg !2073
  %19 = load i32, i32* %vol_right110, align 4, !dbg !2074
  %inc111 = add nsw i32 %19, 1, !dbg !2074
  store i32 %inc111, i32* %vol_right110, align 4, !dbg !2074
  %add112 = add nsw i32 %Y.0, 1, !dbg !2075
  %sub113 = sub nsw i32 %inc98, 1, !dbg !2077
  call void @draw_handle(i32 %add112, i32 %sub113, i32 1, i32 1), !dbg !2078
  br label %if.end114, !dbg !2079

if.end114:                                        ; preds = %if.then107, %if.then100
  br label %if.end115, !dbg !2080

if.end115:                                        ; preds = %if.end114, %if.then97
  br label %if.end116, !dbg !2081

if.end116:                                        ; preds = %if.end115, %case_261
  %X.2 = phi i32 [ %inc98, %if.end115 ], [ %X.0, %case_261 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.2, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %switch_break, !dbg !2082

case_259:                                         ; preds = %if.then28
  call void @draw_handle(i32 %Y.0, i32 %X.0, i32 0, i32 4), !dbg !2083
  %20 = load i32, i32* %locked, align 4, !dbg !2086
  %tobool117 = icmp ne i32 %20, 0, !dbg !2086
  br i1 %tobool117, label %if.then118, label %if.end128, !dbg !2088

if.then118:                                       ; preds = %case_259
  %idxprom119 = sext i32 %dev_nr.0 to i64, !dbg !2089
  %arrayidx120 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom119, !dbg !2089
  %dev_nr121 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx120, i32 0, i32 2, !dbg !2092
  %21 = load i32, i32* %dev_nr121, align 4, !dbg !2092
  %shl122 = shl i32 1, %21, !dbg !2093
  %22 = load i32, i32* @stereodevs, align 4, !dbg !2094
  %and123 = and i32 %shl122, %22, !dbg !2095
  %tobool124 = icmp ne i32 %and123, 0, !dbg !2095
  br i1 %tobool124, label %if.then125, label %if.end127, !dbg !2096

if.then125:                                       ; preds = %if.then118
  %add126 = add nsw i32 %Y.0, 1, !dbg !2097
  call void @draw_handle(i32 %add126, i32 %X.0, i32 0, i32 4), !dbg !2101
  br label %if.end127, !dbg !2102

if.end127:                                        ; preds = %if.then125, %if.then118
  br label %if.end128, !dbg !2103

if.end128:                                        ; preds = %if.end127, %case_259
  %cmp129 = icmp eq i32 %left.0, 1, !dbg !2104
  br i1 %cmp129, label %if.then130, label %if.else131, !dbg !2106

if.then130:                                       ; preds = %if.end128
  br label %_L, !dbg !2107

if.else131:                                       ; preds = %if.end128
  %23 = load i32, i32* %locked, align 4, !dbg !2109
  %cmp132 = icmp eq i32 %23, 1, !dbg !2111
  br i1 %cmp132, label %if.then133, label %if.else134, !dbg !2112

if.then133:                                       ; preds = %if.else131
  br label %_L, !dbg !2113

if.else134:                                       ; preds = %if.else131
  %idxprom135 = sext i32 %dev_nr.0 to i64, !dbg !2115
  %arrayidx136 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom135, !dbg !2115
  %dev_nr137 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx136, i32 0, i32 2, !dbg !2117
  %24 = load i32, i32* %dev_nr137, align 4, !dbg !2117
  %shl138 = shl i32 1, %24, !dbg !2118
  %25 = load i32, i32* @stereodevs, align 4, !dbg !2119
  %and139 = and i32 %shl138, %25, !dbg !2120
  %tobool140 = icmp ne i32 %and139, 0, !dbg !2120
  br i1 %tobool140, label %if.else241, label %if.then141, !dbg !2109

if.then141:                                       ; preds = %if.else134
  br label %_L, !dbg !2121

_L:                                               ; preds = %if.then141, %if.then133, %if.then130
  %26 = load i32, i32* @dev_count, align 4, !dbg !2122
  %add142 = add nsw i32 %dev_nr.0, %26, !dbg !2124
  %sub143 = sub nsw i32 %add142, 1, !dbg !2125
  %27 = load i32, i32* @dev_count, align 4, !dbg !2126
  %rem = srem i32 %sub143, %27, !dbg !2127
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1844, metadata !DIExpression()), !dbg !1840
  %idxprom144 = sext i32 %rem to i64, !dbg !2128
  %arrayidx145 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom144, !dbg !2128
  %X146 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx145, i32 0, i32 3, !dbg !2129
  %28 = load i32, i32* %X146, align 4, !dbg !2129
  %add147 = add nsw i32 %28, 14, !dbg !2130
  call void @llvm.dbg.value(metadata i32 %add147, metadata !1848, metadata !DIExpression()), !dbg !1840
  %idxprom148 = sext i32 %rem to i64, !dbg !2131
  %arrayidx149 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom148, !dbg !2131
  %dev_nr150 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx149, i32 0, i32 2, !dbg !2133
  %29 = load i32, i32* %dev_nr150, align 4, !dbg !2133
  %shl151 = shl i32 1, %29, !dbg !2134
  %30 = load i32, i32* @stereodevs, align 4, !dbg !2135
  %and152 = and i32 %shl151, %30, !dbg !2136
  %tobool153 = icmp ne i32 %and152, 0, !dbg !2136
  br i1 %tobool153, label %if.then154, label %if.else167, !dbg !2137

if.then154:                                       ; preds = %_L
  %31 = load i32, i32* %locked, align 4, !dbg !2138
  %tobool155 = icmp ne i32 %31, 0, !dbg !2138
  br i1 %tobool155, label %if.else161, label %if.then156, !dbg !2141

if.then156:                                       ; preds = %if.then154
  %idxprom157 = sext i32 %rem to i64, !dbg !2142
  %arrayidx158 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom157, !dbg !2142
  %Y159 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx158, i32 0, i32 4, !dbg !2144
  %32 = load i32, i32* %Y159, align 4, !dbg !2144
  %add160 = add nsw i32 %32, 2, !dbg !2145
  call void @llvm.dbg.value(metadata i32 %add160, metadata !1873, metadata !DIExpression()), !dbg !1840
  br label %if.end166, !dbg !2146

if.else161:                                       ; preds = %if.then154
  %idxprom162 = sext i32 %rem to i64, !dbg !2147
  %arrayidx163 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom162, !dbg !2147
  %Y164 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx163, i32 0, i32 4, !dbg !2149
  %33 = load i32, i32* %Y164, align 4, !dbg !2149
  %add165 = add nsw i32 %33, 1, !dbg !2150
  call void @llvm.dbg.value(metadata i32 %add165, metadata !1873, metadata !DIExpression()), !dbg !1840
  br label %if.end166

if.end166:                                        ; preds = %if.else161, %if.then156
  %Y.1 = phi i32 [ %add165, %if.else161 ], [ %add160, %if.then156 ], !dbg !2151
  call void @llvm.dbg.value(metadata i32 %Y.1, metadata !1873, metadata !DIExpression()), !dbg !1840
  br label %if.end172, !dbg !2152

if.else167:                                       ; preds = %_L
  %idxprom168 = sext i32 %rem to i64, !dbg !2153
  %arrayidx169 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom168, !dbg !2153
  %Y170 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx169, i32 0, i32 4, !dbg !2155
  %34 = load i32, i32* %Y170, align 4, !dbg !2155
  %add171 = add nsw i32 %34, 1, !dbg !2156
  call void @llvm.dbg.value(metadata i32 %add171, metadata !1873, metadata !DIExpression()), !dbg !1840
  br label %if.end172

if.end172:                                        ; preds = %if.else167, %if.end166
  %Y.2 = phi i32 [ %Y.1, %if.end166 ], [ %add171, %if.else167 ], !dbg !2157
  call void @llvm.dbg.value(metadata i32 %Y.2, metadata !1873, metadata !DIExpression()), !dbg !1840
  %35 = load i32, i32* %locked, align 4, !dbg !2158
  %tobool173 = icmp ne i32 %35, 0, !dbg !2158
  br i1 %tobool173, label %if.then174, label %if.end206, !dbg !2160

if.then174:                                       ; preds = %if.end172
  %idxprom175 = sext i32 %rem to i64, !dbg !2161
  %arrayidx176 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom175, !dbg !2161
  %dev_nr177 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx176, i32 0, i32 2, !dbg !2164
  %36 = load i32, i32* %dev_nr177, align 4, !dbg !2164
  %shl178 = shl i32 1, %36, !dbg !2165
  %37 = load i32, i32* @stereodevs, align 4, !dbg !2166
  %and179 = and i32 %shl178, %37, !dbg !2167
  %tobool180 = icmp ne i32 %and179, 0, !dbg !2167
  br i1 %tobool180, label %if.then181, label %if.end205, !dbg !2168

if.then181:                                       ; preds = %if.then174
  %idxprom182 = sext i32 %rem to i64, !dbg !2169
  %arrayidx183 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom182, !dbg !2169
  %vol_left184 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx183, i32 0, i32 0, !dbg !2172
  %38 = load i32, i32* %vol_left184, align 4, !dbg !2172
  %add185 = add nsw i32 %38, %add147, !dbg !2173
  call void @llvm.dbg.value(metadata i32 %add185, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @draw_handle(i32 %Y.2, i32 %add185, i32 0, i32 5), !dbg !2174
  %idxprom186 = sext i32 %rem to i64, !dbg !2176
  %arrayidx187 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom186, !dbg !2176
  %vol_right188 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx187, i32 0, i32 1, !dbg !2177
  %39 = load i32, i32* %vol_right188, align 4, !dbg !2177
  %add189 = add nsw i32 %39, %add147, !dbg !2178
  call void @llvm.dbg.value(metadata i32 %add189, metadata !1869, metadata !DIExpression()), !dbg !1840
  %add190 = add nsw i32 %Y.2, 1, !dbg !2179
  call void @draw_handle(i32 %add190, i32 %add189, i32 0, i32 5), !dbg !2181
  %idxprom191 = sext i32 %rem to i64, !dbg !2182
  %arrayidx192 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom191, !dbg !2182
  %vol_left193 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx192, i32 0, i32 0, !dbg !2183
  %40 = load i32, i32* %vol_left193, align 4, !dbg !2183
  %idxprom194 = sext i32 %rem to i64, !dbg !2184
  %arrayidx195 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom194, !dbg !2184
  %vol_right196 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx195, i32 0, i32 1, !dbg !2185
  %41 = load i32, i32* %vol_right196, align 4, !dbg !2185
  %add197 = add nsw i32 %40, %41, !dbg !2186
  %div198 = sdiv i32 %add197, 2, !dbg !2187
  call void @llvm.dbg.value(metadata i32 %div198, metadata !2188, metadata !DIExpression()), !dbg !1840
  %idxprom199 = sext i32 %rem to i64, !dbg !2189
  %arrayidx200 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom199, !dbg !2189
  %vol_left201 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx200, i32 0, i32 0, !dbg !2190
  store i32 %div198, i32* %vol_left201, align 4, !dbg !2191
  %idxprom202 = sext i32 %rem to i64, !dbg !2192
  %arrayidx203 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom202, !dbg !2192
  %vol_right204 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx203, i32 0, i32 1, !dbg !2193
  store i32 %div198, i32* %vol_right204, align 4, !dbg !2194
  br label %if.end205, !dbg !2195

if.end205:                                        ; preds = %if.then181, %if.then174
  br label %if.end206, !dbg !2196

if.end206:                                        ; preds = %if.end205, %if.end172
  %idxprom207 = sext i32 %rem to i64, !dbg !2197
  %arrayidx208 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom207, !dbg !2197
  %dev_nr209 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx208, i32 0, i32 2, !dbg !2199
  %42 = load i32, i32* %dev_nr209, align 4, !dbg !2199
  %shl210 = shl i32 1, %42, !dbg !2200
  %43 = load i32, i32* @stereodevs, align 4, !dbg !2201
  %and211 = and i32 %shl210, %43, !dbg !2202
  %tobool212 = icmp ne i32 %and211, 0, !dbg !2202
  br i1 %tobool212, label %if.then213, label %if.else232, !dbg !2203

if.then213:                                       ; preds = %if.end206
  %44 = load i32, i32* %locked, align 4, !dbg !2204
  %tobool214 = icmp ne i32 %44, 0, !dbg !2204
  br i1 %tobool214, label %if.else223, label %if.then215, !dbg !2207

if.then215:                                       ; preds = %if.then213
  %idxprom216 = sext i32 %rem to i64, !dbg !2208
  %arrayidx217 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom216, !dbg !2208
  %vol_right218 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx217, i32 0, i32 1, !dbg !2210
  %45 = load i32, i32* %vol_right218, align 4, !dbg !2210
  %add219 = add nsw i32 %45, %add147, !dbg !2211
  call void @llvm.dbg.value(metadata i32 %add219, metadata !1869, metadata !DIExpression()), !dbg !1840
  %idxprom220 = sext i32 %rem to i64, !dbg !2212
  %arrayidx221 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom220, !dbg !2212
  %vol_right222 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx221, i32 0, i32 1, !dbg !2213
  call void @llvm.dbg.value(metadata i32* %vol_right222, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 0, metadata !1839, metadata !DIExpression()), !dbg !1840
  br label %if.end231, !dbg !2214

if.else223:                                       ; preds = %if.then213
  %idxprom224 = sext i32 %rem to i64, !dbg !2215
  %arrayidx225 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom224, !dbg !2215
  %vol_left226 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx225, i32 0, i32 0, !dbg !2217
  %46 = load i32, i32* %vol_left226, align 4, !dbg !2217
  %add227 = add nsw i32 %46, %add147, !dbg !2218
  call void @llvm.dbg.value(metadata i32 %add227, metadata !1869, metadata !DIExpression()), !dbg !1840
  %idxprom228 = sext i32 %rem to i64, !dbg !2219
  %arrayidx229 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom228, !dbg !2219
  %vol_left230 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx229, i32 0, i32 0, !dbg !2220
  call void @llvm.dbg.value(metadata i32* %vol_left230, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 1, metadata !1839, metadata !DIExpression()), !dbg !1840
  br label %if.end231

if.end231:                                        ; preds = %if.else223, %if.then215
  %volume.1 = phi i32* [ %vol_left230, %if.else223 ], [ %vol_right222, %if.then215 ], !dbg !2221
  %left.1 = phi i32 [ 1, %if.else223 ], [ 0, %if.then215 ], !dbg !2221
  %X.3 = phi i32 [ %add227, %if.else223 ], [ %add219, %if.then215 ], !dbg !2221
  call void @llvm.dbg.value(metadata i32 %X.3, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.1, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.1, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %if.end240, !dbg !2222

if.else232:                                       ; preds = %if.end206
  %idxprom233 = sext i32 %rem to i64, !dbg !2223
  %arrayidx234 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom233, !dbg !2223
  %vol_left235 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx234, i32 0, i32 0, !dbg !2225
  %47 = load i32, i32* %vol_left235, align 4, !dbg !2225
  %add236 = add nsw i32 %47, %add147, !dbg !2226
  call void @llvm.dbg.value(metadata i32 %add236, metadata !1869, metadata !DIExpression()), !dbg !1840
  %idxprom237 = sext i32 %rem to i64, !dbg !2227
  %arrayidx238 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom237, !dbg !2227
  %vol_left239 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx238, i32 0, i32 0, !dbg !2228
  call void @llvm.dbg.value(metadata i32* %vol_left239, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 1, metadata !1839, metadata !DIExpression()), !dbg !1840
  br label %if.end240

if.end240:                                        ; preds = %if.else232, %if.end231
  %volume.2 = phi i32* [ %volume.1, %if.end231 ], [ %vol_left239, %if.else232 ], !dbg !2229
  %left.2 = phi i32 [ %left.1, %if.end231 ], [ 1, %if.else232 ], !dbg !2229
  %X.4 = phi i32 [ %X.3, %if.end231 ], [ %add236, %if.else232 ], !dbg !2229
  call void @llvm.dbg.value(metadata i32 %X.4, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.2, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.2, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %if.end258, !dbg !2230

if.else241:                                       ; preds = %if.else134
  %cmp242 = icmp eq i32 %left.0, 0, !dbg !2231
  br i1 %cmp242, label %if.then243, label %if.end257, !dbg !2233

if.then243:                                       ; preds = %if.else241
  %idxprom244 = sext i32 %dev_nr.0 to i64, !dbg !2234
  %arrayidx245 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom244, !dbg !2234
  %dev_nr246 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx245, i32 0, i32 2, !dbg !2237
  %48 = load i32, i32* %dev_nr246, align 4, !dbg !2237
  %shl247 = shl i32 1, %48, !dbg !2238
  %49 = load i32, i32* @stereodevs, align 4, !dbg !2239
  %and248 = and i32 %shl247, %49, !dbg !2240
  %tobool249 = icmp ne i32 %and248, 0, !dbg !2240
  br i1 %tobool249, label %if.then250, label %if.end256, !dbg !2241

if.then250:                                       ; preds = %if.then243
  %dec251 = add nsw i32 %Y.0, -1, !dbg !2242
  call void @llvm.dbg.value(metadata i32 %dec251, metadata !1873, metadata !DIExpression()), !dbg !1840
  %idxprom252 = sext i32 %dev_nr.0 to i64, !dbg !2244
  %arrayidx253 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom252, !dbg !2244
  %vol_left254 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx253, i32 0, i32 0, !dbg !2245
  call void @llvm.dbg.value(metadata i32* %vol_left254, metadata !1865, metadata !DIExpression()), !dbg !1840
  %50 = load i32, i32* %vol_left254, align 4, !dbg !2246
  %add255 = add nsw i32 %X_rest.0, %50, !dbg !2247
  call void @llvm.dbg.value(metadata i32 %add255, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 1, metadata !1839, metadata !DIExpression()), !dbg !1840
  br label %if.end256, !dbg !2248

if.end256:                                        ; preds = %if.then250, %if.then243
  %volume.3 = phi i32* [ %vol_left254, %if.then250 ], [ %volume.0, %if.then243 ], !dbg !2044
  %left.3 = phi i32 [ 1, %if.then250 ], [ %left.0, %if.then243 ], !dbg !2044
  %Y.3 = phi i32 [ %dec251, %if.then250 ], [ %Y.0, %if.then243 ], !dbg !2044
  %X.5 = phi i32 [ %add255, %if.then250 ], [ %X.0, %if.then243 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.5, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.3, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.3, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.3, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %if.end257, !dbg !2249

if.end257:                                        ; preds = %if.end256, %if.else241
  %volume.4 = phi i32* [ %volume.3, %if.end256 ], [ %volume.0, %if.else241 ], !dbg !2044
  %left.4 = phi i32 [ %left.3, %if.end256 ], [ %left.0, %if.else241 ], !dbg !2044
  %Y.4 = phi i32 [ %Y.3, %if.end256 ], [ %Y.0, %if.else241 ], !dbg !2044
  %X.6 = phi i32 [ %X.5, %if.end256 ], [ %X.0, %if.else241 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.6, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.4, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.4, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.4, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %if.end258

if.end258:                                        ; preds = %if.end257, %if.end240
  %X_rest.1 = phi i32 [ %add147, %if.end240 ], [ %X_rest.0, %if.end257 ], !dbg !2044
  %volume.5 = phi i32* [ %volume.2, %if.end240 ], [ %volume.4, %if.end257 ], !dbg !2250
  %dev_nr.1 = phi i32 [ %rem, %if.end240 ], [ %dev_nr.0, %if.end257 ], !dbg !2044
  %left.5 = phi i32 [ %left.2, %if.end240 ], [ %left.4, %if.end257 ], !dbg !2250
  %Y.5 = phi i32 [ %Y.2, %if.end240 ], [ %Y.4, %if.end257 ], !dbg !2250
  %X.7 = phi i32 [ %X.4, %if.end240 ], [ %X.6, %if.end257 ], !dbg !2250
  call void @llvm.dbg.value(metadata i32 %X.7, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.5, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.5, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %dev_nr.1, metadata !1844, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.5, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %X_rest.1, metadata !1848, metadata !DIExpression()), !dbg !1840
  br label %if.end259

if.end259:                                        ; preds = %if.end258
  br label %if.end260

if.end260:                                        ; preds = %if.end259
  call void @draw_handle(i32 %Y.5, i32 %X.7, i32 1, i32 4), !dbg !2251
  %51 = load i32, i32* %locked, align 4, !dbg !2254
  %tobool261 = icmp ne i32 %51, 0, !dbg !2254
  br i1 %tobool261, label %if.then262, label %if.end272, !dbg !2256

if.then262:                                       ; preds = %if.end260
  %idxprom263 = sext i32 %dev_nr.1 to i64, !dbg !2257
  %arrayidx264 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom263, !dbg !2257
  %dev_nr265 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx264, i32 0, i32 2, !dbg !2260
  %52 = load i32, i32* %dev_nr265, align 4, !dbg !2260
  %shl266 = shl i32 1, %52, !dbg !2261
  %53 = load i32, i32* @stereodevs, align 4, !dbg !2262
  %and267 = and i32 %shl266, %53, !dbg !2263
  %tobool268 = icmp ne i32 %and267, 0, !dbg !2263
  br i1 %tobool268, label %if.then269, label %if.end271, !dbg !2264

if.then269:                                       ; preds = %if.then262
  %add270 = add nsw i32 %Y.5, 1, !dbg !2265
  call void @draw_handle(i32 %add270, i32 %X.7, i32 1, i32 4), !dbg !2269
  br label %if.end271, !dbg !2270

if.end271:                                        ; preds = %if.then269, %if.then262
  br label %if.end272, !dbg !2271

if.end272:                                        ; preds = %if.end271, %if.end260
  br label %switch_break, !dbg !2272

case_258:                                         ; preds = %if.then31
  call void @draw_handle(i32 %Y.0, i32 %X.0, i32 0, i32 4), !dbg !2273
  %54 = load i32, i32* %locked, align 4, !dbg !2276
  %tobool273 = icmp ne i32 %54, 0, !dbg !2276
  br i1 %tobool273, label %if.then274, label %if.end284, !dbg !2278

if.then274:                                       ; preds = %case_258
  %idxprom275 = sext i32 %dev_nr.0 to i64, !dbg !2279
  %arrayidx276 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom275, !dbg !2279
  %dev_nr277 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx276, i32 0, i32 2, !dbg !2282
  %55 = load i32, i32* %dev_nr277, align 4, !dbg !2282
  %shl278 = shl i32 1, %55, !dbg !2283
  %56 = load i32, i32* @stereodevs, align 4, !dbg !2284
  %and279 = and i32 %shl278, %56, !dbg !2285
  %tobool280 = icmp ne i32 %and279, 0, !dbg !2285
  br i1 %tobool280, label %if.then281, label %if.end283, !dbg !2286

if.then281:                                       ; preds = %if.then274
  %add282 = add nsw i32 %Y.0, 1, !dbg !2287
  call void @draw_handle(i32 %add282, i32 %X.0, i32 0, i32 4), !dbg !2291
  br label %if.end283, !dbg !2292

if.end283:                                        ; preds = %if.then281, %if.then274
  br label %if.end284, !dbg !2293

if.end284:                                        ; preds = %if.end283, %case_258
  %cmp285 = icmp eq i32 %left.0, 0, !dbg !2294
  br i1 %cmp285, label %if.then286, label %if.else287, !dbg !2296

if.then286:                                       ; preds = %if.end284
  br label %_L___0, !dbg !2297

if.else287:                                       ; preds = %if.end284
  %57 = load i32, i32* %locked, align 4, !dbg !2299
  %tobool288 = icmp ne i32 %57, 0, !dbg !2299
  br i1 %tobool288, label %if.then289, label %if.else290, !dbg !2301

if.then289:                                       ; preds = %if.else287
  br label %_L___0, !dbg !2302

if.else290:                                       ; preds = %if.else287
  %idxprom291 = sext i32 %dev_nr.0 to i64, !dbg !2304
  %arrayidx292 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom291, !dbg !2304
  %dev_nr293 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx292, i32 0, i32 2, !dbg !2306
  %58 = load i32, i32* %dev_nr293, align 4, !dbg !2306
  %shl294 = shl i32 1, %58, !dbg !2307
  %59 = load i32, i32* @stereodevs, align 4, !dbg !2308
  %and295 = and i32 %shl294, %59, !dbg !2309
  %tobool296 = icmp ne i32 %and295, 0, !dbg !2309
  br i1 %tobool296, label %if.else349, label %if.then297, !dbg !2299

if.then297:                                       ; preds = %if.else290
  br label %_L___0, !dbg !2310

_L___0:                                           ; preds = %if.then297, %if.then289, %if.then286
  %add298 = add nsw i32 %dev_nr.0, 1, !dbg !2311
  %60 = load i32, i32* @dev_count, align 4, !dbg !2313
  %rem299 = srem i32 %add298, %60, !dbg !2314
  call void @llvm.dbg.value(metadata i32 %rem299, metadata !1844, metadata !DIExpression()), !dbg !1840
  %idxprom300 = sext i32 %rem299 to i64, !dbg !2315
  %arrayidx301 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom300, !dbg !2315
  %X302 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx301, i32 0, i32 3, !dbg !2316
  %61 = load i32, i32* %X302, align 4, !dbg !2316
  %add303 = add nsw i32 %61, 14, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %add303, metadata !1848, metadata !DIExpression()), !dbg !1840
  %idxprom304 = sext i32 %rem299 to i64, !dbg !2318
  %arrayidx305 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom304, !dbg !2318
  %Y306 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx305, i32 0, i32 4, !dbg !2319
  %62 = load i32, i32* %Y306, align 4, !dbg !2319
  %add307 = add nsw i32 %62, 1, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %add307, metadata !1873, metadata !DIExpression()), !dbg !1840
  %63 = load i32, i32* %locked, align 4, !dbg !2321
  %tobool308 = icmp ne i32 %63, 0, !dbg !2321
  br i1 %tobool308, label %if.then309, label %if.end341, !dbg !2323

if.then309:                                       ; preds = %_L___0
  %idxprom310 = sext i32 %rem299 to i64, !dbg !2324
  %arrayidx311 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom310, !dbg !2324
  %dev_nr312 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx311, i32 0, i32 2, !dbg !2327
  %64 = load i32, i32* %dev_nr312, align 4, !dbg !2327
  %shl313 = shl i32 1, %64, !dbg !2328
  %65 = load i32, i32* @stereodevs, align 4, !dbg !2329
  %and314 = and i32 %shl313, %65, !dbg !2330
  %tobool315 = icmp ne i32 %and314, 0, !dbg !2330
  br i1 %tobool315, label %if.then316, label %if.end340, !dbg !2331

if.then316:                                       ; preds = %if.then309
  %idxprom317 = sext i32 %rem299 to i64, !dbg !2332
  %arrayidx318 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom317, !dbg !2332
  %vol_left319 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx318, i32 0, i32 0, !dbg !2335
  %66 = load i32, i32* %vol_left319, align 4, !dbg !2335
  %add320 = add nsw i32 %66, %add303, !dbg !2336
  call void @llvm.dbg.value(metadata i32 %add320, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @draw_handle(i32 %add307, i32 %add320, i32 0, i32 5), !dbg !2337
  %idxprom321 = sext i32 %rem299 to i64, !dbg !2339
  %arrayidx322 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom321, !dbg !2339
  %vol_right323 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx322, i32 0, i32 1, !dbg !2340
  %67 = load i32, i32* %vol_right323, align 4, !dbg !2340
  %add324 = add nsw i32 %67, %add303, !dbg !2341
  call void @llvm.dbg.value(metadata i32 %add324, metadata !1869, metadata !DIExpression()), !dbg !1840
  %add325 = add nsw i32 %add307, 1, !dbg !2342
  call void @draw_handle(i32 %add325, i32 %add324, i32 0, i32 5), !dbg !2344
  %idxprom326 = sext i32 %rem299 to i64, !dbg !2345
  %arrayidx327 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom326, !dbg !2345
  %vol_left328 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx327, i32 0, i32 0, !dbg !2346
  %68 = load i32, i32* %vol_left328, align 4, !dbg !2346
  %idxprom329 = sext i32 %rem299 to i64, !dbg !2347
  %arrayidx330 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom329, !dbg !2347
  %vol_right331 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx330, i32 0, i32 1, !dbg !2348
  %69 = load i32, i32* %vol_right331, align 4, !dbg !2348
  %add332 = add nsw i32 %68, %69, !dbg !2349
  %div333 = sdiv i32 %add332, 2, !dbg !2350
  call void @llvm.dbg.value(metadata i32 %div333, metadata !2351, metadata !DIExpression()), !dbg !1840
  %idxprom334 = sext i32 %rem299 to i64, !dbg !2352
  %arrayidx335 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom334, !dbg !2352
  %vol_left336 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx335, i32 0, i32 0, !dbg !2353
  store i32 %div333, i32* %vol_left336, align 4, !dbg !2354
  %idxprom337 = sext i32 %rem299 to i64, !dbg !2355
  %arrayidx338 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom337, !dbg !2355
  %vol_right339 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx338, i32 0, i32 1, !dbg !2356
  store i32 %div333, i32* %vol_right339, align 4, !dbg !2357
  br label %if.end340, !dbg !2358

if.end340:                                        ; preds = %if.then316, %if.then309
  br label %if.end341, !dbg !2359

if.end341:                                        ; preds = %if.end340, %_L___0
  %idxprom342 = sext i32 %rem299 to i64, !dbg !2360
  %arrayidx343 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom342, !dbg !2360
  %vol_left344 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx343, i32 0, i32 0, !dbg !2361
  %70 = load i32, i32* %vol_left344, align 4, !dbg !2361
  %add345 = add nsw i32 %70, %add303, !dbg !2362
  call void @llvm.dbg.value(metadata i32 %add345, metadata !1869, metadata !DIExpression()), !dbg !1840
  %idxprom346 = sext i32 %rem299 to i64, !dbg !2363
  %arrayidx347 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom346, !dbg !2363
  %vol_left348 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx347, i32 0, i32 0, !dbg !2364
  call void @llvm.dbg.value(metadata i32* %vol_left348, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 1, metadata !1839, metadata !DIExpression()), !dbg !1840
  br label %if.end366, !dbg !2365

if.else349:                                       ; preds = %if.else290
  %cmp350 = icmp eq i32 %left.0, 1, !dbg !2366
  br i1 %cmp350, label %if.then351, label %if.end365, !dbg !2368

if.then351:                                       ; preds = %if.else349
  %idxprom352 = sext i32 %dev_nr.0 to i64, !dbg !2369
  %arrayidx353 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom352, !dbg !2369
  %dev_nr354 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx353, i32 0, i32 2, !dbg !2372
  %71 = load i32, i32* %dev_nr354, align 4, !dbg !2372
  %shl355 = shl i32 1, %71, !dbg !2373
  %72 = load i32, i32* @stereodevs, align 4, !dbg !2374
  %and356 = and i32 %shl355, %72, !dbg !2375
  %tobool357 = icmp ne i32 %and356, 0, !dbg !2375
  br i1 %tobool357, label %if.then358, label %if.end364, !dbg !2376

if.then358:                                       ; preds = %if.then351
  %inc359 = add nsw i32 %Y.0, 1, !dbg !2377
  call void @llvm.dbg.value(metadata i32 %inc359, metadata !1873, metadata !DIExpression()), !dbg !1840
  %idxprom360 = sext i32 %dev_nr.0 to i64, !dbg !2379
  %arrayidx361 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom360, !dbg !2379
  %vol_right362 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx361, i32 0, i32 1, !dbg !2380
  call void @llvm.dbg.value(metadata i32* %vol_right362, metadata !1865, metadata !DIExpression()), !dbg !1840
  %73 = load i32, i32* %vol_right362, align 4, !dbg !2381
  %add363 = add nsw i32 %X_rest.0, %73, !dbg !2382
  call void @llvm.dbg.value(metadata i32 %add363, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 0, metadata !1839, metadata !DIExpression()), !dbg !1840
  br label %if.end364, !dbg !2383

if.end364:                                        ; preds = %if.then358, %if.then351
  %volume.6 = phi i32* [ %vol_right362, %if.then358 ], [ %volume.0, %if.then351 ], !dbg !2044
  %left.6 = phi i32 [ 0, %if.then358 ], [ %left.0, %if.then351 ], !dbg !2044
  %Y.6 = phi i32 [ %inc359, %if.then358 ], [ %Y.0, %if.then351 ], !dbg !2044
  %X.8 = phi i32 [ %add363, %if.then358 ], [ %X.0, %if.then351 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.8, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.6, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.6, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.6, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %if.end365, !dbg !2384

if.end365:                                        ; preds = %if.end364, %if.else349
  %volume.7 = phi i32* [ %volume.6, %if.end364 ], [ %volume.0, %if.else349 ], !dbg !2044
  %left.7 = phi i32 [ %left.6, %if.end364 ], [ %left.0, %if.else349 ], !dbg !2044
  %Y.7 = phi i32 [ %Y.6, %if.end364 ], [ %Y.0, %if.else349 ], !dbg !2044
  %X.9 = phi i32 [ %X.8, %if.end364 ], [ %X.0, %if.else349 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.9, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.7, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.7, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.7, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %if.end366

if.end366:                                        ; preds = %if.end365, %if.end341
  %X_rest.2 = phi i32 [ %add303, %if.end341 ], [ %X_rest.0, %if.end365 ], !dbg !2044
  %volume.8 = phi i32* [ %vol_left348, %if.end341 ], [ %volume.7, %if.end365 ], !dbg !2385
  %dev_nr.2 = phi i32 [ %rem299, %if.end341 ], [ %dev_nr.0, %if.end365 ], !dbg !2044
  %left.8 = phi i32 [ 1, %if.end341 ], [ %left.7, %if.end365 ], !dbg !2385
  %Y.8 = phi i32 [ %add307, %if.end341 ], [ %Y.7, %if.end365 ], !dbg !2385
  %X.10 = phi i32 [ %add345, %if.end341 ], [ %X.9, %if.end365 ], !dbg !2385
  call void @llvm.dbg.value(metadata i32 %X.10, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.8, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.8, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %dev_nr.2, metadata !1844, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.8, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %X_rest.2, metadata !1848, metadata !DIExpression()), !dbg !1840
  br label %if.end367

if.end367:                                        ; preds = %if.end366
  br label %if.end368

if.end368:                                        ; preds = %if.end367
  call void @draw_handle(i32 %Y.8, i32 %X.10, i32 1, i32 4), !dbg !2386
  %74 = load i32, i32* %locked, align 4, !dbg !2389
  %tobool369 = icmp ne i32 %74, 0, !dbg !2389
  br i1 %tobool369, label %if.then370, label %if.end380, !dbg !2391

if.then370:                                       ; preds = %if.end368
  %idxprom371 = sext i32 %dev_nr.2 to i64, !dbg !2392
  %arrayidx372 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom371, !dbg !2392
  %dev_nr373 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx372, i32 0, i32 2, !dbg !2395
  %75 = load i32, i32* %dev_nr373, align 4, !dbg !2395
  %shl374 = shl i32 1, %75, !dbg !2396
  %76 = load i32, i32* @stereodevs, align 4, !dbg !2397
  %and375 = and i32 %shl374, %76, !dbg !2398
  %tobool376 = icmp ne i32 %and375, 0, !dbg !2398
  br i1 %tobool376, label %if.then377, label %if.end379, !dbg !2399

if.then377:                                       ; preds = %if.then370
  %add378 = add nsw i32 %Y.8, 1, !dbg !2400
  call void @draw_handle(i32 %add378, i32 %X.10, i32 1, i32 4), !dbg !2404
  br label %if.end379, !dbg !2405

if.end379:                                        ; preds = %if.then377, %if.then370
  br label %if.end380, !dbg !2406

if.end380:                                        ; preds = %if.end379, %if.end368
  br label %switch_break, !dbg !2407

case_82:                                          ; preds = %if.then37, %if.then34
  br label %case_114, !dbg !2407

case_114:                                         ; preds = %case_82
  %77 = load i32, i32* @recmask, align 4, !dbg !2408
  %call381 = call i32 @getbits(i32 %77, i32 %dev_nr.0, i32 1), !dbg !2411
  call void @llvm.dbg.value(metadata i32 %call381, metadata !2412, metadata !DIExpression()), !dbg !1840
  %tobool382 = icmp ne i32 %call381, 0, !dbg !2413
  br i1 %tobool382, label %if.then383, label %if.end434, !dbg !2415

if.then383:                                       ; preds = %case_114
  %78 = load i32, i32* @recsrc, align 4, !dbg !2416
  %idxprom384 = sext i32 %dev_nr.0 to i64, !dbg !2420
  %arrayidx385 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom384, !dbg !2420
  %dev_nr386 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx385, i32 0, i32 2, !dbg !2421
  %79 = load i32, i32* %dev_nr386, align 4, !dbg !2421
  %call387 = call i32 @getbits(i32 %78, i32 %79, i32 1), !dbg !2422
  call void @llvm.dbg.value(metadata i32 %call387, metadata !2423, metadata !DIExpression()), !dbg !1840
  %tobool388 = icmp ne i32 %call387, 0, !dbg !2424
  br i1 %tobool388, label %if.then389, label %if.else395, !dbg !2426

if.then389:                                       ; preds = %if.then383
  %idxprom390 = sext i32 %dev_nr.0 to i64, !dbg !2427
  %arrayidx391 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom390, !dbg !2427
  %dev_nr392 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx391, i32 0, i32 2, !dbg !2429
  %80 = load i32, i32* %dev_nr392, align 4, !dbg !2429
  %shl393 = shl i32 1, %80, !dbg !2430
  %neg = xor i32 %shl393, -1, !dbg !2431
  %81 = load i32, i32* @recsrc, align 4, !dbg !2432
  %and394 = and i32 %81, %neg, !dbg !2432
  store i32 %and394, i32* @recsrc, align 4, !dbg !2432
  br label %if.end400, !dbg !2433

if.else395:                                       ; preds = %if.then383
  %idxprom396 = sext i32 %dev_nr.0 to i64, !dbg !2434
  %arrayidx397 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom396, !dbg !2434
  %dev_nr398 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx397, i32 0, i32 2, !dbg !2436
  %82 = load i32, i32* %dev_nr398, align 4, !dbg !2436
  %shl399 = shl i32 1, %82, !dbg !2437
  %83 = load i32, i32* @recsrc, align 4, !dbg !2438
  %or = or i32 %83, %shl399, !dbg !2438
  store i32 %or, i32* @recsrc, align 4, !dbg !2438
  br label %if.end400

if.end400:                                        ; preds = %if.else395, %if.then389
  %84 = load i32, i32* @mixer_fd, align 4, !dbg !2439
  %call401 = call i32 (i32, i64, ...) @ioctl(i32 %84, i64 3221507583, i32* @recsrc) #9, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %call401, metadata !2443, metadata !DIExpression()), !dbg !1840
  %cmp402 = icmp eq i32 %call401, -1, !dbg !2444
  br i1 %cmp402, label %if.then403, label %if.end405, !dbg !2446

if.then403:                                       ; preds = %if.end400
  call void @finish(i32 0), !dbg !2447
  %85 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2451
  %86 = load i8*, i8** @mixer_dev, align 8, !dbg !2453
  %call404 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %85, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.148, i32 0, i32 0), i8* %86), !dbg !2454
  call void @exit(i32 -1) #7, !dbg !2455
  unreachable, !dbg !2455

if.end405:                                        ; preds = %if.end400
  %87 = load i32, i32* @mixer_fd, align 4, !dbg !2457
  %call406 = call i32 (i32, i64, ...) @ioctl(i32 %87, i64 2147765759, i32* @recsrc) #9, !dbg !2460
  call void @llvm.dbg.value(metadata i32 %call406, metadata !2461, metadata !DIExpression()), !dbg !1840
  %cmp407 = icmp eq i32 %call406, -1, !dbg !2462
  br i1 %cmp407, label %if.then408, label %if.end410, !dbg !2464

if.then408:                                       ; preds = %if.end405
  call void @finish(i32 0), !dbg !2465
  %88 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2469
  %89 = load i8*, i8** @mixer_dev, align 8, !dbg !2471
  %call409 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %88, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.149, i32 0, i32 0), i8* %89), !dbg !2472
  call void @exit(i32 -1) #7, !dbg !2473
  unreachable, !dbg !2473

if.end410:                                        ; preds = %if.end405
  call void @llvm.dbg.value(metadata i32 0, metadata !2475, metadata !DIExpression()), !dbg !1840
  br label %while.body412, !dbg !2476

while.body412:                                    ; preds = %if.end432, %if.end410
  %i.0 = phi i32 [ 0, %if.end410 ], [ %inc433, %if.end432 ], !dbg !2479
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2475, metadata !DIExpression()), !dbg !1840
  br label %while_continue___4, !dbg !2480

while_continue___4:                               ; preds = %while.body412
  br label %while_continue___0, !dbg !2480

while_continue___0:                               ; preds = %while_continue___4
  %cmp413 = icmp slt i32 %i.0, 25, !dbg !2481
  br i1 %cmp413, label %if.end415, label %if.then414, !dbg !2484

if.then414:                                       ; preds = %while_continue___0
  br label %while_break___0, !dbg !2485

if.end415:                                        ; preds = %while_continue___0
  %90 = load i32, i32* @recmask, align 4, !dbg !2487
  %call416 = call i32 @getbits(i32 %90, i32 %i.0, i32 1), !dbg !2490
  call void @llvm.dbg.value(metadata i32 %call416, metadata !2491, metadata !DIExpression()), !dbg !1840
  %tobool417 = icmp ne i32 %call416, 0, !dbg !2492
  br i1 %tobool417, label %if.then418, label %if.end432, !dbg !2494

if.then418:                                       ; preds = %if.end415
  %91 = load i32, i32* @recsrc, align 4, !dbg !2495
  %call419 = call i32 @getbits(i32 %91, i32 %i.0, i32 1), !dbg !2499
  call void @llvm.dbg.value(metadata i32 %call419, metadata !2423, metadata !DIExpression()), !dbg !1840
  %tobool420 = icmp ne i32 %call419, 0, !dbg !2500
  br i1 %tobool420, label %if.then421, label %if.else422, !dbg !2502

if.then421:                                       ; preds = %if.then418
  call void @llvm.dbg.value(metadata i32 1, metadata !2503, metadata !DIExpression()), !dbg !1840
  br label %if.end423, !dbg !2504

if.else422:                                       ; preds = %if.then418
  call void @llvm.dbg.value(metadata i32 2, metadata !2503, metadata !DIExpression()), !dbg !1840
  br label %if.end423

if.end423:                                        ; preds = %if.else422, %if.then421
  %tmp___2.0 = phi i32 [ 1, %if.then421 ], [ 2, %if.else422 ], !dbg !2506
  call void @llvm.dbg.value(metadata i32 %tmp___2.0, metadata !2503, metadata !DIExpression()), !dbg !1840
  %idxprom424 = sext i32 %i.0 to i64, !dbg !2507
  %arrayidx425 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom424, !dbg !2507
  %Y426 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx425, i32 0, i32 4, !dbg !2510
  %92 = load i32, i32* %Y426, align 4, !dbg !2510
  %add427 = add nsw i32 %92, 2, !dbg !2511
  %idxprom428 = sext i32 %i.0 to i64, !dbg !2512
  %arrayidx429 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom428, !dbg !2512
  %X430 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx429, i32 0, i32 3, !dbg !2513
  %93 = load i32, i32* %X430, align 4, !dbg !2513
  %add431 = add nsw i32 %93, 4, !dbg !2514
  call void @draw_rec_lamp(i32 %add427, i32 %add431, i32 %tmp___2.0), !dbg !2515
  br label %if.end432, !dbg !2516

if.end432:                                        ; preds = %if.end423, %if.end415
  %inc433 = add nsw i32 %i.0, 1, !dbg !2517
  call void @llvm.dbg.value(metadata i32 %inc433, metadata !2475, metadata !DIExpression()), !dbg !1840
  br label %while.body412, !dbg !2476, !llvm.loop !2518

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !2520

while_break___0:                                  ; preds = %while_break___4, %if.then414
  br label %if.end434, !dbg !2521

if.end434:                                        ; preds = %while_break___0, %case_114
  br label %switch_break, !dbg !2522

case_76:                                          ; preds = %if.then43, %if.then40
  br label %case_108, !dbg !2522

case_108:                                         ; preds = %case_76
  %94 = load i32, i32* %locked, align 4, !dbg !2523
  %tobool435 = icmp ne i32 %94, 0, !dbg !2523
  br i1 %tobool435, label %if.then436, label %if.else452, !dbg !2525

if.then436:                                       ; preds = %case_108
  %idxprom437 = sext i32 %dev_nr.0 to i64, !dbg !2526
  %arrayidx438 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom437, !dbg !2526
  %dev_nr439 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx438, i32 0, i32 2, !dbg !2529
  %95 = load i32, i32* %dev_nr439, align 4, !dbg !2529
  %shl440 = shl i32 1, %95, !dbg !2530
  %96 = load i32, i32* @stereodevs, align 4, !dbg !2531
  %and441 = and i32 %shl440, %96, !dbg !2532
  %tobool442 = icmp ne i32 %and441, 0, !dbg !2532
  br i1 %tobool442, label %if.then443, label %if.else450, !dbg !2533

if.then443:                                       ; preds = %if.then436
  %tobool444 = icmp ne i32 %left.0, 0, !dbg !2534
  br i1 %tobool444, label %if.then445, label %if.else447, !dbg !2537

if.then445:                                       ; preds = %if.then443
  %add446 = add nsw i32 %Y.0, 1, !dbg !2538
  call void @draw_handle(i32 %add446, i32 %X.0, i32 0, i32 4), !dbg !2542
  br label %if.end449, !dbg !2543

if.else447:                                       ; preds = %if.then443
  %sub448 = sub nsw i32 %Y.0, 1, !dbg !2544
  call void @draw_handle(i32 %sub448, i32 %X.0, i32 0, i32 4), !dbg !2548
  br label %if.end449

if.end449:                                        ; preds = %if.else447, %if.then445
  br label %if.end451, !dbg !2549

if.else450:                                       ; preds = %if.then436
  br label %_L___1, !dbg !2550

if.end451:                                        ; preds = %if.end449
  br label %if.end502, !dbg !2552

if.else452:                                       ; preds = %case_108
  br label %_L___1, !dbg !2552

_L___1:                                           ; preds = %if.else452, %if.else450
  %97 = load i32, i32* %locked, align 4, !dbg !2553
  %tobool453 = icmp ne i32 %97, 0, !dbg !2553
  br i1 %tobool453, label %if.end501, label %if.then454, !dbg !2555

if.then454:                                       ; preds = %_L___1
  %idxprom455 = sext i32 %dev_nr.0 to i64, !dbg !2556
  %arrayidx456 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom455, !dbg !2556
  %dev_nr457 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx456, i32 0, i32 2, !dbg !2559
  %98 = load i32, i32* %dev_nr457, align 4, !dbg !2559
  %shl458 = shl i32 1, %98, !dbg !2560
  %99 = load i32, i32* @stereodevs, align 4, !dbg !2561
  %and459 = and i32 %shl458, %99, !dbg !2562
  %tobool460 = icmp ne i32 %and459, 0, !dbg !2562
  br i1 %tobool460, label %if.then461, label %if.end500, !dbg !2563

if.then461:                                       ; preds = %if.then454
  call void @draw_handle(i32 %Y.0, i32 %X.0, i32 0, i32 5), !dbg !2564
  %tobool462 = icmp ne i32 %left.0, 0, !dbg !2568
  br i1 %tobool462, label %if.then463, label %if.else469, !dbg !2570

if.then463:                                       ; preds = %if.then461
  %idxprom464 = sext i32 %dev_nr.0 to i64, !dbg !2571
  %arrayidx465 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom464, !dbg !2571
  %vol_right466 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx465, i32 0, i32 1, !dbg !2574
  %100 = load i32, i32* %vol_right466, align 4, !dbg !2574
  %add467 = add nsw i32 %100, %X_rest.0, !dbg !2575
  call void @llvm.dbg.value(metadata i32 %add467, metadata !1869, metadata !DIExpression()), !dbg !1840
  %add468 = add nsw i32 %Y.0, 1, !dbg !2576
  call void @draw_handle(i32 %add468, i32 %add467, i32 0, i32 5), !dbg !2578
  br label %if.end475, !dbg !2579

if.else469:                                       ; preds = %if.then461
  %idxprom470 = sext i32 %dev_nr.0 to i64, !dbg !2580
  %arrayidx471 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom470, !dbg !2580
  %vol_left472 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx471, i32 0, i32 0, !dbg !2583
  %101 = load i32, i32* %vol_left472, align 4, !dbg !2583
  %add473 = add nsw i32 %101, %X_rest.0, !dbg !2584
  call void @llvm.dbg.value(metadata i32 %add473, metadata !1869, metadata !DIExpression()), !dbg !1840
  %sub474 = sub nsw i32 %Y.0, 1, !dbg !2585
  call void @draw_handle(i32 %sub474, i32 %add473, i32 0, i32 5), !dbg !2587
  br label %if.end475

if.end475:                                        ; preds = %if.else469, %if.then463
  %idxprom476 = sext i32 %dev_nr.0 to i64, !dbg !2588
  %arrayidx477 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom476, !dbg !2588
  %vol_left478 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx477, i32 0, i32 0, !dbg !2590
  %102 = load i32, i32* %vol_left478, align 4, !dbg !2590
  %idxprom479 = sext i32 %dev_nr.0 to i64, !dbg !2591
  %arrayidx480 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom479, !dbg !2591
  %vol_right481 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx480, i32 0, i32 1, !dbg !2592
  %103 = load i32, i32* %vol_right481, align 4, !dbg !2592
  %add482 = add nsw i32 %102, %103, !dbg !2593
  %div483 = sdiv i32 %add482, 2, !dbg !2594
  call void @llvm.dbg.value(metadata i32 %div483, metadata !2595, metadata !DIExpression()), !dbg !1840
  %idxprom484 = sext i32 %dev_nr.0 to i64, !dbg !2596
  %arrayidx485 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom484, !dbg !2596
  %vol_left486 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx485, i32 0, i32 0, !dbg !2597
  store i32 %div483, i32* %vol_left486, align 4, !dbg !2598
  %idxprom487 = sext i32 %dev_nr.0 to i64, !dbg !2599
  %arrayidx488 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom487, !dbg !2599
  %vol_right489 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx488, i32 0, i32 1, !dbg !2600
  store i32 %div483, i32* %vol_right489, align 4, !dbg !2601
  %idxprom490 = sext i32 %dev_nr.0 to i64, !dbg !2602
  %arrayidx491 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom490, !dbg !2602
  %vol_left492 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx491, i32 0, i32 0, !dbg !2603
  %104 = load i32, i32* %vol_left492, align 4, !dbg !2603
  %add493 = add nsw i32 %104, %X_rest.0, !dbg !2604
  call void @llvm.dbg.value(metadata i32 %add493, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @draw_handle(i32 %Y.0, i32 %add493, i32 1, i32 4), !dbg !2605
  %tobool494 = icmp ne i32 %left.0, 0, !dbg !2607
  br i1 %tobool494, label %if.then495, label %if.else497, !dbg !2609

if.then495:                                       ; preds = %if.end475
  %add496 = add nsw i32 %Y.0, 1, !dbg !2610
  call void @draw_handle(i32 %add496, i32 %add493, i32 1, i32 4), !dbg !2614
  br label %if.end499, !dbg !2615

if.else497:                                       ; preds = %if.end475
  %sub498 = sub nsw i32 %Y.0, 1, !dbg !2616
  call void @draw_handle(i32 %sub498, i32 %add493, i32 1, i32 4), !dbg !2620
  br label %if.end499

if.end499:                                        ; preds = %if.else497, %if.then495
  br label %if.end500, !dbg !2621

if.end500:                                        ; preds = %if.end499, %if.then454
  %X.11 = phi i32 [ %add493, %if.end499 ], [ %X.0, %if.then454 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.11, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end501, !dbg !2622

if.end501:                                        ; preds = %if.end500, %_L___1
  %X.12 = phi i32 [ %X.0, %_L___1 ], [ %X.11, %if.end500 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.12, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end502

if.end502:                                        ; preds = %if.end501, %if.end451
  %X.13 = phi i32 [ %X.0, %if.end451 ], [ %X.12, %if.end501 ], !dbg !1884
  call void @llvm.dbg.value(metadata i32 %X.13, metadata !1869, metadata !DIExpression()), !dbg !1840
  %105 = load i32, i32* %locked, align 4, !dbg !2623
  %add503 = add nsw i32 %105, 1, !dbg !2624
  %rem504 = srem i32 %add503, 2, !dbg !2625
  store i32 %rem504, i32* %locked, align 4, !dbg !2626
  %tobool505 = icmp ne i32 %left.0, 0, !dbg !2627
  br i1 %tobool505, label %if.end511, label %if.then506, !dbg !2629

if.then506:                                       ; preds = %if.end502
  %dec507 = add nsw i32 %Y.0, -1, !dbg !2630
  call void @llvm.dbg.value(metadata i32 %dec507, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 1, metadata !1839, metadata !DIExpression()), !dbg !1840
  %idxprom508 = sext i32 %dev_nr.0 to i64, !dbg !2632
  %arrayidx509 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom508, !dbg !2632
  %vol_left510 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx509, i32 0, i32 0, !dbg !2633
  call void @llvm.dbg.value(metadata i32* %vol_left510, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %if.end511, !dbg !2634

if.end511:                                        ; preds = %if.then506, %if.end502
  %volume.9 = phi i32* [ %volume.0, %if.end502 ], [ %vol_left510, %if.then506 ], !dbg !2044
  %left.9 = phi i32 [ %left.0, %if.end502 ], [ 1, %if.then506 ], !dbg !2044
  %Y.9 = phi i32 [ %Y.0, %if.end502 ], [ %dec507, %if.then506 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %Y.9, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.9, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.9, metadata !1865, metadata !DIExpression()), !dbg !1840
  br label %switch_break, !dbg !2635

case_83:                                          ; preds = %if.then49, %if.then46
  br label %case_115, !dbg !2635

case_115:                                         ; preds = %case_83
  %call512 = call %struct._IO_FILE* @fopen(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0)), !dbg !2636
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call512, metadata !2639, metadata !DIExpression()), !dbg !1840
  %106 = ptrtoint %struct._IO_FILE* %call512 to i64, !dbg !2640
  %cmp513 = icmp eq i64 %106, 0, !dbg !2642
  br i1 %cmp513, label %if.then514, label %if.end515, !dbg !2643

if.then514:                                       ; preds = %case_115
  call void @message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.137, i32 0, i32 0)), !dbg !2644
  br label %switch_break, !dbg !2648

if.end515:                                        ; preds = %case_115
  %107 = load i32, i32* %locked, align 4, !dbg !2649
  %108 = load i32, i32* @a3dse, align 4, !dbg !2652
  %109 = load i32, i32* @agc, align 4, !dbg !2653
  %call516 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call512, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32 %107, i32 %108, i32 %109), !dbg !2654
  call void @llvm.dbg.value(metadata i32 0, metadata !2655, metadata !DIExpression()), !dbg !1840
  br label %while.body518, !dbg !2656

while.body518:                                    ; preds = %if.end543, %if.end515
  %dev_nrs.0 = phi i32 [ 0, %if.end515 ], [ %inc545, %if.end543 ], !dbg !2659
  call void @llvm.dbg.value(metadata i32 %dev_nrs.0, metadata !2655, metadata !DIExpression()), !dbg !1840
  br label %while_continue___5, !dbg !2660

while_continue___5:                               ; preds = %while.body518
  br label %while_continue___1, !dbg !2660

while_continue___1:                               ; preds = %while_continue___5
  %cmp519 = icmp slt i32 %dev_nrs.0, 25, !dbg !2661
  br i1 %cmp519, label %if.end521, label %if.then520, !dbg !2664

if.then520:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !2665

if.end521:                                        ; preds = %while_continue___1
  %shl522 = shl i32 1, %dev_nrs.0, !dbg !2667
  %110 = load i32, i32* @devmask, align 4, !dbg !2669
  %and523 = and i32 %shl522, %110, !dbg !2670
  %tobool524 = icmp ne i32 %and523, 0, !dbg !2670
  br i1 %tobool524, label %if.then525, label %if.else542, !dbg !2671

if.then525:                                       ; preds = %if.end521
  %111 = load i32, i32* @mixer_fd, align 4, !dbg !2672
  %or526 = or i32 -2147463936, %dev_nrs.0, !dbg !2676
  %conv = zext i32 %or526 to i64, !dbg !2677
  %or527 = or i64 %conv, 262144, !dbg !2678
  %call528 = call i32 (i32, i64, ...) @ioctl(i32 %111, i64 %or527, i32* %pos) #9, !dbg !2679
  call void @llvm.dbg.value(metadata i32 %call528, metadata !2680, metadata !DIExpression()), !dbg !1840
  %cmp529 = icmp eq i32 %call528, -1, !dbg !2681
  br i1 %cmp529, label %if.then531, label %if.end533, !dbg !2683

if.then531:                                       ; preds = %if.then525
  call void @finish(i32 0), !dbg !2684
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2688
  %113 = load i8*, i8** @mixer_dev, align 8, !dbg !2690
  %call532 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %112, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i32 0, i32 0), i8* %113), !dbg !2691
  call void @exit(i32 1) #7, !dbg !2692
  unreachable, !dbg !2692

if.end533:                                        ; preds = %if.then525
  %114 = load i32, i32* %pos, align 4, !dbg !2694
  %call534 = call i32 @getbits(i32 %114, i32 7, i32 8), !dbg !2697
  store i32 %call534, i32* %vol_left, align 4, !dbg !2698
  %shl535 = shl i32 1, %dev_nrs.0, !dbg !2699
  %115 = load i32, i32* @stereodevs, align 4, !dbg !2701
  %and536 = and i32 %shl535, %115, !dbg !2702
  %tobool537 = icmp ne i32 %and536, 0, !dbg !2702
  br i1 %tobool537, label %if.then538, label %if.else540, !dbg !2703

if.then538:                                       ; preds = %if.end533
  %116 = load i32, i32* %pos, align 4, !dbg !2704
  %call539 = call i32 @getbits(i32 %116, i32 15, i32 8), !dbg !2708
  store i32 %call539, i32* %vol_right, align 4, !dbg !2709
  br label %if.end541, !dbg !2710

if.else540:                                       ; preds = %if.end533
  store i32 -1, i32* %vol_right, align 4, !dbg !2711
  br label %if.end541

if.end541:                                        ; preds = %if.else540, %if.then538
  br label %if.end543, !dbg !2713

if.else542:                                       ; preds = %if.end521
  store i32 -1, i32* %vol_left, align 4, !dbg !2714
  store i32 -1, i32* %vol_right, align 4, !dbg !2716
  br label %if.end543

if.end543:                                        ; preds = %if.else542, %if.end541
  %117 = load i32, i32* %vol_left, align 4, !dbg !2717
  %118 = load i32, i32* %vol_right, align 4, !dbg !2720
  %call544 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call512, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 %117, i32 %118), !dbg !2721
  %inc545 = add nsw i32 %dev_nrs.0, 1, !dbg !2722
  call void @llvm.dbg.value(metadata i32 %inc545, metadata !2655, metadata !DIExpression()), !dbg !1840
  br label %while.body518, !dbg !2656, !llvm.loop !2723

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !2725

while_break___1:                                  ; preds = %while_break___5, %if.then520
  %call546 = call i32 @fclose(%struct._IO_FILE* %call512), !dbg !2726
  call void @message(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.150, i32 0, i32 0)), !dbg !2729
  br label %switch_break, !dbg !2731

case_71:                                          ; preds = %if.then55, %if.then52
  br label %case_103, !dbg !2731

case_103:                                         ; preds = %case_71
  %call547 = call %struct._IO_FILE* @fopen(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0)), !dbg !2732
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call547, metadata !2639, metadata !DIExpression()), !dbg !1840
  %119 = ptrtoint %struct._IO_FILE* %call547 to i64, !dbg !2735
  %cmp548 = icmp eq i64 %119, 0, !dbg !2737
  br i1 %cmp548, label %if.then550, label %if.end551, !dbg !2738

if.then550:                                       ; preds = %case_103
  call void @message(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.151, i32 0, i32 0)), !dbg !2739
  br label %switch_break, !dbg !2743

if.end551:                                        ; preds = %case_103
  %call552 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %call547, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32* %locked, i32* @a3dse, i32* @agc), !dbg !2744
  %120 = load i32, i32* @mixer_fd, align 4, !dbg !2747
  %call553 = call i32 (i32, i64, ...) @ioctl(i32 %120, i64 3221507432, i32* @a3dse) #9, !dbg !2749
  %121 = load i32, i32* @a3dse, align 4, !dbg !2750
  %cmp554 = icmp eq i32 %121, 1, !dbg !2752
  br i1 %cmp554, label %if.then556, label %if.else564, !dbg !2753

if.then556:                                       ; preds = %if.end551
  %122 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2754
  %_attrs = getelementptr inbounds %struct._win_st, %struct._win_st* %122, i32 0, i32 7, !dbg !2757
  store i64 768, i64* %_attrs, align 8, !dbg !2758
  %123 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2759
  %124 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 4), align 16, !dbg !2761
  %add557 = add nsw i32 %124, 2, !dbg !2762
  %125 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 3), align 4, !dbg !2763
  %call558 = call i32 @wmove(%struct._win_st* %123, i32 %add557, i32 %125), !dbg !2764
  call void @llvm.dbg.value(metadata i32 %call558, metadata !2765, metadata !DIExpression()), !dbg !1840
  %cmp559 = icmp eq i32 %call558, -1, !dbg !2766
  br i1 %cmp559, label %if.end563, label %if.then561, !dbg !2768

if.then561:                                       ; preds = %if.then556
  %126 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2769
  %call562 = call i32 @waddnstr(%struct._win_st* %126, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 2), !dbg !2773
  br label %if.end563, !dbg !2774

if.end563:                                        ; preds = %if.then561, %if.then556
  br label %if.end573, !dbg !2775

if.else564:                                       ; preds = %if.end551
  %127 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2776
  %_attrs565 = getelementptr inbounds %struct._win_st, %struct._win_st* %127, i32 0, i32 7, !dbg !2779
  store i64 512, i64* %_attrs565, align 8, !dbg !2780
  %128 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2781
  %129 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 4), align 16, !dbg !2783
  %add566 = add nsw i32 %129, 2, !dbg !2784
  %130 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 3), align 4, !dbg !2785
  %call567 = call i32 @wmove(%struct._win_st* %128, i32 %add566, i32 %130), !dbg !2786
  call void @llvm.dbg.value(metadata i32 %call567, metadata !2787, metadata !DIExpression()), !dbg !1840
  %cmp568 = icmp eq i32 %call567, -1, !dbg !2788
  br i1 %cmp568, label %if.end572, label %if.then570, !dbg !2790

if.then570:                                       ; preds = %if.else564
  %131 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2791
  %call571 = call i32 @waddnstr(%struct._win_st* %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 2), !dbg !2795
  br label %if.end572, !dbg !2796

if.end572:                                        ; preds = %if.then570, %if.else564
  br label %if.end573

if.end573:                                        ; preds = %if.end572, %if.end563
  %132 = load i32, i32* @mixer_fd, align 4, !dbg !2797
  %call574 = call i32 (i32, i64, ...) @ioctl(i32 %132, i64 3221507431, i32* @agc) #9, !dbg !2800
  %133 = load i32, i32* @agc, align 4, !dbg !2801
  %cmp575 = icmp eq i32 %133, 1, !dbg !2803
  br i1 %cmp575, label %if.then577, label %if.else586, !dbg !2804

if.then577:                                       ; preds = %if.end573
  %134 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2805
  %_attrs578 = getelementptr inbounds %struct._win_st, %struct._win_st* %134, i32 0, i32 7, !dbg !2808
  store i64 768, i64* %_attrs578, align 8, !dbg !2809
  %135 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2810
  %136 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 4), align 4, !dbg !2812
  %add579 = add nsw i32 %136, 2, !dbg !2813
  %137 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 3), align 4, !dbg !2814
  %call580 = call i32 @wmove(%struct._win_st* %135, i32 %add579, i32 %137), !dbg !2815
  call void @llvm.dbg.value(metadata i32 %call580, metadata !2816, metadata !DIExpression()), !dbg !1840
  %cmp581 = icmp eq i32 %call580, -1, !dbg !2817
  br i1 %cmp581, label %if.end585, label %if.then583, !dbg !2819

if.then583:                                       ; preds = %if.then577
  %138 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2820
  %call584 = call i32 @waddnstr(%struct._win_st* %138, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 3), !dbg !2824
  br label %if.end585, !dbg !2825

if.end585:                                        ; preds = %if.then583, %if.then577
  br label %if.end595, !dbg !2826

if.else586:                                       ; preds = %if.end573
  %139 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2827
  %_attrs587 = getelementptr inbounds %struct._win_st, %struct._win_st* %139, i32 0, i32 7, !dbg !2830
  store i64 512, i64* %_attrs587, align 8, !dbg !2831
  %140 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2832
  %141 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 4), align 4, !dbg !2834
  %add588 = add nsw i32 %141, 2, !dbg !2835
  %142 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 3), align 4, !dbg !2836
  %call589 = call i32 @wmove(%struct._win_st* %140, i32 %add588, i32 %142), !dbg !2837
  call void @llvm.dbg.value(metadata i32 %call589, metadata !2838, metadata !DIExpression()), !dbg !1840
  %cmp590 = icmp eq i32 %call589, -1, !dbg !2839
  br i1 %cmp590, label %if.end594, label %if.then592, !dbg !2841

if.then592:                                       ; preds = %if.else586
  %143 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !2842
  %call593 = call i32 @waddnstr(%struct._win_st* %143, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3), !dbg !2846
  br label %if.end594, !dbg !2847

if.end594:                                        ; preds = %if.then592, %if.else586
  br label %if.end595

if.end595:                                        ; preds = %if.end594, %if.end585
  call void @llvm.dbg.value(metadata i32 0, metadata !2848, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 0, metadata !2655, metadata !DIExpression()), !dbg !1840
  br label %while.body597, !dbg !2849

while.body597:                                    ; preds = %__Cont, %if.end595
  %dev_nrs.1 = phi i32 [ 0, %if.end595 ], [ %inc842, %__Cont ], !dbg !2659
  %X.14 = phi i32 [ %X.0, %if.end595 ], [ %X.23, %__Cont ], !dbg !1884
  call void @llvm.dbg.value(metadata i32 %X.14, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %dev_nrs.1, metadata !2655, metadata !DIExpression()), !dbg !1840
  br label %while_continue___6, !dbg !2852

while_continue___6:                               ; preds = %while.body597
  br label %while_continue___2, !dbg !2852

while_continue___2:                               ; preds = %while_continue___6
  %cmp598 = icmp slt i32 %dev_nrs.1, 25, !dbg !2853
  br i1 %cmp598, label %if.end601, label %if.then600, !dbg !2856

if.then600:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !2857

if.end601:                                        ; preds = %while_continue___2
  %call602 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %call547, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32* %vol_left, i32* %vol_right), !dbg !2859
  %shl603 = shl i32 1, %dev_nrs.1, !dbg !2862
  %144 = load i32, i32* @devmask, align 4, !dbg !2864
  %and604 = and i32 %shl603, %144, !dbg !2865
  %tobool605 = icmp ne i32 %and604, 0, !dbg !2865
  br i1 %tobool605, label %if.then606, label %if.end841, !dbg !2866

if.then606:                                       ; preds = %if.end601
  %145 = load i32, i32* %vol_left, align 4, !dbg !2867
  %146 = load i32, i32* %vol_right, align 4, !dbg !2871
  call void @adjust(i32 %dev_nrs.1, i32 %145, i32 %146), !dbg !2872
  %147 = load i32, i32* %vol_left, align 4, !dbg !2873
  %cmp607 = icmp ne i32 %147, -1, !dbg !2875
  br i1 %cmp607, label %if.then609, label %if.end624, !dbg !2876

if.then609:                                       ; preds = %if.then606
  %148 = load i32, i32* %vol_left, align 4, !dbg !2877
  %149 = load i32, i32* @COLS, align 4, !dbg !2880
  %div610 = sdiv i32 102400, %149, !dbg !2881
  %add611 = add nsw i32 %div610, 5, !dbg !2882
  %shr = ashr i32 %add611, 8, !dbg !2883
  %div612 = sdiv i32 %148, %shr, !dbg !2884
  %150 = load i32, i32* @COLS, align 4, !dbg !2885
  %div613 = sdiv i32 %150, 4, !dbg !2886
  %cmp614 = icmp sgt i32 %div612, %div613, !dbg !2887
  br i1 %cmp614, label %if.then616, label %if.else618, !dbg !2888

if.then616:                                       ; preds = %if.then609
  %151 = load i32, i32* @COLS, align 4, !dbg !2889
  %div617 = sdiv i32 %151, 4, !dbg !2891
  store i32 %div617, i32* %vol_left, align 4, !dbg !2892
  br label %if.end623, !dbg !2893

if.else618:                                       ; preds = %if.then609
  %152 = load i32, i32* @COLS, align 4, !dbg !2894
  %div619 = sdiv i32 102400, %152, !dbg !2896
  %add620 = add nsw i32 %div619, 5, !dbg !2897
  %shr621 = ashr i32 %add620, 8, !dbg !2898
  %153 = load i32, i32* %vol_left, align 4, !dbg !2899
  %div622 = sdiv i32 %153, %shr621, !dbg !2899
  store i32 %div622, i32* %vol_left, align 4, !dbg !2899
  br label %if.end623

if.end623:                                        ; preds = %if.else618, %if.then616
  br label %if.end624, !dbg !2900

if.end624:                                        ; preds = %if.end623, %if.then606
  %154 = load i32, i32* %vol_right, align 4, !dbg !2901
  %cmp625 = icmp ne i32 %154, -1, !dbg !2903
  br i1 %cmp625, label %if.then627, label %if.end643, !dbg !2904

if.then627:                                       ; preds = %if.end624
  %155 = load i32, i32* %vol_right, align 4, !dbg !2905
  %156 = load i32, i32* @COLS, align 4, !dbg !2908
  %div628 = sdiv i32 102400, %156, !dbg !2909
  %add629 = add nsw i32 %div628, 5, !dbg !2910
  %shr630 = ashr i32 %add629, 8, !dbg !2911
  %div631 = sdiv i32 %155, %shr630, !dbg !2912
  %157 = load i32, i32* @COLS, align 4, !dbg !2913
  %div632 = sdiv i32 %157, 4, !dbg !2914
  %cmp633 = icmp sgt i32 %div631, %div632, !dbg !2915
  br i1 %cmp633, label %if.then635, label %if.else637, !dbg !2916

if.then635:                                       ; preds = %if.then627
  %158 = load i32, i32* @COLS, align 4, !dbg !2917
  %div636 = sdiv i32 %158, 4, !dbg !2919
  store i32 %div636, i32* %vol_right, align 4, !dbg !2920
  br label %if.end642, !dbg !2921

if.else637:                                       ; preds = %if.then627
  %159 = load i32, i32* @COLS, align 4, !dbg !2922
  %div638 = sdiv i32 102400, %159, !dbg !2924
  %add639 = add nsw i32 %div638, 5, !dbg !2925
  %shr640 = ashr i32 %add639, 8, !dbg !2926
  %160 = load i32, i32* %vol_right, align 4, !dbg !2927
  %div641 = sdiv i32 %160, %shr640, !dbg !2927
  store i32 %div641, i32* %vol_right, align 4, !dbg !2927
  br label %if.end642

if.end642:                                        ; preds = %if.else637, %if.then635
  br label %if.end643, !dbg !2928

if.end643:                                        ; preds = %if.end642, %if.end624
  %idxprom644 = sext i32 %dev_nrs.1 to i64, !dbg !2929
  %arrayidx645 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_ind, i64 0, i64 %idxprom644, !dbg !2929
  %161 = load i32, i32* %arrayidx645, align 4, !dbg !2929
  call void @llvm.dbg.value(metadata i32 %161, metadata !2848, metadata !DIExpression()), !dbg !1840
  %cmp646 = icmp eq i32 %161, -1, !dbg !2930
  br i1 %cmp646, label %if.then648, label %if.end649, !dbg !2932

if.then648:                                       ; preds = %if.end643
  br label %__Cont, !dbg !2933

if.end649:                                        ; preds = %if.end643
  %idxprom650 = sext i32 %161 to i64, !dbg !2935
  %arrayidx651 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom650, !dbg !2935
  %Y652 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx651, i32 0, i32 4, !dbg !2938
  %162 = load i32, i32* %Y652, align 4, !dbg !2938
  %add653 = add nsw i32 %162, 1, !dbg !2939
  %idxprom654 = sext i32 %161 to i64, !dbg !2940
  %arrayidx655 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom654, !dbg !2940
  %X656 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx655, i32 0, i32 3, !dbg !2941
  %163 = load i32, i32* %X656, align 4, !dbg !2941
  %add657 = add nsw i32 %163, 14, !dbg !2942
  %idxprom658 = sext i32 %161 to i64, !dbg !2943
  %arrayidx659 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom658, !dbg !2943
  %vol_left660 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx659, i32 0, i32 0, !dbg !2944
  %164 = load i32, i32* %vol_left660, align 4, !dbg !2944
  %add661 = add nsw i32 %add657, %164, !dbg !2945
  call void @draw_handle(i32 %add653, i32 %add661, i32 0, i32 5), !dbg !2946
  %165 = load i32, i32* %vol_left, align 4, !dbg !2947
  %idxprom662 = sext i32 %161 to i64, !dbg !2948
  %arrayidx663 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom662, !dbg !2948
  %vol_left664 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx663, i32 0, i32 0, !dbg !2949
  store i32 %165, i32* %vol_left664, align 4, !dbg !2950
  %cmp665 = icmp eq i32 %161, %dev_nr.0, !dbg !2951
  br i1 %cmp665, label %if.then667, label %if.else729, !dbg !2953

if.then667:                                       ; preds = %if.end649
  %166 = load i32, i32* %locked, align 4, !dbg !2954
  %tobool668 = icmp ne i32 %166, 0, !dbg !2954
  br i1 %tobool668, label %if.then669, label %if.else690, !dbg !2957

if.then669:                                       ; preds = %if.then667
  %idxprom670 = sext i32 %161 to i64, !dbg !2958
  %arrayidx671 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom670, !dbg !2958
  %Y672 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx671, i32 0, i32 4, !dbg !2962
  %167 = load i32, i32* %Y672, align 4, !dbg !2962
  %add673 = add nsw i32 %167, 1, !dbg !2963
  %idxprom674 = sext i32 %161 to i64, !dbg !2964
  %arrayidx675 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom674, !dbg !2964
  %X676 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx675, i32 0, i32 3, !dbg !2965
  %168 = load i32, i32* %X676, align 4, !dbg !2965
  %add677 = add nsw i32 %168, 14, !dbg !2966
  %idxprom678 = sext i32 %161 to i64, !dbg !2967
  %arrayidx679 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom678, !dbg !2967
  %vol_left680 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx679, i32 0, i32 0, !dbg !2968
  %169 = load i32, i32* %vol_left680, align 4, !dbg !2968
  %add681 = add nsw i32 %add677, %169, !dbg !2969
  call void @draw_handle(i32 %add673, i32 %add681, i32 1, i32 4), !dbg !2970
  %idxprom682 = sext i32 %161 to i64, !dbg !2971
  %arrayidx683 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom682, !dbg !2971
  %X684 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx683, i32 0, i32 3, !dbg !2972
  %170 = load i32, i32* %X684, align 4, !dbg !2972
  %add685 = add nsw i32 %170, 14, !dbg !2973
  %idxprom686 = sext i32 %161 to i64, !dbg !2974
  %arrayidx687 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom686, !dbg !2974
  %vol_left688 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx687, i32 0, i32 0, !dbg !2975
  %171 = load i32, i32* %vol_left688, align 4, !dbg !2975
  %add689 = add nsw i32 %add685, %171, !dbg !2976
  call void @llvm.dbg.value(metadata i32 %add689, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end728, !dbg !2977

if.else690:                                       ; preds = %if.then667
  %cmp691 = icmp eq i32 %left.0, 1, !dbg !2978
  br i1 %cmp691, label %if.then693, label %if.else714, !dbg !2954

if.then693:                                       ; preds = %if.else690
  %idxprom694 = sext i32 %161 to i64, !dbg !2980
  %arrayidx695 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom694, !dbg !2980
  %Y696 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx695, i32 0, i32 4, !dbg !2984
  %172 = load i32, i32* %Y696, align 4, !dbg !2984
  %add697 = add nsw i32 %172, 1, !dbg !2985
  %idxprom698 = sext i32 %161 to i64, !dbg !2986
  %arrayidx699 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom698, !dbg !2986
  %X700 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx699, i32 0, i32 3, !dbg !2987
  %173 = load i32, i32* %X700, align 4, !dbg !2987
  %add701 = add nsw i32 %173, 14, !dbg !2988
  %idxprom702 = sext i32 %161 to i64, !dbg !2989
  %arrayidx703 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom702, !dbg !2989
  %vol_left704 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx703, i32 0, i32 0, !dbg !2990
  %174 = load i32, i32* %vol_left704, align 4, !dbg !2990
  %add705 = add nsw i32 %add701, %174, !dbg !2991
  call void @draw_handle(i32 %add697, i32 %add705, i32 1, i32 4), !dbg !2992
  %idxprom706 = sext i32 %161 to i64, !dbg !2993
  %arrayidx707 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom706, !dbg !2993
  %X708 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx707, i32 0, i32 3, !dbg !2994
  %175 = load i32, i32* %X708, align 4, !dbg !2994
  %add709 = add nsw i32 %175, 14, !dbg !2995
  %idxprom710 = sext i32 %161 to i64, !dbg !2996
  %arrayidx711 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom710, !dbg !2996
  %vol_left712 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx711, i32 0, i32 0, !dbg !2997
  %176 = load i32, i32* %vol_left712, align 4, !dbg !2997
  %add713 = add nsw i32 %add709, %176, !dbg !2998
  call void @llvm.dbg.value(metadata i32 %add713, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end727, !dbg !2999

if.else714:                                       ; preds = %if.else690
  %idxprom715 = sext i32 %161 to i64, !dbg !3000
  %arrayidx716 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom715, !dbg !3000
  %Y717 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx716, i32 0, i32 4, !dbg !3004
  %177 = load i32, i32* %Y717, align 4, !dbg !3004
  %add718 = add nsw i32 %177, 1, !dbg !3005
  %idxprom719 = sext i32 %161 to i64, !dbg !3006
  %arrayidx720 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom719, !dbg !3006
  %X721 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx720, i32 0, i32 3, !dbg !3007
  %178 = load i32, i32* %X721, align 4, !dbg !3007
  %add722 = add nsw i32 %178, 14, !dbg !3008
  %idxprom723 = sext i32 %161 to i64, !dbg !3009
  %arrayidx724 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom723, !dbg !3009
  %vol_left725 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx724, i32 0, i32 0, !dbg !3010
  %179 = load i32, i32* %vol_left725, align 4, !dbg !3010
  %add726 = add nsw i32 %add722, %179, !dbg !3011
  call void @draw_handle(i32 %add718, i32 %add726, i32 0, i32 4), !dbg !3012
  br label %if.end727

if.end727:                                        ; preds = %if.else714, %if.then693
  %X.15 = phi i32 [ %add713, %if.then693 ], [ %X.14, %if.else714 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.15, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end728

if.end728:                                        ; preds = %if.end727, %if.then669
  %X.16 = phi i32 [ %add689, %if.then669 ], [ %X.15, %if.end727 ], !dbg !3013
  call void @llvm.dbg.value(metadata i32 %X.16, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end742, !dbg !3014

if.else729:                                       ; preds = %if.end649
  %idxprom730 = sext i32 %161 to i64, !dbg !3015
  %arrayidx731 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom730, !dbg !3015
  %Y732 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx731, i32 0, i32 4, !dbg !3019
  %180 = load i32, i32* %Y732, align 4, !dbg !3019
  %add733 = add nsw i32 %180, 1, !dbg !3020
  %idxprom734 = sext i32 %161 to i64, !dbg !3021
  %arrayidx735 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom734, !dbg !3021
  %X736 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx735, i32 0, i32 3, !dbg !3022
  %181 = load i32, i32* %X736, align 4, !dbg !3022
  %add737 = add nsw i32 %181, 14, !dbg !3023
  %idxprom738 = sext i32 %161 to i64, !dbg !3024
  %arrayidx739 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom738, !dbg !3024
  %vol_left740 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx739, i32 0, i32 0, !dbg !3025
  %182 = load i32, i32* %vol_left740, align 4, !dbg !3025
  %add741 = add nsw i32 %add737, %182, !dbg !3026
  call void @draw_handle(i32 %add733, i32 %add741, i32 0, i32 4), !dbg !3027
  br label %if.end742

if.end742:                                        ; preds = %if.else729, %if.end728
  %X.17 = phi i32 [ %X.16, %if.end728 ], [ %X.14, %if.else729 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.17, metadata !1869, metadata !DIExpression()), !dbg !1840
  %shl743 = shl i32 1, %dev_nrs.1, !dbg !3028
  %183 = load i32, i32* @stereodevs, align 4, !dbg !3030
  %and744 = and i32 %shl743, %183, !dbg !3031
  %tobool745 = icmp ne i32 %and744, 0, !dbg !3031
  br i1 %tobool745, label %if.then746, label %if.end840, !dbg !3032

if.then746:                                       ; preds = %if.end742
  %idxprom747 = sext i32 %161 to i64, !dbg !3033
  %arrayidx748 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom747, !dbg !3033
  %Y749 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx748, i32 0, i32 4, !dbg !3037
  %184 = load i32, i32* %Y749, align 4, !dbg !3037
  %add750 = add nsw i32 %184, 2, !dbg !3038
  %idxprom751 = sext i32 %161 to i64, !dbg !3039
  %arrayidx752 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom751, !dbg !3039
  %X753 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx752, i32 0, i32 3, !dbg !3040
  %185 = load i32, i32* %X753, align 4, !dbg !3040
  %add754 = add nsw i32 %185, 14, !dbg !3041
  %idxprom755 = sext i32 %161 to i64, !dbg !3042
  %arrayidx756 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom755, !dbg !3042
  %vol_right757 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx756, i32 0, i32 1, !dbg !3043
  %186 = load i32, i32* %vol_right757, align 4, !dbg !3043
  %add758 = add nsw i32 %add754, %186, !dbg !3044
  call void @draw_handle(i32 %add750, i32 %add758, i32 0, i32 5), !dbg !3045
  %187 = load i32, i32* %vol_right, align 4, !dbg !3046
  %idxprom759 = sext i32 %161 to i64, !dbg !3047
  %arrayidx760 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom759, !dbg !3047
  %vol_right761 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx760, i32 0, i32 1, !dbg !3048
  store i32 %187, i32* %vol_right761, align 4, !dbg !3049
  %cmp762 = icmp eq i32 %161, %dev_nr.0, !dbg !3050
  br i1 %cmp762, label %if.then764, label %if.else826, !dbg !3052

if.then764:                                       ; preds = %if.then746
  %188 = load i32, i32* %locked, align 4, !dbg !3053
  %tobool765 = icmp ne i32 %188, 0, !dbg !3053
  br i1 %tobool765, label %if.then766, label %if.else787, !dbg !3056

if.then766:                                       ; preds = %if.then764
  %idxprom767 = sext i32 %161 to i64, !dbg !3057
  %arrayidx768 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom767, !dbg !3057
  %Y769 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx768, i32 0, i32 4, !dbg !3061
  %189 = load i32, i32* %Y769, align 4, !dbg !3061
  %add770 = add nsw i32 %189, 2, !dbg !3062
  %idxprom771 = sext i32 %161 to i64, !dbg !3063
  %arrayidx772 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom771, !dbg !3063
  %X773 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx772, i32 0, i32 3, !dbg !3064
  %190 = load i32, i32* %X773, align 4, !dbg !3064
  %add774 = add nsw i32 %190, 14, !dbg !3065
  %idxprom775 = sext i32 %161 to i64, !dbg !3066
  %arrayidx776 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom775, !dbg !3066
  %vol_right777 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx776, i32 0, i32 1, !dbg !3067
  %191 = load i32, i32* %vol_right777, align 4, !dbg !3067
  %add778 = add nsw i32 %add774, %191, !dbg !3068
  call void @draw_handle(i32 %add770, i32 %add778, i32 1, i32 4), !dbg !3069
  %idxprom779 = sext i32 %161 to i64, !dbg !3070
  %arrayidx780 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom779, !dbg !3070
  %X781 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx780, i32 0, i32 3, !dbg !3071
  %192 = load i32, i32* %X781, align 4, !dbg !3071
  %add782 = add nsw i32 %192, 14, !dbg !3072
  %idxprom783 = sext i32 %161 to i64, !dbg !3073
  %arrayidx784 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom783, !dbg !3073
  %vol_right785 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx784, i32 0, i32 1, !dbg !3074
  %193 = load i32, i32* %vol_right785, align 4, !dbg !3074
  %add786 = add nsw i32 %add782, %193, !dbg !3075
  call void @llvm.dbg.value(metadata i32 %add786, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end825, !dbg !3076

if.else787:                                       ; preds = %if.then764
  %cmp788 = icmp eq i32 %left.0, 0, !dbg !3077
  br i1 %cmp788, label %if.then790, label %if.else811, !dbg !3053

if.then790:                                       ; preds = %if.else787
  %idxprom791 = sext i32 %161 to i64, !dbg !3079
  %arrayidx792 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom791, !dbg !3079
  %Y793 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx792, i32 0, i32 4, !dbg !3083
  %194 = load i32, i32* %Y793, align 4, !dbg !3083
  %add794 = add nsw i32 %194, 2, !dbg !3084
  %idxprom795 = sext i32 %161 to i64, !dbg !3085
  %arrayidx796 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom795, !dbg !3085
  %X797 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx796, i32 0, i32 3, !dbg !3086
  %195 = load i32, i32* %X797, align 4, !dbg !3086
  %add798 = add nsw i32 %195, 14, !dbg !3087
  %idxprom799 = sext i32 %161 to i64, !dbg !3088
  %arrayidx800 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom799, !dbg !3088
  %vol_right801 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx800, i32 0, i32 1, !dbg !3089
  %196 = load i32, i32* %vol_right801, align 4, !dbg !3089
  %add802 = add nsw i32 %add798, %196, !dbg !3090
  call void @draw_handle(i32 %add794, i32 %add802, i32 1, i32 4), !dbg !3091
  %idxprom803 = sext i32 %161 to i64, !dbg !3092
  %arrayidx804 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom803, !dbg !3092
  %X805 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx804, i32 0, i32 3, !dbg !3093
  %197 = load i32, i32* %X805, align 4, !dbg !3093
  %add806 = add nsw i32 %197, 14, !dbg !3094
  %idxprom807 = sext i32 %161 to i64, !dbg !3095
  %arrayidx808 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom807, !dbg !3095
  %vol_right809 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx808, i32 0, i32 1, !dbg !3096
  %198 = load i32, i32* %vol_right809, align 4, !dbg !3096
  %add810 = add nsw i32 %add806, %198, !dbg !3097
  call void @llvm.dbg.value(metadata i32 %add810, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end824, !dbg !3098

if.else811:                                       ; preds = %if.else787
  %idxprom812 = sext i32 %161 to i64, !dbg !3099
  %arrayidx813 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom812, !dbg !3099
  %Y814 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx813, i32 0, i32 4, !dbg !3103
  %199 = load i32, i32* %Y814, align 4, !dbg !3103
  %add815 = add nsw i32 %199, 2, !dbg !3104
  %idxprom816 = sext i32 %161 to i64, !dbg !3105
  %arrayidx817 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom816, !dbg !3105
  %X818 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx817, i32 0, i32 3, !dbg !3106
  %200 = load i32, i32* %X818, align 4, !dbg !3106
  %add819 = add nsw i32 %200, 14, !dbg !3107
  %idxprom820 = sext i32 %161 to i64, !dbg !3108
  %arrayidx821 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom820, !dbg !3108
  %vol_right822 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx821, i32 0, i32 1, !dbg !3109
  %201 = load i32, i32* %vol_right822, align 4, !dbg !3109
  %add823 = add nsw i32 %add819, %201, !dbg !3110
  call void @draw_handle(i32 %add815, i32 %add823, i32 0, i32 4), !dbg !3111
  br label %if.end824

if.end824:                                        ; preds = %if.else811, %if.then790
  %X.18 = phi i32 [ %add810, %if.then790 ], [ %X.17, %if.else811 ], !dbg !3112
  call void @llvm.dbg.value(metadata i32 %X.18, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end825

if.end825:                                        ; preds = %if.end824, %if.then766
  %X.19 = phi i32 [ %add786, %if.then766 ], [ %X.18, %if.end824 ], !dbg !3113
  call void @llvm.dbg.value(metadata i32 %X.19, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end839, !dbg !3114

if.else826:                                       ; preds = %if.then746
  %idxprom827 = sext i32 %161 to i64, !dbg !3115
  %arrayidx828 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom827, !dbg !3115
  %Y829 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx828, i32 0, i32 4, !dbg !3119
  %202 = load i32, i32* %Y829, align 4, !dbg !3119
  %add830 = add nsw i32 %202, 2, !dbg !3120
  %idxprom831 = sext i32 %161 to i64, !dbg !3121
  %arrayidx832 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom831, !dbg !3121
  %X833 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx832, i32 0, i32 3, !dbg !3122
  %203 = load i32, i32* %X833, align 4, !dbg !3122
  %add834 = add nsw i32 %203, 14, !dbg !3123
  %idxprom835 = sext i32 %161 to i64, !dbg !3124
  %arrayidx836 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom835, !dbg !3124
  %vol_right837 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx836, i32 0, i32 1, !dbg !3125
  %204 = load i32, i32* %vol_right837, align 4, !dbg !3125
  %add838 = add nsw i32 %add834, %204, !dbg !3126
  call void @draw_handle(i32 %add830, i32 %add838, i32 0, i32 4), !dbg !3127
  br label %if.end839

if.end839:                                        ; preds = %if.else826, %if.end825
  %X.20 = phi i32 [ %X.19, %if.end825 ], [ %X.17, %if.else826 ], !dbg !3112
  call void @llvm.dbg.value(metadata i32 %X.20, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end840, !dbg !3128

if.end840:                                        ; preds = %if.end839, %if.end742
  %X.21 = phi i32 [ %X.20, %if.end839 ], [ %X.17, %if.end742 ], !dbg !3112
  call void @llvm.dbg.value(metadata i32 %X.21, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %if.end841, !dbg !3129

if.end841:                                        ; preds = %if.end840, %if.end601
  %X.22 = phi i32 [ %X.21, %if.end840 ], [ %X.14, %if.end601 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.22, metadata !1869, metadata !DIExpression()), !dbg !1840
  br label %__Cont, !dbg !2864

__Cont:                                           ; preds = %if.end841, %if.then648
  %X.23 = phi i32 [ %X.14, %if.then648 ], [ %X.22, %if.end841 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.23, metadata !1869, metadata !DIExpression()), !dbg !1840
  %inc842 = add nsw i32 %dev_nrs.1, 1, !dbg !3130
  call void @llvm.dbg.value(metadata i32 %inc842, metadata !2655, metadata !DIExpression()), !dbg !1840
  br label %while.body597, !dbg !2849, !llvm.loop !3131

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !3133

while_break___2:                                  ; preds = %while_break___6, %if.then600
  %call843 = call i32 @fclose(%struct._IO_FILE* %call547), !dbg !3134
  call void @message(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.152, i32 0, i32 0)), !dbg !3137
  br label %switch_break, !dbg !3139

case_51:                                          ; preds = %if.then58
  %205 = load i32, i32* @a3dse, align 4, !dbg !3140
  %cmp844 = icmp ne i32 %205, -1, !dbg !3142
  br i1 %cmp844, label %if.then846, label %if.end853, !dbg !3143

if.then846:                                       ; preds = %case_51
  %206 = load i32, i32* @a3dse, align 4, !dbg !3144
  %cmp847 = icmp eq i32 %206, 0, !dbg !3147
  br i1 %cmp847, label %if.then849, label %if.else850, !dbg !3148

if.then849:                                       ; preds = %if.then846
  store i32 1, i32* @a3dse, align 4, !dbg !3149
  br label %if.end851, !dbg !3151

if.else850:                                       ; preds = %if.then846
  store i32 0, i32* @a3dse, align 4, !dbg !3152
  br label %if.end851

if.end851:                                        ; preds = %if.else850, %if.then849
  %207 = load i32, i32* @mixer_fd, align 4, !dbg !3154
  %call852 = call i32 (i32, i64, ...) @ioctl(i32 %207, i64 3221507432, i32* @a3dse) #9, !dbg !3157
  br label %if.end853, !dbg !3158

if.end853:                                        ; preds = %if.end851, %case_51
  %208 = load i32, i32* @a3dse, align 4, !dbg !3159
  %cmp854 = icmp eq i32 %208, 1, !dbg !3161
  br i1 %cmp854, label %if.then856, label %if.else865, !dbg !3162

if.then856:                                       ; preds = %if.end853
  %209 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3163
  %_attrs857 = getelementptr inbounds %struct._win_st, %struct._win_st* %209, i32 0, i32 7, !dbg !3166
  store i64 768, i64* %_attrs857, align 8, !dbg !3167
  %210 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3168
  %211 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 4), align 16, !dbg !3170
  %add858 = add nsw i32 %211, 2, !dbg !3171
  %212 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 3), align 4, !dbg !3172
  %call859 = call i32 @wmove(%struct._win_st* %210, i32 %add858, i32 %212), !dbg !3173
  call void @llvm.dbg.value(metadata i32 %call859, metadata !3174, metadata !DIExpression()), !dbg !1840
  %cmp860 = icmp eq i32 %call859, -1, !dbg !3175
  br i1 %cmp860, label %if.end864, label %if.then862, !dbg !3177

if.then862:                                       ; preds = %if.then856
  %213 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3178
  %call863 = call i32 @waddnstr(%struct._win_st* %213, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i32 2), !dbg !3182
  br label %if.end864, !dbg !3183

if.end864:                                        ; preds = %if.then862, %if.then856
  br label %if.end874, !dbg !3184

if.else865:                                       ; preds = %if.end853
  %214 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3185
  %_attrs866 = getelementptr inbounds %struct._win_st, %struct._win_st* %214, i32 0, i32 7, !dbg !3188
  store i64 512, i64* %_attrs866, align 8, !dbg !3189
  %215 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3190
  %216 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 4), align 16, !dbg !3192
  %add867 = add nsw i32 %216, 2, !dbg !3193
  %217 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 0, i32 3), align 4, !dbg !3194
  %call868 = call i32 @wmove(%struct._win_st* %215, i32 %add867, i32 %217), !dbg !3195
  call void @llvm.dbg.value(metadata i32 %call868, metadata !3196, metadata !DIExpression()), !dbg !1840
  %cmp869 = icmp eq i32 %call868, -1, !dbg !3197
  br i1 %cmp869, label %if.end873, label %if.then871, !dbg !3199

if.then871:                                       ; preds = %if.else865
  %218 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3200
  %call872 = call i32 @waddnstr(%struct._win_st* %218, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i32 2), !dbg !3204
  br label %if.end873, !dbg !3205

if.end873:                                        ; preds = %if.then871, %if.else865
  br label %if.end874

if.end874:                                        ; preds = %if.end873, %if.end864
  br label %switch_break, !dbg !3206

case_65:                                          ; preds = %if.then64, %if.then61
  br label %case_97, !dbg !3206

case_97:                                          ; preds = %case_65
  %219 = load i32, i32* @agc, align 4, !dbg !3207
  %cmp875 = icmp ne i32 %219, -1, !dbg !3209
  br i1 %cmp875, label %if.then877, label %if.end884, !dbg !3210

if.then877:                                       ; preds = %case_97
  %220 = load i32, i32* @agc, align 4, !dbg !3211
  %cmp878 = icmp eq i32 %220, 0, !dbg !3214
  br i1 %cmp878, label %if.then880, label %if.else881, !dbg !3215

if.then880:                                       ; preds = %if.then877
  store i32 1, i32* @agc, align 4, !dbg !3216
  br label %if.end882, !dbg !3218

if.else881:                                       ; preds = %if.then877
  store i32 0, i32* @agc, align 4, !dbg !3219
  br label %if.end882

if.end882:                                        ; preds = %if.else881, %if.then880
  %221 = load i32, i32* @mixer_fd, align 4, !dbg !3221
  %call883 = call i32 (i32, i64, ...) @ioctl(i32 %221, i64 3221507431, i32* @agc) #9, !dbg !3224
  br label %if.end884, !dbg !3225

if.end884:                                        ; preds = %if.end882, %case_97
  %222 = load i32, i32* @agc, align 4, !dbg !3226
  %cmp885 = icmp eq i32 %222, 1, !dbg !3228
  br i1 %cmp885, label %if.then887, label %if.else896, !dbg !3229

if.then887:                                       ; preds = %if.end884
  %223 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3230
  %_attrs888 = getelementptr inbounds %struct._win_st, %struct._win_st* %223, i32 0, i32 7, !dbg !3233
  store i64 768, i64* %_attrs888, align 8, !dbg !3234
  %224 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3235
  %225 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 4), align 4, !dbg !3237
  %add889 = add nsw i32 %225, 2, !dbg !3238
  %226 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 3), align 4, !dbg !3239
  %call890 = call i32 @wmove(%struct._win_st* %224, i32 %add889, i32 %226), !dbg !3240
  call void @llvm.dbg.value(metadata i32 %call890, metadata !3241, metadata !DIExpression()), !dbg !1840
  %cmp891 = icmp eq i32 %call890, -1, !dbg !3242
  br i1 %cmp891, label %if.end895, label %if.then893, !dbg !3244

if.then893:                                       ; preds = %if.then887
  %227 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3245
  %call894 = call i32 @waddnstr(%struct._win_st* %227, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i32 3), !dbg !3249
  br label %if.end895, !dbg !3250

if.end895:                                        ; preds = %if.then893, %if.then887
  br label %if.end905, !dbg !3251

if.else896:                                       ; preds = %if.end884
  %228 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3252
  %_attrs897 = getelementptr inbounds %struct._win_st, %struct._win_st* %228, i32 0, i32 7, !dbg !3255
  store i64 512, i64* %_attrs897, align 8, !dbg !3256
  %229 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3257
  %230 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 4), align 4, !dbg !3259
  %add898 = add nsw i32 %230, 2, !dbg !3260
  %231 = load i32, i32* getelementptr inbounds ([25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 7, i32 3), align 4, !dbg !3261
  %call899 = call i32 @wmove(%struct._win_st* %229, i32 %add898, i32 %231), !dbg !3262
  call void @llvm.dbg.value(metadata i32 %call899, metadata !3263, metadata !DIExpression()), !dbg !1840
  %cmp900 = icmp eq i32 %call899, -1, !dbg !3264
  br i1 %cmp900, label %if.end904, label %if.then902, !dbg !3266

if.then902:                                       ; preds = %if.else896
  %232 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3267
  %call903 = call i32 @waddnstr(%struct._win_st* %232, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i32 3), !dbg !3271
  br label %if.end904, !dbg !3272

if.end904:                                        ; preds = %if.then902, %if.else896
  br label %if.end905

if.end905:                                        ; preds = %if.end904, %if.end895
  br label %switch_break, !dbg !3273

case_72:                                          ; preds = %if.then70, %if.then67
  br label %case_104, !dbg !3273

case_104:                                         ; preds = %case_72
  call void @help(), !dbg !3274
  br label %switch_break, !dbg !3277

case_90:                                          ; preds = %if.then73
  %233 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3278
  %call906 = call i32 @wclear(%struct._win_st* %233), !dbg !3281
  %234 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3282
  %call907 = call i32 @wrefresh(%struct._win_st* %234), !dbg !3284
  %call908 = call i32 @endwin(), !dbg !3285
  store i32 0, i32* @dev_count, align 4, !dbg !3287
  call void @longjmp(%struct.__jmp_buf_tag* getelementptr inbounds ([1 x %struct.__jmp_buf_tag], [1 x %struct.__jmp_buf_tag]* @env, i32 0, i32 0), i32 2) #7, !dbg !3288
  unreachable, !dbg !3288

case_12:                                          ; preds = %if.then76
  %call909 = call i32 @endwin(), !dbg !3290
  %235 = load %struct._win_st*, %struct._win_st** @stdscr, align 8, !dbg !3293
  %call910 = call i32 @wrefresh(%struct._win_st* %235), !dbg !3295
  br label %switch_break, !dbg !3296

switch_break:                                     ; preds = %case_12, %case_104, %if.end905, %if.end874, %while_break___2, %if.then550, %while_break___1, %if.then514, %if.end511, %if.end434, %if.end380, %if.end272, %if.end116, %if.end94, %case_27, %if.end77
  %X_rest.3 = phi i32 [ %X_rest.0, %case_27 ], [ %X_rest.0, %if.end94 ], [ %X_rest.0, %if.end116 ], [ %X_rest.1, %if.end272 ], [ %X_rest.2, %if.end380 ], [ %X_rest.0, %if.end434 ], [ %X_rest.0, %if.end511 ], [ %X_rest.0, %if.then514 ], [ %X_rest.0, %while_break___1 ], [ %X_rest.0, %if.then550 ], [ %X_rest.0, %while_break___2 ], [ %X_rest.0, %if.end874 ], [ %X_rest.0, %if.end905 ], [ %X_rest.0, %case_104 ], [ %X_rest.0, %case_12 ], [ %X_rest.0, %if.end77 ], !dbg !2044
  %volume.10 = phi i32* [ %volume.0, %case_27 ], [ %volume.0, %if.end94 ], [ %volume.0, %if.end116 ], [ %volume.5, %if.end272 ], [ %volume.8, %if.end380 ], [ %volume.0, %if.end434 ], [ %volume.9, %if.end511 ], [ %volume.0, %if.then514 ], [ %volume.0, %while_break___1 ], [ %volume.0, %if.then550 ], [ %volume.0, %while_break___2 ], [ %volume.0, %if.end874 ], [ %volume.0, %if.end905 ], [ %volume.0, %case_104 ], [ %volume.0, %case_12 ], [ %volume.0, %if.end77 ], !dbg !2044
  %dev_nr.3 = phi i32 [ %dev_nr.0, %case_27 ], [ %dev_nr.0, %if.end94 ], [ %dev_nr.0, %if.end116 ], [ %dev_nr.1, %if.end272 ], [ %dev_nr.2, %if.end380 ], [ %dev_nr.0, %if.end434 ], [ %dev_nr.0, %if.end511 ], [ %dev_nr.0, %if.then514 ], [ %dev_nr.0, %while_break___1 ], [ %dev_nr.0, %if.then550 ], [ %dev_nr.0, %while_break___2 ], [ %dev_nr.0, %if.end874 ], [ %dev_nr.0, %if.end905 ], [ %dev_nr.0, %case_104 ], [ %dev_nr.0, %case_12 ], [ %dev_nr.0, %if.end77 ], !dbg !2044
  %left.10 = phi i32 [ %left.0, %case_27 ], [ %left.0, %if.end94 ], [ %left.0, %if.end116 ], [ %left.5, %if.end272 ], [ %left.8, %if.end380 ], [ %left.0, %if.end434 ], [ %left.9, %if.end511 ], [ %left.0, %if.then514 ], [ %left.0, %while_break___1 ], [ %left.0, %if.then550 ], [ %left.0, %while_break___2 ], [ %left.0, %if.end874 ], [ %left.0, %if.end905 ], [ %left.0, %case_104 ], [ %left.0, %case_12 ], [ %left.0, %if.end77 ], !dbg !2044
  %Y.10 = phi i32 [ %Y.0, %case_27 ], [ %Y.0, %if.end94 ], [ %Y.0, %if.end116 ], [ %Y.5, %if.end272 ], [ %Y.8, %if.end380 ], [ %Y.0, %if.end434 ], [ %Y.9, %if.end511 ], [ %Y.0, %if.then514 ], [ %Y.0, %while_break___1 ], [ %Y.0, %if.then550 ], [ %Y.0, %while_break___2 ], [ %Y.0, %if.end874 ], [ %Y.0, %if.end905 ], [ %Y.0, %case_104 ], [ %Y.0, %case_12 ], [ %Y.0, %if.end77 ], !dbg !2044
  %X.24 = phi i32 [ %X.0, %case_27 ], [ %X.1, %if.end94 ], [ %X.2, %if.end116 ], [ %X.7, %if.end272 ], [ %X.10, %if.end380 ], [ %X.0, %if.end434 ], [ %X.13, %if.end511 ], [ %X.0, %if.then514 ], [ %X.0, %while_break___1 ], [ %X.0, %if.then550 ], [ %X.14, %while_break___2 ], [ %X.0, %if.end874 ], [ %X.0, %if.end905 ], [ %X.0, %case_104 ], [ %X.0, %case_12 ], [ %X.0, %if.end77 ], !dbg !2044
  call void @llvm.dbg.value(metadata i32 %X.24, metadata !1869, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %Y.10, metadata !1873, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %left.10, metadata !1839, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %dev_nr.3, metadata !1844, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32* %volume.10, metadata !1865, metadata !DIExpression()), !dbg !1840
  call void @llvm.dbg.value(metadata i32 %X_rest.3, metadata !1848, metadata !DIExpression()), !dbg !1840
  %cmp911 = icmp ne i32 %call10, 27, !dbg !3297
  br i1 %cmp911, label %if.then913, label %if.end940, !dbg !3299

if.then913:                                       ; preds = %switch_break
  %cmp914 = icmp ne i32 %call10, 81, !dbg !3300
  br i1 %cmp914, label %if.then916, label %if.end939, !dbg !3303

if.then916:                                       ; preds = %if.then913
  %cmp917 = icmp ne i32 %call10, 113, !dbg !3304
  br i1 %cmp917, label %if.then919, label %if.end938, !dbg !3307

if.then919:                                       ; preds = %if.then916
  %idxprom920 = sext i32 %dev_nr.3 to i64, !dbg !3308
  %arrayidx921 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom920, !dbg !3308
  %dev_nr922 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx921, i32 0, i32 2, !dbg !3312
  %236 = load i32, i32* %dev_nr922, align 4, !dbg !3312
  %idxprom923 = sext i32 %dev_nr.3 to i64, !dbg !3313
  %arrayidx924 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom923, !dbg !3313
  %vol_left925 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx924, i32 0, i32 0, !dbg !3314
  %237 = load i32, i32* %vol_left925, align 4, !dbg !3314
  %238 = load i32, i32* @COLS, align 4, !dbg !3315
  %div926 = sdiv i32 102400, %238, !dbg !3316
  %add927 = add nsw i32 %div926, 5, !dbg !3317
  %mul = mul nsw i32 %237, %add927, !dbg !3318
  %shr928 = ashr i32 %mul, 8, !dbg !3319
  %and929 = and i32 %shr928, 255, !dbg !3320
  %idxprom930 = sext i32 %dev_nr.3 to i64, !dbg !3321
  %arrayidx931 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom930, !dbg !3321
  %vol_right932 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx931, i32 0, i32 1, !dbg !3322
  %239 = load i32, i32* %vol_right932, align 4, !dbg !3322
  %240 = load i32, i32* @COLS, align 4, !dbg !3323
  %div933 = sdiv i32 102400, %240, !dbg !3324
  %add934 = add nsw i32 %div933, 5, !dbg !3325
  %mul935 = mul nsw i32 %239, %add934, !dbg !3326
  %shr936 = ashr i32 %mul935, 8, !dbg !3327
  %and937 = and i32 %shr936, 255, !dbg !3328
  call void @adjust(i32 %236, i32 %and929, i32 %and937), !dbg !3329
  br label %if.end938, !dbg !3330

if.end938:                                        ; preds = %if.then919, %if.then916
  br label %if.end939, !dbg !3331

if.end939:                                        ; preds = %if.end938, %if.then913
  br label %if.end940, !dbg !3332

if.end940:                                        ; preds = %if.end939, %switch_break
  %cmp941 = icmp ne i32 %call10, 27, !dbg !3333
  br i1 %cmp941, label %if.then943, label %if.else953, !dbg !3335

if.then943:                                       ; preds = %if.end940
  %cmp944 = icmp ne i32 %call10, 81, !dbg !3336
  br i1 %cmp944, label %if.then946, label %if.else951, !dbg !3339

if.then946:                                       ; preds = %if.then943
  %cmp947 = icmp ne i32 %call10, 113, !dbg !3340
  br i1 %cmp947, label %if.end950, label %if.then949, !dbg !3343

if.then949:                                       ; preds = %if.then946
  br label %while_break, !dbg !3344

if.end950:                                        ; preds = %if.then946
  br label %if.end952, !dbg !3346

if.else951:                                       ; preds = %if.then943
  br label %while_break, !dbg !3347

if.end952:                                        ; preds = %if.end950
  br label %if.end954, !dbg !3349

if.else953:                                       ; preds = %if.end940
  br label %while_break, !dbg !3350

if.end954:                                        ; preds = %if.end952
  br label %while.body, !dbg !1876, !llvm.loop !3352

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !3354

while_break:                                      ; preds = %while_break___3, %if.else953, %if.else951, %if.then949
  ret void, !dbg !3355
}

; Function Attrs: noinline nounwind ssp uwtable
define void @set_sound(i32 %argc, i8** %argv) #0 !dbg !3356 {
entry:
  %vol_left = alloca i32, align 4
  %vol_right = alloca i32, align 4
  %dummy = alloca i32, align 4
  %pos = alloca i32, align 4
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !3359, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.value(metadata i8** %argv, metadata !3361, metadata !DIExpression()), !dbg !3360
  call void @llvm.dbg.declare(metadata i32* %vol_left, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.declare(metadata i32* %vol_right, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata i32* %dummy, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.declare(metadata i32* %left, metadata !3370, metadata !DIExpression()), !dbg !3371
  call void @llvm.dbg.declare(metadata i32* %right, metadata !3372, metadata !DIExpression()), !dbg !3373
  call void @llvm.dbg.declare(metadata !4, metadata !3374, metadata !DIExpression()), !dbg !3375
  call void @llvm.dbg.declare(metadata !4, metadata !3376, metadata !DIExpression()), !dbg !3377
  call void @llvm.dbg.declare(metadata !4, metadata !3378, metadata !DIExpression()), !dbg !3379
  call void @llvm.dbg.declare(metadata !4, metadata !3380, metadata !DIExpression()), !dbg !3381
  call void @llvm.dbg.declare(metadata !4, metadata !3382, metadata !DIExpression()), !dbg !3383
  call void @llvm.dbg.declare(metadata !4, metadata !3384, metadata !DIExpression()), !dbg !3385
  call void @llvm.dbg.declare(metadata !4, metadata !3386, metadata !DIExpression()), !dbg !3387
  call void @llvm.dbg.declare(metadata !4, metadata !3388, metadata !DIExpression()), !dbg !3389
  call void @llvm.dbg.declare(metadata !4, metadata !3390, metadata !DIExpression()), !dbg !3391
  call void @llvm.dbg.declare(metadata !4, metadata !3392, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.declare(metadata !4, metadata !3394, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.declare(metadata !4, metadata !3396, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.declare(metadata !4, metadata !3398, metadata !DIExpression()), !dbg !3399
  call void @llvm.dbg.declare(metadata !4, metadata !3400, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.declare(metadata !4, metadata !3402, metadata !DIExpression()), !dbg !3403
  call void @llvm.dbg.declare(metadata !4, metadata !3404, metadata !DIExpression()), !dbg !3405
  call void @llvm.dbg.declare(metadata !4, metadata !3406, metadata !DIExpression()), !dbg !3407
  call void @llvm.dbg.declare(metadata !4, metadata !3408, metadata !DIExpression()), !dbg !3409
  call void @llvm.dbg.declare(metadata !4, metadata !3410, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.declare(metadata !4, metadata !3412, metadata !DIExpression()), !dbg !3413
  call void @llvm.dbg.declare(metadata !4, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.declare(metadata !4, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.declare(metadata !4, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata !4, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.declare(metadata !4, metadata !3422, metadata !DIExpression()), !dbg !3423
  call void @llvm.dbg.declare(metadata !4, metadata !3424, metadata !DIExpression()), !dbg !3425
  call void @llvm.dbg.declare(metadata !4, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.value(metadata i32 1, metadata !3428, metadata !DIExpression()), !dbg !3360
  %call = call i8* @get_default_filename(), !dbg !3429
  call void @llvm.dbg.value(metadata i8* %call, metadata !3433, metadata !DIExpression()), !dbg !3360
  call void @init_sound(), !dbg !3434
  br label %while.body, !dbg !3436

while.body:                                       ; preds = %if.end301, %entry
  %argc_count.0 = phi i32 [ 1, %entry ], [ %inc297, %if.end301 ], !dbg !3439
  call void @llvm.dbg.value(metadata i32 %argc_count.0, metadata !3428, metadata !DIExpression()), !dbg !3360
  br label %while_continue___4, !dbg !3440

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !3440

while_continue:                                   ; preds = %while_continue___4
  %idx.ext = sext i32 %argc_count.0 to i64, !dbg !3441
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !3441
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !3445
  %call1 = call i32 @eval_argv(i8* %0), !dbg !3446
  call void @llvm.dbg.value(metadata i32 %call1, metadata !3447, metadata !DIExpression()), !dbg !3360
  %sub = sub nsw i32 %argc, 1, !dbg !3448
  %cmp = icmp sge i32 %argc_count.0, %sub, !dbg !3450
  br i1 %cmp, label %if.then, label %if.end25, !dbg !3451

if.then:                                          ; preds = %while_continue
  %cmp2 = icmp eq i32 %call1, 99, !dbg !3452
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !3456

if.then3:                                         ; preds = %if.then
  br label %case_99, !dbg !3457

if.end:                                           ; preds = %if.then
  %cmp4 = icmp eq i32 %call1, 23, !dbg !3459
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3456

if.then5:                                         ; preds = %if.end
  br label %case_99, !dbg !3461

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %call1, 21, !dbg !3463
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3456

if.then8:                                         ; preds = %if.end6
  br label %case_99, !dbg !3465

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %call1, 20, !dbg !3467
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !3456

if.then11:                                        ; preds = %if.end9
  br label %case_99, !dbg !3469

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %call1, 24, !dbg !3471
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !3473

if.then14:                                        ; preds = %if.end12
  br label %case_24, !dbg !3474

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call1, 22, !dbg !3476
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !3473

if.then17:                                        ; preds = %if.end15
  br label %case_24, !dbg !3478

if.end18:                                         ; preds = %if.end15
  br label %switch_default, !dbg !3480

case_99:                                          ; preds = %if.then11, %if.then8, %if.then5, %if.then3
  br label %case_23, !dbg !3480

case_23:                                          ; preds = %case_99
  br label %case_21, !dbg !3480

case_21:                                          ; preds = %case_23
  br label %case_20, !dbg !3480

case_20:                                          ; preds = %case_21
  br label %switch_break, !dbg !3481

case_24:                                          ; preds = %if.then17, %if.then14
  br label %case_22, !dbg !3481

case_22:                                          ; preds = %case_24
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3482
  %idx.ext19 = sext i32 %argc_count.0 to i64, !dbg !3485
  %add.ptr20 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext19, !dbg !3485
  %2 = load i8*, i8** %add.ptr20, align 8, !dbg !3486
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.130, i32 0, i32 0), i8* %2), !dbg !3487
  call void @exit(i32 1) #7, !dbg !3488
  unreachable, !dbg !3488

switch_default:                                   ; preds = %if.end18
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3490
  %idx.ext22 = sext i32 %argc_count.0 to i64, !dbg !3493
  %add.ptr23 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext22, !dbg !3493
  %4 = load i8*, i8** %add.ptr23, align 8, !dbg !3494
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.131, i32 0, i32 0), i8* %4), !dbg !3495
  call void @exit(i32 1) #7, !dbg !3496
  unreachable, !dbg !3496

switch_break:                                     ; preds = %case_20
  br label %if.end25, !dbg !3498

if.end25:                                         ; preds = %switch_break, %while_continue
  %cmp26 = icmp eq i32 %call1, 20, !dbg !3499
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !3502

if.then27:                                        ; preds = %if.end25
  br label %case_20___0, !dbg !3503

if.end28:                                         ; preds = %if.end25
  %cmp29 = icmp eq i32 %call1, 21, !dbg !3505
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !3507

if.then30:                                        ; preds = %if.end28
  br label %case_21___0, !dbg !3508

if.end31:                                         ; preds = %if.end28
  %cmp32 = icmp eq i32 %call1, 22, !dbg !3510
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !3512

if.then33:                                        ; preds = %if.end31
  br label %case_22___0, !dbg !3513

if.end34:                                         ; preds = %if.end31
  %cmp35 = icmp eq i32 %call1, 23, !dbg !3515
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !3517

if.then36:                                        ; preds = %if.end34
  br label %case_23___0, !dbg !3518

if.end37:                                         ; preds = %if.end34
  %cmp38 = icmp eq i32 %call1, 24, !dbg !3520
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !3522

if.then39:                                        ; preds = %if.end37
  br label %case_24___0, !dbg !3523

if.end40:                                         ; preds = %if.end37
  %cmp41 = icmp eq i32 %call1, 16, !dbg !3525
  br i1 %cmp41, label %if.then42, label %if.end43, !dbg !3527

if.then42:                                        ; preds = %if.end40
  br label %case_16, !dbg !3528

if.end43:                                         ; preds = %if.end40
  %cmp44 = icmp eq i32 %call1, 15, !dbg !3530
  br i1 %cmp44, label %if.then45, label %if.end46, !dbg !3527

if.then45:                                        ; preds = %if.end43
  br label %case_16, !dbg !3532

if.end46:                                         ; preds = %if.end43
  %cmp47 = icmp eq i32 %call1, 14, !dbg !3534
  br i1 %cmp47, label %if.then48, label %if.end49, !dbg !3527

if.then48:                                        ; preds = %if.end46
  br label %case_16, !dbg !3536

if.end49:                                         ; preds = %if.end46
  %cmp50 = icmp eq i32 %call1, 13, !dbg !3538
  br i1 %cmp50, label %if.then51, label %if.end52, !dbg !3527

if.then51:                                        ; preds = %if.end49
  br label %case_16, !dbg !3540

if.end52:                                         ; preds = %if.end49
  %cmp53 = icmp eq i32 %call1, 12, !dbg !3542
  br i1 %cmp53, label %if.then54, label %if.end55, !dbg !3527

if.then54:                                        ; preds = %if.end52
  br label %case_16, !dbg !3544

if.end55:                                         ; preds = %if.end52
  %cmp56 = icmp eq i32 %call1, 11, !dbg !3546
  br i1 %cmp56, label %if.then57, label %if.end58, !dbg !3527

if.then57:                                        ; preds = %if.end55
  br label %case_16, !dbg !3548

if.end58:                                         ; preds = %if.end55
  %cmp59 = icmp eq i32 %call1, 10, !dbg !3550
  br i1 %cmp59, label %if.then60, label %if.end61, !dbg !3527

if.then60:                                        ; preds = %if.end58
  br label %case_16, !dbg !3552

if.end61:                                         ; preds = %if.end58
  %cmp62 = icmp eq i32 %call1, 9, !dbg !3554
  br i1 %cmp62, label %if.then63, label %if.end64, !dbg !3527

if.then63:                                        ; preds = %if.end61
  br label %case_16, !dbg !3556

if.end64:                                         ; preds = %if.end61
  %cmp65 = icmp eq i32 %call1, 8, !dbg !3558
  br i1 %cmp65, label %if.then66, label %if.end67, !dbg !3527

if.then66:                                        ; preds = %if.end64
  br label %case_16, !dbg !3560

if.end67:                                         ; preds = %if.end64
  %cmp68 = icmp eq i32 %call1, 7, !dbg !3562
  br i1 %cmp68, label %if.then69, label %if.end70, !dbg !3527

if.then69:                                        ; preds = %if.end67
  br label %case_16, !dbg !3564

if.end70:                                         ; preds = %if.end67
  %cmp71 = icmp eq i32 %call1, 6, !dbg !3566
  br i1 %cmp71, label %if.then72, label %if.end73, !dbg !3527

if.then72:                                        ; preds = %if.end70
  br label %case_16, !dbg !3568

if.end73:                                         ; preds = %if.end70
  %cmp74 = icmp eq i32 %call1, 5, !dbg !3570
  br i1 %cmp74, label %if.then75, label %if.end76, !dbg !3527

if.then75:                                        ; preds = %if.end73
  br label %case_16, !dbg !3572

if.end76:                                         ; preds = %if.end73
  %cmp77 = icmp eq i32 %call1, 4, !dbg !3574
  br i1 %cmp77, label %if.then78, label %if.end79, !dbg !3527

if.then78:                                        ; preds = %if.end76
  br label %case_16, !dbg !3576

if.end79:                                         ; preds = %if.end76
  %cmp80 = icmp eq i32 %call1, 3, !dbg !3578
  br i1 %cmp80, label %if.then81, label %if.end82, !dbg !3527

if.then81:                                        ; preds = %if.end79
  br label %case_16, !dbg !3580

if.end82:                                         ; preds = %if.end79
  %cmp83 = icmp eq i32 %call1, 2, !dbg !3582
  br i1 %cmp83, label %if.then84, label %if.end85, !dbg !3527

if.then84:                                        ; preds = %if.end82
  br label %case_16, !dbg !3584

if.end85:                                         ; preds = %if.end82
  %cmp86 = icmp eq i32 %call1, 1, !dbg !3586
  br i1 %cmp86, label %if.then87, label %if.end88, !dbg !3527

if.then87:                                        ; preds = %if.end85
  br label %case_16, !dbg !3588

if.end88:                                         ; preds = %if.end85
  %cmp89 = icmp eq i32 %call1, 0, !dbg !3590
  br i1 %cmp89, label %if.then90, label %if.end91, !dbg !3527

if.then90:                                        ; preds = %if.end88
  br label %case_16, !dbg !3592

if.end91:                                         ; preds = %if.end88
  %cmp92 = icmp eq i32 %call1, 17, !dbg !3594
  br i1 %cmp92, label %if.then93, label %if.end94, !dbg !3596

if.then93:                                        ; preds = %if.end91
  br label %case_17, !dbg !3597

if.end94:                                         ; preds = %if.end91
  %cmp95 = icmp eq i32 %call1, 18, !dbg !3599
  br i1 %cmp95, label %if.then96, label %if.end97, !dbg !3601

if.then96:                                        ; preds = %if.end94
  br label %case_18, !dbg !3602

if.end97:                                         ; preds = %if.end94
  %cmp98 = icmp eq i32 %call1, 99, !dbg !3604
  br i1 %cmp98, label %if.then99, label %if.end100, !dbg !3606

if.then99:                                        ; preds = %if.end97
  br label %case_99___0, !dbg !3607

if.end100:                                        ; preds = %if.end97
  br label %switch_break___0, !dbg !3609

case_20___0:                                      ; preds = %if.then27
  call void @comm_help(), !dbg !3610
  br label %switch_break___0, !dbg !3613

case_21___0:                                      ; preds = %if.then30
  %call101 = call %struct._IO_FILE* @fopen(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0)), !dbg !3614
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call101, metadata !3617, metadata !DIExpression()), !dbg !3360
  %5 = ptrtoint %struct._IO_FILE* %call101 to i64, !dbg !3618
  %cmp102 = icmp eq i64 %5, 0, !dbg !3620
  br i1 %cmp102, label %if.then103, label %if.else, !dbg !3621

if.then103:                                       ; preds = %case_21___0
  %call104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.133, i32 0, i32 0)), !dbg !3622
  br label %if.end116, !dbg !3626

if.else:                                          ; preds = %case_21___0
  %call105 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %call101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32* %dummy, i32* @a3dse, i32* @agc), !dbg !3627
  %6 = load i32, i32* @mixer_fd, align 4, !dbg !3631
  %call106 = call i32 (i32, i64, ...) @ioctl(i32 %6, i64 3221507432, i32* @a3dse) #9, !dbg !3633
  %7 = load i32, i32* @mixer_fd, align 4, !dbg !3634
  %call107 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 3221507431, i32* @agc) #9, !dbg !3636
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body109, !dbg !3638

while.body109:                                    ; preds = %if.end115, %if.else
  %ii.0 = phi i32 [ 0, %if.else ], [ %inc, %if.end115 ], !dbg !3641
  call void @llvm.dbg.value(metadata i32 %ii.0, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while_continue___5, !dbg !3642

while_continue___5:                               ; preds = %while.body109
  br label %while_continue___0, !dbg !3642

while_continue___0:                               ; preds = %while_continue___5
  %cmp110 = icmp slt i32 %ii.0, 25, !dbg !3643
  br i1 %cmp110, label %if.end112, label %if.then111, !dbg !3646

if.then111:                                       ; preds = %while_continue___0
  br label %while_break___0, !dbg !3647

if.end112:                                        ; preds = %while_continue___0
  %call113 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %call101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32* %vol_left, i32* %vol_right), !dbg !3649
  %shl = shl i32 1, %ii.0, !dbg !3652
  %8 = load i32, i32* @devmask, align 4, !dbg !3654
  %and = and i32 %shl, %8, !dbg !3655
  %tobool = icmp ne i32 %and, 0, !dbg !3655
  br i1 %tobool, label %if.then114, label %if.end115, !dbg !3656

if.then114:                                       ; preds = %if.end112
  %9 = load i32, i32* %vol_left, align 4, !dbg !3657
  %10 = load i32, i32* %vol_right, align 4, !dbg !3661
  call void @adjust(i32 %ii.0, i32 %9, i32 %10), !dbg !3662
  br label %if.end115, !dbg !3663

if.end115:                                        ; preds = %if.then114, %if.end112
  %inc = add nsw i32 %ii.0, 1, !dbg !3664
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body109, !dbg !3638, !llvm.loop !3665

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !3667

while_break___0:                                  ; preds = %while_break___5, %if.then111
  br label %if.end116

if.end116:                                        ; preds = %while_break___0, %if.then103
  %call117 = call i32 @fclose(%struct._IO_FILE* %call101), !dbg !3668
  br label %switch_break___0, !dbg !3671

case_22___0:                                      ; preds = %if.then33
  %inc118 = add nsw i32 %argc_count.0, 1, !dbg !3672
  call void @llvm.dbg.value(metadata i32 %inc118, metadata !3428, metadata !DIExpression()), !dbg !3360
  %idx.ext119 = sext i32 %inc118 to i64, !dbg !3674
  %add.ptr120 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext119, !dbg !3674
  %11 = load i8*, i8** %add.ptr120, align 8, !dbg !3676
  %call121 = call %struct._IO_FILE* @fopen(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.132, i32 0, i32 0)), !dbg !3677
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call121, metadata !3617, metadata !DIExpression()), !dbg !3360
  %12 = ptrtoint %struct._IO_FILE* %call121 to i64, !dbg !3678
  %cmp122 = icmp eq i64 %12, 0, !dbg !3680
  br i1 %cmp122, label %if.then123, label %if.else125, !dbg !3681

if.then123:                                       ; preds = %case_22___0
  %call124 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.133, i32 0, i32 0)), !dbg !3682
  br label %if.end142, !dbg !3686

if.else125:                                       ; preds = %case_22___0
  %call126 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %call121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.134, i32 0, i32 0), i32* %dummy, i32* @a3dse, i32* @agc), !dbg !3687
  %13 = load i32, i32* @mixer_fd, align 4, !dbg !3691
  %call127 = call i32 (i32, i64, ...) @ioctl(i32 %13, i64 3221507432, i32* @a3dse) #9, !dbg !3693
  %14 = load i32, i32* @mixer_fd, align 4, !dbg !3694
  %call128 = call i32 (i32, i64, ...) @ioctl(i32 %14, i64 3221507431, i32* @agc) #9, !dbg !3696
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body130, !dbg !3697

while.body130:                                    ; preds = %if.end139, %if.else125
  %ii.1 = phi i32 [ 0, %if.else125 ], [ %inc140, %if.end139 ], !dbg !3700
  call void @llvm.dbg.value(metadata i32 %ii.1, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while_continue___6, !dbg !3701

while_continue___6:                               ; preds = %while.body130
  br label %while_continue___1, !dbg !3701

while_continue___1:                               ; preds = %while_continue___6
  %cmp131 = icmp slt i32 %ii.1, 25, !dbg !3702
  br i1 %cmp131, label %if.end133, label %if.then132, !dbg !3705

if.then132:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !3706

if.end133:                                        ; preds = %while_continue___1
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @"\01__isoc99_fscanf"(%struct._IO_FILE* %call121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32* %vol_left, i32* %vol_right), !dbg !3708
  %shl135 = shl i32 1, %ii.1, !dbg !3711
  %15 = load i32, i32* @devmask, align 4, !dbg !3713
  %and136 = and i32 %shl135, %15, !dbg !3714
  %tobool137 = icmp ne i32 %and136, 0, !dbg !3714
  br i1 %tobool137, label %if.then138, label %if.end139, !dbg !3715

if.then138:                                       ; preds = %if.end133
  %16 = load i32, i32* %vol_left, align 4, !dbg !3716
  %17 = load i32, i32* %vol_right, align 4, !dbg !3720
  call void @adjust(i32 %ii.1, i32 %16, i32 %17), !dbg !3721
  br label %if.end139, !dbg !3722

if.end139:                                        ; preds = %if.then138, %if.end133
  %inc140 = add nsw i32 %ii.1, 1, !dbg !3723
  call void @llvm.dbg.value(metadata i32 %inc140, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body130, !dbg !3697, !llvm.loop !3724

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !3726

while_break___1:                                  ; preds = %while_break___6, %if.then132
  %call141 = call i32 @fclose(%struct._IO_FILE* %call121), !dbg !3727
  br label %if.end142

if.end142:                                        ; preds = %while_break___1, %if.then123
  br label %switch_break___0, !dbg !3730

case_23___0:                                      ; preds = %if.then36
  %call143 = call %struct._IO_FILE* @fopen(i8* %call, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0)), !dbg !3731
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call143, metadata !3617, metadata !DIExpression()), !dbg !3360
  %18 = ptrtoint %struct._IO_FILE* %call143 to i64, !dbg !3734
  %cmp144 = icmp eq i64 %18, 0, !dbg !3736
  br i1 %cmp144, label %if.then145, label %if.end146, !dbg !3737

if.then145:                                       ; preds = %case_23___0
  call void @message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.137, i32 0, i32 0)), !dbg !3738
  br label %switch_break___0, !dbg !3742

if.end146:                                        ; preds = %case_23___0
  store i32 2, i32* @a3dse, align 4, !dbg !3743
  %19 = load i32, i32* @mixer_fd, align 4, !dbg !3745
  %call147 = call i32 (i32, i64, ...) @ioctl(i32 %19, i64 3221507432, i32* @a3dse) #9, !dbg !3747
  call void @llvm.dbg.value(metadata i32 %call147, metadata !3748, metadata !DIExpression()), !dbg !3360
  %cmp148 = icmp eq i32 %call147, -1, !dbg !3749
  br i1 %cmp148, label %if.then149, label %if.end150, !dbg !3751

if.then149:                                       ; preds = %if.end146
  store i32 0, i32* @a3dse, align 4, !dbg !3752
  br label %if.end150, !dbg !3754

if.end150:                                        ; preds = %if.then149, %if.end146
  %20 = load i32, i32* @a3dse, align 4, !dbg !3755
  %call151 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call143, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i32 %20), !dbg !3758
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body153, !dbg !3759

while.body153:                                    ; preds = %if.end177, %if.end150
  %ii.2 = phi i32 [ 0, %if.end150 ], [ %inc179, %if.end177 ], !dbg !3762
  call void @llvm.dbg.value(metadata i32 %ii.2, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while_continue___7, !dbg !3763

while_continue___7:                               ; preds = %while.body153
  br label %while_continue___2, !dbg !3763

while_continue___2:                               ; preds = %while_continue___7
  %cmp154 = icmp slt i32 %ii.2, 25, !dbg !3764
  br i1 %cmp154, label %if.end156, label %if.then155, !dbg !3767

if.then155:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !3768

if.end156:                                        ; preds = %while_continue___2
  %shl157 = shl i32 1, %ii.2, !dbg !3770
  %21 = load i32, i32* @devmask, align 4, !dbg !3772
  %and158 = and i32 %shl157, %21, !dbg !3773
  %tobool159 = icmp ne i32 %and158, 0, !dbg !3773
  br i1 %tobool159, label %if.then160, label %if.else176, !dbg !3774

if.then160:                                       ; preds = %if.end156
  %22 = load i32, i32* @mixer_fd, align 4, !dbg !3775
  %or = or i32 -2147463936, %ii.2, !dbg !3779
  %conv = zext i32 %or to i64, !dbg !3780
  %or161 = or i64 %conv, 262144, !dbg !3781
  %call162 = call i32 (i32, i64, ...) @ioctl(i32 %22, i64 %or161, i32* %pos) #9, !dbg !3782
  call void @llvm.dbg.value(metadata i32 %call162, metadata !3783, metadata !DIExpression()), !dbg !3360
  %cmp163 = icmp eq i32 %call162, -1, !dbg !3784
  br i1 %cmp163, label %if.then165, label %if.end167, !dbg !3786

if.then165:                                       ; preds = %if.then160
  call void @finish(i32 0), !dbg !3787
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3791
  %24 = load i8*, i8** @mixer_dev, align 8, !dbg !3793
  %call166 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i32 0, i32 0), i8* %24), !dbg !3794
  call void @exit(i32 1) #7, !dbg !3795
  unreachable, !dbg !3795

if.end167:                                        ; preds = %if.then160
  %25 = load i32, i32* %pos, align 4, !dbg !3797
  %call168 = call i32 @getbits(i32 %25, i32 7, i32 8), !dbg !3800
  store i32 %call168, i32* %vol_left, align 4, !dbg !3801
  %shl169 = shl i32 1, %ii.2, !dbg !3802
  %26 = load i32, i32* @stereodevs, align 4, !dbg !3804
  %and170 = and i32 %shl169, %26, !dbg !3805
  %tobool171 = icmp ne i32 %and170, 0, !dbg !3805
  br i1 %tobool171, label %if.then172, label %if.else174, !dbg !3806

if.then172:                                       ; preds = %if.end167
  %27 = load i32, i32* %pos, align 4, !dbg !3807
  %call173 = call i32 @getbits(i32 %27, i32 15, i32 8), !dbg !3811
  store i32 %call173, i32* %vol_right, align 4, !dbg !3812
  br label %if.end175, !dbg !3813

if.else174:                                       ; preds = %if.end167
  store i32 -1, i32* %vol_right, align 4, !dbg !3814
  br label %if.end175

if.end175:                                        ; preds = %if.else174, %if.then172
  br label %if.end177, !dbg !3816

if.else176:                                       ; preds = %if.end156
  store i32 -1, i32* %vol_left, align 4, !dbg !3817
  store i32 -1, i32* %vol_right, align 4, !dbg !3819
  br label %if.end177

if.end177:                                        ; preds = %if.else176, %if.end175
  %28 = load i32, i32* %vol_left, align 4, !dbg !3820
  %29 = load i32, i32* %vol_right, align 4, !dbg !3823
  %call178 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call143, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 %28, i32 %29), !dbg !3824
  %inc179 = add nsw i32 %ii.2, 1, !dbg !3825
  call void @llvm.dbg.value(metadata i32 %inc179, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body153, !dbg !3759, !llvm.loop !3826

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !3828

while_break___2:                                  ; preds = %while_break___7, %if.then155
  %call180 = call i32 @fclose(%struct._IO_FILE* %call143), !dbg !3829
  br label %switch_break___0, !dbg !3832

case_24___0:                                      ; preds = %if.then39
  %inc181 = add nsw i32 %argc_count.0, 1, !dbg !3833
  call void @llvm.dbg.value(metadata i32 %inc181, metadata !3428, metadata !DIExpression()), !dbg !3360
  %idx.ext182 = sext i32 %inc181 to i64, !dbg !3835
  %add.ptr183 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext182, !dbg !3835
  %30 = load i8*, i8** %add.ptr183, align 8, !dbg !3837
  %call184 = call %struct._IO_FILE* @fopen(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.136, i32 0, i32 0)), !dbg !3838
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call184, metadata !3617, metadata !DIExpression()), !dbg !3360
  %31 = ptrtoint %struct._IO_FILE* %call184 to i64, !dbg !3839
  %cmp185 = icmp eq i64 %31, 0, !dbg !3841
  br i1 %cmp185, label %if.then187, label %if.end188, !dbg !3842

if.then187:                                       ; preds = %case_24___0
  call void @message(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.137, i32 0, i32 0)), !dbg !3843
  br label %switch_break___0, !dbg !3847

if.end188:                                        ; preds = %case_24___0
  store i32 2, i32* @a3dse, align 4, !dbg !3848
  %32 = load i32, i32* @mixer_fd, align 4, !dbg !3850
  %call189 = call i32 (i32, i64, ...) @ioctl(i32 %32, i64 3221507432, i32* @a3dse) #9, !dbg !3852
  call void @llvm.dbg.value(metadata i32 %call189, metadata !3853, metadata !DIExpression()), !dbg !3360
  %cmp190 = icmp eq i32 %call189, -1, !dbg !3854
  br i1 %cmp190, label %if.then192, label %if.end193, !dbg !3856

if.then192:                                       ; preds = %if.end188
  store i32 0, i32* @a3dse, align 4, !dbg !3857
  br label %if.end193, !dbg !3859

if.end193:                                        ; preds = %if.then192, %if.end188
  %33 = load i32, i32* @a3dse, align 4, !dbg !3860
  %call194 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call184, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.138, i32 0, i32 0), i32 %33), !dbg !3863
  call void @llvm.dbg.value(metadata i32 0, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body196, !dbg !3864

while.body196:                                    ; preds = %if.end223, %if.end193
  %ii.3 = phi i32 [ 0, %if.end193 ], [ %inc225, %if.end223 ], !dbg !3762
  call void @llvm.dbg.value(metadata i32 %ii.3, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while_continue___8, !dbg !3867

while_continue___8:                               ; preds = %while.body196
  br label %while_continue___3, !dbg !3867

while_continue___3:                               ; preds = %while_continue___8
  %cmp197 = icmp slt i32 %ii.3, 25, !dbg !3868
  br i1 %cmp197, label %if.end200, label %if.then199, !dbg !3871

if.then199:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !3872

if.end200:                                        ; preds = %while_continue___3
  %shl201 = shl i32 1, %ii.3, !dbg !3874
  %34 = load i32, i32* @devmask, align 4, !dbg !3876
  %and202 = and i32 %shl201, %34, !dbg !3877
  %tobool203 = icmp ne i32 %and202, 0, !dbg !3877
  br i1 %tobool203, label %if.then204, label %if.else222, !dbg !3878

if.then204:                                       ; preds = %if.end200
  %35 = load i32, i32* @mixer_fd, align 4, !dbg !3879
  %or205 = or i32 -2147463936, %ii.3, !dbg !3883
  %conv206 = zext i32 %or205 to i64, !dbg !3884
  %or207 = or i64 %conv206, 262144, !dbg !3885
  %call208 = call i32 (i32, i64, ...) @ioctl(i32 %35, i64 %or207, i32* %pos) #9, !dbg !3886
  call void @llvm.dbg.value(metadata i32 %call208, metadata !3887, metadata !DIExpression()), !dbg !3360
  %cmp209 = icmp eq i32 %call208, -1, !dbg !3888
  br i1 %cmp209, label %if.then211, label %if.end213, !dbg !3890

if.then211:                                       ; preds = %if.then204
  call void @finish(i32 0), !dbg !3891
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3895
  %37 = load i8*, i8** @mixer_dev, align 8, !dbg !3897
  %call212 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i32 0, i32 0), i8* %37), !dbg !3898
  call void @exit(i32 1) #7, !dbg !3899
  unreachable, !dbg !3899

if.end213:                                        ; preds = %if.then204
  %38 = load i32, i32* %pos, align 4, !dbg !3901
  %call214 = call i32 @getbits(i32 %38, i32 7, i32 8), !dbg !3904
  store i32 %call214, i32* %vol_left, align 4, !dbg !3905
  %shl215 = shl i32 1, %ii.3, !dbg !3906
  %39 = load i32, i32* @stereodevs, align 4, !dbg !3908
  %and216 = and i32 %shl215, %39, !dbg !3909
  %tobool217 = icmp ne i32 %and216, 0, !dbg !3909
  br i1 %tobool217, label %if.then218, label %if.else220, !dbg !3910

if.then218:                                       ; preds = %if.end213
  %40 = load i32, i32* %pos, align 4, !dbg !3911
  %call219 = call i32 @getbits(i32 %40, i32 15, i32 8), !dbg !3915
  store i32 %call219, i32* %vol_right, align 4, !dbg !3916
  br label %if.end221, !dbg !3917

if.else220:                                       ; preds = %if.end213
  store i32 -1, i32* %vol_right, align 4, !dbg !3918
  br label %if.end221

if.end221:                                        ; preds = %if.else220, %if.then218
  br label %if.end223, !dbg !3920

if.else222:                                       ; preds = %if.end200
  store i32 -1, i32* %vol_left, align 4, !dbg !3921
  store i32 -1, i32* %vol_right, align 4, !dbg !3923
  br label %if.end223

if.end223:                                        ; preds = %if.else222, %if.end221
  %41 = load i32, i32* %vol_left, align 4, !dbg !3924
  %42 = load i32, i32* %vol_right, align 4, !dbg !3927
  %call224 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %call184, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.135, i32 0, i32 0), i32 %41, i32 %42), !dbg !3928
  %inc225 = add nsw i32 %ii.3, 1, !dbg !3929
  call void @llvm.dbg.value(metadata i32 %inc225, metadata !3637, metadata !DIExpression()), !dbg !3360
  br label %while.body196, !dbg !3864, !llvm.loop !3930

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !3932

while_break___3:                                  ; preds = %while_break___8, %if.then199
  %call226 = call i32 @fclose(%struct._IO_FILE* %call184), !dbg !3933
  br label %switch_break___0, !dbg !3936

case_16:                                          ; preds = %if.then90, %if.then87, %if.then84, %if.then81, %if.then78, %if.then75, %if.then72, %if.then69, %if.then66, %if.then63, %if.then60, %if.then57, %if.then54, %if.then51, %if.then48, %if.then45, %if.then42
  br label %case_15, !dbg !3936

case_15:                                          ; preds = %case_16
  br label %case_14, !dbg !3936

case_14:                                          ; preds = %case_15
  br label %case_13, !dbg !3936

case_13:                                          ; preds = %case_14
  br label %case_12, !dbg !3936

case_12:                                          ; preds = %case_13
  br label %case_11, !dbg !3936

case_11:                                          ; preds = %case_12
  br label %case_10, !dbg !3936

case_10:                                          ; preds = %case_11
  br label %case_9, !dbg !3936

case_9:                                           ; preds = %case_10
  br label %case_8, !dbg !3936

case_8:                                           ; preds = %case_9
  br label %case_7, !dbg !3936

case_7:                                           ; preds = %case_8
  br label %case_6, !dbg !3936

case_6:                                           ; preds = %case_7
  br label %case_5, !dbg !3936

case_5:                                           ; preds = %case_6
  br label %case_4, !dbg !3936

case_4:                                           ; preds = %case_5
  br label %case_3, !dbg !3936

case_3:                                           ; preds = %case_4
  br label %case_2, !dbg !3936

case_2:                                           ; preds = %case_3
  br label %case_1, !dbg !3936

case_1:                                           ; preds = %case_2
  br label %case_0, !dbg !3936

case_0:                                           ; preds = %case_1
  %idx.ext227 = sext i32 %argc_count.0 to i64, !dbg !3937
  %add.ptr228 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext227, !dbg !3937
  %43 = load i8*, i8** %add.ptr228, align 8, !dbg !3940
  %call229 = call i32 @eval_argv(i8* %43), !dbg !3941
  call void @llvm.dbg.value(metadata i32 %call229, metadata !3942, metadata !DIExpression()), !dbg !3360
  %inc230 = add nsw i32 %argc_count.0, 1, !dbg !3943
  call void @llvm.dbg.value(metadata i32 %inc230, metadata !3428, metadata !DIExpression()), !dbg !3360
  %shl231 = shl i32 1, %call229, !dbg !3944
  %44 = load i32, i32* @devmask, align 4, !dbg !3946
  %and232 = and i32 %shl231, %44, !dbg !3947
  %tobool233 = icmp ne i32 %and232, 0, !dbg !3947
  br i1 %tobool233, label %if.then234, label %if.else238, !dbg !3948

if.then234:                                       ; preds = %case_0
  %idx.ext235 = sext i32 %inc230 to i64, !dbg !3949
  %add.ptr236 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext235, !dbg !3949
  %45 = load i8*, i8** %add.ptr236, align 8, !dbg !3953
  %call237 = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %45, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.140, i32 0, i32 0), i32* %left, i32* %right) #9, !dbg !3954
  %46 = load i32, i32* %left, align 4, !dbg !3955
  %47 = load i32, i32* %right, align 4, !dbg !3957
  call void @adjust(i32 %call229, i32 %46, i32 %47), !dbg !3958
  br label %if.end240, !dbg !3959

if.else238:                                       ; preds = %case_0
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3960
  %call239 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.141, i32 0, i32 0)), !dbg !3964
  br label %if.end240

if.end240:                                        ; preds = %if.else238, %if.then234
  br label %switch_break___0, !dbg !3965

case_17:                                          ; preds = %if.then93
  %inc241 = add nsw i32 %argc_count.0, 1, !dbg !3966
  call void @llvm.dbg.value(metadata i32 %inc241, metadata !3428, metadata !DIExpression()), !dbg !3360
  %idx.ext242 = sext i32 %inc241 to i64, !dbg !3967
  %add.ptr243 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext242, !dbg !3967
  %49 = load i8*, i8** %add.ptr243, align 8, !dbg !3969
  %50 = load i8, i8* %49, align 1, !dbg !3970
  %conv244 = sext i8 %50 to i32, !dbg !3971
  %cmp245 = icmp eq i32 %conv244, 49, !dbg !3972
  br i1 %cmp245, label %if.then247, label %if.else248, !dbg !3973

if.then247:                                       ; preds = %case_17
  store i32 1, i32* @a3dse, align 4, !dbg !3974
  br label %if.end260, !dbg !3976

if.else248:                                       ; preds = %case_17
  %idx.ext249 = sext i32 %inc241 to i64, !dbg !3977
  %add.ptr250 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext249, !dbg !3977
  %51 = load i8*, i8** %add.ptr250, align 8, !dbg !3979
  %52 = load i8, i8* %51, align 1, !dbg !3980
  %conv251 = sext i8 %52 to i32, !dbg !3981
  %cmp252 = icmp eq i32 %conv251, 48, !dbg !3982
  br i1 %cmp252, label %if.then254, label %if.else255, !dbg !3983

if.then254:                                       ; preds = %if.else248
  store i32 0, i32* @a3dse, align 4, !dbg !3984
  br label %if.end259, !dbg !3986

if.else255:                                       ; preds = %if.else248
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3987
  %idx.ext256 = sext i32 %inc241 to i64, !dbg !3991
  %add.ptr257 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext256, !dbg !3991
  %54 = load i8*, i8** %add.ptr257, align 8, !dbg !3992
  %call258 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i32 0, i32 0), i8* %54), !dbg !3993
  br label %switch_break___0, !dbg !3994

if.end259:                                        ; preds = %if.then254
  br label %if.end260

if.end260:                                        ; preds = %if.end259, %if.then247
  %55 = load i32, i32* @mixer_fd, align 4, !dbg !3995
  %call261 = call i32 (i32, i64, ...) @ioctl(i32 %55, i64 3221507432, i32* @a3dse) #9, !dbg !3998
  call void @llvm.dbg.value(metadata i32 %call261, metadata !3999, metadata !DIExpression()), !dbg !3360
  %cmp262 = icmp eq i32 %call261, -1, !dbg !4000
  br i1 %cmp262, label %if.then264, label %if.end266, !dbg !4002

if.then264:                                       ; preds = %if.end260
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4003
  %call265 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %56, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.143, i32 0, i32 0)), !dbg !4007
  br label %if.end266, !dbg !4008

if.end266:                                        ; preds = %if.then264, %if.end260
  br label %switch_break___0, !dbg !4009

case_18:                                          ; preds = %if.then96
  %inc267 = add nsw i32 %argc_count.0, 1, !dbg !4010
  call void @llvm.dbg.value(metadata i32 %inc267, metadata !3428, metadata !DIExpression()), !dbg !3360
  %idx.ext268 = sext i32 %inc267 to i64, !dbg !4011
  %add.ptr269 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext268, !dbg !4011
  %57 = load i8*, i8** %add.ptr269, align 8, !dbg !4013
  %58 = load i8, i8* %57, align 1, !dbg !4014
  %conv270 = sext i8 %58 to i32, !dbg !4015
  %cmp271 = icmp eq i32 %conv270, 49, !dbg !4016
  br i1 %cmp271, label %if.then273, label %if.else274, !dbg !4017

if.then273:                                       ; preds = %case_18
  store i32 1, i32* @agc, align 4, !dbg !4018
  br label %if.end286, !dbg !4020

if.else274:                                       ; preds = %case_18
  %idx.ext275 = sext i32 %inc267 to i64, !dbg !4021
  %add.ptr276 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext275, !dbg !4021
  %59 = load i8*, i8** %add.ptr276, align 8, !dbg !4023
  %60 = load i8, i8* %59, align 1, !dbg !4024
  %conv277 = sext i8 %60 to i32, !dbg !4025
  %cmp278 = icmp eq i32 %conv277, 48, !dbg !4026
  br i1 %cmp278, label %if.then280, label %if.else281, !dbg !4027

if.then280:                                       ; preds = %if.else274
  store i32 0, i32* @agc, align 4, !dbg !4028
  br label %if.end285, !dbg !4030

if.else281:                                       ; preds = %if.else274
  %61 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4031
  %idx.ext282 = sext i32 %inc267 to i64, !dbg !4035
  %add.ptr283 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext282, !dbg !4035
  %62 = load i8*, i8** %add.ptr283, align 8, !dbg !4036
  %call284 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %61, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.142, i32 0, i32 0), i8* %62), !dbg !4037
  br label %switch_break___0, !dbg !4038

if.end285:                                        ; preds = %if.then280
  br label %if.end286

if.end286:                                        ; preds = %if.end285, %if.then273
  %63 = load i32, i32* @mixer_fd, align 4, !dbg !4039
  %call287 = call i32 (i32, i64, ...) @ioctl(i32 %63, i64 3221507431, i32* @agc) #9, !dbg !4042
  call void @llvm.dbg.value(metadata i32 %call287, metadata !4043, metadata !DIExpression()), !dbg !3360
  %cmp288 = icmp eq i32 %call287, -1, !dbg !4044
  br i1 %cmp288, label %if.then290, label %if.end292, !dbg !4046

if.then290:                                       ; preds = %if.end286
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4047
  %call291 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.143, i32 0, i32 0)), !dbg !4051
  br label %if.end292, !dbg !4052

if.end292:                                        ; preds = %if.then290, %if.end286
  br label %switch_break___0, !dbg !4053

case_99___0:                                      ; preds = %if.then99
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4054
  %idx.ext293 = sext i32 %argc_count.0 to i64, !dbg !4057
  %add.ptr294 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext293, !dbg !4057
  %66 = load i8*, i8** %add.ptr294, align 8, !dbg !4058
  %call295 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.144, i32 0, i32 0), i8* %66), !dbg !4059
  %inc296 = add nsw i32 %argc_count.0, 1, !dbg !4060
  call void @llvm.dbg.value(metadata i32 %inc296, metadata !3428, metadata !DIExpression()), !dbg !3360
  br label %switch_break___0, !dbg !4061

switch_break___0:                                 ; preds = %case_99___0, %if.end292, %if.else281, %if.end266, %if.else255, %if.end240, %while_break___3, %if.then187, %while_break___2, %if.then145, %if.end142, %if.end116, %case_20___0, %if.end100
  %argc_count.1 = phi i32 [ %argc_count.0, %case_20___0 ], [ %argc_count.0, %if.end116 ], [ %inc118, %if.end142 ], [ %argc_count.0, %if.then145 ], [ %argc_count.0, %while_break___2 ], [ %inc181, %if.then187 ], [ %inc181, %while_break___3 ], [ %inc230, %if.end240 ], [ %inc241, %if.end266 ], [ %inc241, %if.else255 ], [ %inc267, %if.end292 ], [ %inc267, %if.else281 ], [ %inc296, %case_99___0 ], [ %argc_count.0, %if.end100 ], !dbg !3439
  call void @llvm.dbg.value(metadata i32 %argc_count.1, metadata !3428, metadata !DIExpression()), !dbg !3360
  %inc297 = add nsw i32 %argc_count.1, 1, !dbg !4062
  call void @llvm.dbg.value(metadata i32 %inc297, metadata !3428, metadata !DIExpression()), !dbg !3360
  %cmp298 = icmp slt i32 %inc297, %argc, !dbg !4063
  br i1 %cmp298, label %if.end301, label %if.then300, !dbg !4065

if.then300:                                       ; preds = %switch_break___0
  br label %while_break, !dbg !4066

if.end301:                                        ; preds = %switch_break___0
  br label %while.body, !dbg !3436, !llvm.loop !4068

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !4070

while_break:                                      ; preds = %while_break___4, %if.then300
  ret void, !dbg !4071
}

declare i32 @close(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @getbits(i32 %x, i32 %p, i32 %n) #0 !dbg !4072 {
entry:
  call void @llvm.dbg.value(metadata i32 %x, metadata !4075, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i32 %p, metadata !4077, metadata !DIExpression()), !dbg !4076
  call void @llvm.dbg.value(metadata i32 %n, metadata !4078, metadata !DIExpression()), !dbg !4076
  %add = add nsw i32 %p, 1, !dbg !4079
  %sub = sub nsw i32 %add, %n, !dbg !4081
  %shr = ashr i32 %x, %sub, !dbg !4082
  %shl = shl i32 -1, %n, !dbg !4083
  %neg = xor i32 %shl, -1, !dbg !4084
  %and = and i32 %shr, %neg, !dbg !4085
  ret i32 %and, !dbg !4086
}

; Function Attrs: noinline nounwind ssp uwtable
define void @adjust(i32 %dev_nr, i32 %left, i32 %right) #0 !dbg !4087 {
entry:
  %temp = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %dev_nr, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 %left, metadata !4090, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.value(metadata i32 %right, metadata !4091, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata i32* %temp, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata !4, metadata !4094, metadata !DIExpression()), !dbg !4095
  store i32 0, i32* %temp, align 4, !dbg !4096
  %cmp = icmp eq i32 %left, -1, !dbg !4098
  br i1 %cmp, label %if.then, label %if.end, !dbg !4100

if.then:                                          ; preds = %entry
  br label %return, !dbg !4101

if.end:                                           ; preds = %entry
  %cmp1 = icmp eq i32 %right, -1, !dbg !4103
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !4105

if.then2:                                         ; preds = %if.end
  store i32 %left, i32* %temp, align 4, !dbg !4106
  br label %if.end3, !dbg !4108

if.else:                                          ; preds = %if.end
  %shl = shl i32 %right, 8, !dbg !4109
  %add = add nsw i32 %left, %shl, !dbg !4111
  store i32 %add, i32* %temp, align 4, !dbg !4112
  br label %if.end3

if.end3:                                          ; preds = %if.else, %if.then2
  %0 = load i32, i32* @mixer_fd, align 4, !dbg !4113
  %or = or i32 -1073722112, %dev_nr, !dbg !4116
  %conv = zext i32 %or to i64, !dbg !4117
  %or4 = or i64 %conv, 262144, !dbg !4118
  %call = call i32 (i32, i64, ...) @ioctl(i32 %0, i64 %or4, i32* %temp) #9, !dbg !4119
  call void @llvm.dbg.value(metadata i32 %call, metadata !4120, metadata !DIExpression()), !dbg !4089
  %cmp5 = icmp eq i32 %call, -1, !dbg !4121
  br i1 %cmp5, label %if.then7, label %if.end9, !dbg !4123

if.then7:                                         ; preds = %if.end3
  call void @finish(i32 0), !dbg !4124
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4128
  %2 = load i8*, i8** @mixer_dev, align 8, !dbg !4130
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.81, i32 0, i32 0), i8* %2), !dbg !4131
  call void @exit(i32 1) #7, !dbg !4132
  unreachable, !dbg !4132

if.end9:                                          ; preds = %if.end3
  br label %return, !dbg !4134

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !4135
}

; Function Attrs: nounwind
declare i32 @ioctl(i32, i64, ...) #5

; Function Attrs: noinline nounwind ssp uwtable
define i32 @eval_argv(i8* %arg) #0 !dbg !4136 {
entry:
  call void @llvm.dbg.value(metadata i8* %arg, metadata !4139, metadata !DIExpression()), !dbg !4140
  call void @llvm.dbg.declare(metadata !4, metadata !4141, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.declare(metadata !4, metadata !4143, metadata !DIExpression()), !dbg !4144
  call void @llvm.dbg.declare(metadata !4, metadata !4145, metadata !DIExpression()), !dbg !4146
  call void @llvm.dbg.declare(metadata !4, metadata !4147, metadata !DIExpression()), !dbg !4148
  call void @llvm.dbg.declare(metadata !4, metadata !4149, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.declare(metadata !4, metadata !4151, metadata !DIExpression()), !dbg !4152
  call void @llvm.dbg.declare(metadata !4, metadata !4153, metadata !DIExpression()), !dbg !4154
  call void @llvm.dbg.declare(metadata !4, metadata !4155, metadata !DIExpression()), !dbg !4156
  call void @llvm.dbg.declare(metadata !4, metadata !4157, metadata !DIExpression()), !dbg !4158
  call void @llvm.dbg.declare(metadata !4, metadata !4159, metadata !DIExpression()), !dbg !4160
  call void @llvm.dbg.declare(metadata !4, metadata !4161, metadata !DIExpression()), !dbg !4162
  call void @llvm.dbg.declare(metadata !4, metadata !4163, metadata !DIExpression()), !dbg !4164
  call void @llvm.dbg.declare(metadata !4, metadata !4165, metadata !DIExpression()), !dbg !4166
  call void @llvm.dbg.declare(metadata !4, metadata !4167, metadata !DIExpression()), !dbg !4168
  call void @llvm.dbg.declare(metadata !4, metadata !4169, metadata !DIExpression()), !dbg !4170
  call void @llvm.dbg.declare(metadata !4, metadata !4171, metadata !DIExpression()), !dbg !4172
  call void @llvm.dbg.declare(metadata !4, metadata !4173, metadata !DIExpression()), !dbg !4174
  call void @llvm.dbg.declare(metadata !4, metadata !4175, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.declare(metadata !4, metadata !4177, metadata !DIExpression()), !dbg !4178
  call void @llvm.dbg.declare(metadata !4, metadata !4179, metadata !DIExpression()), !dbg !4180
  call void @llvm.dbg.declare(metadata !4, metadata !4181, metadata !DIExpression()), !dbg !4182
  call void @llvm.dbg.declare(metadata !4, metadata !4183, metadata !DIExpression()), !dbg !4184
  call void @llvm.dbg.declare(metadata !4, metadata !4185, metadata !DIExpression()), !dbg !4186
  call void @llvm.dbg.declare(metadata !4, metadata !4187, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.declare(metadata !4, metadata !4189, metadata !DIExpression()), !dbg !4190
  call void @llvm.dbg.declare(metadata !4, metadata !4191, metadata !DIExpression()), !dbg !4192
  call void @llvm.dbg.declare(metadata !4, metadata !4193, metadata !DIExpression()), !dbg !4194
  call void @llvm.dbg.declare(metadata !4, metadata !4195, metadata !DIExpression()), !dbg !4196
  call void @llvm.dbg.declare(metadata !4, metadata !4197, metadata !DIExpression()), !dbg !4198
  call void @llvm.dbg.declare(metadata !4, metadata !4199, metadata !DIExpression()), !dbg !4200
  call void @llvm.dbg.declare(metadata !4, metadata !4201, metadata !DIExpression()), !dbg !4202
  call void @llvm.dbg.declare(metadata !4, metadata !4203, metadata !DIExpression()), !dbg !4204
  call void @llvm.dbg.declare(metadata !4, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.declare(metadata !4, metadata !4207, metadata !DIExpression()), !dbg !4208
  call void @llvm.dbg.declare(metadata !4, metadata !4209, metadata !DIExpression()), !dbg !4210
  call void @llvm.dbg.declare(metadata !4, metadata !4211, metadata !DIExpression()), !dbg !4212
  call void @llvm.dbg.declare(metadata !4, metadata !4213, metadata !DIExpression()), !dbg !4214
  call void @llvm.dbg.declare(metadata !4, metadata !4215, metadata !DIExpression()), !dbg !4216
  call void @llvm.dbg.declare(metadata !4, metadata !4217, metadata !DIExpression()), !dbg !4218
  call void @llvm.dbg.declare(metadata !4, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.declare(metadata !4, metadata !4221, metadata !DIExpression()), !dbg !4222
  call void @llvm.dbg.declare(metadata !4, metadata !4223, metadata !DIExpression()), !dbg !4224
  call void @llvm.dbg.declare(metadata !4, metadata !4225, metadata !DIExpression()), !dbg !4226
  call void @llvm.dbg.declare(metadata !4, metadata !4227, metadata !DIExpression()), !dbg !4228
  call void @llvm.dbg.declare(metadata !4, metadata !4229, metadata !DIExpression()), !dbg !4230
  %call = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.82, i32 0, i32 0)) #8, !dbg !4231
  call void @llvm.dbg.value(metadata i32 %call, metadata !4235, metadata !DIExpression()), !dbg !4140
  %cmp = icmp eq i32 %call, 0, !dbg !4236
  br i1 %cmp, label %if.then, label %if.else, !dbg !4238

if.then:                                          ; preds = %entry
  br label %return, !dbg !4239

if.else:                                          ; preds = %entry
  %call1 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.83, i32 0, i32 0)) #8, !dbg !4241
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4245, metadata !DIExpression()), !dbg !4140
  %cmp2 = icmp eq i32 %call1, 0, !dbg !4246
  br i1 %cmp2, label %if.then3, label %if.else4, !dbg !4248

if.then3:                                         ; preds = %if.else
  br label %return, !dbg !4249

if.else4:                                         ; preds = %if.else
  %call5 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.84, i32 0, i32 0)) #8, !dbg !4251
  call void @llvm.dbg.value(metadata i32 %call5, metadata !4255, metadata !DIExpression()), !dbg !4140
  %cmp6 = icmp eq i32 %call5, 0, !dbg !4256
  br i1 %cmp6, label %if.then7, label %if.else8, !dbg !4258

if.then7:                                         ; preds = %if.else4
  br label %return, !dbg !4259

if.else8:                                         ; preds = %if.else4
  %call9 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.85, i32 0, i32 0)) #8, !dbg !4261
  call void @llvm.dbg.value(metadata i32 %call9, metadata !4265, metadata !DIExpression()), !dbg !4140
  %cmp10 = icmp eq i32 %call9, 0, !dbg !4266
  br i1 %cmp10, label %if.then11, label %if.else12, !dbg !4268

if.then11:                                        ; preds = %if.else8
  br label %return, !dbg !4269

if.else12:                                        ; preds = %if.else8
  %call13 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.86, i32 0, i32 0)) #8, !dbg !4271
  call void @llvm.dbg.value(metadata i32 %call13, metadata !4275, metadata !DIExpression()), !dbg !4140
  %cmp14 = icmp eq i32 %call13, 0, !dbg !4276
  br i1 %cmp14, label %if.then15, label %if.else16, !dbg !4278

if.then15:                                        ; preds = %if.else12
  br label %return, !dbg !4279

if.else16:                                        ; preds = %if.else12
  %call17 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.87, i32 0, i32 0)) #8, !dbg !4281
  call void @llvm.dbg.value(metadata i32 %call17, metadata !4285, metadata !DIExpression()), !dbg !4140
  %cmp18 = icmp eq i32 %call17, 0, !dbg !4286
  br i1 %cmp18, label %if.then19, label %if.else20, !dbg !4288

if.then19:                                        ; preds = %if.else16
  br label %return, !dbg !4289

if.else20:                                        ; preds = %if.else16
  %call21 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.88, i32 0, i32 0)) #8, !dbg !4291
  call void @llvm.dbg.value(metadata i32 %call21, metadata !4295, metadata !DIExpression()), !dbg !4140
  %cmp22 = icmp eq i32 %call21, 0, !dbg !4296
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !4298

if.then23:                                        ; preds = %if.else20
  br label %return, !dbg !4299

if.else24:                                        ; preds = %if.else20
  %call25 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.89, i32 0, i32 0)) #8, !dbg !4301
  call void @llvm.dbg.value(metadata i32 %call25, metadata !4305, metadata !DIExpression()), !dbg !4140
  %cmp26 = icmp eq i32 %call25, 0, !dbg !4306
  br i1 %cmp26, label %if.then27, label %if.else28, !dbg !4308

if.then27:                                        ; preds = %if.else24
  br label %return, !dbg !4309

if.else28:                                        ; preds = %if.else24
  %call29 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.90, i32 0, i32 0)) #8, !dbg !4311
  call void @llvm.dbg.value(metadata i32 %call29, metadata !4315, metadata !DIExpression()), !dbg !4140
  %cmp30 = icmp eq i32 %call29, 0, !dbg !4316
  br i1 %cmp30, label %if.then31, label %if.else32, !dbg !4318

if.then31:                                        ; preds = %if.else28
  br label %return, !dbg !4319

if.else32:                                        ; preds = %if.else28
  %call33 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.91, i32 0, i32 0)) #8, !dbg !4321
  call void @llvm.dbg.value(metadata i32 %call33, metadata !4325, metadata !DIExpression()), !dbg !4140
  %cmp34 = icmp eq i32 %call33, 0, !dbg !4326
  br i1 %cmp34, label %if.then35, label %if.else36, !dbg !4328

if.then35:                                        ; preds = %if.else32
  br label %return, !dbg !4329

if.else36:                                        ; preds = %if.else32
  %call37 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0)) #8, !dbg !4331
  call void @llvm.dbg.value(metadata i32 %call37, metadata !4335, metadata !DIExpression()), !dbg !4140
  %cmp38 = icmp eq i32 %call37, 0, !dbg !4336
  br i1 %cmp38, label %if.then39, label %if.else40, !dbg !4338

if.then39:                                        ; preds = %if.else36
  br label %return, !dbg !4339

if.else40:                                        ; preds = %if.else36
  %call41 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0)) #8, !dbg !4341
  call void @llvm.dbg.value(metadata i32 %call41, metadata !4345, metadata !DIExpression()), !dbg !4140
  %cmp42 = icmp eq i32 %call41, 0, !dbg !4346
  br i1 %cmp42, label %if.then43, label %if.else44, !dbg !4348

if.then43:                                        ; preds = %if.else40
  br label %return, !dbg !4349

if.else44:                                        ; preds = %if.else40
  %call45 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.94, i32 0, i32 0)) #8, !dbg !4351
  call void @llvm.dbg.value(metadata i32 %call45, metadata !4355, metadata !DIExpression()), !dbg !4140
  %cmp46 = icmp eq i32 %call45, 0, !dbg !4356
  br i1 %cmp46, label %if.then47, label %if.else48, !dbg !4358

if.then47:                                        ; preds = %if.else44
  br label %return, !dbg !4359

if.else48:                                        ; preds = %if.else44
  %call49 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0)) #8, !dbg !4361
  call void @llvm.dbg.value(metadata i32 %call49, metadata !4365, metadata !DIExpression()), !dbg !4140
  %cmp50 = icmp eq i32 %call49, 0, !dbg !4366
  br i1 %cmp50, label %if.then51, label %if.else52, !dbg !4368

if.then51:                                        ; preds = %if.else48
  br label %return, !dbg !4369

if.else52:                                        ; preds = %if.else48
  %call53 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.96, i32 0, i32 0)) #8, !dbg !4371
  call void @llvm.dbg.value(metadata i32 %call53, metadata !4375, metadata !DIExpression()), !dbg !4140
  %cmp54 = icmp eq i32 %call53, 0, !dbg !4376
  br i1 %cmp54, label %if.then55, label %if.else56, !dbg !4378

if.then55:                                        ; preds = %if.else52
  br label %return, !dbg !4379

if.else56:                                        ; preds = %if.else52
  %call57 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.97, i32 0, i32 0)) #8, !dbg !4381
  call void @llvm.dbg.value(metadata i32 %call57, metadata !4385, metadata !DIExpression()), !dbg !4140
  %cmp58 = icmp eq i32 %call57, 0, !dbg !4386
  br i1 %cmp58, label %if.then59, label %if.else60, !dbg !4388

if.then59:                                        ; preds = %if.else56
  br label %return, !dbg !4389

if.else60:                                        ; preds = %if.else56
  %call61 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.98, i32 0, i32 0)) #8, !dbg !4391
  call void @llvm.dbg.value(metadata i32 %call61, metadata !4395, metadata !DIExpression()), !dbg !4140
  %cmp62 = icmp eq i32 %call61, 0, !dbg !4396
  br i1 %cmp62, label %if.then63, label %if.else64, !dbg !4398

if.then63:                                        ; preds = %if.else60
  br label %return, !dbg !4399

if.else64:                                        ; preds = %if.else60
  %call65 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.99, i32 0, i32 0)) #8, !dbg !4401
  call void @llvm.dbg.value(metadata i32 %call65, metadata !4405, metadata !DIExpression()), !dbg !4140
  %cmp66 = icmp eq i32 %call65, 0, !dbg !4406
  br i1 %cmp66, label %if.then67, label %if.else68, !dbg !4408

if.then67:                                        ; preds = %if.else64
  br label %return, !dbg !4409

if.else68:                                        ; preds = %if.else64
  %call69 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.100, i32 0, i32 0)) #8, !dbg !4411
  call void @llvm.dbg.value(metadata i32 %call69, metadata !4415, metadata !DIExpression()), !dbg !4140
  %cmp70 = icmp eq i32 %call69, 0, !dbg !4416
  br i1 %cmp70, label %if.then71, label %if.else72, !dbg !4418

if.then71:                                        ; preds = %if.else68
  br label %return, !dbg !4419

if.else72:                                        ; preds = %if.else68
  %call73 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0)) #8, !dbg !4421
  call void @llvm.dbg.value(metadata i32 %call73, metadata !4425, metadata !DIExpression()), !dbg !4140
  %cmp74 = icmp eq i32 %call73, 0, !dbg !4426
  br i1 %cmp74, label %if.then75, label %if.else76, !dbg !4428

if.then75:                                        ; preds = %if.else72
  br label %return, !dbg !4429

if.else76:                                        ; preds = %if.else72
  %call77 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i32 0, i32 0)) #8, !dbg !4431
  call void @llvm.dbg.value(metadata i32 %call77, metadata !4435, metadata !DIExpression()), !dbg !4140
  %cmp78 = icmp eq i32 %call77, 0, !dbg !4436
  br i1 %cmp78, label %if.then79, label %if.else80, !dbg !4438

if.then79:                                        ; preds = %if.else76
  br label %return, !dbg !4439

if.else80:                                        ; preds = %if.else76
  %call81 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.103, i32 0, i32 0)) #8, !dbg !4441
  call void @llvm.dbg.value(metadata i32 %call81, metadata !4445, metadata !DIExpression()), !dbg !4140
  %cmp82 = icmp eq i32 %call81, 0, !dbg !4446
  br i1 %cmp82, label %if.then83, label %if.else84, !dbg !4448

if.then83:                                        ; preds = %if.else80
  br label %return, !dbg !4449

if.else84:                                        ; preds = %if.else80
  %call85 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.104, i32 0, i32 0)) #8, !dbg !4451
  call void @llvm.dbg.value(metadata i32 %call85, metadata !4455, metadata !DIExpression()), !dbg !4140
  %cmp86 = icmp eq i32 %call85, 0, !dbg !4456
  br i1 %cmp86, label %if.then87, label %if.else88, !dbg !4458

if.then87:                                        ; preds = %if.else84
  br label %return, !dbg !4459

if.else88:                                        ; preds = %if.else84
  %call89 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.105, i32 0, i32 0)) #8, !dbg !4461
  call void @llvm.dbg.value(metadata i32 %call89, metadata !4465, metadata !DIExpression()), !dbg !4140
  %cmp90 = icmp eq i32 %call89, 0, !dbg !4466
  br i1 %cmp90, label %if.then91, label %if.else92, !dbg !4468

if.then91:                                        ; preds = %if.else88
  br label %return, !dbg !4469

if.else92:                                        ; preds = %if.else88
  %call93 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i32 0, i32 0)) #8, !dbg !4471
  call void @llvm.dbg.value(metadata i32 %call93, metadata !4475, metadata !DIExpression()), !dbg !4140
  %cmp94 = icmp eq i32 %call93, 0, !dbg !4476
  br i1 %cmp94, label %if.then95, label %if.else96, !dbg !4478

if.then95:                                        ; preds = %if.else92
  br label %return, !dbg !4479

if.else96:                                        ; preds = %if.else92
  %call97 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0)) #8, !dbg !4481
  call void @llvm.dbg.value(metadata i32 %call97, metadata !4485, metadata !DIExpression()), !dbg !4140
  %cmp98 = icmp eq i32 %call97, 0, !dbg !4486
  br i1 %cmp98, label %if.then99, label %if.else100, !dbg !4488

if.then99:                                        ; preds = %if.else96
  br label %return, !dbg !4489

if.else100:                                       ; preds = %if.else96
  %call101 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i32 0, i32 0)) #8, !dbg !4491
  call void @llvm.dbg.value(metadata i32 %call101, metadata !4495, metadata !DIExpression()), !dbg !4140
  %cmp102 = icmp eq i32 %call101, 0, !dbg !4496
  br i1 %cmp102, label %if.then103, label %if.else104, !dbg !4498

if.then103:                                       ; preds = %if.else100
  br label %return, !dbg !4499

if.else104:                                       ; preds = %if.else100
  %call105 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.109, i32 0, i32 0)) #8, !dbg !4501
  call void @llvm.dbg.value(metadata i32 %call105, metadata !4505, metadata !DIExpression()), !dbg !4140
  %cmp106 = icmp eq i32 %call105, 0, !dbg !4506
  br i1 %cmp106, label %if.then107, label %if.else108, !dbg !4508

if.then107:                                       ; preds = %if.else104
  br label %return, !dbg !4509

if.else108:                                       ; preds = %if.else104
  %call109 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.110, i32 0, i32 0)) #8, !dbg !4511
  call void @llvm.dbg.value(metadata i32 %call109, metadata !4515, metadata !DIExpression()), !dbg !4140
  %cmp110 = icmp eq i32 %call109, 0, !dbg !4516
  br i1 %cmp110, label %if.then111, label %if.else112, !dbg !4518

if.then111:                                       ; preds = %if.else108
  br label %return, !dbg !4519

if.else112:                                       ; preds = %if.else108
  %call113 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.111, i32 0, i32 0)) #8, !dbg !4521
  call void @llvm.dbg.value(metadata i32 %call113, metadata !4525, metadata !DIExpression()), !dbg !4140
  %cmp114 = icmp eq i32 %call113, 0, !dbg !4526
  br i1 %cmp114, label %if.then115, label %if.else116, !dbg !4528

if.then115:                                       ; preds = %if.else112
  br label %return, !dbg !4529

if.else116:                                       ; preds = %if.else112
  %call117 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.112, i32 0, i32 0)) #8, !dbg !4531
  call void @llvm.dbg.value(metadata i32 %call117, metadata !4535, metadata !DIExpression()), !dbg !4140
  %cmp118 = icmp eq i32 %call117, 0, !dbg !4536
  br i1 %cmp118, label %if.then119, label %if.else120, !dbg !4538

if.then119:                                       ; preds = %if.else116
  br label %return, !dbg !4539

if.else120:                                       ; preds = %if.else116
  %call121 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.113, i32 0, i32 0)) #8, !dbg !4541
  call void @llvm.dbg.value(metadata i32 %call121, metadata !4545, metadata !DIExpression()), !dbg !4140
  %cmp122 = icmp eq i32 %call121, 0, !dbg !4546
  br i1 %cmp122, label %if.then123, label %if.else124, !dbg !4548

if.then123:                                       ; preds = %if.else120
  br label %return, !dbg !4549

if.else124:                                       ; preds = %if.else120
  %call125 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.114, i32 0, i32 0)) #8, !dbg !4551
  call void @llvm.dbg.value(metadata i32 %call125, metadata !4555, metadata !DIExpression()), !dbg !4140
  %cmp126 = icmp eq i32 %call125, 0, !dbg !4556
  br i1 %cmp126, label %if.then127, label %if.else128, !dbg !4558

if.then127:                                       ; preds = %if.else124
  br label %return, !dbg !4559

if.else128:                                       ; preds = %if.else124
  %call129 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.115, i32 0, i32 0)) #8, !dbg !4561
  call void @llvm.dbg.value(metadata i32 %call129, metadata !4565, metadata !DIExpression()), !dbg !4140
  %cmp130 = icmp eq i32 %call129, 0, !dbg !4566
  br i1 %cmp130, label %if.then131, label %if.else132, !dbg !4568

if.then131:                                       ; preds = %if.else128
  br label %return, !dbg !4569

if.else132:                                       ; preds = %if.else128
  %call133 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.116, i32 0, i32 0)) #8, !dbg !4571
  call void @llvm.dbg.value(metadata i32 %call133, metadata !4575, metadata !DIExpression()), !dbg !4140
  %cmp134 = icmp eq i32 %call133, 0, !dbg !4576
  br i1 %cmp134, label %if.then135, label %if.else136, !dbg !4578

if.then135:                                       ; preds = %if.else132
  br label %return, !dbg !4579

if.else136:                                       ; preds = %if.else132
  %call137 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.117, i32 0, i32 0)) #8, !dbg !4581
  call void @llvm.dbg.value(metadata i32 %call137, metadata !4585, metadata !DIExpression()), !dbg !4140
  %cmp138 = icmp eq i32 %call137, 0, !dbg !4586
  br i1 %cmp138, label %if.then139, label %if.else140, !dbg !4588

if.then139:                                       ; preds = %if.else136
  br label %return, !dbg !4589

if.else140:                                       ; preds = %if.else136
  %call141 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.118, i32 0, i32 0)) #8, !dbg !4591
  call void @llvm.dbg.value(metadata i32 %call141, metadata !4595, metadata !DIExpression()), !dbg !4140
  %cmp142 = icmp eq i32 %call141, 0, !dbg !4596
  br i1 %cmp142, label %if.then143, label %if.else144, !dbg !4598

if.then143:                                       ; preds = %if.else140
  br label %return, !dbg !4599

if.else144:                                       ; preds = %if.else140
  %call145 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.119, i32 0, i32 0)) #8, !dbg !4601
  call void @llvm.dbg.value(metadata i32 %call145, metadata !4605, metadata !DIExpression()), !dbg !4140
  %cmp146 = icmp eq i32 %call145, 0, !dbg !4606
  br i1 %cmp146, label %if.then147, label %if.else148, !dbg !4608

if.then147:                                       ; preds = %if.else144
  br label %return, !dbg !4609

if.else148:                                       ; preds = %if.else144
  %call149 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.120, i32 0, i32 0)) #8, !dbg !4611
  call void @llvm.dbg.value(metadata i32 %call149, metadata !4615, metadata !DIExpression()), !dbg !4140
  %cmp150 = icmp eq i32 %call149, 0, !dbg !4616
  br i1 %cmp150, label %if.then151, label %if.else152, !dbg !4618

if.then151:                                       ; preds = %if.else148
  br label %return, !dbg !4619

if.else152:                                       ; preds = %if.else148
  %call153 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.121, i32 0, i32 0)) #8, !dbg !4621
  call void @llvm.dbg.value(metadata i32 %call153, metadata !4625, metadata !DIExpression()), !dbg !4140
  %cmp154 = icmp eq i32 %call153, 0, !dbg !4626
  br i1 %cmp154, label %if.then155, label %if.else156, !dbg !4628

if.then155:                                       ; preds = %if.else152
  br label %return, !dbg !4629

if.else156:                                       ; preds = %if.else152
  %call157 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.122, i32 0, i32 0)) #8, !dbg !4631
  call void @llvm.dbg.value(metadata i32 %call157, metadata !4635, metadata !DIExpression()), !dbg !4140
  %cmp158 = icmp eq i32 %call157, 0, !dbg !4636
  br i1 %cmp158, label %if.then159, label %if.else160, !dbg !4638

if.then159:                                       ; preds = %if.else156
  br label %return, !dbg !4639

if.else160:                                       ; preds = %if.else156
  %call161 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.123, i32 0, i32 0)) #8, !dbg !4641
  call void @llvm.dbg.value(metadata i32 %call161, metadata !4645, metadata !DIExpression()), !dbg !4140
  %cmp162 = icmp eq i32 %call161, 0, !dbg !4646
  br i1 %cmp162, label %if.then163, label %if.else164, !dbg !4648

if.then163:                                       ; preds = %if.else160
  br label %return, !dbg !4649

if.else164:                                       ; preds = %if.else160
  %call165 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.124, i32 0, i32 0)) #8, !dbg !4651
  call void @llvm.dbg.value(metadata i32 %call165, metadata !4655, metadata !DIExpression()), !dbg !4140
  %cmp166 = icmp eq i32 %call165, 0, !dbg !4656
  br i1 %cmp166, label %if.then167, label %if.else168, !dbg !4658

if.then167:                                       ; preds = %if.else164
  br label %return, !dbg !4659

if.else168:                                       ; preds = %if.else164
  %call169 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.125, i32 0, i32 0)) #8, !dbg !4661
  call void @llvm.dbg.value(metadata i32 %call169, metadata !4665, metadata !DIExpression()), !dbg !4140
  %cmp170 = icmp eq i32 %call169, 0, !dbg !4666
  br i1 %cmp170, label %if.then171, label %if.else172, !dbg !4668

if.then171:                                       ; preds = %if.else168
  br label %return, !dbg !4669

if.else172:                                       ; preds = %if.else168
  %call173 = call i32 @strcmp(i8* %arg, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.126, i32 0, i32 0)) #8, !dbg !4671
  call void @llvm.dbg.value(metadata i32 %call173, metadata !4675, metadata !DIExpression()), !dbg !4140
  %cmp174 = icmp eq i32 %call173, 0, !dbg !4676
  br i1 %cmp174, label %if.then175, label %if.else176, !dbg !4678

if.then175:                                       ; preds = %if.else172
  br label %return, !dbg !4679

if.else176:                                       ; preds = %if.else172
  br label %return, !dbg !4681

return:                                           ; preds = %if.else176, %if.then175, %if.then171, %if.then167, %if.then163, %if.then159, %if.then155, %if.then151, %if.then147, %if.then143, %if.then139, %if.then135, %if.then131, %if.then127, %if.then123, %if.then119, %if.then115, %if.then111, %if.then107, %if.then103, %if.then99, %if.then95, %if.then91, %if.then87, %if.then83, %if.then79, %if.then75, %if.then71, %if.then67, %if.then63, %if.then59, %if.then55, %if.then51, %if.then47, %if.then43, %if.then39, %if.then35, %if.then31, %if.then27, %if.then23, %if.then19, %if.then15, %if.then11, %if.then7, %if.then3, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 0, %if.then3 ], [ 1, %if.then7 ], [ 1, %if.then11 ], [ 2, %if.then15 ], [ 2, %if.then19 ], [ 3, %if.then23 ], [ 3, %if.then27 ], [ 4, %if.then31 ], [ 4, %if.then35 ], [ 5, %if.then39 ], [ 5, %if.then43 ], [ 6, %if.then47 ], [ 6, %if.then51 ], [ 7, %if.then55 ], [ 7, %if.then59 ], [ 8, %if.then63 ], [ 8, %if.then67 ], [ 9, %if.then71 ], [ 9, %if.then75 ], [ 10, %if.then79 ], [ 10, %if.then83 ], [ 11, %if.then87 ], [ 11, %if.then91 ], [ 12, %if.then95 ], [ 12, %if.then99 ], [ 13, %if.then103 ], [ 13, %if.then107 ], [ 14, %if.then111 ], [ 14, %if.then115 ], [ 15, %if.then119 ], [ 15, %if.then123 ], [ 16, %if.then127 ], [ 16, %if.then131 ], [ 17, %if.then135 ], [ 17, %if.then139 ], [ 18, %if.then143 ], [ 18, %if.then147 ], [ 20, %if.then151 ], [ 20, %if.then155 ], [ 20, %if.then159 ], [ 21, %if.then163 ], [ 22, %if.then167 ], [ 23, %if.then171 ], [ 24, %if.then175 ], [ 99, %if.else176 ], !dbg !4683
  ret i32 %retval.0, !dbg !4684
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #4

; Function Attrs: noinline nounwind ssp uwtable
define i8* @get_default_filename() #0 !dbg !4685 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !4688, metadata !DIExpression()), !dbg !4689
  call void @llvm.dbg.declare(metadata !4, metadata !4690, metadata !DIExpression()), !dbg !4691
  call void @llvm.dbg.declare(metadata !4, metadata !4692, metadata !DIExpression()), !dbg !4693
  call void @llvm.dbg.declare(metadata !4, metadata !4694, metadata !DIExpression()), !dbg !4695
  call void @llvm.dbg.declare(metadata !4, metadata !4696, metadata !DIExpression()), !dbg !4697
  %call = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.127, i32 0, i32 0)) #9, !dbg !4698
  call void @llvm.dbg.value(metadata i8* %call, metadata !4702, metadata !DIExpression()), !dbg !4703
  %tobool = icmp ne i8* %call, null, !dbg !4704
  br i1 %tobool, label %if.then, label %if.else, !dbg !4706

if.then:                                          ; preds = %entry
  %call1 = call i32 @strlen(i8* %call) #8, !dbg !4707
  call void @llvm.dbg.value(metadata i32 %call1, metadata !4711, metadata !DIExpression()), !dbg !4703
  %call2 = call i32 @strlen(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0)) #8, !dbg !4712
  call void @llvm.dbg.value(metadata i32 %call2, metadata !4714, metadata !DIExpression()), !dbg !4703
  %add = add i32 %call1, %call2, !dbg !4715
  %add3 = add i32 %add, 1, !dbg !4717
  %call4 = call noalias i8* @malloc(i32 %add3) #9, !dbg !4718
  call void @llvm.dbg.value(metadata i8* %call4, metadata !4719, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i8* %call4, metadata !4720, metadata !DIExpression()), !dbg !4703
  %call5 = call i8* @strcpy(i8* %call4, i8* %call) #9, !dbg !4721
  %call6 = call i8* @strcat(i8* %call4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.128, i32 0, i32 0)) #9, !dbg !4723
  br label %if.end, !dbg !4725

if.else:                                          ; preds = %entry
  %call7 = call i32 @strlen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0)) #8, !dbg !4726
  call void @llvm.dbg.value(metadata i32 %call7, metadata !4730, metadata !DIExpression()), !dbg !4703
  %add8 = add i32 %call7, 1, !dbg !4731
  %call9 = call noalias i8* @malloc(i32 %add8) #9, !dbg !4733
  call void @llvm.dbg.value(metadata i8* %call9, metadata !4734, metadata !DIExpression()), !dbg !4703
  call void @llvm.dbg.value(metadata i8* %call9, metadata !4720, metadata !DIExpression()), !dbg !4703
  %call10 = call i8* @strcpy(i8* %call9, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.129, i32 0, i32 0)) #9, !dbg !4735
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %SAVE_FILE.0 = phi i8* [ %call4, %if.then ], [ %call9, %if.else ], !dbg !4737
  call void @llvm.dbg.value(metadata i8* %SAVE_FILE.0, metadata !4720, metadata !DIExpression()), !dbg !4703
  ret i8* %SAVE_FILE.0, !dbg !4738
}

; Function Attrs: nounwind
declare i8* @getenv(i8*) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #5

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #5

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define void @init_sound() #0 !dbg !4739 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !4740, metadata !DIExpression()), !dbg !4741
  call void @llvm.dbg.declare(metadata !4, metadata !4742, metadata !DIExpression()), !dbg !4743
  call void @llvm.dbg.declare(metadata !4, metadata !4744, metadata !DIExpression()), !dbg !4745
  call void @llvm.dbg.declare(metadata !4, metadata !4746, metadata !DIExpression()), !dbg !4747
  call void @llvm.dbg.declare(metadata !4, metadata !4748, metadata !DIExpression()), !dbg !4749
  call void @llvm.dbg.declare(metadata !4, metadata !4750, metadata !DIExpression()), !dbg !4751
  %0 = load i8*, i8** @mixer_dev, align 8, !dbg !4752
  %call = call i32 (i8*, i32, ...) @open(i8* %0, i32 2), !dbg !4756
  store i32 %call, i32* @mixer_fd, align 4, !dbg !4757
  %1 = load i32, i32* @mixer_fd, align 4, !dbg !4758
  %cmp = icmp slt i32 %1, 0, !dbg !4760
  br i1 %cmp, label %if.then, label %if.end, !dbg !4761

if.then:                                          ; preds = %entry
  call void @finish(i32 0), !dbg !4762
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4766
  %3 = load i8*, i8** @mixer_dev, align 8, !dbg !4768
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.153, i32 0, i32 0), i8* %3), !dbg !4769
  call void @exit(i32 1) #7, !dbg !4770
  unreachable, !dbg !4770

if.end:                                           ; preds = %entry
  %4 = load i32, i32* @mixer_fd, align 4, !dbg !4772
  %call2 = call i32 (i32, i64, ...) @ioctl(i32 %4, i64 2147765758, i32* @devmask) #9, !dbg !4775
  call void @llvm.dbg.value(metadata i32 %call2, metadata !4776, metadata !DIExpression()), !dbg !4777
  %cmp3 = icmp eq i32 %call2, -1, !dbg !4778
  br i1 %cmp3, label %if.then4, label %if.end6, !dbg !4780

if.then4:                                         ; preds = %if.end
  call void @finish(i32 0), !dbg !4781
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4785
  %6 = load i8*, i8** @mixer_dev, align 8, !dbg !4787
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.154, i32 0, i32 0), i8* %6), !dbg !4788
  call void @exit(i32 -1) #7, !dbg !4789
  unreachable, !dbg !4789

if.end6:                                          ; preds = %if.end
  %7 = load i32, i32* @mixer_fd, align 4, !dbg !4791
  %call7 = call i32 (i32, i64, ...) @ioctl(i32 %7, i64 2147765757, i32* @recmask) #9, !dbg !4794
  call void @llvm.dbg.value(metadata i32 %call7, metadata !4795, metadata !DIExpression()), !dbg !4777
  %cmp8 = icmp eq i32 %call7, -1, !dbg !4796
  br i1 %cmp8, label %if.then9, label %if.end11, !dbg !4798

if.then9:                                         ; preds = %if.end6
  call void @finish(i32 0), !dbg !4799
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4803
  %9 = load i8*, i8** @mixer_dev, align 8, !dbg !4805
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.155, i32 0, i32 0), i8* %9), !dbg !4806
  call void @exit(i32 -1) #7, !dbg !4807
  unreachable, !dbg !4807

if.end11:                                         ; preds = %if.end6
  %10 = load i32, i32* @mixer_fd, align 4, !dbg !4809
  %call12 = call i32 (i32, i64, ...) @ioctl(i32 %10, i64 2147765759, i32* @recsrc) #9, !dbg !4812
  call void @llvm.dbg.value(metadata i32 %call12, metadata !4813, metadata !DIExpression()), !dbg !4777
  %cmp13 = icmp eq i32 %call12, -1, !dbg !4814
  br i1 %cmp13, label %if.then14, label %if.end16, !dbg !4816

if.then14:                                        ; preds = %if.end11
  call void @finish(i32 0), !dbg !4817
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4821
  %12 = load i8*, i8** @mixer_dev, align 8, !dbg !4823
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.149, i32 0, i32 0), i8* %12), !dbg !4824
  call void @exit(i32 -1) #7, !dbg !4825
  unreachable, !dbg !4825

if.end16:                                         ; preds = %if.end11
  %13 = load i32, i32* @mixer_fd, align 4, !dbg !4827
  %call17 = call i32 (i32, i64, ...) @ioctl(i32 %13, i64 2147765755, i32* @stereodevs) #9, !dbg !4830
  call void @llvm.dbg.value(metadata i32 %call17, metadata !4831, metadata !DIExpression()), !dbg !4777
  %cmp18 = icmp eq i32 %call17, -1, !dbg !4832
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !4834

if.then19:                                        ; preds = %if.end16
  call void @finish(i32 0), !dbg !4835
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4839
  %15 = load i8*, i8** @mixer_dev, align 8, !dbg !4841
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.156, i32 0, i32 0), i8* %15), !dbg !4842
  call void @exit(i32 -1) #7, !dbg !4843
  unreachable, !dbg !4843

if.end21:                                         ; preds = %if.end16
  %16 = load i32, i32* @devmask, align 4, !dbg !4845
  %tobool = icmp ne i32 %16, 0, !dbg !4845
  br i1 %tobool, label %if.end24, label %if.then22, !dbg !4847

if.then22:                                        ; preds = %if.end21
  call void @finish(i32 0), !dbg !4848
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4852
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.157, i32 0, i32 0)), !dbg !4854
  call void @exit(i32 1) #7, !dbg !4855
  unreachable, !dbg !4855

if.end24:                                         ; preds = %if.end21
  ret void, !dbg !4857
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @printf(i8*, ...) #2

declare i32 @"\01__isoc99_fscanf"(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @"\01__isoc99_sscanf"(i8*, i8*, ...) #5

; Function Attrs: noinline nounwind ssp uwtable
define void @init_sliders() #0 !dbg !4858 {
entry:
  %pos = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %pos, metadata !4859, metadata !DIExpression()), !dbg !4860
  call void @llvm.dbg.declare(metadata !4, metadata !4861, metadata !DIExpression()), !dbg !4862
  %0 = load i32, i32* @LINES, align 4, !dbg !4863
  %sub = sub nsw i32 %0, 2, !dbg !4866
  %sub1 = sub nsw i32 %sub, 3, !dbg !4867
  %div = sdiv i32 %sub1, 3, !dbg !4868
  %mul = mul nsw i32 %div, 2, !dbg !4869
  call void @llvm.dbg.value(metadata i32 %mul, metadata !4870, metadata !DIExpression()), !dbg !4871
  %1 = load i32, i32* @COLS, align 4, !dbg !4872
  %div2 = sdiv i32 %1, 18, !dbg !4873
  call void @llvm.dbg.value(metadata i32 %div2, metadata !4874, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i32 2, metadata !4875, metadata !DIExpression()), !dbg !4871
  store i32 2, i32* @a3dse, align 4, !dbg !4876
  store i32 0, i32* @agc, align 4, !dbg !4877
  %2 = load i32, i32* @mixer_fd, align 4, !dbg !4878
  %call = call i32 (i32, i64, ...) @ioctl(i32 %2, i64 3221507432, i32* @a3dse) #9, !dbg !4880
  call void @llvm.dbg.value(metadata i32 %call, metadata !4881, metadata !DIExpression()), !dbg !4871
  %cmp = icmp eq i32 %call, -1, !dbg !4882
  br i1 %cmp, label %if.then, label %if.end, !dbg !4884

if.then:                                          ; preds = %entry
  store i32 -1, i32* @a3dse, align 4, !dbg !4885
  br label %if.end, !dbg !4887

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* @mixer_fd, align 4, !dbg !4888
  %call3 = call i32 (i32, i64, ...) @ioctl(i32 %3, i64 3221507431, i32* @agc) #9, !dbg !4891
  call void @llvm.dbg.value(metadata i32 %call3, metadata !4892, metadata !DIExpression()), !dbg !4871
  %cmp4 = icmp eq i32 %call3, -1, !dbg !4893
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4895

if.then5:                                         ; preds = %if.end
  store i32 -1, i32* @agc, align 4, !dbg !4896
  br label %if.end6, !dbg !4898

if.end6:                                          ; preds = %if.then5, %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !4899, metadata !DIExpression()), !dbg !4871
  br label %while.body, !dbg !4900

while.body:                                       ; preds = %if.end123, %if.end6
  %dev_nr.0 = phi i32 [ 0, %if.end6 ], [ %inc124, %if.end123 ], !dbg !4903
  %Y.0 = phi i32 [ 2, %if.end6 ], [ %Y.3, %if.end123 ], !dbg !4903
  %X.0 = phi i32 [ %div2, %if.end6 ], [ %X.2, %if.end123 ], !dbg !4903
  call void @llvm.dbg.value(metadata i32 %X.0, metadata !4874, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i32 %Y.0, metadata !4875, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i32 %dev_nr.0, metadata !4899, metadata !DIExpression()), !dbg !4871
  br label %while_continue___0, !dbg !4904

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4904

while_continue:                                   ; preds = %while_continue___0
  %cmp7 = icmp slt i32 %dev_nr.0, 25, !dbg !4905
  br i1 %cmp7, label %if.end9, label %if.then8, !dbg !4908

if.then8:                                         ; preds = %while_continue
  br label %while_break, !dbg !4909

if.end9:                                          ; preds = %while_continue
  %shl = shl i32 1, %dev_nr.0, !dbg !4911
  %4 = load i32, i32* @devmask, align 4, !dbg !4913
  %and = and i32 %shl, %4, !dbg !4914
  %tobool = icmp ne i32 %and, 0, !dbg !4914
  br i1 %tobool, label %if.then10, label %if.else120, !dbg !4915

if.then10:                                        ; preds = %if.end9
  %5 = load i32, i32* @dev_count, align 4, !dbg !4916
  %cmp11 = icmp sge i32 %5, %mul, !dbg !4919
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !4920

if.then12:                                        ; preds = %if.then10
  br label %while_break, !dbg !4921

if.end13:                                         ; preds = %if.then10
  %6 = load i32, i32* @mixer_fd, align 4, !dbg !4923
  %or = or i32 -2147463936, %dev_nr.0, !dbg !4926
  %conv = zext i32 %or to i64, !dbg !4927
  %or14 = or i64 %conv, 262144, !dbg !4928
  %call15 = call i32 (i32, i64, ...) @ioctl(i32 %6, i64 %or14, i32* %pos) #9, !dbg !4929
  call void @llvm.dbg.value(metadata i32 %call15, metadata !4930, metadata !DIExpression()), !dbg !4871
  %cmp16 = icmp eq i32 %call15, -1, !dbg !4931
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !4933

if.then18:                                        ; preds = %if.end13
  call void @finish(i32 0), !dbg !4934
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !4938
  %8 = load i8*, i8** @mixer_dev, align 8, !dbg !4940
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.139, i32 0, i32 0), i8* %8), !dbg !4941
  call void @exit(i32 1) #7, !dbg !4942
  unreachable, !dbg !4942

if.end20:                                         ; preds = %if.end13
  %9 = load i32, i32* %pos, align 4, !dbg !4944
  %call21 = call i32 @getbits(i32 %9, i32 7, i32 8), !dbg !4947
  call void @llvm.dbg.value(metadata i32 %call21, metadata !4948, metadata !DIExpression()), !dbg !4871
  %10 = load i32, i32* @COLS, align 4, !dbg !4949
  %div22 = sdiv i32 102400, %10, !dbg !4950
  %add = add nsw i32 %div22, 5, !dbg !4951
  %shr = ashr i32 %add, 8, !dbg !4952
  %div23 = sdiv i32 %call21, %shr, !dbg !4953
  call void @llvm.dbg.value(metadata i32 %div23, metadata !4954, metadata !DIExpression()), !dbg !4871
  %11 = load i32, i32* @dev_count, align 4, !dbg !4955
  %idxprom = sext i32 %11 to i64, !dbg !4956
  %arrayidx = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom, !dbg !4956
  %vol_left = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx, i32 0, i32 0, !dbg !4957
  store i32 %div23, i32* %vol_left, align 4, !dbg !4958
  %12 = load i32, i32* @COLS, align 4, !dbg !4959
  %div24 = sdiv i32 %12, 4, !dbg !4961
  %cmp25 = icmp sgt i32 %div23, %div24, !dbg !4962
  br i1 %cmp25, label %if.then27, label %if.end32, !dbg !4963

if.then27:                                        ; preds = %if.end20
  %13 = load i32, i32* @COLS, align 4, !dbg !4964
  %div28 = sdiv i32 %13, 4, !dbg !4966
  %14 = load i32, i32* @dev_count, align 4, !dbg !4967
  %idxprom29 = sext i32 %14 to i64, !dbg !4968
  %arrayidx30 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom29, !dbg !4968
  %vol_left31 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx30, i32 0, i32 0, !dbg !4969
  store i32 %div28, i32* %vol_left31, align 4, !dbg !4970
  br label %if.end32, !dbg !4971

if.end32:                                         ; preds = %if.then27, %if.end20
  %shl33 = shl i32 1, %dev_nr.0, !dbg !4972
  %15 = load i32, i32* @stereodevs, align 4, !dbg !4974
  %and34 = and i32 %shl33, %15, !dbg !4975
  %tobool35 = icmp ne i32 %and34, 0, !dbg !4975
  br i1 %tobool35, label %if.then36, label %if.else, !dbg !4976

if.then36:                                        ; preds = %if.end32
  %16 = load i32, i32* %pos, align 4, !dbg !4977
  %call37 = call i32 @getbits(i32 %16, i32 15, i32 8), !dbg !4981
  call void @llvm.dbg.value(metadata i32 %call37, metadata !4982, metadata !DIExpression()), !dbg !4871
  %17 = load i32, i32* @COLS, align 4, !dbg !4983
  %div38 = sdiv i32 102400, %17, !dbg !4984
  %add39 = add nsw i32 %div38, 5, !dbg !4985
  %shr40 = ashr i32 %add39, 8, !dbg !4986
  %div41 = sdiv i32 %call37, %shr40, !dbg !4987
  call void @llvm.dbg.value(metadata i32 %div41, metadata !4988, metadata !DIExpression()), !dbg !4871
  %18 = load i32, i32* @dev_count, align 4, !dbg !4989
  %idxprom42 = sext i32 %18 to i64, !dbg !4990
  %arrayidx43 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom42, !dbg !4990
  %vol_right = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx43, i32 0, i32 1, !dbg !4991
  store i32 %div41, i32* %vol_right, align 4, !dbg !4992
  %19 = load i32, i32* @COLS, align 4, !dbg !4993
  %div44 = sdiv i32 %19, 4, !dbg !4995
  %cmp45 = icmp sgt i32 %div41, %div44, !dbg !4996
  br i1 %cmp45, label %if.then47, label %if.end52, !dbg !4997

if.then47:                                        ; preds = %if.then36
  %20 = load i32, i32* @COLS, align 4, !dbg !4998
  %div48 = sdiv i32 %20, 4, !dbg !5000
  %21 = load i32, i32* @dev_count, align 4, !dbg !5001
  %idxprom49 = sext i32 %21 to i64, !dbg !5002
  %arrayidx50 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom49, !dbg !5002
  %vol_right51 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx50, i32 0, i32 1, !dbg !5003
  store i32 %div48, i32* %vol_right51, align 4, !dbg !5004
  br label %if.end52, !dbg !5005

if.end52:                                         ; preds = %if.then47, %if.then36
  br label %if.end59, !dbg !5006

if.else:                                          ; preds = %if.end32
  %22 = load i32, i32* @dev_count, align 4, !dbg !5007
  %idxprom53 = sext i32 %22 to i64, !dbg !5009
  %arrayidx54 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom53, !dbg !5009
  %vol_left55 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx54, i32 0, i32 0, !dbg !5010
  %23 = load i32, i32* %vol_left55, align 4, !dbg !5010
  %24 = load i32, i32* @dev_count, align 4, !dbg !5011
  %idxprom56 = sext i32 %24 to i64, !dbg !5012
  %arrayidx57 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom56, !dbg !5012
  %vol_right58 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx57, i32 0, i32 1, !dbg !5013
  store i32 %23, i32* %vol_right58, align 4, !dbg !5014
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.end52
  %25 = load i32, i32* @dev_count, align 4, !dbg !5015
  %idxprom60 = sext i32 %25 to i64, !dbg !5017
  %arrayidx61 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom60, !dbg !5017
  %X62 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx61, i32 0, i32 3, !dbg !5018
  store i32 %X.0, i32* %X62, align 4, !dbg !5019
  %26 = load i32, i32* @dev_count, align 4, !dbg !5020
  %idxprom63 = sext i32 %26 to i64, !dbg !5021
  %arrayidx64 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom63, !dbg !5021
  %Y65 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx64, i32 0, i32 4, !dbg !5022
  store i32 %Y.0, i32* %Y65, align 4, !dbg !5023
  call void @draw_slider(i32 %Y.0, i32 %X.0, i32 %dev_nr.0), !dbg !5024
  %27 = load i32, i32* @recmask, align 4, !dbg !5026
  %call66 = call i32 @getbits(i32 %27, i32 %dev_nr.0, i32 1), !dbg !5028
  call void @llvm.dbg.value(metadata i32 %call66, metadata !5029, metadata !DIExpression()), !dbg !4871
  %tobool67 = icmp ne i32 %call66, 0, !dbg !5030
  br i1 %tobool67, label %if.then68, label %if.end76, !dbg !5032

if.then68:                                        ; preds = %if.end59
  %28 = load i32, i32* @recsrc, align 4, !dbg !5033
  %call69 = call i32 @getbits(i32 %28, i32 %dev_nr.0, i32 1), !dbg !5037
  call void @llvm.dbg.value(metadata i32 %call69, metadata !5038, metadata !DIExpression()), !dbg !4871
  %tobool70 = icmp ne i32 %call69, 0, !dbg !5039
  br i1 %tobool70, label %if.then71, label %if.else72, !dbg !5041

if.then71:                                        ; preds = %if.then68
  call void @llvm.dbg.value(metadata i32 1, metadata !5042, metadata !DIExpression()), !dbg !4871
  br label %if.end73, !dbg !5043

if.else72:                                        ; preds = %if.then68
  call void @llvm.dbg.value(metadata i32 2, metadata !5042, metadata !DIExpression()), !dbg !4871
  br label %if.end73

if.end73:                                         ; preds = %if.else72, %if.then71
  %tmp___7.0 = phi i32 [ 1, %if.then71 ], [ 2, %if.else72 ], !dbg !5045
  call void @llvm.dbg.value(metadata i32 %tmp___7.0, metadata !5042, metadata !DIExpression()), !dbg !4871
  %add74 = add nsw i32 %Y.0, 2, !dbg !5046
  %add75 = add nsw i32 %X.0, 4, !dbg !5049
  call void @draw_rec_lamp(i32 %add74, i32 %add75, i32 %tmp___7.0), !dbg !5050
  br label %if.end76, !dbg !5051

if.end76:                                         ; preds = %if.end73, %if.end59
  %add77 = add nsw i32 %Y.0, 1, !dbg !5052
  %add78 = add nsw i32 %X.0, 14, !dbg !5055
  %29 = load i32, i32* @dev_count, align 4, !dbg !5056
  %idxprom79 = sext i32 %29 to i64, !dbg !5057
  %arrayidx80 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom79, !dbg !5057
  %vol_left81 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx80, i32 0, i32 0, !dbg !5058
  %30 = load i32, i32* %vol_left81, align 4, !dbg !5058
  %add82 = add nsw i32 %add78, %30, !dbg !5059
  call void @draw_handle(i32 %add77, i32 %add82, i32 0, i32 4), !dbg !5060
  %shl83 = shl i32 1, %dev_nr.0, !dbg !5061
  %31 = load i32, i32* @stereodevs, align 4, !dbg !5063
  %and84 = and i32 %shl83, %31, !dbg !5064
  %tobool85 = icmp ne i32 %and84, 0, !dbg !5064
  br i1 %tobool85, label %if.then86, label %if.end93, !dbg !5065

if.then86:                                        ; preds = %if.end76
  %add87 = add nsw i32 %Y.0, 2, !dbg !5066
  %add88 = add nsw i32 %X.0, 14, !dbg !5070
  %32 = load i32, i32* @dev_count, align 4, !dbg !5071
  %idxprom89 = sext i32 %32 to i64, !dbg !5072
  %arrayidx90 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom89, !dbg !5072
  %vol_right91 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx90, i32 0, i32 1, !dbg !5073
  %33 = load i32, i32* %vol_right91, align 4, !dbg !5073
  %add92 = add nsw i32 %add88, %33, !dbg !5074
  call void @draw_handle(i32 %add87, i32 %add92, i32 0, i32 4), !dbg !5075
  br label %if.end93, !dbg !5076

if.end93:                                         ; preds = %if.then86, %if.end76
  %34 = load i32, i32* @dev_count, align 4, !dbg !5077
  %idxprom94 = sext i32 %dev_nr.0 to i64, !dbg !5078
  %arrayidx95 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_ind, i64 0, i64 %idxprom94, !dbg !5078
  store i32 %34, i32* %arrayidx95, align 4, !dbg !5079
  %35 = load i32, i32* @dev_count, align 4, !dbg !5080
  call void @llvm.dbg.value(metadata i32 %35, metadata !5081, metadata !DIExpression()), !dbg !4871
  %36 = load i32, i32* @dev_count, align 4, !dbg !5082
  %inc = add nsw i32 %36, 1, !dbg !5082
  store i32 %inc, i32* @dev_count, align 4, !dbg !5082
  %idxprom96 = sext i32 %35 to i64, !dbg !5083
  %arrayidx97 = getelementptr inbounds [25 x %struct.devices], [25 x %struct.devices]* @dev_vol, i64 0, i64 %idxprom96, !dbg !5083
  %dev_nr98 = getelementptr inbounds %struct.devices, %struct.devices* %arrayidx97, i32 0, i32 2, !dbg !5084
  store i32 %dev_nr.0, i32* %dev_nr98, align 4, !dbg !5085
  %add99 = add nsw i32 %Y.0, 6, !dbg !5086
  %37 = load i32, i32* @LINES, align 4, !dbg !5088
  %sub100 = sub nsw i32 %37, 3, !dbg !5089
  %cmp101 = icmp sgt i32 %add99, %sub100, !dbg !5090
  br i1 %cmp101, label %if.then103, label %if.else110, !dbg !5091

if.then103:                                       ; preds = %if.end93
  call void @llvm.dbg.value(metadata i32 2, metadata !4875, metadata !DIExpression()), !dbg !4871
  %38 = load i32, i32* @COLS, align 4, !dbg !5092
  %39 = load i32, i32* @COLS, align 4, !dbg !5094
  %div104 = sdiv i32 %39, 4, !dbg !5095
  %add105 = add nsw i32 %div104, 1, !dbg !5096
  %40 = load i32, i32* @COLS, align 4, !dbg !5097
  %div106 = sdiv i32 %40, 18, !dbg !5098
  %add107 = add nsw i32 %add105, %div106, !dbg !5099
  %add108 = add nsw i32 %add107, 14, !dbg !5100
  %sub109 = sub nsw i32 %38, %add108, !dbg !5101
  call void @llvm.dbg.value(metadata i32 %sub109, metadata !4874, metadata !DIExpression()), !dbg !4871
  br label %if.end119, !dbg !5102

if.else110:                                       ; preds = %if.end93
  %shl111 = shl i32 1, %dev_nr.0, !dbg !5103
  %41 = load i32, i32* @stereodevs, align 4, !dbg !5105
  %and112 = and i32 %shl111, %41, !dbg !5106
  %tobool113 = icmp ne i32 %and112, 0, !dbg !5106
  br i1 %tobool113, label %if.then114, label %if.else116, !dbg !5107

if.then114:                                       ; preds = %if.else110
  %add115 = add nsw i32 %Y.0, 3, !dbg !5108
  call void @llvm.dbg.value(metadata i32 %add115, metadata !4875, metadata !DIExpression()), !dbg !4871
  br label %if.end118, !dbg !5110

if.else116:                                       ; preds = %if.else110
  %add117 = add nsw i32 %Y.0, 2, !dbg !5111
  call void @llvm.dbg.value(metadata i32 %add117, metadata !4875, metadata !DIExpression()), !dbg !4871
  br label %if.end118

if.end118:                                        ; preds = %if.else116, %if.then114
  %Y.1 = phi i32 [ %add115, %if.then114 ], [ %add117, %if.else116 ], !dbg !5113
  call void @llvm.dbg.value(metadata i32 %Y.1, metadata !4875, metadata !DIExpression()), !dbg !4871
  br label %if.end119

if.end119:                                        ; preds = %if.end118, %if.then103
  %Y.2 = phi i32 [ 2, %if.then103 ], [ %Y.1, %if.end118 ], !dbg !5114
  %X.1 = phi i32 [ %sub109, %if.then103 ], [ %X.0, %if.end118 ], !dbg !4903
  call void @llvm.dbg.value(metadata i32 %X.1, metadata !4874, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i32 %Y.2, metadata !4875, metadata !DIExpression()), !dbg !4871
  br label %if.end123, !dbg !5115

if.else120:                                       ; preds = %if.end9
  %idxprom121 = sext i32 %dev_nr.0 to i64, !dbg !5116
  %arrayidx122 = getelementptr inbounds [25 x i32], [25 x i32]* @dev_ind, i64 0, i64 %idxprom121, !dbg !5116
  store i32 -1, i32* %arrayidx122, align 4, !dbg !5118
  br label %if.end123

if.end123:                                        ; preds = %if.else120, %if.end119
  %Y.3 = phi i32 [ %Y.2, %if.end119 ], [ %Y.0, %if.else120 ], !dbg !4903
  %X.2 = phi i32 [ %X.1, %if.end119 ], [ %X.0, %if.else120 ], !dbg !4903
  call void @llvm.dbg.value(metadata i32 %X.2, metadata !4874, metadata !DIExpression()), !dbg !4871
  call void @llvm.dbg.value(metadata i32 %Y.3, metadata !4875, metadata !DIExpression()), !dbg !4871
  %inc124 = add nsw i32 %dev_nr.0, 1, !dbg !5119
  call void @llvm.dbg.value(metadata i32 %inc124, metadata !4899, metadata !DIExpression()), !dbg !4871
  br label %while.body, !dbg !4900, !llvm.loop !5120

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !5122

while_break:                                      ; preds = %while_break___0, %if.then12, %if.then8
  ret void, !dbg !5123
}

declare i32 @keypad(%struct._win_st*, i1 zeroext) #2

declare i32 @cbreak() #2

declare i32 @noecho() #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @open(i8*, i32, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind returns_twice }

!llvm.module.flags = !{!143, !144, !145, !146, !147}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!148}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dev_count", scope: !2, file: !102, line: 52, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !99, nameTableKind: GNU)
!3 = !DIFile(filename: "c/cam-1.05.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !25, !28, !14, !30, !33, !34, !36, !29, !38, !39, !98, !32, !88}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__jmp_buf_tag", file: !8, line: 35, size: 1280, elements: !9)
!8 = !DIFile(filename: "/usr/include/setjmp.h", directory: "")
!9 = !{!10, !17, !18}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "__jmpbuf", scope: !7, file: !8, line: 36, baseType: !11, size: 192)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__jmp_buf", file: !12, line: 34, baseType: !13)
!12 = !DIFile(filename: "/usr/include/bits/setjmp.h", directory: "")
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 192, elements: !15)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16}
!16 = !DISubrange(count: 6)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "__mask_was_saved", scope: !7, file: !8, line: 37, baseType: !14, size: 32, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "__saved_mask", scope: !7, file: !8, line: 38, baseType: !19, size: 1024, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !20, line: 29, baseType: !21)
!20 = !DIFile(filename: "/usr/include/bits/sigset.h", directory: "")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct___sigset_t_7", file: !20, line: 29, size: 1024, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "__val", scope: !21, file: !20, line: 30, baseType: !24, size: 1024)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !25, size: 1024, elements: !26)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !{!27}
!27 = !DISubrange(count: 16)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !31, line: 211, baseType: !32)
!31 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "attr_t", file: !37, line: 324, baseType: !38)
!37 = !DIFile(filename: "/usr/include/curses.h", directory: "")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "chtype", file: !37, line: 137, baseType: !25)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !41, line: 49, baseType: !42)
!41 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !43, line: 271, size: 1728, elements: !44)
!43 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!44 = !{!45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !65, !66, !67, !68, !72, !74, !76, !80, !83, !87, !89, !90, !91, !92, !93, !94}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !42, file: !43, line: 272, baseType: !14, size: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !42, file: !43, line: 273, baseType: !28, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !42, file: !43, line: 274, baseType: !28, size: 64, offset: 128)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !42, file: !43, line: 275, baseType: !28, size: 64, offset: 192)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !42, file: !43, line: 276, baseType: !28, size: 64, offset: 256)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !42, file: !43, line: 277, baseType: !28, size: 64, offset: 320)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !42, file: !43, line: 278, baseType: !28, size: 64, offset: 384)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !42, file: !43, line: 279, baseType: !28, size: 64, offset: 448)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !42, file: !43, line: 280, baseType: !28, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !42, file: !43, line: 281, baseType: !28, size: 64, offset: 576)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !42, file: !43, line: 282, baseType: !28, size: 64, offset: 640)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !42, file: !43, line: 283, baseType: !28, size: 64, offset: 704)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !42, file: !43, line: 284, baseType: !58, size: 64, offset: 768)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !43, line: 186, size: 192, elements: !60)
!60 = !{!61, !62, !64}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !59, file: !43, line: 187, baseType: !58, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !59, file: !43, line: 188, baseType: !63, size: 64, offset: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !59, file: !43, line: 189, baseType: !14, size: 32, offset: 128)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !42, file: !43, line: 285, baseType: !63, size: 64, offset: 832)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !42, file: !43, line: 286, baseType: !14, size: 32, offset: 896)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !42, file: !43, line: 287, baseType: !14, size: 32, offset: 928)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !42, file: !43, line: 288, baseType: !69, size: 64, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !70, line: 141, baseType: !71)
!70 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!71 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !42, file: !43, line: 289, baseType: !73, size: 16, offset: 1024)
!73 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !42, file: !43, line: 290, baseType: !75, size: 8, offset: 1040)
!75 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !42, file: !43, line: 291, baseType: !77, size: 8, offset: 1048)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !42, file: !43, line: 292, baseType: !81, size: 64, offset: 1088)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !43, line: 180, baseType: null)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !42, file: !43, line: 293, baseType: !84, size: 64, offset: 1152)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !70, line: 142, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !70, line: 56, baseType: !86)
!86 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !42, file: !43, line: 294, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !42, file: !43, line: 295, baseType: !88, size: 64, offset: 1280)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !42, file: !43, line: 296, baseType: !88, size: 64, offset: 1344)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !42, file: !43, line: 297, baseType: !88, size: 64, offset: 1408)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !42, file: !43, line: 298, baseType: !30, size: 32, offset: 1472)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !42, file: !43, line: 299, baseType: !14, size: 32, offset: 1504)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !42, file: !43, line: 300, baseType: !95, size: 192, offset: 1536)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 192, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 24)
!98 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!99 = !{!100, !106, !0, !108, !110, !112, !115, !120, !122, !124, !126, !128, !130, !140}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "devname", scope: !2, file: !102, line: 42, type: !103, isLocal: false, isDefinition: true)
!102 = !DIFile(filename: "/home/wslee/benchmarks/sound/cam-1.05/sounds.c", directory: "")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 1600, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 25)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "mixer_dev", scope: !2, file: !102, line: 43, type: !28, isLocal: false, isDefinition: true)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(name: "a3dse", scope: !2, file: !102, line: 53, type: !14, isLocal: false, isDefinition: true)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "agc", scope: !2, file: !102, line: 53, type: !14, isLocal: false, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(name: "stereodevs", scope: !2, file: !114, line: 36, type: !14, isLocal: false, isDefinition: true)
!114 = !DIFile(filename: "/home/wslee/benchmarks/sound/cam-1.05/sounds.h", directory: "")
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "env", scope: !2, file: !117, line: 28, type: !118, isLocal: false, isDefinition: true)
!117 = !DIFile(filename: "/home/wslee/benchmarks/sound/cam-1.05/cam.c", directory: "")
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "jmp_buf", file: !8, line: 49, baseType: !119)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1280, elements: !78)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(name: "trt", scope: !2, file: !102, line: 32, type: !39, isLocal: false, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "mixer_fd", scope: !2, file: !102, line: 41, type: !14, isLocal: false, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "recmask", scope: !2, file: !102, line: 41, type: !14, isLocal: false, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "devmask", scope: !2, file: !102, line: 41, type: !14, isLocal: false, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "recsrc", scope: !2, file: !102, line: 41, type: !14, isLocal: false, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "dev_vol", scope: !2, file: !102, line: 44, type: !132, isLocal: false, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4000, elements: !104)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "devices", file: !102, line: 44, size: 160, elements: !134)
!134 = !{!135, !136, !137, !138, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "vol_left", scope: !133, file: !102, line: 45, baseType: !14, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "vol_right", scope: !133, file: !102, line: 46, baseType: !14, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "dev_nr", scope: !133, file: !102, line: 47, baseType: !14, size: 32, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "X", scope: !133, file: !102, line: 48, baseType: !14, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "Y", scope: !133, file: !102, line: 49, baseType: !14, size: 32, offset: 128)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(name: "dev_ind", scope: !2, file: !102, line: 52, type: !142, isLocal: false, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 800, elements: !104)
!143 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!144 = !{i32 2, !"Dwarf Version", i32 4}
!145 = !{i32 2, !"Debug Info Version", i32 3}
!146 = !{i32 1, !"wchar_size", i32 4}
!147 = !{i32 7, !"PIC Level", i32 2}
!148 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!149 = distinct !DISubprogram(name: "finish", scope: !150, file: !150, line: 32, type: !151, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!150 = !DIFile(filename: "/home/wslee/benchmarks/sound/cam-1.05/screens.c", directory: "")
!151 = !DISubroutineType(types: !152)
!152 = !{null, !14}
!153 = !DILocalVariable(name: "sig", arg: 1, scope: !149, file: !150, line: 32, type: !14)
!154 = !DILocation(line: 0, scope: !149)
!155 = !DILocation(line: 35, column: 3, scope: !156)
!156 = distinct !DILexicalBlock(scope: !157, file: !150, line: 38, column: 3)
!157 = distinct !DILexicalBlock(scope: !158, file: !150, line: 37, column: 3)
!158 = distinct !DILexicalBlock(scope: !149, file: !150, line: 36, column: 3)
!159 = !DILocation(line: 36, column: 3, scope: !160)
!160 = distinct !DILexicalBlock(scope: !157, file: !150, line: 37, column: 3)
!161 = !DILocation(line: 37, column: 10, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !150, line: 38, column: 3)
!163 = !DILocation(line: 37, column: 3, scope: !162)
!164 = !DILocation(line: 38, column: 12, scope: !165)
!165 = distinct !DILexicalBlock(scope: !157, file: !150, line: 39, column: 3)
!166 = !DILocation(line: 38, column: 3, scope: !165)
!167 = !DILocation(line: 39, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !157, file: !150, line: 40, column: 3)
!169 = !DILocation(line: 40, column: 13, scope: !157)
!170 = !DILocation(line: 41, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !158, file: !150, line: 41, column: 7)
!172 = !DILocation(line: 41, column: 7, scope: !158)
!173 = !DILocation(line: 42, column: 5, scope: !174)
!174 = distinct !DILexicalBlock(scope: !171, file: !150, line: 41, column: 17)
!175 = !DILocation(line: 43, column: 11, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !150, line: 43, column: 7)
!177 = !DILocation(line: 43, column: 7, scope: !171)
!178 = !DILocation(line: 44, column: 5, scope: !179)
!179 = distinct !DILexicalBlock(scope: !180, file: !150, line: 45, column: 5)
!180 = distinct !DILexicalBlock(scope: !181, file: !150, line: 44, column: 5)
!181 = distinct !DILexicalBlock(scope: !176, file: !150, line: 43, column: 18)
!182 = !DILocation(line: 46, column: 5, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !150, line: 49, column: 5)
!184 = distinct !DILexicalBlock(scope: !185, file: !150, line: 48, column: 5)
!185 = distinct !DILexicalBlock(scope: !176, file: !150, line: 47, column: 10)
!186 = distinct !DISubprogram(name: "close_mixer", scope: !102, file: !102, line: 55, type: !187, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!187 = !DISubroutineType(types: !188)
!188 = !{null}
!189 = !DILocalVariable(name: "__cil_tmp2", scope: !186, file: !102, line: 58, type: !28)
!190 = !DILocation(line: 58, column: 9, scope: !186)
!191 = !DILocation(line: 58, column: 15, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !102, line: 62, column: 3)
!193 = distinct !DILexicalBlock(scope: !194, file: !102, line: 61, column: 3)
!194 = distinct !DILexicalBlock(scope: !186, file: !102, line: 60, column: 3)
!195 = !DILocation(line: 58, column: 9, scope: !192)
!196 = !DILocalVariable(name: "tmp", scope: !186, file: !102, line: 57, type: !14)
!197 = !DILocation(line: 0, scope: !186)
!198 = !DILocation(line: 58, column: 11, scope: !199)
!199 = distinct !DILexicalBlock(scope: !194, file: !102, line: 58, column: 7)
!200 = !DILocation(line: 58, column: 7, scope: !194)
!201 = !DILocation(line: 59, column: 38, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !102, line: 60, column: 5)
!203 = distinct !DILexicalBlock(scope: !204, file: !102, line: 59, column: 5)
!204 = distinct !DILexicalBlock(scope: !199, file: !102, line: 58, column: 17)
!205 = !DILocation(line: 60, column: 13, scope: !202)
!206 = !DILocation(line: 59, column: 5, scope: !202)
!207 = !DILocation(line: 63, column: 3, scope: !204)
!208 = !DILocation(line: 60, column: 3, scope: !194)
!209 = distinct !DISubprogram(name: "set_screen", scope: !150, file: !150, line: 50, type: !187, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!210 = !DILocalVariable(name: "__cil_tmp15", scope: !209, file: !150, line: 66, type: !28)
!211 = !DILocation(line: 66, column: 9, scope: !209)
!212 = !DILocalVariable(name: "__cil_tmp16", scope: !209, file: !150, line: 67, type: !28)
!213 = !DILocation(line: 67, column: 9, scope: !209)
!214 = !DILocalVariable(name: "__cil_tmp17", scope: !209, file: !150, line: 68, type: !28)
!215 = !DILocation(line: 68, column: 9, scope: !209)
!216 = !DILocalVariable(name: "__cil_tmp18", scope: !209, file: !150, line: 69, type: !28)
!217 = !DILocation(line: 69, column: 9, scope: !209)
!218 = !DILocalVariable(name: "__cil_tmp19", scope: !209, file: !150, line: 70, type: !28)
!219 = !DILocation(line: 70, column: 9, scope: !209)
!220 = !DILocalVariable(name: "__cil_tmp20", scope: !209, file: !150, line: 71, type: !28)
!221 = !DILocation(line: 71, column: 9, scope: !209)
!222 = !DILocalVariable(name: "__cil_tmp21", scope: !209, file: !150, line: 72, type: !28)
!223 = !DILocation(line: 72, column: 9, scope: !209)
!224 = !DILocalVariable(name: "__cil_tmp22", scope: !209, file: !150, line: 73, type: !28)
!225 = !DILocation(line: 73, column: 9, scope: !209)
!226 = !DILocalVariable(name: "__cil_tmp23", scope: !209, file: !150, line: 74, type: !28)
!227 = !DILocation(line: 74, column: 9, scope: !209)
!228 = !DILocalVariable(name: "__cil_tmp24", scope: !209, file: !150, line: 75, type: !28)
!229 = !DILocation(line: 75, column: 9, scope: !209)
!230 = !DILocalVariable(name: "__cil_tmp25", scope: !209, file: !150, line: 76, type: !28)
!231 = !DILocation(line: 76, column: 9, scope: !209)
!232 = !DILocalVariable(name: "__cil_tmp26", scope: !209, file: !150, line: 77, type: !28)
!233 = !DILocation(line: 77, column: 9, scope: !209)
!234 = !DILocalVariable(name: "__cil_tmp27", scope: !209, file: !150, line: 78, type: !28)
!235 = !DILocation(line: 78, column: 9, scope: !209)
!236 = !DILocation(line: 53, column: 37, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !150, line: 81, column: 3)
!238 = distinct !DILexicalBlock(scope: !209, file: !150, line: 80, column: 3)
!239 = !DILocation(line: 53, column: 21, scope: !237)
!240 = !DILocalVariable(name: "__lengthofdummy", scope: !209, file: !150, line: 53, type: !25)
!241 = !DILocation(line: 0, scope: !209)
!242 = !DILocation(line: 53, column: 41, scope: !243)
!243 = distinct !DILexicalBlock(scope: !237, file: !150, line: 54, column: 3)
!244 = !DILocation(line: 53, column: 9, scope: !243)
!245 = !DILocalVariable(name: "tmp", scope: !209, file: !150, line: 54, type: !88)
!246 = !DILocalVariable(name: "dummy", scope: !209, file: !150, line: 52, type: !28)
!247 = !DILocation(line: 56, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !237, file: !150, line: 54, column: 3)
!249 = !DILocalVariable(name: "tmp___0", scope: !209, file: !150, line: 57, type: !30)
!250 = !DILocation(line: 56, column: 13, scope: !251)
!251 = distinct !DILexicalBlock(scope: !237, file: !150, line: 58, column: 3)
!252 = !DILocalVariable(name: "tmp___1", scope: !209, file: !150, line: 58, type: !30)
!253 = !DILocation(line: 56, column: 29, scope: !237)
!254 = !DILocation(line: 56, column: 34, scope: !237)
!255 = !DILocation(line: 56, column: 40, scope: !237)
!256 = !DILocation(line: 56, column: 51, scope: !237)
!257 = !DILocation(line: 56, column: 62, scope: !237)
!258 = !DILocalVariable(name: "left", scope: !209, file: !150, line: 55, type: !14)
!259 = !DILocation(line: 57, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !237, file: !150, line: 57, column: 3)
!261 = !DILocalVariable(name: "tmp___2", scope: !209, file: !150, line: 59, type: !30)
!262 = !DILocation(line: 57, column: 13, scope: !263)
!263 = distinct !DILexicalBlock(scope: !237, file: !150, line: 59, column: 3)
!264 = !DILocalVariable(name: "tmp___3", scope: !209, file: !150, line: 60, type: !30)
!265 = !DILocation(line: 57, column: 30, scope: !237)
!266 = !DILocation(line: 57, column: 35, scope: !237)
!267 = !DILocation(line: 57, column: 41, scope: !237)
!268 = !DILocation(line: 57, column: 52, scope: !237)
!269 = !DILocation(line: 57, column: 63, scope: !237)
!270 = !DILocalVariable(name: "right", scope: !209, file: !150, line: 56, type: !14)
!271 = !DILocation(line: 58, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !237, file: !150, line: 58, column: 3)
!273 = !DILocation(line: 58, column: 3, scope: !272)
!274 = !DILocation(line: 59, column: 11, scope: !275)
!275 = distinct !DILexicalBlock(scope: !237, file: !150, line: 60, column: 3)
!276 = !DILocation(line: 59, column: 3, scope: !275)
!277 = !DILocation(line: 60, column: 3, scope: !237)
!278 = !DILocation(line: 60, column: 11, scope: !237)
!279 = !DILocation(line: 60, column: 18, scope: !237)
!280 = !DILocation(line: 61, column: 3, scope: !281)
!281 = distinct !DILexicalBlock(scope: !237, file: !150, line: 61, column: 3)
!282 = !DILocation(line: 62, column: 19, scope: !283)
!283 = distinct !DILexicalBlock(scope: !237, file: !150, line: 64, column: 3)
!284 = !DILocation(line: 62, column: 13, scope: !283)
!285 = !DILocalVariable(name: "tmp___4", scope: !209, file: !150, line: 61, type: !14)
!286 = !DILocation(line: 62, column: 18, scope: !287)
!287 = distinct !DILexicalBlock(scope: !238, file: !150, line: 62, column: 7)
!288 = !DILocation(line: 62, column: 7, scope: !238)
!289 = !DILocation(line: 62, column: 14, scope: !290)
!290 = distinct !DILexicalBlock(scope: !291, file: !150, line: 64, column: 5)
!291 = distinct !DILexicalBlock(scope: !292, file: !150, line: 63, column: 5)
!292 = distinct !DILexicalBlock(scope: !287, file: !150, line: 62, column: 26)
!293 = !DILocation(line: 62, column: 5, scope: !290)
!294 = !DILocation(line: 65, column: 3, scope: !292)
!295 = !DILocation(line: 63, column: 13, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !150, line: 67, column: 3)
!297 = distinct !DILexicalBlock(scope: !238, file: !150, line: 66, column: 3)
!298 = !DILocalVariable(name: "tmp___5", scope: !209, file: !150, line: 62, type: !30)
!299 = !DILocation(line: 63, column: 13, scope: !300)
!300 = distinct !DILexicalBlock(scope: !297, file: !150, line: 65, column: 3)
!301 = !DILocalVariable(name: "tmp___6", scope: !209, file: !150, line: 63, type: !30)
!302 = !DILocation(line: 64, column: 41, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !150, line: 65, column: 3)
!304 = !DILocation(line: 64, column: 46, scope: !303)
!305 = !DILocation(line: 64, column: 52, scope: !303)
!306 = !DILocation(line: 64, column: 58, scope: !303)
!307 = !DILocation(line: 64, column: 69, scope: !303)
!308 = !DILocation(line: 63, column: 3, scope: !303)
!309 = !DILocation(line: 64, column: 19, scope: !310)
!310 = distinct !DILexicalBlock(scope: !297, file: !150, line: 66, column: 3)
!311 = !DILocation(line: 64, column: 27, scope: !310)
!312 = !DILocation(line: 64, column: 33, scope: !310)
!313 = !DILocation(line: 64, column: 13, scope: !310)
!314 = !DILocalVariable(name: "tmp___7", scope: !209, file: !150, line: 64, type: !14)
!315 = !DILocation(line: 64, column: 18, scope: !316)
!316 = distinct !DILexicalBlock(scope: !238, file: !150, line: 64, column: 7)
!317 = !DILocation(line: 64, column: 7, scope: !238)
!318 = !DILocation(line: 64, column: 14, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !150, line: 66, column: 5)
!320 = distinct !DILexicalBlock(scope: !321, file: !150, line: 65, column: 5)
!321 = distinct !DILexicalBlock(scope: !316, file: !150, line: 64, column: 26)
!322 = !DILocation(line: 64, column: 5, scope: !319)
!323 = !DILocation(line: 67, column: 3, scope: !321)
!324 = !DILocation(line: 65, column: 3, scope: !325)
!325 = distinct !DILexicalBlock(scope: !238, file: !150, line: 68, column: 3)
!326 = !DILocation(line: 65, column: 11, scope: !325)
!327 = !DILocation(line: 65, column: 18, scope: !325)
!328 = !DILocation(line: 66, column: 19, scope: !329)
!329 = distinct !DILexicalBlock(scope: !325, file: !150, line: 66, column: 3)
!330 = !DILocation(line: 66, column: 27, scope: !329)
!331 = !DILocation(line: 66, column: 33, scope: !329)
!332 = !DILocation(line: 66, column: 13, scope: !329)
!333 = !DILocalVariable(name: "tmp___8", scope: !209, file: !150, line: 65, type: !14)
!334 = !DILocation(line: 66, column: 18, scope: !335)
!335 = distinct !DILexicalBlock(scope: !238, file: !150, line: 66, column: 7)
!336 = !DILocation(line: 66, column: 7, scope: !238)
!337 = !DILocation(line: 66, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !150, line: 68, column: 5)
!339 = distinct !DILexicalBlock(scope: !340, file: !150, line: 67, column: 5)
!340 = distinct !DILexicalBlock(scope: !335, file: !150, line: 66, column: 26)
!341 = !DILocation(line: 66, column: 5, scope: !338)
!342 = !DILocation(line: 69, column: 3, scope: !340)
!343 = !DILocation(line: 67, column: 3, scope: !238)
!344 = distinct !DISubprogram(name: "draw_rec_lamp", scope: !150, file: !150, line: 70, type: !345, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!345 = !DISubroutineType(types: !346)
!346 = !{null, !14, !14, !14}
!347 = !DILocalVariable(name: "Y", arg: 1, scope: !344, file: !150, line: 70, type: !14)
!348 = !DILocation(line: 0, scope: !344)
!349 = !DILocalVariable(name: "X", arg: 2, scope: !344, file: !150, line: 70, type: !14)
!350 = !DILocalVariable(name: "record", arg: 3, scope: !344, file: !150, line: 70, type: !14)
!351 = !DILocalVariable(name: "__cil_tmp5", scope: !344, file: !150, line: 73, type: !28)
!352 = !DILocation(line: 73, column: 9, scope: !344)
!353 = !DILocation(line: 73, column: 14, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !150, line: 73, column: 7)
!355 = distinct !DILexicalBlock(scope: !344, file: !150, line: 75, column: 3)
!356 = !DILocation(line: 73, column: 7, scope: !355)
!357 = !DILocation(line: 74, column: 5, scope: !358)
!358 = distinct !DILexicalBlock(scope: !354, file: !150, line: 73, column: 20)
!359 = !DILocation(line: 74, column: 13, scope: !358)
!360 = !DILocation(line: 74, column: 20, scope: !358)
!361 = !DILocation(line: 75, column: 3, scope: !358)
!362 = !DILocation(line: 76, column: 5, scope: !363)
!363 = distinct !DILexicalBlock(scope: !354, file: !150, line: 75, column: 10)
!364 = !DILocation(line: 76, column: 13, scope: !363)
!365 = !DILocation(line: 76, column: 20, scope: !363)
!366 = !DILocation(line: 77, column: 15, scope: !367)
!367 = distinct !DILexicalBlock(scope: !368, file: !150, line: 79, column: 3)
!368 = distinct !DILexicalBlock(scope: !355, file: !150, line: 78, column: 3)
!369 = !DILocation(line: 77, column: 9, scope: !367)
!370 = !DILocalVariable(name: "tmp", scope: !344, file: !150, line: 72, type: !14)
!371 = !DILocation(line: 77, column: 14, scope: !372)
!372 = distinct !DILexicalBlock(scope: !355, file: !150, line: 77, column: 7)
!373 = !DILocation(line: 77, column: 7, scope: !355)
!374 = !DILocation(line: 77, column: 14, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !150, line: 79, column: 5)
!376 = distinct !DILexicalBlock(scope: !377, file: !150, line: 78, column: 5)
!377 = distinct !DILexicalBlock(scope: !372, file: !150, line: 77, column: 22)
!378 = !DILocation(line: 77, column: 5, scope: !375)
!379 = !DILocation(line: 80, column: 3, scope: !377)
!380 = !DILocation(line: 79, column: 3, scope: !355)
!381 = distinct !DISubprogram(name: "draw_slider", scope: !150, file: !150, line: 82, type: !345, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!382 = !DILocalVariable(name: "Y", arg: 1, scope: !381, file: !150, line: 82, type: !14)
!383 = !DILocation(line: 0, scope: !381)
!384 = !DILocalVariable(name: "X", arg: 2, scope: !381, file: !150, line: 82, type: !14)
!385 = !DILocalVariable(name: "device_num", arg: 3, scope: !381, file: !150, line: 82, type: !14)
!386 = !DILocalVariable(name: "wb", scope: !381, file: !150, line: 88, type: !387)
!387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 328, elements: !388)
!388 = !{!389}
!389 = !DISubrange(count: 41)
!390 = !DILocation(line: 88, column: 8, scope: !381)
!391 = !DILocalVariable(name: "__cil_tmp35", scope: !381, file: !150, line: 115, type: !88)
!392 = !DILocation(line: 115, column: 9, scope: !381)
!393 = !DILocalVariable(name: "__cil_tmp36", scope: !381, file: !150, line: 116, type: !28)
!394 = !DILocation(line: 116, column: 9, scope: !381)
!395 = !DILocalVariable(name: "__cil_tmp37", scope: !381, file: !150, line: 117, type: !28)
!396 = !DILocation(line: 117, column: 9, scope: !381)
!397 = !DILocalVariable(name: "__cil_tmp38", scope: !381, file: !150, line: 118, type: !28)
!398 = !DILocation(line: 118, column: 9, scope: !381)
!399 = !DILocalVariable(name: "__cil_tmp39", scope: !381, file: !150, line: 119, type: !28)
!400 = !DILocation(line: 119, column: 9, scope: !381)
!401 = !DILocalVariable(name: "__cil_tmp40", scope: !381, file: !150, line: 120, type: !28)
!402 = !DILocation(line: 120, column: 9, scope: !381)
!403 = !DILocalVariable(name: "__cil_tmp41", scope: !381, file: !150, line: 121, type: !28)
!404 = !DILocation(line: 121, column: 9, scope: !381)
!405 = !DILocalVariable(name: "__cil_tmp42", scope: !381, file: !150, line: 122, type: !28)
!406 = !DILocation(line: 122, column: 9, scope: !381)
!407 = !DILocalVariable(name: "__cil_tmp43", scope: !381, file: !150, line: 123, type: !28)
!408 = !DILocation(line: 123, column: 9, scope: !381)
!409 = !DILocalVariable(name: "__cil_tmp44", scope: !381, file: !150, line: 124, type: !28)
!410 = !DILocation(line: 124, column: 9, scope: !381)
!411 = !DILocation(line: 86, column: 12, scope: !412)
!412 = distinct !DILexicalBlock(scope: !381, file: !150, line: 126, column: 3)
!413 = !DILocalVariable(name: "device", scope: !381, file: !150, line: 89, type: !28)
!414 = !DILocalVariable(name: "wlin", scope: !381, file: !150, line: 90, type: !28)
!415 = !DILocalVariable(name: "wsc", scope: !381, file: !150, line: 91, type: !28)
!416 = !DILocation(line: 89, column: 10, scope: !412)
!417 = !DILocation(line: 89, column: 15, scope: !412)
!418 = !DILocation(line: 89, column: 19, scope: !412)
!419 = !DILocalVariable(name: "slen", scope: !381, file: !150, line: 84, type: !14)
!420 = !DILocation(line: 90, column: 16, scope: !412)
!421 = !DILocation(line: 90, column: 20, scope: !412)
!422 = !DILocalVariable(name: "v2len", scope: !381, file: !150, line: 86, type: !14)
!423 = !DILocalVariable(name: "v1len", scope: !381, file: !150, line: 85, type: !14)
!424 = !DILocation(line: 92, column: 18, scope: !425)
!425 = distinct !DILexicalBlock(scope: !412, file: !150, line: 92, column: 7)
!426 = !DILocation(line: 92, column: 7, scope: !412)
!427 = !DILocation(line: 94, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !150, line: 94, column: 9)
!429 = distinct !DILexicalBlock(scope: !425, file: !150, line: 92, column: 24)
!430 = !DILocation(line: 94, column: 13, scope: !428)
!431 = !DILocation(line: 94, column: 9, scope: !429)
!432 = !DILocation(line: 96, column: 7, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !150, line: 95, column: 7)
!434 = distinct !DILexicalBlock(scope: !428, file: !150, line: 94, column: 19)
!435 = !DILocation(line: 96, column: 15, scope: !433)
!436 = !DILocation(line: 96, column: 22, scope: !433)
!437 = !DILocation(line: 97, column: 19, scope: !438)
!438 = distinct !DILexicalBlock(scope: !433, file: !150, line: 97, column: 7)
!439 = !DILocation(line: 97, column: 29, scope: !438)
!440 = !DILocation(line: 97, column: 13, scope: !438)
!441 = !DILocalVariable(name: "tmp", scope: !381, file: !150, line: 92, type: !14)
!442 = !DILocation(line: 97, column: 18, scope: !443)
!443 = distinct !DILexicalBlock(scope: !434, file: !150, line: 97, column: 11)
!444 = !DILocation(line: 97, column: 11, scope: !434)
!445 = !DILocation(line: 97, column: 18, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !150, line: 99, column: 9)
!447 = distinct !DILexicalBlock(scope: !448, file: !150, line: 98, column: 9)
!448 = distinct !DILexicalBlock(scope: !443, file: !150, line: 97, column: 26)
!449 = !DILocation(line: 97, column: 9, scope: !446)
!450 = !DILocation(line: 100, column: 7, scope: !448)
!451 = !DILocation(line: 101, column: 5, scope: !434)
!452 = !DILocation(line: 101, column: 7, scope: !453)
!453 = distinct !DILexicalBlock(scope: !454, file: !150, line: 102, column: 7)
!454 = distinct !DILexicalBlock(scope: !428, file: !150, line: 101, column: 12)
!455 = !DILocation(line: 101, column: 15, scope: !453)
!456 = !DILocation(line: 101, column: 22, scope: !453)
!457 = !DILocation(line: 102, column: 23, scope: !458)
!458 = distinct !DILexicalBlock(scope: !453, file: !150, line: 102, column: 7)
!459 = !DILocation(line: 102, column: 33, scope: !458)
!460 = !DILocation(line: 102, column: 17, scope: !458)
!461 = !DILocalVariable(name: "tmp___0", scope: !381, file: !150, line: 93, type: !14)
!462 = !DILocation(line: 102, column: 22, scope: !463)
!463 = distinct !DILexicalBlock(scope: !454, file: !150, line: 102, column: 11)
!464 = !DILocation(line: 102, column: 11, scope: !454)
!465 = !DILocation(line: 102, column: 18, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !150, line: 104, column: 9)
!467 = distinct !DILexicalBlock(scope: !468, file: !150, line: 103, column: 9)
!468 = distinct !DILexicalBlock(scope: !463, file: !150, line: 102, column: 30)
!469 = !DILocation(line: 102, column: 9, scope: !466)
!470 = !DILocation(line: 105, column: 7, scope: !468)
!471 = !DILocation(line: 107, column: 3, scope: !429)
!472 = !DILocation(line: 107, column: 18, scope: !473)
!473 = distinct !DILexicalBlock(scope: !412, file: !150, line: 107, column: 7)
!474 = !DILocation(line: 107, column: 7, scope: !412)
!475 = !DILocation(line: 109, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !150, line: 109, column: 9)
!477 = distinct !DILexicalBlock(scope: !473, file: !150, line: 107, column: 24)
!478 = !DILocation(line: 109, column: 15, scope: !476)
!479 = !DILocation(line: 109, column: 9, scope: !477)
!480 = !DILocation(line: 111, column: 7, scope: !481)
!481 = distinct !DILexicalBlock(scope: !482, file: !150, line: 110, column: 7)
!482 = distinct !DILexicalBlock(scope: !476, file: !150, line: 109, column: 21)
!483 = !DILocation(line: 111, column: 15, scope: !481)
!484 = !DILocation(line: 111, column: 22, scope: !481)
!485 = !DILocation(line: 112, column: 23, scope: !486)
!486 = distinct !DILexicalBlock(scope: !481, file: !150, line: 112, column: 7)
!487 = !DILocation(line: 112, column: 33, scope: !486)
!488 = !DILocation(line: 112, column: 17, scope: !486)
!489 = !DILocalVariable(name: "tmp___1", scope: !381, file: !150, line: 94, type: !14)
!490 = !DILocation(line: 112, column: 22, scope: !491)
!491 = distinct !DILexicalBlock(scope: !482, file: !150, line: 112, column: 11)
!492 = !DILocation(line: 112, column: 11, scope: !482)
!493 = !DILocation(line: 112, column: 18, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !150, line: 114, column: 9)
!495 = distinct !DILexicalBlock(scope: !496, file: !150, line: 113, column: 9)
!496 = distinct !DILexicalBlock(scope: !491, file: !150, line: 112, column: 30)
!497 = !DILocation(line: 112, column: 9, scope: !494)
!498 = !DILocation(line: 115, column: 7, scope: !496)
!499 = !DILocation(line: 116, column: 5, scope: !482)
!500 = !DILocation(line: 116, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !150, line: 117, column: 7)
!502 = distinct !DILexicalBlock(scope: !476, file: !150, line: 116, column: 12)
!503 = !DILocation(line: 116, column: 15, scope: !501)
!504 = !DILocation(line: 116, column: 22, scope: !501)
!505 = !DILocation(line: 117, column: 23, scope: !506)
!506 = distinct !DILexicalBlock(scope: !501, file: !150, line: 117, column: 7)
!507 = !DILocation(line: 117, column: 33, scope: !506)
!508 = !DILocation(line: 117, column: 17, scope: !506)
!509 = !DILocalVariable(name: "tmp___2", scope: !381, file: !150, line: 95, type: !14)
!510 = !DILocation(line: 117, column: 22, scope: !511)
!511 = distinct !DILexicalBlock(scope: !502, file: !150, line: 117, column: 11)
!512 = !DILocation(line: 117, column: 11, scope: !502)
!513 = !DILocation(line: 117, column: 18, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !150, line: 119, column: 9)
!515 = distinct !DILexicalBlock(scope: !516, file: !150, line: 118, column: 9)
!516 = distinct !DILexicalBlock(scope: !511, file: !150, line: 117, column: 30)
!517 = !DILocation(line: 117, column: 9, scope: !514)
!518 = !DILocation(line: 120, column: 7, scope: !516)
!519 = !DILocation(line: 122, column: 3, scope: !477)
!520 = !DILocation(line: 121, column: 3, scope: !521)
!521 = distinct !DILexicalBlock(scope: !412, file: !150, line: 123, column: 3)
!522 = !DILocation(line: 121, column: 11, scope: !521)
!523 = !DILocation(line: 121, column: 18, scope: !521)
!524 = !DILocation(line: 122, column: 19, scope: !525)
!525 = distinct !DILexicalBlock(scope: !521, file: !150, line: 122, column: 3)
!526 = !DILocation(line: 122, column: 29, scope: !525)
!527 = !DILocation(line: 122, column: 13, scope: !525)
!528 = !DILocalVariable(name: "tmp___3", scope: !381, file: !150, line: 96, type: !14)
!529 = !DILocation(line: 122, column: 18, scope: !530)
!530 = distinct !DILexicalBlock(scope: !412, file: !150, line: 122, column: 7)
!531 = !DILocation(line: 122, column: 7, scope: !412)
!532 = !DILocation(line: 122, column: 14, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !150, line: 124, column: 5)
!534 = distinct !DILexicalBlock(scope: !535, file: !150, line: 123, column: 5)
!535 = distinct !DILexicalBlock(scope: !530, file: !150, line: 122, column: 26)
!536 = !DILocation(line: 122, column: 5, scope: !533)
!537 = !DILocation(line: 125, column: 3, scope: !535)
!538 = !DILocation(line: 123, column: 10, scope: !539)
!539 = distinct !DILexicalBlock(scope: !412, file: !150, line: 123, column: 7)
!540 = !DILocation(line: 123, column: 27, scope: !539)
!541 = !DILocation(line: 123, column: 25, scope: !539)
!542 = !DILocation(line: 123, column: 7, scope: !412)
!543 = !DILocation(line: 125, column: 21, scope: !544)
!544 = distinct !DILexicalBlock(scope: !545, file: !150, line: 125, column: 5)
!545 = distinct !DILexicalBlock(scope: !546, file: !150, line: 124, column: 5)
!546 = distinct !DILexicalBlock(scope: !539, file: !150, line: 123, column: 39)
!547 = !DILocation(line: 125, column: 31, scope: !544)
!548 = !DILocation(line: 125, column: 38, scope: !544)
!549 = !DILocation(line: 125, column: 15, scope: !544)
!550 = !DILocalVariable(name: "tmp___4", scope: !381, file: !150, line: 97, type: !14)
!551 = !DILocation(line: 125, column: 20, scope: !552)
!552 = distinct !DILexicalBlock(scope: !546, file: !150, line: 125, column: 9)
!553 = !DILocation(line: 125, column: 9, scope: !546)
!554 = !DILocation(line: 125, column: 16, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !150, line: 127, column: 7)
!556 = distinct !DILexicalBlock(scope: !557, file: !150, line: 126, column: 7)
!557 = distinct !DILexicalBlock(scope: !552, file: !150, line: 125, column: 28)
!558 = !DILocation(line: 125, column: 7, scope: !555)
!559 = !DILocation(line: 128, column: 5, scope: !557)
!560 = !DILocation(line: 126, column: 5, scope: !561)
!561 = distinct !DILexicalBlock(scope: !546, file: !150, line: 129, column: 5)
!562 = !DILocation(line: 126, column: 13, scope: !561)
!563 = !DILocation(line: 126, column: 20, scope: !561)
!564 = !DILocation(line: 127, column: 21, scope: !565)
!565 = distinct !DILexicalBlock(scope: !561, file: !150, line: 127, column: 5)
!566 = !DILocation(line: 127, column: 31, scope: !565)
!567 = !DILocation(line: 127, column: 38, scope: !565)
!568 = !DILocation(line: 127, column: 15, scope: !565)
!569 = !DILocalVariable(name: "tmp___5", scope: !381, file: !150, line: 98, type: !14)
!570 = !DILocation(line: 127, column: 20, scope: !571)
!571 = distinct !DILexicalBlock(scope: !546, file: !150, line: 127, column: 9)
!572 = !DILocation(line: 127, column: 9, scope: !546)
!573 = !DILocation(line: 127, column: 16, scope: !574)
!574 = distinct !DILexicalBlock(scope: !575, file: !150, line: 129, column: 7)
!575 = distinct !DILexicalBlock(scope: !576, file: !150, line: 128, column: 7)
!576 = distinct !DILexicalBlock(scope: !571, file: !150, line: 127, column: 28)
!577 = !DILocation(line: 127, column: 7, scope: !574)
!578 = !DILocation(line: 130, column: 5, scope: !576)
!579 = !DILocation(line: 128, column: 5, scope: !580)
!580 = distinct !DILexicalBlock(scope: !546, file: !150, line: 131, column: 5)
!581 = !DILocation(line: 128, column: 13, scope: !580)
!582 = !DILocation(line: 128, column: 20, scope: !580)
!583 = !DILocation(line: 129, column: 38, scope: !584)
!584 = distinct !DILexicalBlock(scope: !580, file: !150, line: 129, column: 5)
!585 = !DILocation(line: 129, column: 5, scope: !584)
!586 = !DILocation(line: 130, column: 5, scope: !580)
!587 = !DILocation(line: 130, column: 14, scope: !580)
!588 = !DILocation(line: 131, column: 21, scope: !589)
!589 = distinct !DILexicalBlock(scope: !580, file: !150, line: 131, column: 5)
!590 = !DILocation(line: 131, column: 31, scope: !589)
!591 = !DILocation(line: 131, column: 38, scope: !589)
!592 = !DILocation(line: 131, column: 15, scope: !589)
!593 = !DILocalVariable(name: "tmp___6", scope: !381, file: !150, line: 99, type: !14)
!594 = !DILocation(line: 131, column: 20, scope: !595)
!595 = distinct !DILexicalBlock(scope: !546, file: !150, line: 131, column: 9)
!596 = !DILocation(line: 131, column: 9, scope: !546)
!597 = !DILocation(line: 131, column: 16, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !150, line: 133, column: 7)
!599 = distinct !DILexicalBlock(scope: !600, file: !150, line: 132, column: 7)
!600 = distinct !DILexicalBlock(scope: !595, file: !150, line: 131, column: 28)
!601 = !DILocation(line: 131, column: 40, scope: !598)
!602 = !DILocation(line: 131, column: 7, scope: !598)
!603 = !DILocation(line: 134, column: 5, scope: !600)
!604 = !DILocation(line: 132, column: 21, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !150, line: 136, column: 5)
!606 = distinct !DILexicalBlock(scope: !546, file: !150, line: 135, column: 5)
!607 = !DILocation(line: 132, column: 31, scope: !605)
!608 = !DILocation(line: 132, column: 38, scope: !605)
!609 = !DILocation(line: 132, column: 15, scope: !605)
!610 = !DILocalVariable(name: "tmp___7", scope: !381, file: !150, line: 100, type: !14)
!611 = !DILocation(line: 132, column: 20, scope: !612)
!612 = distinct !DILexicalBlock(scope: !546, file: !150, line: 132, column: 9)
!613 = !DILocation(line: 132, column: 9, scope: !546)
!614 = !DILocation(line: 132, column: 16, scope: !615)
!615 = distinct !DILexicalBlock(scope: !616, file: !150, line: 134, column: 7)
!616 = distinct !DILexicalBlock(scope: !617, file: !150, line: 133, column: 7)
!617 = distinct !DILexicalBlock(scope: !612, file: !150, line: 132, column: 28)
!618 = !DILocation(line: 132, column: 40, scope: !615)
!619 = !DILocation(line: 132, column: 7, scope: !615)
!620 = !DILocation(line: 135, column: 5, scope: !617)
!621 = !DILocation(line: 133, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !546, file: !150, line: 136, column: 5)
!623 = !DILocation(line: 133, column: 13, scope: !622)
!624 = !DILocation(line: 133, column: 20, scope: !622)
!625 = !DILocation(line: 134, column: 38, scope: !626)
!626 = distinct !DILexicalBlock(scope: !622, file: !150, line: 134, column: 5)
!627 = !DILocation(line: 134, column: 5, scope: !626)
!628 = !DILocation(line: 135, column: 5, scope: !622)
!629 = !DILocation(line: 135, column: 15, scope: !622)
!630 = !DILocation(line: 136, column: 24, scope: !631)
!631 = distinct !DILexicalBlock(scope: !546, file: !150, line: 136, column: 9)
!632 = !DILocation(line: 136, column: 15, scope: !631)
!633 = !DILocation(line: 136, column: 9, scope: !631)
!634 = !DILocation(line: 136, column: 29, scope: !631)
!635 = !DILocation(line: 136, column: 9, scope: !546)
!636 = !DILocation(line: 138, column: 7, scope: !637)
!637 = distinct !DILexicalBlock(scope: !631, file: !150, line: 136, column: 36)
!638 = !DILocation(line: 138, column: 17, scope: !637)
!639 = !DILocation(line: 139, column: 13, scope: !637)
!640 = !DILocation(line: 139, column: 7, scope: !637)
!641 = !DILocation(line: 139, column: 17, scope: !637)
!642 = !DILocation(line: 140, column: 5, scope: !637)
!643 = !DILocation(line: 0, scope: !412)
!644 = !DILocation(line: 141, column: 21, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !150, line: 142, column: 5)
!646 = distinct !DILexicalBlock(scope: !546, file: !150, line: 141, column: 5)
!647 = !DILocation(line: 141, column: 34, scope: !645)
!648 = !DILocation(line: 141, column: 15, scope: !645)
!649 = !DILocalVariable(name: "tmp___8", scope: !381, file: !150, line: 101, type: !14)
!650 = !DILocation(line: 141, column: 20, scope: !651)
!651 = distinct !DILexicalBlock(scope: !546, file: !150, line: 141, column: 9)
!652 = !DILocation(line: 141, column: 9, scope: !546)
!653 = !DILocation(line: 141, column: 16, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !150, line: 143, column: 7)
!655 = distinct !DILexicalBlock(scope: !656, file: !150, line: 142, column: 7)
!656 = distinct !DILexicalBlock(scope: !651, file: !150, line: 141, column: 28)
!657 = !DILocation(line: 141, column: 40, scope: !654)
!658 = !DILocation(line: 141, column: 7, scope: !654)
!659 = !DILocation(line: 144, column: 5, scope: !656)
!660 = !DILocation(line: 142, column: 21, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !150, line: 146, column: 5)
!662 = distinct !DILexicalBlock(scope: !546, file: !150, line: 145, column: 5)
!663 = !DILocation(line: 142, column: 31, scope: !661)
!664 = !DILocation(line: 142, column: 38, scope: !661)
!665 = !DILocation(line: 142, column: 15, scope: !661)
!666 = !DILocalVariable(name: "tmp___9", scope: !381, file: !150, line: 102, type: !14)
!667 = !DILocation(line: 142, column: 20, scope: !668)
!668 = distinct !DILexicalBlock(scope: !546, file: !150, line: 142, column: 9)
!669 = !DILocation(line: 142, column: 9, scope: !546)
!670 = !DILocation(line: 142, column: 16, scope: !671)
!671 = distinct !DILexicalBlock(scope: !672, file: !150, line: 144, column: 7)
!672 = distinct !DILexicalBlock(scope: !673, file: !150, line: 143, column: 7)
!673 = distinct !DILexicalBlock(scope: !668, file: !150, line: 142, column: 28)
!674 = !DILocation(line: 142, column: 40, scope: !671)
!675 = !DILocation(line: 142, column: 7, scope: !671)
!676 = !DILocation(line: 145, column: 5, scope: !673)
!677 = !DILocation(line: 143, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !546, file: !150, line: 146, column: 5)
!679 = !DILocation(line: 143, column: 13, scope: !678)
!680 = !DILocation(line: 143, column: 20, scope: !678)
!681 = !DILocation(line: 144, column: 38, scope: !682)
!682 = distinct !DILexicalBlock(scope: !678, file: !150, line: 144, column: 5)
!683 = !DILocation(line: 144, column: 5, scope: !682)
!684 = !DILocation(line: 145, column: 5, scope: !678)
!685 = !DILocation(line: 145, column: 15, scope: !678)
!686 = !DILocation(line: 146, column: 24, scope: !687)
!687 = distinct !DILexicalBlock(scope: !546, file: !150, line: 146, column: 9)
!688 = !DILocation(line: 146, column: 15, scope: !687)
!689 = !DILocation(line: 146, column: 9, scope: !687)
!690 = !DILocation(line: 146, column: 29, scope: !687)
!691 = !DILocation(line: 146, column: 9, scope: !546)
!692 = !DILocation(line: 148, column: 7, scope: !693)
!693 = distinct !DILexicalBlock(scope: !687, file: !150, line: 146, column: 36)
!694 = !DILocation(line: 148, column: 17, scope: !693)
!695 = !DILocation(line: 149, column: 13, scope: !693)
!696 = !DILocation(line: 149, column: 7, scope: !693)
!697 = !DILocation(line: 149, column: 17, scope: !693)
!698 = !DILocation(line: 150, column: 5, scope: !693)
!699 = !DILocation(line: 151, column: 22, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !150, line: 152, column: 5)
!701 = distinct !DILexicalBlock(scope: !546, file: !150, line: 151, column: 5)
!702 = !DILocation(line: 151, column: 41, scope: !700)
!703 = !DILocation(line: 151, column: 35, scope: !700)
!704 = !DILocation(line: 151, column: 16, scope: !700)
!705 = !DILocalVariable(name: "tmp___10", scope: !381, file: !150, line: 103, type: !14)
!706 = !DILocation(line: 151, column: 21, scope: !707)
!707 = distinct !DILexicalBlock(scope: !546, file: !150, line: 151, column: 9)
!708 = !DILocation(line: 151, column: 9, scope: !546)
!709 = !DILocation(line: 151, column: 16, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !150, line: 153, column: 7)
!711 = distinct !DILexicalBlock(scope: !712, file: !150, line: 152, column: 7)
!712 = distinct !DILexicalBlock(scope: !707, file: !150, line: 151, column: 29)
!713 = !DILocation(line: 151, column: 40, scope: !710)
!714 = !DILocation(line: 151, column: 7, scope: !710)
!715 = !DILocation(line: 154, column: 5, scope: !712)
!716 = !DILocation(line: 152, column: 22, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !150, line: 156, column: 5)
!718 = distinct !DILexicalBlock(scope: !546, file: !150, line: 155, column: 5)
!719 = !DILocation(line: 152, column: 32, scope: !717)
!720 = !DILocation(line: 152, column: 45, scope: !717)
!721 = !DILocation(line: 152, column: 39, scope: !717)
!722 = !DILocation(line: 152, column: 16, scope: !717)
!723 = !DILocalVariable(name: "tmp___11", scope: !381, file: !150, line: 104, type: !14)
!724 = !DILocation(line: 152, column: 21, scope: !725)
!725 = distinct !DILexicalBlock(scope: !546, file: !150, line: 152, column: 9)
!726 = !DILocation(line: 152, column: 9, scope: !546)
!727 = !DILocation(line: 152, column: 16, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !150, line: 154, column: 7)
!729 = distinct !DILexicalBlock(scope: !730, file: !150, line: 153, column: 7)
!730 = distinct !DILexicalBlock(scope: !725, file: !150, line: 152, column: 29)
!731 = !DILocation(line: 152, column: 40, scope: !728)
!732 = !DILocation(line: 152, column: 7, scope: !728)
!733 = !DILocation(line: 155, column: 5, scope: !730)
!734 = !DILocation(line: 153, column: 5, scope: !735)
!735 = distinct !DILexicalBlock(scope: !546, file: !150, line: 156, column: 5)
!736 = !DILocation(line: 153, column: 13, scope: !735)
!737 = !DILocation(line: 153, column: 20, scope: !735)
!738 = !DILocation(line: 154, column: 27, scope: !735)
!739 = !DILocation(line: 154, column: 18, scope: !735)
!740 = !DILocalVariable(name: "v3len", scope: !381, file: !150, line: 87, type: !14)
!741 = !DILocation(line: 155, column: 38, scope: !742)
!742 = distinct !DILexicalBlock(scope: !735, file: !150, line: 155, column: 5)
!743 = !DILocation(line: 155, column: 5, scope: !742)
!744 = !DILocation(line: 156, column: 5, scope: !735)
!745 = !DILocation(line: 156, column: 15, scope: !735)
!746 = !DILocation(line: 157, column: 22, scope: !747)
!747 = distinct !DILexicalBlock(scope: !735, file: !150, line: 157, column: 5)
!748 = !DILocation(line: 157, column: 42, scope: !747)
!749 = !DILocation(line: 157, column: 51, scope: !747)
!750 = !DILocation(line: 157, column: 35, scope: !747)
!751 = !DILocation(line: 157, column: 16, scope: !747)
!752 = !DILocalVariable(name: "tmp___12", scope: !381, file: !150, line: 105, type: !14)
!753 = !DILocation(line: 157, column: 21, scope: !754)
!754 = distinct !DILexicalBlock(scope: !546, file: !150, line: 157, column: 9)
!755 = !DILocation(line: 157, column: 9, scope: !546)
!756 = !DILocation(line: 157, column: 16, scope: !757)
!757 = distinct !DILexicalBlock(scope: !758, file: !150, line: 159, column: 7)
!758 = distinct !DILexicalBlock(scope: !759, file: !150, line: 158, column: 7)
!759 = distinct !DILexicalBlock(scope: !754, file: !150, line: 157, column: 29)
!760 = !DILocation(line: 157, column: 40, scope: !757)
!761 = !DILocation(line: 157, column: 7, scope: !757)
!762 = !DILocation(line: 160, column: 5, scope: !759)
!763 = !DILocation(line: 158, column: 22, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !150, line: 162, column: 5)
!765 = distinct !DILexicalBlock(scope: !546, file: !150, line: 161, column: 5)
!766 = !DILocation(line: 158, column: 32, scope: !764)
!767 = !DILocation(line: 158, column: 46, scope: !764)
!768 = !DILocation(line: 158, column: 55, scope: !764)
!769 = !DILocation(line: 158, column: 39, scope: !764)
!770 = !DILocation(line: 158, column: 16, scope: !764)
!771 = !DILocalVariable(name: "tmp___13", scope: !381, file: !150, line: 106, type: !14)
!772 = !DILocation(line: 158, column: 21, scope: !773)
!773 = distinct !DILexicalBlock(scope: !546, file: !150, line: 158, column: 9)
!774 = !DILocation(line: 158, column: 9, scope: !546)
!775 = !DILocation(line: 158, column: 16, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !150, line: 160, column: 7)
!777 = distinct !DILexicalBlock(scope: !778, file: !150, line: 159, column: 7)
!778 = distinct !DILexicalBlock(scope: !773, file: !150, line: 158, column: 29)
!779 = !DILocation(line: 158, column: 40, scope: !776)
!780 = !DILocation(line: 158, column: 7, scope: !776)
!781 = !DILocation(line: 161, column: 5, scope: !778)
!782 = !DILocation(line: 162, column: 3, scope: !546)
!783 = !DILocation(line: 162, column: 22, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !150, line: 164, column: 5)
!785 = distinct !DILexicalBlock(scope: !786, file: !150, line: 163, column: 5)
!786 = distinct !DILexicalBlock(scope: !539, file: !150, line: 162, column: 10)
!787 = !DILocation(line: 162, column: 32, scope: !784)
!788 = !DILocation(line: 162, column: 39, scope: !784)
!789 = !DILocation(line: 162, column: 16, scope: !784)
!790 = !DILocalVariable(name: "tmp___14", scope: !381, file: !150, line: 107, type: !14)
!791 = !DILocation(line: 162, column: 21, scope: !792)
!792 = distinct !DILexicalBlock(scope: !786, file: !150, line: 162, column: 9)
!793 = !DILocation(line: 162, column: 9, scope: !786)
!794 = !DILocation(line: 162, column: 16, scope: !795)
!795 = distinct !DILexicalBlock(scope: !796, file: !150, line: 164, column: 7)
!796 = distinct !DILexicalBlock(scope: !797, file: !150, line: 163, column: 7)
!797 = distinct !DILexicalBlock(scope: !792, file: !150, line: 162, column: 29)
!798 = !DILocation(line: 162, column: 7, scope: !795)
!799 = !DILocation(line: 165, column: 5, scope: !797)
!800 = !DILocation(line: 163, column: 5, scope: !801)
!801 = distinct !DILexicalBlock(scope: !786, file: !150, line: 166, column: 5)
!802 = !DILocation(line: 163, column: 13, scope: !801)
!803 = !DILocation(line: 163, column: 20, scope: !801)
!804 = !DILocation(line: 164, column: 38, scope: !805)
!805 = distinct !DILexicalBlock(scope: !801, file: !150, line: 164, column: 5)
!806 = !DILocation(line: 164, column: 5, scope: !805)
!807 = !DILocation(line: 165, column: 5, scope: !801)
!808 = !DILocation(line: 165, column: 14, scope: !801)
!809 = !DILocation(line: 166, column: 22, scope: !810)
!810 = distinct !DILexicalBlock(scope: !801, file: !150, line: 166, column: 5)
!811 = !DILocation(line: 166, column: 32, scope: !810)
!812 = !DILocation(line: 166, column: 39, scope: !810)
!813 = !DILocation(line: 166, column: 16, scope: !810)
!814 = !DILocalVariable(name: "tmp___15", scope: !381, file: !150, line: 108, type: !14)
!815 = !DILocation(line: 166, column: 21, scope: !816)
!816 = distinct !DILexicalBlock(scope: !786, file: !150, line: 166, column: 9)
!817 = !DILocation(line: 166, column: 9, scope: !786)
!818 = !DILocation(line: 166, column: 16, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !150, line: 168, column: 7)
!820 = distinct !DILexicalBlock(scope: !821, file: !150, line: 167, column: 7)
!821 = distinct !DILexicalBlock(scope: !816, file: !150, line: 166, column: 29)
!822 = !DILocation(line: 166, column: 40, scope: !819)
!823 = !DILocation(line: 166, column: 7, scope: !819)
!824 = !DILocation(line: 169, column: 5, scope: !821)
!825 = !DILocation(line: 167, column: 5, scope: !826)
!826 = distinct !DILexicalBlock(scope: !786, file: !150, line: 170, column: 5)
!827 = !DILocation(line: 167, column: 13, scope: !826)
!828 = !DILocation(line: 167, column: 20, scope: !826)
!829 = !DILocation(line: 168, column: 38, scope: !830)
!830 = distinct !DILexicalBlock(scope: !826, file: !150, line: 168, column: 5)
!831 = !DILocation(line: 168, column: 5, scope: !830)
!832 = !DILocation(line: 169, column: 5, scope: !826)
!833 = !DILocation(line: 169, column: 15, scope: !826)
!834 = !DILocation(line: 170, column: 24, scope: !835)
!835 = distinct !DILexicalBlock(scope: !786, file: !150, line: 170, column: 9)
!836 = !DILocation(line: 170, column: 15, scope: !835)
!837 = !DILocation(line: 170, column: 9, scope: !835)
!838 = !DILocation(line: 170, column: 29, scope: !835)
!839 = !DILocation(line: 170, column: 9, scope: !786)
!840 = !DILocation(line: 172, column: 7, scope: !841)
!841 = distinct !DILexicalBlock(scope: !835, file: !150, line: 170, column: 36)
!842 = !DILocation(line: 172, column: 17, scope: !841)
!843 = !DILocation(line: 173, column: 13, scope: !841)
!844 = !DILocation(line: 173, column: 7, scope: !841)
!845 = !DILocation(line: 173, column: 17, scope: !841)
!846 = !DILocation(line: 174, column: 5, scope: !841)
!847 = !DILocation(line: 175, column: 22, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !150, line: 176, column: 5)
!849 = distinct !DILexicalBlock(scope: !786, file: !150, line: 175, column: 5)
!850 = !DILocation(line: 175, column: 35, scope: !848)
!851 = !DILocation(line: 175, column: 16, scope: !848)
!852 = !DILocalVariable(name: "tmp___16", scope: !381, file: !150, line: 109, type: !14)
!853 = !DILocation(line: 175, column: 21, scope: !854)
!854 = distinct !DILexicalBlock(scope: !786, file: !150, line: 175, column: 9)
!855 = !DILocation(line: 175, column: 9, scope: !786)
!856 = !DILocation(line: 175, column: 16, scope: !857)
!857 = distinct !DILexicalBlock(scope: !858, file: !150, line: 177, column: 7)
!858 = distinct !DILexicalBlock(scope: !859, file: !150, line: 176, column: 7)
!859 = distinct !DILexicalBlock(scope: !854, file: !150, line: 175, column: 29)
!860 = !DILocation(line: 175, column: 40, scope: !857)
!861 = !DILocation(line: 175, column: 7, scope: !857)
!862 = !DILocation(line: 178, column: 5, scope: !859)
!863 = !DILocation(line: 176, column: 22, scope: !864)
!864 = distinct !DILexicalBlock(scope: !865, file: !150, line: 180, column: 5)
!865 = distinct !DILexicalBlock(scope: !786, file: !150, line: 179, column: 5)
!866 = !DILocation(line: 176, column: 32, scope: !864)
!867 = !DILocation(line: 176, column: 39, scope: !864)
!868 = !DILocation(line: 176, column: 16, scope: !864)
!869 = !DILocalVariable(name: "tmp___17", scope: !381, file: !150, line: 110, type: !14)
!870 = !DILocation(line: 176, column: 21, scope: !871)
!871 = distinct !DILexicalBlock(scope: !786, file: !150, line: 176, column: 9)
!872 = !DILocation(line: 176, column: 9, scope: !786)
!873 = !DILocation(line: 176, column: 16, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !150, line: 178, column: 7)
!875 = distinct !DILexicalBlock(scope: !876, file: !150, line: 177, column: 7)
!876 = distinct !DILexicalBlock(scope: !871, file: !150, line: 176, column: 29)
!877 = !DILocation(line: 176, column: 40, scope: !874)
!878 = !DILocation(line: 176, column: 7, scope: !874)
!879 = !DILocation(line: 179, column: 5, scope: !876)
!880 = !DILocation(line: 177, column: 5, scope: !881)
!881 = distinct !DILexicalBlock(scope: !786, file: !150, line: 180, column: 5)
!882 = !DILocation(line: 177, column: 13, scope: !881)
!883 = !DILocation(line: 177, column: 20, scope: !881)
!884 = !DILocation(line: 178, column: 38, scope: !885)
!885 = distinct !DILexicalBlock(scope: !881, file: !150, line: 178, column: 5)
!886 = !DILocation(line: 178, column: 5, scope: !885)
!887 = !DILocation(line: 179, column: 5, scope: !881)
!888 = !DILocation(line: 179, column: 15, scope: !881)
!889 = !DILocation(line: 180, column: 24, scope: !890)
!890 = distinct !DILexicalBlock(scope: !786, file: !150, line: 180, column: 9)
!891 = !DILocation(line: 180, column: 15, scope: !890)
!892 = !DILocation(line: 180, column: 9, scope: !890)
!893 = !DILocation(line: 180, column: 29, scope: !890)
!894 = !DILocation(line: 180, column: 9, scope: !786)
!895 = !DILocation(line: 182, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !890, file: !150, line: 180, column: 36)
!897 = !DILocation(line: 182, column: 17, scope: !896)
!898 = !DILocation(line: 183, column: 13, scope: !896)
!899 = !DILocation(line: 183, column: 7, scope: !896)
!900 = !DILocation(line: 183, column: 17, scope: !896)
!901 = !DILocation(line: 184, column: 5, scope: !896)
!902 = !DILocation(line: 185, column: 22, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !150, line: 186, column: 5)
!904 = distinct !DILexicalBlock(scope: !786, file: !150, line: 185, column: 5)
!905 = !DILocation(line: 185, column: 41, scope: !903)
!906 = !DILocation(line: 185, column: 35, scope: !903)
!907 = !DILocation(line: 185, column: 16, scope: !903)
!908 = !DILocalVariable(name: "tmp___18", scope: !381, file: !150, line: 111, type: !14)
!909 = !DILocation(line: 185, column: 21, scope: !910)
!910 = distinct !DILexicalBlock(scope: !786, file: !150, line: 185, column: 9)
!911 = !DILocation(line: 185, column: 9, scope: !786)
!912 = !DILocation(line: 185, column: 16, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !150, line: 187, column: 7)
!914 = distinct !DILexicalBlock(scope: !915, file: !150, line: 186, column: 7)
!915 = distinct !DILexicalBlock(scope: !910, file: !150, line: 185, column: 29)
!916 = !DILocation(line: 185, column: 40, scope: !913)
!917 = !DILocation(line: 185, column: 7, scope: !913)
!918 = !DILocation(line: 188, column: 5, scope: !915)
!919 = !DILocation(line: 186, column: 22, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !150, line: 190, column: 5)
!921 = distinct !DILexicalBlock(scope: !786, file: !150, line: 189, column: 5)
!922 = !DILocation(line: 186, column: 32, scope: !920)
!923 = !DILocation(line: 186, column: 45, scope: !920)
!924 = !DILocation(line: 186, column: 39, scope: !920)
!925 = !DILocation(line: 186, column: 16, scope: !920)
!926 = !DILocalVariable(name: "tmp___19", scope: !381, file: !150, line: 112, type: !14)
!927 = !DILocation(line: 186, column: 21, scope: !928)
!928 = distinct !DILexicalBlock(scope: !786, file: !150, line: 186, column: 9)
!929 = !DILocation(line: 186, column: 9, scope: !786)
!930 = !DILocation(line: 186, column: 16, scope: !931)
!931 = distinct !DILexicalBlock(scope: !932, file: !150, line: 188, column: 7)
!932 = distinct !DILexicalBlock(scope: !933, file: !150, line: 187, column: 7)
!933 = distinct !DILexicalBlock(scope: !928, file: !150, line: 186, column: 29)
!934 = !DILocation(line: 186, column: 40, scope: !931)
!935 = !DILocation(line: 186, column: 7, scope: !931)
!936 = !DILocation(line: 189, column: 5, scope: !933)
!937 = !DILocation(line: 187, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !786, file: !150, line: 190, column: 5)
!939 = !DILocation(line: 187, column: 13, scope: !938)
!940 = !DILocation(line: 187, column: 20, scope: !938)
!941 = !DILocation(line: 188, column: 27, scope: !938)
!942 = !DILocation(line: 188, column: 18, scope: !938)
!943 = !DILocation(line: 189, column: 38, scope: !944)
!944 = distinct !DILexicalBlock(scope: !938, file: !150, line: 189, column: 5)
!945 = !DILocation(line: 189, column: 5, scope: !944)
!946 = !DILocation(line: 190, column: 5, scope: !938)
!947 = !DILocation(line: 190, column: 15, scope: !938)
!948 = !DILocation(line: 191, column: 22, scope: !949)
!949 = distinct !DILexicalBlock(scope: !938, file: !150, line: 191, column: 5)
!950 = !DILocation(line: 191, column: 42, scope: !949)
!951 = !DILocation(line: 191, column: 51, scope: !949)
!952 = !DILocation(line: 191, column: 35, scope: !949)
!953 = !DILocation(line: 191, column: 16, scope: !949)
!954 = !DILocalVariable(name: "tmp___20", scope: !381, file: !150, line: 113, type: !14)
!955 = !DILocation(line: 191, column: 21, scope: !956)
!956 = distinct !DILexicalBlock(scope: !786, file: !150, line: 191, column: 9)
!957 = !DILocation(line: 191, column: 9, scope: !786)
!958 = !DILocation(line: 191, column: 16, scope: !959)
!959 = distinct !DILexicalBlock(scope: !960, file: !150, line: 193, column: 7)
!960 = distinct !DILexicalBlock(scope: !961, file: !150, line: 192, column: 7)
!961 = distinct !DILexicalBlock(scope: !956, file: !150, line: 191, column: 29)
!962 = !DILocation(line: 191, column: 40, scope: !959)
!963 = !DILocation(line: 191, column: 7, scope: !959)
!964 = !DILocation(line: 194, column: 5, scope: !961)
!965 = !DILocation(line: 192, column: 22, scope: !966)
!966 = distinct !DILexicalBlock(scope: !967, file: !150, line: 196, column: 5)
!967 = distinct !DILexicalBlock(scope: !786, file: !150, line: 195, column: 5)
!968 = !DILocation(line: 192, column: 32, scope: !966)
!969 = !DILocation(line: 192, column: 46, scope: !966)
!970 = !DILocation(line: 192, column: 55, scope: !966)
!971 = !DILocation(line: 192, column: 39, scope: !966)
!972 = !DILocation(line: 192, column: 16, scope: !966)
!973 = !DILocalVariable(name: "tmp___21", scope: !381, file: !150, line: 114, type: !14)
!974 = !DILocation(line: 192, column: 21, scope: !975)
!975 = distinct !DILexicalBlock(scope: !786, file: !150, line: 192, column: 9)
!976 = !DILocation(line: 192, column: 9, scope: !786)
!977 = !DILocation(line: 192, column: 16, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !150, line: 194, column: 7)
!979 = distinct !DILexicalBlock(scope: !980, file: !150, line: 193, column: 7)
!980 = distinct !DILexicalBlock(scope: !975, file: !150, line: 192, column: 29)
!981 = !DILocation(line: 192, column: 40, scope: !978)
!982 = !DILocation(line: 192, column: 7, scope: !978)
!983 = !DILocation(line: 195, column: 5, scope: !980)
!984 = !DILocation(line: 194, column: 3, scope: !412)
!985 = distinct !DISubprogram(name: "draw_handle", scope: !150, file: !150, line: 202, type: !986, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!986 = !DISubroutineType(types: !987)
!987 = !{null, !14, !14, !14, !14}
!988 = !DILocalVariable(name: "Y", arg: 1, scope: !985, file: !150, line: 202, type: !14)
!989 = !DILocation(line: 0, scope: !985)
!990 = !DILocalVariable(name: "X", arg: 2, scope: !985, file: !150, line: 202, type: !14)
!991 = !DILocalVariable(name: "active", arg: 3, scope: !985, file: !150, line: 202, type: !14)
!992 = !DILocalVariable(name: "level", arg: 4, scope: !985, file: !150, line: 202, type: !14)
!993 = !DILocation(line: 205, column: 13, scope: !994)
!994 = distinct !DILexicalBlock(scope: !995, file: !150, line: 205, column: 7)
!995 = distinct !DILexicalBlock(scope: !985, file: !150, line: 213, column: 3)
!996 = !DILocation(line: 205, column: 7, scope: !995)
!997 = !DILocation(line: 205, column: 5, scope: !998)
!998 = distinct !DILexicalBlock(scope: !994, file: !150, line: 205, column: 19)
!999 = !DILocation(line: 205, column: 13, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !994, file: !150, line: 205, column: 7)
!1001 = !DILocation(line: 205, column: 7, scope: !994)
!1002 = !DILocation(line: 205, column: 19, scope: !1000)
!1003 = !DILocation(line: 207, column: 5, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !1005, file: !150, line: 207, column: 5)
!1005 = distinct !DILexicalBlock(scope: !1000, file: !150, line: 205, column: 19)
!1006 = !DILocation(line: 207, column: 13, scope: !1004)
!1007 = !DILocation(line: 207, column: 20, scope: !1004)
!1008 = !DILocalVariable(name: "tmp", scope: !985, file: !150, line: 204, type: !14)
!1009 = !DILocation(line: 208, column: 7, scope: !1004)
!1010 = !DILocation(line: 208, column: 21, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1004, file: !150, line: 209, column: 5)
!1012 = !DILocation(line: 208, column: 15, scope: !1011)
!1013 = !DILocalVariable(name: "tmp___0", scope: !985, file: !150, line: 205, type: !14)
!1014 = !DILocation(line: 208, column: 20, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1005, file: !150, line: 208, column: 9)
!1016 = !DILocation(line: 208, column: 9, scope: !1005)
!1017 = !DILocation(line: 208, column: 14, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !150, line: 210, column: 7)
!1019 = distinct !DILexicalBlock(scope: !1020, file: !150, line: 209, column: 7)
!1020 = distinct !DILexicalBlock(scope: !1015, file: !150, line: 208, column: 28)
!1021 = !DILocation(line: 208, column: 7, scope: !1018)
!1022 = !DILocation(line: 211, column: 5, scope: !1020)
!1023 = !DILocation(line: 212, column: 3, scope: !1005)
!1024 = !DILocation(line: 210, column: 13, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !995, file: !150, line: 210, column: 7)
!1026 = !DILocation(line: 210, column: 7, scope: !995)
!1027 = !DILocation(line: 214, column: 16, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !150, line: 214, column: 9)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !150, line: 210, column: 19)
!1030 = !DILocation(line: 214, column: 9, scope: !1029)
!1031 = !DILocation(line: 214, column: 7, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1028, file: !150, line: 214, column: 22)
!1033 = !DILocation(line: 214, column: 15, scope: !1032)
!1034 = !DILocation(line: 214, column: 22, scope: !1032)
!1035 = !DILocation(line: 215, column: 5, scope: !1032)
!1036 = !DILocation(line: 214, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1028, file: !150, line: 215, column: 12)
!1038 = !DILocation(line: 214, column: 15, scope: !1037)
!1039 = !DILocation(line: 214, column: 22, scope: !1037)
!1040 = !DILocalVariable(name: "tmp___1", scope: !985, file: !150, line: 206, type: !14)
!1041 = !DILocation(line: 215, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1029, file: !150, line: 216, column: 5)
!1043 = !DILocation(line: 215, column: 21, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !150, line: 216, column: 5)
!1045 = !DILocation(line: 215, column: 15, scope: !1044)
!1046 = !DILocalVariable(name: "tmp___2", scope: !985, file: !150, line: 207, type: !14)
!1047 = !DILocation(line: 215, column: 20, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1029, file: !150, line: 215, column: 9)
!1049 = !DILocation(line: 215, column: 9, scope: !1029)
!1050 = !DILocation(line: 215, column: 14, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !150, line: 217, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !150, line: 216, column: 7)
!1053 = distinct !DILexicalBlock(scope: !1048, file: !150, line: 215, column: 28)
!1054 = !DILocation(line: 215, column: 7, scope: !1051)
!1055 = !DILocation(line: 218, column: 5, scope: !1053)
!1056 = !DILocation(line: 219, column: 3, scope: !1029)
!1057 = !DILocation(line: 0, scope: !995)
!1058 = !DILocation(line: 217, column: 13, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !995, file: !150, line: 217, column: 7)
!1060 = !DILocation(line: 217, column: 7, scope: !995)
!1061 = !DILocation(line: 217, column: 5, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1059, file: !150, line: 217, column: 19)
!1063 = !DILocation(line: 217, column: 13, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !150, line: 217, column: 7)
!1065 = !DILocation(line: 217, column: 7, scope: !1059)
!1066 = !DILocation(line: 217, column: 19, scope: !1064)
!1067 = !DILocation(line: 219, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !150, line: 219, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !150, line: 217, column: 19)
!1070 = !DILocation(line: 219, column: 13, scope: !1068)
!1071 = !DILocation(line: 219, column: 20, scope: !1068)
!1072 = !DILocalVariable(name: "tmp___3", scope: !985, file: !150, line: 208, type: !14)
!1073 = !DILocation(line: 220, column: 7, scope: !1068)
!1074 = !DILocation(line: 220, column: 21, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1068, file: !150, line: 221, column: 5)
!1076 = !DILocation(line: 220, column: 15, scope: !1075)
!1077 = !DILocalVariable(name: "tmp___4", scope: !985, file: !150, line: 209, type: !14)
!1078 = !DILocation(line: 220, column: 20, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1069, file: !150, line: 220, column: 9)
!1080 = !DILocation(line: 220, column: 9, scope: !1069)
!1081 = !DILocation(line: 220, column: 14, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !150, line: 222, column: 7)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !150, line: 221, column: 7)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !150, line: 220, column: 28)
!1085 = !DILocation(line: 220, column: 7, scope: !1082)
!1086 = !DILocation(line: 223, column: 5, scope: !1084)
!1087 = !DILocation(line: 224, column: 3, scope: !1069)
!1088 = !DILocation(line: 222, column: 13, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !995, file: !150, line: 222, column: 7)
!1090 = !DILocation(line: 222, column: 7, scope: !995)
!1091 = !DILocation(line: 224, column: 5, scope: !1092)
!1092 = distinct !DILexicalBlock(scope: !1093, file: !150, line: 223, column: 5)
!1093 = distinct !DILexicalBlock(scope: !1089, file: !150, line: 222, column: 19)
!1094 = !DILocation(line: 224, column: 13, scope: !1092)
!1095 = !DILocation(line: 224, column: 20, scope: !1092)
!1096 = !DILocalVariable(name: "tmp___5", scope: !985, file: !150, line: 210, type: !14)
!1097 = !DILocation(line: 225, column: 7, scope: !1092)
!1098 = !DILocation(line: 225, column: 21, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1092, file: !150, line: 226, column: 5)
!1100 = !DILocation(line: 225, column: 15, scope: !1099)
!1101 = !DILocalVariable(name: "tmp___6", scope: !985, file: !150, line: 211, type: !14)
!1102 = !DILocation(line: 225, column: 20, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1093, file: !150, line: 225, column: 9)
!1104 = !DILocation(line: 225, column: 9, scope: !1093)
!1105 = !DILocation(line: 225, column: 14, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1107, file: !150, line: 227, column: 7)
!1107 = distinct !DILexicalBlock(scope: !1108, file: !150, line: 226, column: 7)
!1108 = distinct !DILexicalBlock(scope: !1103, file: !150, line: 225, column: 28)
!1109 = !DILocation(line: 225, column: 7, scope: !1106)
!1110 = !DILocation(line: 228, column: 5, scope: !1108)
!1111 = !DILocation(line: 229, column: 3, scope: !1093)
!1112 = !DILocation(line: 227, column: 3, scope: !995)
!1113 = distinct !DISubprogram(name: "init_screen", scope: !150, file: !150, line: 229, type: !187, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1114 = !DILocalVariable(name: "__cil_tmp1", scope: !1113, file: !150, line: 231, type: !28)
!1115 = !DILocation(line: 231, column: 9, scope: !1113)
!1116 = !DILocalVariable(name: "__cil_tmp2", scope: !1113, file: !150, line: 232, type: !28)
!1117 = !DILocation(line: 232, column: 9, scope: !1113)
!1118 = !DILocalVariable(name: "__cil_tmp3", scope: !1113, file: !150, line: 233, type: !28)
!1119 = !DILocation(line: 233, column: 9, scope: !1113)
!1120 = !DILocation(line: 232, column: 12, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !150, line: 237, column: 3)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !150, line: 236, column: 3)
!1123 = distinct !DILexicalBlock(scope: !1113, file: !150, line: 235, column: 3)
!1124 = !DILocation(line: 232, column: 10, scope: !1121)
!1125 = !DILocation(line: 233, column: 7, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1123, file: !150, line: 233, column: 7)
!1127 = !DILocation(line: 233, column: 12, scope: !1126)
!1128 = !DILocation(line: 233, column: 7, scope: !1123)
!1129 = !DILocation(line: 235, column: 5, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1131, file: !150, line: 235, column: 5)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !150, line: 234, column: 5)
!1132 = distinct !DILexicalBlock(scope: !1126, file: !150, line: 233, column: 18)
!1133 = !DILocation(line: 236, column: 38, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1131, file: !150, line: 237, column: 5)
!1135 = !DILocation(line: 236, column: 5, scope: !1134)
!1136 = !DILocation(line: 237, column: 5, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1131, file: !150, line: 238, column: 5)
!1138 = !DILocation(line: 233, column: 7, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1126, file: !150, line: 233, column: 7)
!1140 = !DILocation(line: 233, column: 13, scope: !1139)
!1141 = !DILocation(line: 235, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !150, line: 235, column: 5)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !150, line: 234, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !150, line: 233, column: 19)
!1145 = !DILocation(line: 236, column: 38, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1143, file: !150, line: 237, column: 5)
!1147 = !DILocation(line: 236, column: 5, scope: !1146)
!1148 = !DILocation(line: 237, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1143, file: !150, line: 238, column: 5)
!1150 = !DILocation(line: 239, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1123, file: !150, line: 239, column: 7)
!1152 = !DILocation(line: 239, column: 12, scope: !1151)
!1153 = !DILocation(line: 239, column: 7, scope: !1123)
!1154 = !DILocation(line: 241, column: 5, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !150, line: 241, column: 5)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !150, line: 240, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1151, file: !150, line: 239, column: 19)
!1158 = !DILocation(line: 242, column: 38, scope: !1159)
!1159 = distinct !DILexicalBlock(scope: !1156, file: !150, line: 243, column: 5)
!1160 = !DILocation(line: 242, column: 5, scope: !1159)
!1161 = !DILocation(line: 243, column: 5, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1156, file: !150, line: 244, column: 5)
!1163 = !DILocation(line: 245, column: 3, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !150, line: 248, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1123, file: !150, line: 247, column: 3)
!1166 = !DILocation(line: 246, column: 3, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1165, file: !150, line: 247, column: 3)
!1168 = !DILocation(line: 247, column: 3, scope: !1123)
!1169 = distinct !DISubprogram(name: "make_colors", scope: !150, file: !150, line: 280, type: !187, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1170 = !DILocation(line: 283, column: 3, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !150, line: 286, column: 3)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !150, line: 285, column: 3)
!1173 = distinct !DILexicalBlock(scope: !1169, file: !150, line: 284, column: 3)
!1174 = !DILocation(line: 284, column: 9, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1172, file: !150, line: 285, column: 3)
!1176 = !DILocation(line: 284, column: 7, scope: !1175)
!1177 = !DILocalVariable(name: "tmp", scope: !1169, file: !150, line: 282, type: !33)
!1178 = !DILocation(line: 0, scope: !1169)
!1179 = !DILocation(line: 284, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1173, file: !150, line: 284, column: 7)
!1181 = !DILocation(line: 284, column: 7, scope: !1173)
!1182 = !DILocation(line: 286, column: 5, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 286, column: 5)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !150, line: 285, column: 5)
!1185 = distinct !DILexicalBlock(scope: !1180, file: !150, line: 284, column: 12)
!1186 = !DILocation(line: 287, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 288, column: 5)
!1188 = !DILocation(line: 288, column: 5, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 289, column: 5)
!1190 = !DILocation(line: 289, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 290, column: 5)
!1192 = !DILocation(line: 290, column: 5, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 291, column: 5)
!1194 = !DILocation(line: 291, column: 5, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 292, column: 5)
!1196 = !DILocation(line: 292, column: 5, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 293, column: 5)
!1198 = !DILocation(line: 293, column: 5, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 294, column: 5)
!1200 = !DILocation(line: 294, column: 5, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1184, file: !150, line: 295, column: 5)
!1202 = !DILocation(line: 297, column: 3, scope: !1185)
!1203 = !DILocation(line: 298, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 299, column: 5)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !150, line: 298, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1180, file: !150, line: 297, column: 10)
!1207 = !DILocation(line: 299, column: 5, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 300, column: 5)
!1209 = !DILocation(line: 300, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 301, column: 5)
!1211 = !DILocation(line: 301, column: 5, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 302, column: 5)
!1213 = !DILocation(line: 302, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 303, column: 5)
!1215 = !DILocation(line: 303, column: 5, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 304, column: 5)
!1217 = !DILocation(line: 304, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 305, column: 5)
!1219 = !DILocation(line: 305, column: 5, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 306, column: 5)
!1221 = !DILocation(line: 306, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1205, file: !150, line: 307, column: 5)
!1223 = !DILocation(line: 309, column: 3, scope: !1173)
!1224 = distinct !DISubprogram(name: "status", scope: !150, file: !150, line: 250, type: !1225, scopeLine: 251, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{null, !28}
!1227 = !DILocalVariable(name: "status_line", arg: 1, scope: !1224, file: !150, line: 250, type: !28)
!1228 = !DILocation(line: 0, scope: !1224)
!1229 = !DILocalVariable(name: "line", scope: !1224, file: !150, line: 252, type: !1230)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 160, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 20)
!1233 = !DILocation(line: 252, column: 8, scope: !1224)
!1234 = !DILocalVariable(name: "__cil_tmp7", scope: !1224, file: !150, line: 257, type: !88)
!1235 = !DILocation(line: 257, column: 9, scope: !1224)
!1236 = !DILocalVariable(name: "__cil_tmp8", scope: !1224, file: !150, line: 258, type: !28)
!1237 = !DILocation(line: 258, column: 9, scope: !1224)
!1238 = !DILocation(line: 253, column: 3, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1224, file: !150, line: 260, column: 3)
!1240 = !DILocation(line: 253, column: 11, scope: !1239)
!1241 = !DILocalVariable(name: "tmp", scope: !1224, file: !150, line: 253, type: !32)
!1242 = !DILocation(line: 253, column: 3, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !150, line: 255, column: 3)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !150, line: 254, column: 3)
!1245 = !DILocation(line: 0, scope: !1239)
!1246 = !DILocation(line: 253, column: 13, scope: !1243)
!1247 = !DILocation(line: 253, column: 13, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !150, line: 253, column: 9)
!1249 = distinct !DILexicalBlock(scope: !1243, file: !150, line: 253, column: 13)
!1250 = !DILocation(line: 253, column: 9, scope: !1249)
!1251 = !DILocation(line: 253, column: 7, scope: !1252)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !150, line: 253, column: 21)
!1253 = !DILocation(line: 253, column: 5, scope: !1249)
!1254 = !DILocation(line: 253, column: 15, scope: !1249)
!1255 = distinct !{!1255, !1242, !1256}
!1256 = !DILocation(line: 254, column: 3, scope: !1243)
!1257 = !DILocation(line: 256, column: 3, scope: !1243)
!1258 = !DILocation(line: 255, column: 36, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !150, line: 260, column: 3)
!1260 = distinct !DILexicalBlock(scope: !1239, file: !150, line: 259, column: 3)
!1261 = !DILocation(line: 255, column: 3, scope: !1259)
!1262 = !DILocation(line: 256, column: 3, scope: !1260)
!1263 = !DILocation(line: 256, column: 11, scope: !1260)
!1264 = !DILocation(line: 256, column: 18, scope: !1260)
!1265 = !DILocation(line: 257, column: 19, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1260, file: !150, line: 257, column: 3)
!1267 = !DILocation(line: 257, column: 27, scope: !1266)
!1268 = !DILocation(line: 257, column: 33, scope: !1266)
!1269 = !DILocation(line: 257, column: 39, scope: !1266)
!1270 = !DILocation(line: 257, column: 44, scope: !1266)
!1271 = !DILocation(line: 257, column: 50, scope: !1266)
!1272 = !DILocation(line: 257, column: 13, scope: !1266)
!1273 = !DILocalVariable(name: "tmp___0", scope: !1224, file: !150, line: 254, type: !14)
!1274 = !DILocation(line: 257, column: 18, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1239, file: !150, line: 257, column: 7)
!1276 = !DILocation(line: 257, column: 7, scope: !1239)
!1277 = !DILocation(line: 257, column: 14, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !150, line: 259, column: 5)
!1279 = distinct !DILexicalBlock(scope: !1280, file: !150, line: 258, column: 5)
!1280 = distinct !DILexicalBlock(scope: !1275, file: !150, line: 257, column: 26)
!1281 = !DILocation(line: 257, column: 5, scope: !1278)
!1282 = !DILocation(line: 260, column: 3, scope: !1280)
!1283 = !DILocation(line: 258, column: 3, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1239, file: !150, line: 261, column: 3)
!1285 = !DILocation(line: 258, column: 11, scope: !1284)
!1286 = !DILocation(line: 258, column: 18, scope: !1284)
!1287 = !DILocation(line: 259, column: 36, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1284, file: !150, line: 259, column: 3)
!1289 = !DILocation(line: 259, column: 13, scope: !1288)
!1290 = !DILocalVariable(name: "tmp___1", scope: !1224, file: !150, line: 255, type: !30)
!1291 = !DILocation(line: 259, column: 19, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1284, file: !150, line: 261, column: 3)
!1293 = !DILocation(line: 259, column: 27, scope: !1292)
!1294 = !DILocation(line: 259, column: 33, scope: !1292)
!1295 = !DILocation(line: 259, column: 55, scope: !1292)
!1296 = !DILocation(line: 259, column: 60, scope: !1292)
!1297 = !DILocation(line: 259, column: 71, scope: !1292)
!1298 = !DILocation(line: 259, column: 13, scope: !1292)
!1299 = !DILocalVariable(name: "tmp___2", scope: !1224, file: !150, line: 256, type: !14)
!1300 = !DILocation(line: 259, column: 18, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1239, file: !150, line: 259, column: 7)
!1302 = !DILocation(line: 259, column: 7, scope: !1239)
!1303 = !DILocation(line: 259, column: 14, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !150, line: 261, column: 5)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !150, line: 260, column: 5)
!1306 = distinct !DILexicalBlock(scope: !1301, file: !150, line: 259, column: 26)
!1307 = !DILocation(line: 259, column: 38, scope: !1304)
!1308 = !DILocation(line: 259, column: 5, scope: !1304)
!1309 = !DILocation(line: 262, column: 3, scope: !1306)
!1310 = !DILocation(line: 260, column: 3, scope: !1239)
!1311 = !DILocation(line: 260, column: 11, scope: !1239)
!1312 = !DILocation(line: 260, column: 18, scope: !1239)
!1313 = !DILocation(line: 261, column: 3, scope: !1239)
!1314 = distinct !DISubprogram(name: "message", scope: !150, file: !150, line: 264, type: !1225, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1315 = !DILocalVariable(name: "message_line", arg: 1, scope: !1314, file: !150, line: 264, type: !28)
!1316 = !DILocation(line: 0, scope: !1314)
!1317 = !DILocalVariable(name: "line", scope: !1314, file: !150, line: 266, type: !1318)
!1318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 200, elements: !104)
!1319 = !DILocation(line: 266, column: 8, scope: !1314)
!1320 = !DILocalVariable(name: "__cil_tmp4", scope: !1314, file: !150, line: 268, type: !88)
!1321 = !DILocation(line: 268, column: 9, scope: !1314)
!1322 = !DILocation(line: 269, column: 36, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !150, line: 272, column: 3)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !150, line: 271, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1314, file: !150, line: 270, column: 3)
!1326 = !DILocation(line: 269, column: 3, scope: !1323)
!1327 = !DILocation(line: 270, column: 3, scope: !1324)
!1328 = !DILocation(line: 270, column: 11, scope: !1324)
!1329 = !DILocation(line: 270, column: 18, scope: !1324)
!1330 = !DILocation(line: 271, column: 9, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1324, file: !150, line: 271, column: 3)
!1332 = !DILocation(line: 271, column: 17, scope: !1331)
!1333 = !DILocation(line: 271, column: 23, scope: !1331)
!1334 = !DILocation(line: 271, column: 28, scope: !1331)
!1335 = !DILocation(line: 271, column: 33, scope: !1331)
!1336 = !DILocation(line: 271, column: 3, scope: !1331)
!1337 = !DILocation(line: 272, column: 13, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1324, file: !150, line: 273, column: 3)
!1339 = !DILocation(line: 272, column: 3, scope: !1338)
!1340 = !DILocation(line: 273, column: 3, scope: !1324)
!1341 = !DILocation(line: 273, column: 11, scope: !1324)
!1342 = !DILocation(line: 273, column: 18, scope: !1324)
!1343 = !DILocation(line: 274, column: 15, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1324, file: !150, line: 274, column: 3)
!1345 = !DILocation(line: 274, column: 23, scope: !1344)
!1346 = !DILocation(line: 274, column: 29, scope: !1344)
!1347 = !DILocation(line: 274, column: 34, scope: !1344)
!1348 = !DILocation(line: 274, column: 39, scope: !1344)
!1349 = !DILocation(line: 274, column: 9, scope: !1344)
!1350 = !DILocalVariable(name: "tmp", scope: !1314, file: !150, line: 267, type: !14)
!1351 = !DILocation(line: 274, column: 14, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1325, file: !150, line: 274, column: 7)
!1353 = !DILocation(line: 274, column: 7, scope: !1325)
!1354 = !DILocation(line: 274, column: 14, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !150, line: 276, column: 5)
!1356 = distinct !DILexicalBlock(scope: !1357, file: !150, line: 275, column: 5)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !150, line: 274, column: 22)
!1358 = !DILocation(line: 274, column: 38, scope: !1355)
!1359 = !DILocation(line: 274, column: 5, scope: !1355)
!1360 = !DILocation(line: 277, column: 3, scope: !1357)
!1361 = !DILocation(line: 275, column: 3, scope: !1325)
!1362 = !DILocation(line: 275, column: 11, scope: !1325)
!1363 = !DILocation(line: 275, column: 18, scope: !1325)
!1364 = !DILocation(line: 276, column: 3, scope: !1325)
!1365 = distinct !DISubprogram(name: "help", scope: !150, file: !150, line: 312, type: !187, scopeLine: 313, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1366 = !DILocalVariable(name: "__cil_tmp16", scope: !1365, file: !150, line: 329, type: !28)
!1367 = !DILocation(line: 329, column: 9, scope: !1365)
!1368 = !DILocalVariable(name: "__cil_tmp17", scope: !1365, file: !150, line: 330, type: !28)
!1369 = !DILocation(line: 330, column: 9, scope: !1365)
!1370 = !DILocalVariable(name: "__cil_tmp18", scope: !1365, file: !150, line: 331, type: !28)
!1371 = !DILocation(line: 331, column: 9, scope: !1365)
!1372 = !DILocalVariable(name: "__cil_tmp19", scope: !1365, file: !150, line: 332, type: !28)
!1373 = !DILocation(line: 332, column: 9, scope: !1365)
!1374 = !DILocalVariable(name: "__cil_tmp20", scope: !1365, file: !150, line: 333, type: !28)
!1375 = !DILocation(line: 333, column: 9, scope: !1365)
!1376 = !DILocalVariable(name: "__cil_tmp21", scope: !1365, file: !150, line: 334, type: !28)
!1377 = !DILocation(line: 334, column: 9, scope: !1365)
!1378 = !DILocalVariable(name: "__cil_tmp22", scope: !1365, file: !150, line: 335, type: !28)
!1379 = !DILocation(line: 335, column: 9, scope: !1365)
!1380 = !DILocalVariable(name: "__cil_tmp23", scope: !1365, file: !150, line: 336, type: !28)
!1381 = !DILocation(line: 336, column: 9, scope: !1365)
!1382 = !DILocalVariable(name: "__cil_tmp24", scope: !1365, file: !150, line: 337, type: !28)
!1383 = !DILocation(line: 337, column: 9, scope: !1365)
!1384 = !DILocalVariable(name: "__cil_tmp25", scope: !1365, file: !150, line: 338, type: !28)
!1385 = !DILocation(line: 338, column: 9, scope: !1365)
!1386 = !DILocalVariable(name: "__cil_tmp26", scope: !1365, file: !150, line: 339, type: !28)
!1387 = !DILocation(line: 339, column: 9, scope: !1365)
!1388 = !DILocation(line: 317, column: 7, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 317, column: 7)
!1390 = distinct !DILexicalBlock(scope: !1365, file: !150, line: 341, column: 3)
!1391 = !DILocation(line: 317, column: 7, scope: !1390)
!1392 = !DILocation(line: 317, column: 17, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !150, line: 317, column: 15)
!1394 = !DILocation(line: 317, column: 25, scope: !1393)
!1395 = !DILocation(line: 317, column: 11, scope: !1393)
!1396 = !DILocation(line: 317, column: 31, scope: !1393)
!1397 = !DILocalVariable(name: "tmp", scope: !1365, file: !150, line: 316, type: !14)
!1398 = !DILocation(line: 0, scope: !1365)
!1399 = !DILocation(line: 318, column: 3, scope: !1393)
!1400 = !DILocation(line: 0, scope: !1389)
!1401 = !DILocation(line: 317, column: 12, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !150, line: 320, column: 3)
!1403 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 319, column: 3)
!1404 = !DILocation(line: 317, column: 3, scope: !1402)
!1405 = !DILocation(line: 318, column: 30, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1403, file: !150, line: 319, column: 3)
!1407 = !DILocation(line: 318, column: 36, scope: !1406)
!1408 = !DILocation(line: 318, column: 42, scope: !1406)
!1409 = !DILocation(line: 318, column: 48, scope: !1406)
!1410 = !DILocation(line: 318, column: 53, scope: !1406)
!1411 = !DILocation(line: 318, column: 59, scope: !1406)
!1412 = !DILocation(line: 318, column: 14, scope: !1406)
!1413 = !DILocalVariable(name: "help_win", scope: !1365, file: !150, line: 314, type: !1414)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_typedef, name: "WINDOW", file: !37, line: 322, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_win_st", file: !37, line: 371, size: 768, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1440, !1441, !1442, !1443, !1444, !1445, !1454}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_cury", scope: !1416, file: !37, line: 372, baseType: !98, size: 16)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_curx", scope: !1416, file: !37, line: 373, baseType: !98, size: 16, offset: 16)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_maxy", scope: !1416, file: !37, line: 374, baseType: !98, size: 16, offset: 32)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "_maxx", scope: !1416, file: !37, line: 375, baseType: !98, size: 16, offset: 48)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "_begy", scope: !1416, file: !37, line: 376, baseType: !98, size: 16, offset: 64)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "_begx", scope: !1416, file: !37, line: 377, baseType: !98, size: 16, offset: 80)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1416, file: !37, line: 378, baseType: !98, size: 16, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "_attrs", scope: !1416, file: !37, line: 379, baseType: !36, size: 64, offset: 128)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_bkgd", scope: !1416, file: !37, line: 380, baseType: !38, size: 64, offset: 192)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "_notimeout", scope: !1416, file: !37, line: 381, baseType: !33, size: 8, offset: 256)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "_clear", scope: !1416, file: !37, line: 382, baseType: !33, size: 8, offset: 264)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "_leaveok", scope: !1416, file: !37, line: 383, baseType: !33, size: 8, offset: 272)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "_scroll", scope: !1416, file: !37, line: 384, baseType: !33, size: 8, offset: 280)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "_idlok", scope: !1416, file: !37, line: 385, baseType: !33, size: 8, offset: 288)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "_idcok", scope: !1416, file: !37, line: 386, baseType: !33, size: 8, offset: 296)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "_immed", scope: !1416, file: !37, line: 387, baseType: !33, size: 8, offset: 304)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !1416, file: !37, line: 388, baseType: !33, size: 8, offset: 312)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "_use_keypad", scope: !1416, file: !37, line: 389, baseType: !33, size: 8, offset: 320)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "_delay", scope: !1416, file: !37, line: 390, baseType: !14, size: 32, offset: 352)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "_line", scope: !1416, file: !37, line: 391, baseType: !1438, size: 64, offset: 384)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldat", file: !37, line: 369, flags: DIFlagFwdDecl)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "_regtop", scope: !1416, file: !37, line: 392, baseType: !98, size: 16, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "_regbottom", scope: !1416, file: !37, line: 393, baseType: !98, size: 16, offset: 464)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_parx", scope: !1416, file: !37, line: 394, baseType: !14, size: 32, offset: 480)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "_pary", scope: !1416, file: !37, line: 395, baseType: !14, size: 32, offset: 512)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "_parent", scope: !1416, file: !37, line: 396, baseType: !1414, size: 64, offset: 576)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "_pad", scope: !1416, file: !37, line: 397, baseType: !1446, size: 96, offset: 640)
!1446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdat", file: !37, line: 371, size: 96, elements: !1447)
!1447 = !{!1448, !1449, !1450, !1451, !1452, !1453}
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_y", scope: !1446, file: !37, line: 372, baseType: !98, size: 16)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_x", scope: !1446, file: !37, line: 373, baseType: !98, size: 16, offset: 16)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_top", scope: !1446, file: !37, line: 374, baseType: !98, size: 16, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_left", scope: !1446, file: !37, line: 375, baseType: !98, size: 16, offset: 48)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_bottom", scope: !1446, file: !37, line: 376, baseType: !98, size: 16, offset: 64)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "_pad_right", scope: !1446, file: !37, line: 377, baseType: !98, size: 16, offset: 80)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "_yoffset", scope: !1416, file: !37, line: 398, baseType: !98, size: 16, offset: 736)
!1455 = !DILocation(line: 319, column: 13, scope: !1403)
!1456 = !DILocation(line: 319, column: 20, scope: !1403)
!1457 = !DILocation(line: 320, column: 3, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1403, file: !150, line: 320, column: 3)
!1459 = !DILocation(line: 321, column: 3, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1403, file: !150, line: 322, column: 3)
!1461 = !DILocation(line: 322, column: 13, scope: !1403)
!1462 = !DILocation(line: 322, column: 20, scope: !1403)
!1463 = !DILocation(line: 323, column: 13, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1403, file: !150, line: 323, column: 3)
!1465 = !DILocalVariable(name: "tmp___0", scope: !1365, file: !150, line: 317, type: !14)
!1466 = !DILocation(line: 323, column: 18, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 323, column: 7)
!1468 = !DILocation(line: 323, column: 7, scope: !1390)
!1469 = !DILocation(line: 323, column: 5, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !150, line: 325, column: 5)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !150, line: 324, column: 5)
!1472 = distinct !DILexicalBlock(scope: !1467, file: !150, line: 323, column: 26)
!1473 = !DILocation(line: 326, column: 3, scope: !1472)
!1474 = !DILocation(line: 324, column: 13, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !150, line: 328, column: 3)
!1476 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 327, column: 3)
!1477 = !DILocalVariable(name: "tmp___1", scope: !1365, file: !150, line: 318, type: !14)
!1478 = !DILocation(line: 324, column: 18, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 324, column: 7)
!1480 = !DILocation(line: 324, column: 7, scope: !1390)
!1481 = !DILocation(line: 324, column: 5, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !150, line: 326, column: 5)
!1483 = distinct !DILexicalBlock(scope: !1484, file: !150, line: 325, column: 5)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !150, line: 324, column: 26)
!1485 = !DILocation(line: 327, column: 3, scope: !1484)
!1486 = !DILocation(line: 325, column: 13, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1488, file: !150, line: 329, column: 3)
!1488 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 328, column: 3)
!1489 = !DILocalVariable(name: "tmp___2", scope: !1365, file: !150, line: 319, type: !14)
!1490 = !DILocation(line: 325, column: 18, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 325, column: 7)
!1492 = !DILocation(line: 325, column: 7, scope: !1390)
!1493 = !DILocation(line: 325, column: 5, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !150, line: 327, column: 5)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !150, line: 326, column: 5)
!1496 = distinct !DILexicalBlock(scope: !1491, file: !150, line: 325, column: 26)
!1497 = !DILocation(line: 328, column: 3, scope: !1496)
!1498 = !DILocation(line: 326, column: 13, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1500, file: !150, line: 330, column: 3)
!1500 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 329, column: 3)
!1501 = !DILocalVariable(name: "tmp___3", scope: !1365, file: !150, line: 320, type: !14)
!1502 = !DILocation(line: 326, column: 18, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 326, column: 7)
!1504 = !DILocation(line: 326, column: 7, scope: !1390)
!1505 = !DILocation(line: 326, column: 5, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !150, line: 328, column: 5)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !150, line: 327, column: 5)
!1508 = distinct !DILexicalBlock(scope: !1503, file: !150, line: 326, column: 26)
!1509 = !DILocation(line: 329, column: 3, scope: !1508)
!1510 = !DILocation(line: 327, column: 13, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !150, line: 331, column: 3)
!1512 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 330, column: 3)
!1513 = !DILocalVariable(name: "tmp___4", scope: !1365, file: !150, line: 321, type: !14)
!1514 = !DILocation(line: 327, column: 18, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 327, column: 7)
!1516 = !DILocation(line: 327, column: 7, scope: !1390)
!1517 = !DILocation(line: 327, column: 5, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1519, file: !150, line: 329, column: 5)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !150, line: 328, column: 5)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !150, line: 327, column: 26)
!1521 = !DILocation(line: 330, column: 3, scope: !1520)
!1522 = !DILocation(line: 328, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1524, file: !150, line: 332, column: 3)
!1524 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 331, column: 3)
!1525 = !DILocalVariable(name: "tmp___5", scope: !1365, file: !150, line: 322, type: !14)
!1526 = !DILocation(line: 328, column: 18, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 328, column: 7)
!1528 = !DILocation(line: 328, column: 7, scope: !1390)
!1529 = !DILocation(line: 328, column: 5, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !150, line: 330, column: 5)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !150, line: 329, column: 5)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !150, line: 328, column: 26)
!1533 = !DILocation(line: 331, column: 3, scope: !1532)
!1534 = !DILocation(line: 330, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 330, column: 7)
!1536 = !DILocation(line: 330, column: 13, scope: !1535)
!1537 = !DILocation(line: 330, column: 7, scope: !1390)
!1538 = !DILocation(line: 331, column: 15, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !150, line: 332, column: 5)
!1540 = distinct !DILexicalBlock(scope: !1541, file: !150, line: 331, column: 5)
!1541 = distinct !DILexicalBlock(scope: !1535, file: !150, line: 330, column: 20)
!1542 = !DILocalVariable(name: "tmp___6", scope: !1365, file: !150, line: 323, type: !14)
!1543 = !DILocation(line: 331, column: 20, scope: !1544)
!1544 = distinct !DILexicalBlock(scope: !1541, file: !150, line: 331, column: 9)
!1545 = !DILocation(line: 331, column: 9, scope: !1541)
!1546 = !DILocation(line: 331, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !150, line: 333, column: 7)
!1548 = distinct !DILexicalBlock(scope: !1549, file: !150, line: 332, column: 7)
!1549 = distinct !DILexicalBlock(scope: !1544, file: !150, line: 331, column: 28)
!1550 = !DILocation(line: 334, column: 5, scope: !1549)
!1551 = !DILocation(line: 335, column: 3, scope: !1541)
!1552 = !DILocation(line: 334, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 334, column: 7)
!1554 = !DILocation(line: 334, column: 11, scope: !1553)
!1555 = !DILocation(line: 334, column: 7, scope: !1390)
!1556 = !DILocation(line: 335, column: 15, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1558, file: !150, line: 336, column: 5)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !150, line: 335, column: 5)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !150, line: 334, column: 18)
!1560 = !DILocalVariable(name: "tmp___7", scope: !1365, file: !150, line: 324, type: !14)
!1561 = !DILocation(line: 335, column: 20, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !150, line: 335, column: 9)
!1563 = !DILocation(line: 335, column: 9, scope: !1559)
!1564 = !DILocation(line: 335, column: 7, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !150, line: 337, column: 7)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !150, line: 336, column: 7)
!1567 = distinct !DILexicalBlock(scope: !1562, file: !150, line: 335, column: 28)
!1568 = !DILocation(line: 338, column: 5, scope: !1567)
!1569 = !DILocation(line: 339, column: 3, scope: !1559)
!1570 = !DILocation(line: 337, column: 13, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !150, line: 341, column: 3)
!1572 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 340, column: 3)
!1573 = !DILocalVariable(name: "tmp___8", scope: !1365, file: !150, line: 325, type: !14)
!1574 = !DILocation(line: 337, column: 18, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 337, column: 7)
!1576 = !DILocation(line: 337, column: 7, scope: !1390)
!1577 = !DILocation(line: 337, column: 5, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1579, file: !150, line: 339, column: 5)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !150, line: 338, column: 5)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !150, line: 337, column: 26)
!1581 = !DILocation(line: 340, column: 3, scope: !1580)
!1582 = !DILocation(line: 338, column: 13, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !150, line: 342, column: 3)
!1584 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 341, column: 3)
!1585 = !DILocalVariable(name: "tmp___9", scope: !1365, file: !150, line: 326, type: !14)
!1586 = !DILocation(line: 338, column: 18, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 338, column: 7)
!1588 = !DILocation(line: 338, column: 7, scope: !1390)
!1589 = !DILocation(line: 338, column: 5, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !150, line: 340, column: 5)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !150, line: 339, column: 5)
!1592 = distinct !DILexicalBlock(scope: !1587, file: !150, line: 338, column: 26)
!1593 = !DILocation(line: 341, column: 3, scope: !1592)
!1594 = !DILocation(line: 339, column: 14, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !150, line: 343, column: 3)
!1596 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 342, column: 3)
!1597 = !DILocalVariable(name: "tmp___10", scope: !1365, file: !150, line: 327, type: !14)
!1598 = !DILocation(line: 339, column: 19, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 339, column: 7)
!1600 = !DILocation(line: 339, column: 7, scope: !1390)
!1601 = !DILocation(line: 339, column: 5, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !150, line: 341, column: 5)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !150, line: 340, column: 5)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !150, line: 339, column: 27)
!1605 = !DILocation(line: 342, column: 3, scope: !1604)
!1606 = !DILocation(line: 340, column: 14, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !150, line: 344, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1390, file: !150, line: 343, column: 3)
!1609 = !DILocalVariable(name: "tmp___11", scope: !1365, file: !150, line: 328, type: !14)
!1610 = !DILocation(line: 340, column: 8, scope: !1608)
!1611 = !DILocalVariable(name: "ch", scope: !1365, file: !150, line: 315, type: !29)
!1612 = !DILocation(line: 341, column: 3, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !150, line: 341, column: 3)
!1614 = !DILocation(line: 342, column: 3, scope: !1390)
!1615 = distinct !DISubprogram(name: "comm_help", scope: !150, file: !150, line: 345, type: !187, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1616 = !DILocalVariable(name: "__cil_tmp1", scope: !1615, file: !150, line: 347, type: !28)
!1617 = !DILocation(line: 347, column: 9, scope: !1615)
!1618 = !DILocalVariable(name: "__cil_tmp2", scope: !1615, file: !150, line: 348, type: !28)
!1619 = !DILocation(line: 348, column: 9, scope: !1615)
!1620 = !DILocalVariable(name: "__cil_tmp3", scope: !1615, file: !150, line: 349, type: !28)
!1621 = !DILocation(line: 349, column: 9, scope: !1615)
!1622 = !DILocalVariable(name: "__cil_tmp4", scope: !1615, file: !150, line: 350, type: !28)
!1623 = !DILocation(line: 350, column: 9, scope: !1615)
!1624 = !DILocalVariable(name: "__cil_tmp5", scope: !1615, file: !150, line: 351, type: !28)
!1625 = !DILocation(line: 351, column: 9, scope: !1615)
!1626 = !DILocalVariable(name: "__cil_tmp6", scope: !1615, file: !150, line: 352, type: !28)
!1627 = !DILocation(line: 352, column: 9, scope: !1615)
!1628 = !DILocalVariable(name: "__cil_tmp7", scope: !1615, file: !150, line: 353, type: !28)
!1629 = !DILocation(line: 353, column: 9, scope: !1615)
!1630 = !DILocalVariable(name: "__cil_tmp8", scope: !1615, file: !150, line: 354, type: !28)
!1631 = !DILocation(line: 354, column: 9, scope: !1615)
!1632 = !DILocalVariable(name: "__cil_tmp9", scope: !1615, file: !150, line: 355, type: !28)
!1633 = !DILocation(line: 355, column: 9, scope: !1615)
!1634 = !DILocalVariable(name: "__cil_tmp10", scope: !1615, file: !150, line: 356, type: !28)
!1635 = !DILocation(line: 356, column: 9, scope: !1615)
!1636 = !DILocalVariable(name: "__cil_tmp11", scope: !1615, file: !150, line: 357, type: !28)
!1637 = !DILocation(line: 357, column: 9, scope: !1615)
!1638 = !DILocalVariable(name: "__cil_tmp12", scope: !1615, file: !150, line: 358, type: !28)
!1639 = !DILocation(line: 358, column: 9, scope: !1615)
!1640 = !DILocalVariable(name: "__cil_tmp13", scope: !1615, file: !150, line: 359, type: !28)
!1641 = !DILocation(line: 359, column: 9, scope: !1615)
!1642 = !DILocalVariable(name: "__cil_tmp14", scope: !1615, file: !150, line: 360, type: !28)
!1643 = !DILocation(line: 360, column: 9, scope: !1615)
!1644 = !DILocalVariable(name: "__cil_tmp15", scope: !1615, file: !150, line: 361, type: !28)
!1645 = !DILocation(line: 361, column: 9, scope: !1615)
!1646 = !DILocalVariable(name: "__cil_tmp16", scope: !1615, file: !150, line: 362, type: !28)
!1647 = !DILocation(line: 362, column: 9, scope: !1615)
!1648 = !DILocalVariable(name: "__cil_tmp17", scope: !1615, file: !150, line: 363, type: !28)
!1649 = !DILocation(line: 363, column: 9, scope: !1615)
!1650 = !DILocalVariable(name: "__cil_tmp18", scope: !1615, file: !150, line: 364, type: !28)
!1651 = !DILocation(line: 364, column: 9, scope: !1615)
!1652 = !DILocalVariable(name: "__cil_tmp19", scope: !1615, file: !150, line: 365, type: !28)
!1653 = !DILocation(line: 365, column: 9, scope: !1615)
!1654 = !DILocalVariable(name: "__cil_tmp20", scope: !1615, file: !150, line: 366, type: !28)
!1655 = !DILocation(line: 366, column: 9, scope: !1615)
!1656 = !DILocalVariable(name: "__cil_tmp21", scope: !1615, file: !150, line: 367, type: !28)
!1657 = !DILocation(line: 367, column: 9, scope: !1615)
!1658 = !DILocalVariable(name: "__cil_tmp22", scope: !1615, file: !150, line: 368, type: !28)
!1659 = !DILocation(line: 368, column: 9, scope: !1615)
!1660 = !DILocalVariable(name: "__cil_tmp23", scope: !1615, file: !150, line: 369, type: !28)
!1661 = !DILocation(line: 369, column: 9, scope: !1615)
!1662 = !DILocalVariable(name: "__cil_tmp24", scope: !1615, file: !150, line: 370, type: !28)
!1663 = !DILocation(line: 370, column: 9, scope: !1615)
!1664 = !DILocalVariable(name: "__cil_tmp25", scope: !1615, file: !150, line: 371, type: !28)
!1665 = !DILocation(line: 371, column: 9, scope: !1615)
!1666 = !DILocation(line: 348, column: 36, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 375, column: 3)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !150, line: 374, column: 3)
!1669 = distinct !DILexicalBlock(scope: !1615, file: !150, line: 373, column: 3)
!1670 = !DILocation(line: 348, column: 3, scope: !1667)
!1671 = !DILocation(line: 349, column: 36, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 350, column: 3)
!1673 = !DILocation(line: 349, column: 3, scope: !1672)
!1674 = !DILocation(line: 350, column: 36, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 351, column: 3)
!1676 = !DILocation(line: 350, column: 3, scope: !1675)
!1677 = !DILocation(line: 351, column: 36, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 352, column: 3)
!1679 = !DILocation(line: 351, column: 3, scope: !1678)
!1680 = !DILocation(line: 352, column: 36, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 353, column: 3)
!1682 = !DILocation(line: 352, column: 3, scope: !1681)
!1683 = !DILocation(line: 353, column: 36, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 354, column: 3)
!1685 = !DILocation(line: 353, column: 3, scope: !1684)
!1686 = !DILocation(line: 354, column: 36, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 355, column: 3)
!1688 = !DILocation(line: 354, column: 3, scope: !1687)
!1689 = !DILocation(line: 355, column: 36, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 356, column: 3)
!1691 = !DILocation(line: 355, column: 3, scope: !1690)
!1692 = !DILocation(line: 356, column: 36, scope: !1693)
!1693 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 357, column: 3)
!1694 = !DILocation(line: 356, column: 3, scope: !1693)
!1695 = !DILocation(line: 357, column: 36, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 358, column: 3)
!1697 = !DILocation(line: 357, column: 3, scope: !1696)
!1698 = !DILocation(line: 358, column: 36, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 359, column: 3)
!1700 = !DILocation(line: 358, column: 3, scope: !1699)
!1701 = !DILocation(line: 359, column: 36, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 360, column: 3)
!1703 = !DILocation(line: 359, column: 3, scope: !1702)
!1704 = !DILocation(line: 360, column: 36, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 361, column: 3)
!1706 = !DILocation(line: 360, column: 3, scope: !1705)
!1707 = !DILocation(line: 361, column: 36, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 362, column: 3)
!1709 = !DILocation(line: 361, column: 3, scope: !1708)
!1710 = !DILocation(line: 362, column: 36, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 363, column: 3)
!1712 = !DILocation(line: 362, column: 3, scope: !1711)
!1713 = !DILocation(line: 363, column: 36, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 364, column: 3)
!1715 = !DILocation(line: 363, column: 3, scope: !1714)
!1716 = !DILocation(line: 364, column: 36, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 365, column: 3)
!1718 = !DILocation(line: 364, column: 3, scope: !1717)
!1719 = !DILocation(line: 365, column: 36, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 366, column: 3)
!1721 = !DILocation(line: 365, column: 3, scope: !1720)
!1722 = !DILocation(line: 366, column: 36, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 367, column: 3)
!1724 = !DILocation(line: 366, column: 3, scope: !1723)
!1725 = !DILocation(line: 368, column: 36, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 368, column: 3)
!1727 = !DILocation(line: 368, column: 3, scope: !1726)
!1728 = !DILocation(line: 369, column: 36, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 370, column: 3)
!1730 = !DILocation(line: 369, column: 3, scope: !1729)
!1731 = !DILocation(line: 370, column: 36, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 371, column: 3)
!1733 = !DILocation(line: 370, column: 3, scope: !1732)
!1734 = !DILocation(line: 371, column: 36, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 372, column: 3)
!1736 = !DILocation(line: 371, column: 3, scope: !1735)
!1737 = !DILocation(line: 372, column: 36, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 373, column: 3)
!1739 = !DILocation(line: 372, column: 3, scope: !1738)
!1740 = !DILocation(line: 373, column: 36, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1668, file: !150, line: 374, column: 3)
!1742 = !DILocation(line: 373, column: 3, scope: !1741)
!1743 = !DILocation(line: 374, column: 3, scope: !1669)
!1744 = distinct !DISubprogram(name: "main", scope: !117, file: !117, line: 32, type: !1745, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!14, !14, !1747}
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!1748 = !DILocalVariable(name: "argc", arg: 1, scope: !1744, file: !117, line: 32, type: !14)
!1749 = !DILocation(line: 0, scope: !1744)
!1750 = !DILocalVariable(name: "argv", arg: 2, scope: !1744, file: !117, line: 32, type: !1747)
!1751 = !DILocation(line: 35, column: 12, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1753, file: !117, line: 35, column: 7)
!1753 = distinct !DILexicalBlock(scope: !1744, file: !117, line: 36, column: 3)
!1754 = !DILocation(line: 35, column: 7, scope: !1753)
!1755 = !DILocation(line: 37, column: 5, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 37, column: 5)
!1757 = distinct !DILexicalBlock(scope: !1758, file: !117, line: 36, column: 5)
!1758 = distinct !DILexicalBlock(scope: !1752, file: !117, line: 35, column: 18)
!1759 = !DILocation(line: 38, column: 5, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 39, column: 5)
!1761 = !DILocation(line: 39, column: 5, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 40, column: 5)
!1763 = !DILocation(line: 40, column: 5, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 41, column: 5)
!1765 = !DILocation(line: 41, column: 5, scope: !1766)
!1766 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 42, column: 5)
!1767 = !DILocation(line: 42, column: 5, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 43, column: 5)
!1769 = !DILocation(line: 43, column: 5, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 44, column: 5)
!1771 = !DILocation(line: 44, column: 5, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 45, column: 5)
!1773 = !DILocation(line: 45, column: 5, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 46, column: 5)
!1775 = !DILocation(line: 46, column: 5, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1757, file: !117, line: 47, column: 5)
!1777 = !DILocation(line: 49, column: 5, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !117, line: 51, column: 5)
!1779 = distinct !DILexicalBlock(scope: !1780, file: !117, line: 50, column: 5)
!1780 = distinct !DILexicalBlock(scope: !1752, file: !117, line: 49, column: 10)
!1781 = !DILocation(line: 50, column: 3, scope: !1753)
!1782 = distinct !DISubprogram(name: "ctrl_sliders", scope: !102, file: !102, line: 495, type: !187, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1783 = !DILocalVariable(name: "locked", scope: !1782, file: !102, line: 501, type: !14)
!1784 = !DILocation(line: 501, column: 7, scope: !1782)
!1785 = !DILocalVariable(name: "pos", scope: !1782, file: !102, line: 508, type: !14)
!1786 = !DILocation(line: 508, column: 7, scope: !1782)
!1787 = !DILocalVariable(name: "vol_left", scope: !1782, file: !102, line: 510, type: !14)
!1788 = !DILocation(line: 510, column: 7, scope: !1782)
!1789 = !DILocalVariable(name: "vol_right", scope: !1782, file: !102, line: 511, type: !14)
!1790 = !DILocation(line: 511, column: 7, scope: !1782)
!1791 = !DILocalVariable(name: "__cil_tmp36", scope: !1782, file: !102, line: 532, type: !28)
!1792 = !DILocation(line: 532, column: 9, scope: !1782)
!1793 = !DILocalVariable(name: "__cil_tmp37", scope: !1782, file: !102, line: 533, type: !28)
!1794 = !DILocation(line: 533, column: 9, scope: !1782)
!1795 = !DILocalVariable(name: "__cil_tmp38", scope: !1782, file: !102, line: 534, type: !28)
!1796 = !DILocation(line: 534, column: 9, scope: !1782)
!1797 = !DILocalVariable(name: "__cil_tmp39", scope: !1782, file: !102, line: 535, type: !28)
!1798 = !DILocation(line: 535, column: 9, scope: !1782)
!1799 = !DILocalVariable(name: "__cil_tmp40", scope: !1782, file: !102, line: 536, type: !28)
!1800 = !DILocation(line: 536, column: 9, scope: !1782)
!1801 = !DILocalVariable(name: "__cil_tmp41", scope: !1782, file: !102, line: 537, type: !28)
!1802 = !DILocation(line: 537, column: 9, scope: !1782)
!1803 = !DILocalVariable(name: "__cil_tmp42", scope: !1782, file: !102, line: 538, type: !28)
!1804 = !DILocation(line: 538, column: 9, scope: !1782)
!1805 = !DILocalVariable(name: "__cil_tmp43", scope: !1782, file: !102, line: 539, type: !28)
!1806 = !DILocation(line: 539, column: 9, scope: !1782)
!1807 = !DILocalVariable(name: "__cil_tmp44", scope: !1782, file: !102, line: 540, type: !28)
!1808 = !DILocation(line: 540, column: 9, scope: !1782)
!1809 = !DILocalVariable(name: "__cil_tmp45", scope: !1782, file: !102, line: 541, type: !28)
!1810 = !DILocation(line: 541, column: 9, scope: !1782)
!1811 = !DILocalVariable(name: "__cil_tmp46", scope: !1782, file: !102, line: 542, type: !28)
!1812 = !DILocation(line: 542, column: 9, scope: !1782)
!1813 = !DILocalVariable(name: "__cil_tmp47", scope: !1782, file: !102, line: 543, type: !28)
!1814 = !DILocation(line: 543, column: 9, scope: !1782)
!1815 = !DILocalVariable(name: "__cil_tmp48", scope: !1782, file: !102, line: 544, type: !28)
!1816 = !DILocation(line: 544, column: 9, scope: !1782)
!1817 = !DILocalVariable(name: "__cil_tmp49", scope: !1782, file: !102, line: 545, type: !28)
!1818 = !DILocation(line: 545, column: 9, scope: !1782)
!1819 = !DILocalVariable(name: "__cil_tmp50", scope: !1782, file: !102, line: 546, type: !28)
!1820 = !DILocation(line: 546, column: 9, scope: !1782)
!1821 = !DILocalVariable(name: "__cil_tmp51", scope: !1782, file: !102, line: 547, type: !28)
!1822 = !DILocation(line: 547, column: 9, scope: !1782)
!1823 = !DILocalVariable(name: "__cil_tmp52", scope: !1782, file: !102, line: 548, type: !28)
!1824 = !DILocation(line: 548, column: 9, scope: !1782)
!1825 = !DILocalVariable(name: "__cil_tmp53", scope: !1782, file: !102, line: 549, type: !28)
!1826 = !DILocation(line: 549, column: 9, scope: !1782)
!1827 = !DILocalVariable(name: "__cil_tmp54", scope: !1782, file: !102, line: 550, type: !28)
!1828 = !DILocation(line: 550, column: 9, scope: !1782)
!1829 = !DILocalVariable(name: "__cil_tmp55", scope: !1782, file: !102, line: 551, type: !28)
!1830 = !DILocation(line: 551, column: 9, scope: !1782)
!1831 = !DILocalVariable(name: "__cil_tmp56", scope: !1782, file: !102, line: 552, type: !28)
!1832 = !DILocation(line: 552, column: 9, scope: !1782)
!1833 = !DILocalVariable(name: "__cil_tmp57", scope: !1782, file: !102, line: 553, type: !28)
!1834 = !DILocation(line: 553, column: 9, scope: !1782)
!1835 = !DILocalVariable(name: "__cil_tmp58", scope: !1782, file: !102, line: 554, type: !28)
!1836 = !DILocation(line: 554, column: 9, scope: !1782)
!1837 = !DILocalVariable(name: "__cil_tmp59", scope: !1782, file: !102, line: 555, type: !28)
!1838 = !DILocation(line: 555, column: 9, scope: !1782)
!1839 = !DILocalVariable(name: "left", scope: !1782, file: !102, line: 500, type: !14)
!1840 = !DILocation(line: 0, scope: !1782)
!1841 = !DILocation(line: 501, column: 10, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1843, file: !102, line: 558, column: 3)
!1843 = distinct !DILexicalBlock(scope: !1782, file: !102, line: 557, column: 3)
!1844 = !DILocalVariable(name: "dev_nr", scope: !1782, file: !102, line: 503, type: !14)
!1845 = !DILocation(line: 506, column: 12, scope: !1842)
!1846 = !DILocation(line: 506, column: 17, scope: !1842)
!1847 = !DILocation(line: 506, column: 22, scope: !1842)
!1848 = !DILocalVariable(name: "X_rest", scope: !1782, file: !102, line: 506, type: !14)
!1849 = !DILocation(line: 512, column: 15, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1842, file: !102, line: 507, column: 3)
!1851 = !DILocalVariable(name: "SAVE_FILE", scope: !1782, file: !102, line: 504, type: !28)
!1852 = !DILocation(line: 514, column: 3, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1842, file: !102, line: 514, column: 3)
!1854 = !DILocation(line: 515, column: 3, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1842, file: !102, line: 516, column: 3)
!1856 = !DILocation(line: 517, column: 10, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1842, file: !102, line: 517, column: 3)
!1858 = !DILocation(line: 517, column: 3, scope: !1857)
!1859 = !DILocation(line: 518, column: 3, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1842, file: !102, line: 519, column: 3)
!1861 = !DILocation(line: 519, column: 3, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1842, file: !102, line: 520, column: 3)
!1863 = !DILocation(line: 521, column: 14, scope: !1842)
!1864 = !DILocation(line: 521, column: 30, scope: !1842)
!1865 = !DILocalVariable(name: "volume", scope: !1782, file: !102, line: 505, type: !1866)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!1867 = !DILocation(line: 523, column: 16, scope: !1842)
!1868 = !DILocation(line: 523, column: 14, scope: !1842)
!1869 = !DILocalVariable(name: "X", scope: !1782, file: !102, line: 498, type: !14)
!1870 = !DILocation(line: 524, column: 7, scope: !1842)
!1871 = !DILocation(line: 524, column: 23, scope: !1842)
!1872 = !DILocation(line: 524, column: 25, scope: !1842)
!1873 = !DILocalVariable(name: "Y", scope: !1782, file: !102, line: 499, type: !14)
!1874 = !DILocation(line: 526, column: 3, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1842, file: !102, line: 525, column: 3)
!1876 = !DILocation(line: 527, column: 3, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !102, line: 530, column: 3)
!1878 = distinct !DILexicalBlock(scope: !1843, file: !102, line: 529, column: 3)
!1879 = !DILocation(line: 506, column: 10, scope: !1842)
!1880 = !DILocation(line: 521, column: 10, scope: !1842)
!1881 = !DILocation(line: 503, column: 10, scope: !1842)
!1882 = !DILocation(line: 500, column: 8, scope: !1842)
!1883 = !DILocation(line: 524, column: 5, scope: !1842)
!1884 = !DILocation(line: 523, column: 5, scope: !1842)
!1885 = !DILocation(line: 527, column: 13, scope: !1877)
!1886 = !DILocation(line: 530, column: 9, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1888, file: !102, line: 530, column: 9)
!1888 = distinct !DILexicalBlock(scope: !1877, file: !102, line: 527, column: 13)
!1889 = !DILocation(line: 530, column: 16, scope: !1887)
!1890 = !DILocation(line: 530, column: 9, scope: !1888)
!1891 = !DILocalVariable(name: "tmp", scope: !1782, file: !102, line: 513, type: !34)
!1892 = !DILocation(line: 531, column: 5, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1887, file: !102, line: 530, column: 22)
!1894 = !DILocation(line: 0, scope: !1887)
!1895 = !DILocation(line: 530, column: 5, scope: !1896)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !102, line: 533, column: 5)
!1897 = distinct !DILexicalBlock(scope: !1888, file: !102, line: 532, column: 5)
!1898 = !DILocation(line: 531, column: 17, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1897, file: !102, line: 532, column: 5)
!1900 = !DILocation(line: 531, column: 10, scope: !1899)
!1901 = !DILocalVariable(name: "ch", scope: !1782, file: !102, line: 497, type: !14)
!1902 = !DILocation(line: 532, column: 12, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1897, file: !102, line: 533, column: 5)
!1904 = !DILocation(line: 532, column: 5, scope: !1903)
!1905 = !DILocation(line: 533, column: 5, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1897, file: !102, line: 534, column: 5)
!1907 = !DILocation(line: 538, column: 12, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 538, column: 9)
!1909 = distinct !DILexicalBlock(scope: !1888, file: !102, line: 536, column: 5)
!1910 = !DILocation(line: 538, column: 9, scope: !1909)
!1911 = !DILocation(line: 538, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !102, line: 538, column: 19)
!1913 = !DILocation(line: 538, column: 12, scope: !1914)
!1914 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 538, column: 9)
!1915 = !DILocation(line: 538, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1914, file: !102, line: 538, column: 20)
!1917 = !DILocation(line: 538, column: 12, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 538, column: 9)
!1919 = !DILocation(line: 538, column: 7, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1918, file: !102, line: 538, column: 19)
!1921 = !DILocation(line: 540, column: 12, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 540, column: 9)
!1923 = !DILocation(line: 540, column: 9, scope: !1909)
!1924 = !DILocation(line: 540, column: 7, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1922, file: !102, line: 540, column: 20)
!1926 = !DILocation(line: 554, column: 12, scope: !1927)
!1927 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 554, column: 9)
!1928 = !DILocation(line: 554, column: 9, scope: !1909)
!1929 = !DILocation(line: 554, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1927, file: !102, line: 554, column: 20)
!1931 = !DILocation(line: 568, column: 12, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 568, column: 9)
!1933 = !DILocation(line: 568, column: 9, scope: !1909)
!1934 = !DILocation(line: 568, column: 7, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !102, line: 568, column: 20)
!1936 = !DILocation(line: 625, column: 12, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 625, column: 9)
!1938 = !DILocation(line: 625, column: 9, scope: !1909)
!1939 = !DILocation(line: 625, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1937, file: !102, line: 625, column: 20)
!1941 = !DILocation(line: 672, column: 12, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 672, column: 9)
!1943 = !DILocation(line: 672, column: 9, scope: !1909)
!1944 = !DILocation(line: 672, column: 7, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1942, file: !102, line: 672, column: 19)
!1946 = !DILocation(line: 672, column: 12, scope: !1947)
!1947 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 672, column: 9)
!1948 = !DILocation(line: 672, column: 7, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1947, file: !102, line: 672, column: 20)
!1950 = !DILocation(line: 706, column: 12, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 706, column: 9)
!1952 = !DILocation(line: 706, column: 9, scope: !1909)
!1953 = !DILocation(line: 706, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1951, file: !102, line: 706, column: 19)
!1955 = !DILocation(line: 706, column: 12, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 706, column: 9)
!1957 = !DILocation(line: 706, column: 7, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1956, file: !102, line: 706, column: 20)
!1959 = !DILocation(line: 751, column: 12, scope: !1960)
!1960 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 751, column: 9)
!1961 = !DILocation(line: 751, column: 9, scope: !1909)
!1962 = !DILocation(line: 751, column: 7, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1960, file: !102, line: 751, column: 19)
!1964 = !DILocation(line: 751, column: 12, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 751, column: 9)
!1966 = !DILocation(line: 751, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1965, file: !102, line: 751, column: 20)
!1968 = !DILocation(line: 788, column: 12, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 788, column: 9)
!1970 = !DILocation(line: 788, column: 9, scope: !1909)
!1971 = !DILocation(line: 788, column: 7, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !102, line: 788, column: 19)
!1973 = !DILocation(line: 788, column: 12, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 788, column: 9)
!1975 = !DILocation(line: 788, column: 7, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1974, file: !102, line: 788, column: 20)
!1977 = !DILocation(line: 877, column: 12, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 877, column: 9)
!1979 = !DILocation(line: 877, column: 9, scope: !1909)
!1980 = !DILocation(line: 877, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1978, file: !102, line: 877, column: 19)
!1982 = !DILocation(line: 900, column: 12, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 900, column: 9)
!1984 = !DILocation(line: 900, column: 9, scope: !1909)
!1985 = !DILocation(line: 900, column: 7, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1983, file: !102, line: 900, column: 19)
!1987 = !DILocation(line: 900, column: 12, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 900, column: 9)
!1989 = !DILocation(line: 900, column: 7, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1988, file: !102, line: 900, column: 19)
!1991 = !DILocation(line: 922, column: 12, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 922, column: 9)
!1993 = !DILocation(line: 922, column: 9, scope: !1909)
!1994 = !DILocation(line: 922, column: 7, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1992, file: !102, line: 922, column: 19)
!1996 = !DILocation(line: 922, column: 12, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 922, column: 9)
!1998 = !DILocation(line: 922, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !1997, file: !102, line: 922, column: 20)
!2000 = !DILocation(line: 925, column: 12, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 925, column: 9)
!2002 = !DILocation(line: 925, column: 9, scope: !1909)
!2003 = !DILocation(line: 925, column: 7, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !2001, file: !102, line: 925, column: 19)
!2005 = !DILocation(line: 932, column: 12, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 932, column: 9)
!2007 = !DILocation(line: 932, column: 9, scope: !1909)
!2008 = !DILocation(line: 932, column: 7, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2006, file: !102, line: 932, column: 19)
!2010 = !DILocation(line: 534, column: 5, scope: !1909)
!2011 = !DILocation(line: 539, column: 5, scope: !1909)
!2012 = !DILocation(line: 541, column: 9, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 541, column: 9)
!2014 = !DILocation(line: 541, column: 17, scope: !2013)
!2015 = !DILocation(line: 541, column: 9, scope: !1909)
!2016 = !DILocation(line: 543, column: 17, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !2018, file: !102, line: 542, column: 7)
!2018 = distinct !DILexicalBlock(scope: !2013, file: !102, line: 541, column: 22)
!2019 = !DILocation(line: 544, column: 9, scope: !2017)
!2020 = !DILocation(line: 545, column: 7, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2017, file: !102, line: 545, column: 7)
!2022 = !DILocation(line: 547, column: 11, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !102, line: 547, column: 11)
!2024 = !DILocation(line: 547, column: 11, scope: !2018)
!2025 = !DILocation(line: 547, column: 19, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !102, line: 547, column: 13)
!2027 = distinct !DILexicalBlock(scope: !2023, file: !102, line: 547, column: 19)
!2028 = !DILocation(line: 547, column: 35, scope: !2026)
!2029 = !DILocation(line: 547, column: 16, scope: !2026)
!2030 = !DILocation(line: 547, column: 45, scope: !2026)
!2031 = !DILocation(line: 547, column: 43, scope: !2026)
!2032 = !DILocation(line: 547, column: 13, scope: !2027)
!2033 = !DILocation(line: 549, column: 12, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !102, line: 548, column: 11)
!2035 = distinct !DILexicalBlock(scope: !2026, file: !102, line: 547, column: 57)
!2036 = !DILocation(line: 549, column: 28, scope: !2034)
!2037 = !DILocation(line: 549, column: 39, scope: !2034)
!2038 = !DILocation(line: 550, column: 25, scope: !2039)
!2039 = distinct !DILexicalBlock(scope: !2034, file: !102, line: 550, column: 11)
!2040 = !DILocation(line: 550, column: 11, scope: !2039)
!2041 = !DILocation(line: 553, column: 9, scope: !2035)
!2042 = !DILocation(line: 554, column: 7, scope: !2027)
!2043 = !DILocation(line: 555, column: 5, scope: !2018)
!2044 = !DILocation(line: 0, scope: !1843)
!2045 = !DILocation(line: 553, column: 5, scope: !1909)
!2046 = !DILocation(line: 555, column: 9, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 555, column: 9)
!2048 = !DILocation(line: 555, column: 19, scope: !2047)
!2049 = !DILocation(line: 555, column: 24, scope: !2047)
!2050 = !DILocation(line: 555, column: 17, scope: !2047)
!2051 = !DILocation(line: 555, column: 9, scope: !1909)
!2052 = !DILocation(line: 557, column: 17, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !102, line: 556, column: 7)
!2054 = distinct !DILexicalBlock(scope: !2047, file: !102, line: 555, column: 29)
!2055 = !DILocation(line: 558, column: 9, scope: !2053)
!2056 = !DILocation(line: 559, column: 24, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2053, file: !102, line: 559, column: 7)
!2058 = !DILocation(line: 559, column: 7, scope: !2057)
!2059 = !DILocation(line: 561, column: 11, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2054, file: !102, line: 561, column: 11)
!2061 = !DILocation(line: 561, column: 11, scope: !2054)
!2062 = !DILocation(line: 561, column: 19, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !102, line: 561, column: 13)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !102, line: 561, column: 19)
!2065 = !DILocation(line: 561, column: 35, scope: !2063)
!2066 = !DILocation(line: 561, column: 16, scope: !2063)
!2067 = !DILocation(line: 561, column: 45, scope: !2063)
!2068 = !DILocation(line: 561, column: 43, scope: !2063)
!2069 = !DILocation(line: 561, column: 13, scope: !2064)
!2070 = !DILocation(line: 563, column: 12, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2072, file: !102, line: 562, column: 11)
!2072 = distinct !DILexicalBlock(scope: !2063, file: !102, line: 561, column: 57)
!2073 = !DILocation(line: 563, column: 28, scope: !2071)
!2074 = !DILocation(line: 563, column: 39, scope: !2071)
!2075 = !DILocation(line: 564, column: 25, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !102, line: 564, column: 11)
!2077 = !DILocation(line: 564, column: 32, scope: !2076)
!2078 = !DILocation(line: 564, column: 11, scope: !2076)
!2079 = !DILocation(line: 567, column: 9, scope: !2072)
!2080 = !DILocation(line: 568, column: 7, scope: !2064)
!2081 = !DILocation(line: 569, column: 5, scope: !2054)
!2082 = !DILocation(line: 567, column: 5, scope: !1909)
!2083 = !DILocation(line: 570, column: 5, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !102, line: 570, column: 5)
!2085 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 569, column: 5)
!2086 = !DILocation(line: 571, column: 9, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 571, column: 9)
!2088 = !DILocation(line: 571, column: 9, scope: !1909)
!2089 = !DILocation(line: 571, column: 17, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !102, line: 571, column: 11)
!2091 = distinct !DILexicalBlock(scope: !2087, file: !102, line: 571, column: 17)
!2092 = !DILocation(line: 571, column: 33, scope: !2090)
!2093 = !DILocation(line: 571, column: 14, scope: !2090)
!2094 = !DILocation(line: 571, column: 43, scope: !2090)
!2095 = !DILocation(line: 571, column: 41, scope: !2090)
!2096 = !DILocation(line: 571, column: 11, scope: !2091)
!2097 = !DILocation(line: 572, column: 23, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !102, line: 573, column: 9)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !102, line: 572, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2090, file: !102, line: 571, column: 55)
!2101 = !DILocation(line: 572, column: 9, scope: !2098)
!2102 = !DILocation(line: 575, column: 7, scope: !2100)
!2103 = !DILocation(line: 576, column: 5, scope: !2091)
!2104 = !DILocation(line: 574, column: 14, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 574, column: 9)
!2106 = !DILocation(line: 574, column: 9, scope: !1909)
!2107 = !DILocation(line: 574, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !102, line: 574, column: 20)
!2109 = !DILocation(line: 574, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2105, file: !102, line: 574, column: 9)
!2111 = !DILocation(line: 574, column: 16, scope: !2110)
!2112 = !DILocation(line: 574, column: 9, scope: !2105)
!2113 = !DILocation(line: 574, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2110, file: !102, line: 574, column: 22)
!2115 = !DILocation(line: 574, column: 18, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2110, file: !102, line: 574, column: 9)
!2117 = !DILocation(line: 574, column: 34, scope: !2116)
!2118 = !DILocation(line: 574, column: 15, scope: !2116)
!2119 = !DILocation(line: 574, column: 44, scope: !2116)
!2120 = !DILocation(line: 574, column: 42, scope: !2116)
!2121 = !DILocation(line: 574, column: 57, scope: !2116)
!2122 = !DILocation(line: 576, column: 27, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2116, file: !102, line: 574, column: 57)
!2124 = !DILocation(line: 576, column: 25, scope: !2123)
!2125 = !DILocation(line: 576, column: 38, scope: !2123)
!2126 = !DILocation(line: 576, column: 45, scope: !2123)
!2127 = !DILocation(line: 576, column: 43, scope: !2123)
!2128 = !DILocation(line: 578, column: 16, scope: !2123)
!2129 = !DILocation(line: 578, column: 32, scope: !2123)
!2130 = !DILocation(line: 578, column: 34, scope: !2123)
!2131 = !DILocation(line: 579, column: 17, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2123, file: !102, line: 579, column: 11)
!2133 = !DILocation(line: 579, column: 33, scope: !2132)
!2134 = !DILocation(line: 579, column: 14, scope: !2132)
!2135 = !DILocation(line: 579, column: 43, scope: !2132)
!2136 = !DILocation(line: 579, column: 41, scope: !2132)
!2137 = !DILocation(line: 579, column: 11, scope: !2123)
!2138 = !DILocation(line: 579, column: 15, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2140, file: !102, line: 579, column: 13)
!2140 = distinct !DILexicalBlock(scope: !2132, file: !102, line: 579, column: 55)
!2141 = !DILocation(line: 579, column: 13, scope: !2140)
!2142 = !DILocation(line: 580, column: 15, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2139, file: !102, line: 579, column: 23)
!2144 = !DILocation(line: 580, column: 31, scope: !2143)
!2145 = !DILocation(line: 580, column: 33, scope: !2143)
!2146 = !DILocation(line: 581, column: 9, scope: !2143)
!2147 = !DILocation(line: 582, column: 15, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2139, file: !102, line: 581, column: 16)
!2149 = !DILocation(line: 582, column: 31, scope: !2148)
!2150 = !DILocation(line: 582, column: 33, scope: !2148)
!2151 = !DILocation(line: 0, scope: !2139)
!2152 = !DILocation(line: 584, column: 7, scope: !2140)
!2153 = !DILocation(line: 582, column: 13, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2132, file: !102, line: 584, column: 14)
!2155 = !DILocation(line: 582, column: 29, scope: !2154)
!2156 = !DILocation(line: 582, column: 31, scope: !2154)
!2157 = !DILocation(line: 0, scope: !2132)
!2158 = !DILocation(line: 584, column: 11, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2123, file: !102, line: 584, column: 11)
!2160 = !DILocation(line: 584, column: 11, scope: !2123)
!2161 = !DILocation(line: 584, column: 19, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !102, line: 584, column: 13)
!2163 = distinct !DILexicalBlock(scope: !2159, file: !102, line: 584, column: 19)
!2164 = !DILocation(line: 584, column: 35, scope: !2162)
!2165 = !DILocation(line: 584, column: 16, scope: !2162)
!2166 = !DILocation(line: 584, column: 45, scope: !2162)
!2167 = !DILocation(line: 584, column: 43, scope: !2162)
!2168 = !DILocation(line: 584, column: 13, scope: !2163)
!2169 = !DILocation(line: 588, column: 15, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2171, file: !102, line: 585, column: 11)
!2171 = distinct !DILexicalBlock(scope: !2162, file: !102, line: 584, column: 57)
!2172 = !DILocation(line: 588, column: 31, scope: !2170)
!2173 = !DILocation(line: 588, column: 40, scope: !2170)
!2174 = !DILocation(line: 589, column: 11, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2170, file: !102, line: 589, column: 11)
!2176 = !DILocation(line: 590, column: 15, scope: !2170)
!2177 = !DILocation(line: 590, column: 31, scope: !2170)
!2178 = !DILocation(line: 590, column: 41, scope: !2170)
!2179 = !DILocation(line: 591, column: 25, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2170, file: !102, line: 591, column: 11)
!2181 = !DILocation(line: 591, column: 11, scope: !2180)
!2182 = !DILocation(line: 593, column: 23, scope: !2170)
!2183 = !DILocation(line: 593, column: 39, scope: !2170)
!2184 = !DILocation(line: 593, column: 50, scope: !2170)
!2185 = !DILocation(line: 593, column: 66, scope: !2170)
!2186 = !DILocation(line: 593, column: 48, scope: !2170)
!2187 = !DILocation(line: 593, column: 77, scope: !2170)
!2188 = !DILocalVariable(name: "temp_vol", scope: !1782, file: !102, line: 514, type: !14)
!2189 = !DILocation(line: 594, column: 11, scope: !2170)
!2190 = !DILocation(line: 594, column: 27, scope: !2170)
!2191 = !DILocation(line: 594, column: 36, scope: !2170)
!2192 = !DILocation(line: 595, column: 11, scope: !2170)
!2193 = !DILocation(line: 595, column: 27, scope: !2170)
!2194 = !DILocation(line: 595, column: 37, scope: !2170)
!2195 = !DILocation(line: 597, column: 9, scope: !2171)
!2196 = !DILocation(line: 598, column: 7, scope: !2163)
!2197 = !DILocation(line: 598, column: 17, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2123, file: !102, line: 598, column: 11)
!2199 = !DILocation(line: 598, column: 33, scope: !2198)
!2200 = !DILocation(line: 598, column: 14, scope: !2198)
!2201 = !DILocation(line: 598, column: 43, scope: !2198)
!2202 = !DILocation(line: 598, column: 41, scope: !2198)
!2203 = !DILocation(line: 598, column: 11, scope: !2123)
!2204 = !DILocation(line: 598, column: 15, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !102, line: 598, column: 13)
!2206 = distinct !DILexicalBlock(scope: !2198, file: !102, line: 598, column: 55)
!2207 = !DILocation(line: 598, column: 13, scope: !2206)
!2208 = !DILocation(line: 600, column: 15, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2205, file: !102, line: 598, column: 23)
!2210 = !DILocation(line: 600, column: 31, scope: !2209)
!2211 = !DILocation(line: 600, column: 41, scope: !2209)
!2212 = !DILocation(line: 601, column: 22, scope: !2209)
!2213 = !DILocation(line: 601, column: 38, scope: !2209)
!2214 = !DILocation(line: 603, column: 9, scope: !2209)
!2215 = !DILocation(line: 606, column: 15, scope: !2216)
!2216 = distinct !DILexicalBlock(scope: !2205, file: !102, line: 603, column: 16)
!2217 = !DILocation(line: 606, column: 31, scope: !2216)
!2218 = !DILocation(line: 606, column: 40, scope: !2216)
!2219 = !DILocation(line: 607, column: 22, scope: !2216)
!2220 = !DILocation(line: 607, column: 38, scope: !2216)
!2221 = !DILocation(line: 0, scope: !2205)
!2222 = !DILocation(line: 610, column: 7, scope: !2206)
!2223 = !DILocation(line: 606, column: 13, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2198, file: !102, line: 610, column: 14)
!2225 = !DILocation(line: 606, column: 29, scope: !2224)
!2226 = !DILocation(line: 606, column: 38, scope: !2224)
!2227 = !DILocation(line: 607, column: 20, scope: !2224)
!2228 = !DILocation(line: 607, column: 36, scope: !2224)
!2229 = !DILocation(line: 0, scope: !2198)
!2230 = !DILocation(line: 610, column: 5, scope: !2123)
!2231 = !DILocation(line: 612, column: 14, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2116, file: !102, line: 612, column: 9)
!2233 = !DILocation(line: 612, column: 9, scope: !2116)
!2234 = !DILocation(line: 612, column: 17, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !102, line: 612, column: 11)
!2236 = distinct !DILexicalBlock(scope: !2232, file: !102, line: 612, column: 20)
!2237 = !DILocation(line: 612, column: 33, scope: !2235)
!2238 = !DILocation(line: 612, column: 14, scope: !2235)
!2239 = !DILocation(line: 612, column: 43, scope: !2235)
!2240 = !DILocation(line: 612, column: 41, scope: !2235)
!2241 = !DILocation(line: 612, column: 11, scope: !2236)
!2242 = !DILocation(line: 614, column: 11, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2235, file: !102, line: 612, column: 55)
!2244 = !DILocation(line: 615, column: 20, scope: !2243)
!2245 = !DILocation(line: 615, column: 36, scope: !2243)
!2246 = !DILocation(line: 616, column: 22, scope: !2243)
!2247 = !DILocation(line: 616, column: 20, scope: !2243)
!2248 = !DILocation(line: 618, column: 7, scope: !2243)
!2249 = !DILocation(line: 619, column: 5, scope: !2236)
!2250 = !DILocation(line: 0, scope: !2116)
!2251 = !DILocation(line: 620, column: 5, scope: !2252)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !102, line: 621, column: 5)
!2253 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 620, column: 5)
!2254 = !DILocation(line: 621, column: 9, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 621, column: 9)
!2256 = !DILocation(line: 621, column: 9, scope: !1909)
!2257 = !DILocation(line: 621, column: 17, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !102, line: 621, column: 11)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !102, line: 621, column: 17)
!2260 = !DILocation(line: 621, column: 33, scope: !2258)
!2261 = !DILocation(line: 621, column: 14, scope: !2258)
!2262 = !DILocation(line: 621, column: 43, scope: !2258)
!2263 = !DILocation(line: 621, column: 41, scope: !2258)
!2264 = !DILocation(line: 621, column: 11, scope: !2259)
!2265 = !DILocation(line: 622, column: 23, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2267, file: !102, line: 623, column: 9)
!2267 = distinct !DILexicalBlock(scope: !2268, file: !102, line: 622, column: 9)
!2268 = distinct !DILexicalBlock(scope: !2258, file: !102, line: 621, column: 55)
!2269 = !DILocation(line: 622, column: 9, scope: !2266)
!2270 = !DILocation(line: 625, column: 7, scope: !2268)
!2271 = !DILocation(line: 626, column: 5, scope: !2259)
!2272 = !DILocation(line: 623, column: 5, scope: !1909)
!2273 = !DILocation(line: 626, column: 5, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2275, file: !102, line: 626, column: 5)
!2275 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 625, column: 5)
!2276 = !DILocation(line: 627, column: 9, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 627, column: 9)
!2278 = !DILocation(line: 627, column: 9, scope: !1909)
!2279 = !DILocation(line: 627, column: 17, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !102, line: 627, column: 11)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !102, line: 627, column: 17)
!2282 = !DILocation(line: 627, column: 33, scope: !2280)
!2283 = !DILocation(line: 627, column: 14, scope: !2280)
!2284 = !DILocation(line: 627, column: 43, scope: !2280)
!2285 = !DILocation(line: 627, column: 41, scope: !2280)
!2286 = !DILocation(line: 627, column: 11, scope: !2281)
!2287 = !DILocation(line: 628, column: 23, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2289, file: !102, line: 629, column: 9)
!2289 = distinct !DILexicalBlock(scope: !2290, file: !102, line: 628, column: 9)
!2290 = distinct !DILexicalBlock(scope: !2280, file: !102, line: 627, column: 55)
!2291 = !DILocation(line: 628, column: 9, scope: !2288)
!2292 = !DILocation(line: 631, column: 7, scope: !2290)
!2293 = !DILocation(line: 632, column: 5, scope: !2281)
!2294 = !DILocation(line: 630, column: 14, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 630, column: 9)
!2296 = !DILocation(line: 630, column: 9, scope: !1909)
!2297 = !DILocation(line: 630, column: 7, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2295, file: !102, line: 630, column: 20)
!2299 = !DILocation(line: 630, column: 9, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2295, file: !102, line: 630, column: 9)
!2301 = !DILocation(line: 630, column: 9, scope: !2295)
!2302 = !DILocation(line: 630, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2300, file: !102, line: 630, column: 17)
!2304 = !DILocation(line: 630, column: 18, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2300, file: !102, line: 630, column: 9)
!2306 = !DILocation(line: 630, column: 34, scope: !2305)
!2307 = !DILocation(line: 630, column: 15, scope: !2305)
!2308 = !DILocation(line: 630, column: 44, scope: !2305)
!2309 = !DILocation(line: 630, column: 42, scope: !2305)
!2310 = !DILocation(line: 630, column: 57, scope: !2305)
!2311 = !DILocation(line: 632, column: 24, scope: !2312)
!2312 = distinct !DILexicalBlock(scope: !2305, file: !102, line: 630, column: 57)
!2313 = !DILocation(line: 632, column: 31, scope: !2312)
!2314 = !DILocation(line: 632, column: 29, scope: !2312)
!2315 = !DILocation(line: 634, column: 16, scope: !2312)
!2316 = !DILocation(line: 634, column: 32, scope: !2312)
!2317 = !DILocation(line: 634, column: 34, scope: !2312)
!2318 = !DILocation(line: 635, column: 11, scope: !2312)
!2319 = !DILocation(line: 635, column: 27, scope: !2312)
!2320 = !DILocation(line: 635, column: 29, scope: !2312)
!2321 = !DILocation(line: 637, column: 11, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2312, file: !102, line: 637, column: 11)
!2323 = !DILocation(line: 637, column: 11, scope: !2312)
!2324 = !DILocation(line: 637, column: 19, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2326, file: !102, line: 637, column: 13)
!2326 = distinct !DILexicalBlock(scope: !2322, file: !102, line: 637, column: 19)
!2327 = !DILocation(line: 637, column: 35, scope: !2325)
!2328 = !DILocation(line: 637, column: 16, scope: !2325)
!2329 = !DILocation(line: 637, column: 45, scope: !2325)
!2330 = !DILocation(line: 637, column: 43, scope: !2325)
!2331 = !DILocation(line: 637, column: 13, scope: !2326)
!2332 = !DILocation(line: 641, column: 15, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !102, line: 638, column: 11)
!2334 = distinct !DILexicalBlock(scope: !2325, file: !102, line: 637, column: 57)
!2335 = !DILocation(line: 641, column: 31, scope: !2333)
!2336 = !DILocation(line: 641, column: 40, scope: !2333)
!2337 = !DILocation(line: 642, column: 11, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !102, line: 642, column: 11)
!2339 = !DILocation(line: 643, column: 15, scope: !2333)
!2340 = !DILocation(line: 643, column: 31, scope: !2333)
!2341 = !DILocation(line: 643, column: 41, scope: !2333)
!2342 = !DILocation(line: 644, column: 25, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2333, file: !102, line: 644, column: 11)
!2344 = !DILocation(line: 644, column: 11, scope: !2343)
!2345 = !DILocation(line: 646, column: 27, scope: !2333)
!2346 = !DILocation(line: 646, column: 43, scope: !2333)
!2347 = !DILocation(line: 646, column: 54, scope: !2333)
!2348 = !DILocation(line: 646, column: 70, scope: !2333)
!2349 = !DILocation(line: 646, column: 52, scope: !2333)
!2350 = !DILocation(line: 646, column: 81, scope: !2333)
!2351 = !DILocalVariable(name: "temp_vol___0", scope: !1782, file: !102, line: 515, type: !14)
!2352 = !DILocation(line: 647, column: 11, scope: !2333)
!2353 = !DILocation(line: 647, column: 27, scope: !2333)
!2354 = !DILocation(line: 647, column: 36, scope: !2333)
!2355 = !DILocation(line: 648, column: 11, scope: !2333)
!2356 = !DILocation(line: 648, column: 27, scope: !2333)
!2357 = !DILocation(line: 648, column: 37, scope: !2333)
!2358 = !DILocation(line: 650, column: 9, scope: !2334)
!2359 = !DILocation(line: 651, column: 7, scope: !2326)
!2360 = !DILocation(line: 652, column: 11, scope: !2312)
!2361 = !DILocation(line: 652, column: 27, scope: !2312)
!2362 = !DILocation(line: 652, column: 36, scope: !2312)
!2363 = !DILocation(line: 653, column: 18, scope: !2312)
!2364 = !DILocation(line: 653, column: 34, scope: !2312)
!2365 = !DILocation(line: 655, column: 5, scope: !2312)
!2366 = !DILocation(line: 656, column: 14, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2305, file: !102, line: 656, column: 9)
!2368 = !DILocation(line: 656, column: 9, scope: !2305)
!2369 = !DILocation(line: 656, column: 17, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !102, line: 656, column: 11)
!2371 = distinct !DILexicalBlock(scope: !2367, file: !102, line: 656, column: 20)
!2372 = !DILocation(line: 656, column: 33, scope: !2370)
!2373 = !DILocation(line: 656, column: 14, scope: !2370)
!2374 = !DILocation(line: 656, column: 43, scope: !2370)
!2375 = !DILocation(line: 656, column: 41, scope: !2370)
!2376 = !DILocation(line: 656, column: 11, scope: !2371)
!2377 = !DILocation(line: 658, column: 11, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2370, file: !102, line: 656, column: 55)
!2379 = !DILocation(line: 659, column: 20, scope: !2378)
!2380 = !DILocation(line: 659, column: 36, scope: !2378)
!2381 = !DILocation(line: 660, column: 22, scope: !2378)
!2382 = !DILocation(line: 660, column: 20, scope: !2378)
!2383 = !DILocation(line: 662, column: 7, scope: !2378)
!2384 = !DILocation(line: 663, column: 5, scope: !2371)
!2385 = !DILocation(line: 0, scope: !2305)
!2386 = !DILocation(line: 666, column: 5, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !102, line: 665, column: 5)
!2388 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 664, column: 5)
!2389 = !DILocation(line: 667, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 667, column: 9)
!2391 = !DILocation(line: 667, column: 9, scope: !1909)
!2392 = !DILocation(line: 667, column: 17, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2394, file: !102, line: 667, column: 11)
!2394 = distinct !DILexicalBlock(scope: !2390, file: !102, line: 667, column: 17)
!2395 = !DILocation(line: 667, column: 33, scope: !2393)
!2396 = !DILocation(line: 667, column: 14, scope: !2393)
!2397 = !DILocation(line: 667, column: 43, scope: !2393)
!2398 = !DILocation(line: 667, column: 41, scope: !2393)
!2399 = !DILocation(line: 667, column: 11, scope: !2394)
!2400 = !DILocation(line: 668, column: 23, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2402, file: !102, line: 669, column: 9)
!2402 = distinct !DILexicalBlock(scope: !2403, file: !102, line: 668, column: 9)
!2403 = distinct !DILexicalBlock(scope: !2393, file: !102, line: 667, column: 55)
!2404 = !DILocation(line: 668, column: 9, scope: !2401)
!2405 = !DILocation(line: 671, column: 7, scope: !2403)
!2406 = !DILocation(line: 672, column: 5, scope: !2394)
!2407 = !DILocation(line: 669, column: 5, scope: !1909)
!2408 = !DILocation(line: 673, column: 23, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !102, line: 673, column: 5)
!2410 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 672, column: 5)
!2411 = !DILocation(line: 673, column: 15, scope: !2409)
!2412 = !DILocalVariable(name: "tmp___4", scope: !1782, file: !102, line: 521, type: !14)
!2413 = !DILocation(line: 673, column: 9, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 673, column: 9)
!2415 = !DILocation(line: 673, column: 9, scope: !1909)
!2416 = !DILocation(line: 675, column: 25, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !102, line: 675, column: 7)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !102, line: 674, column: 7)
!2419 = distinct !DILexicalBlock(scope: !2414, file: !102, line: 673, column: 18)
!2420 = !DILocation(line: 675, column: 33, scope: !2417)
!2421 = !DILocation(line: 675, column: 49, scope: !2417)
!2422 = !DILocation(line: 675, column: 17, scope: !2417)
!2423 = !DILocalVariable(name: "rec_tmp", scope: !1782, file: !102, line: 509, type: !14)
!2424 = !DILocation(line: 676, column: 11, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2419, file: !102, line: 676, column: 11)
!2426 = !DILocation(line: 676, column: 11, scope: !2419)
!2427 = !DILocation(line: 677, column: 27, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2425, file: !102, line: 676, column: 20)
!2429 = !DILocation(line: 677, column: 43, scope: !2428)
!2430 = !DILocation(line: 677, column: 24, scope: !2428)
!2431 = !DILocation(line: 677, column: 19, scope: !2428)
!2432 = !DILocation(line: 677, column: 16, scope: !2428)
!2433 = !DILocation(line: 678, column: 7, scope: !2428)
!2434 = !DILocation(line: 679, column: 24, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2425, file: !102, line: 678, column: 14)
!2436 = !DILocation(line: 679, column: 40, scope: !2435)
!2437 = !DILocation(line: 679, column: 21, scope: !2435)
!2438 = !DILocation(line: 679, column: 16, scope: !2435)
!2439 = !DILocation(line: 680, column: 23, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2441, file: !102, line: 682, column: 7)
!2441 = distinct !DILexicalBlock(scope: !2419, file: !102, line: 681, column: 7)
!2442 = !DILocation(line: 680, column: 17, scope: !2440)
!2443 = !DILocalVariable(name: "tmp___0", scope: !1782, file: !102, line: 516, type: !14)
!2444 = !DILocation(line: 680, column: 19, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2419, file: !102, line: 680, column: 11)
!2446 = !DILocation(line: 680, column: 11, scope: !2419)
!2447 = !DILocation(line: 682, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !102, line: 682, column: 9)
!2449 = distinct !DILexicalBlock(scope: !2450, file: !102, line: 681, column: 9)
!2450 = distinct !DILexicalBlock(scope: !2445, file: !102, line: 680, column: 26)
!2451 = !DILocation(line: 683, column: 42, scope: !2452)
!2452 = distinct !DILexicalBlock(scope: !2449, file: !102, line: 684, column: 9)
!2453 = !DILocation(line: 684, column: 17, scope: !2452)
!2454 = !DILocation(line: 683, column: 9, scope: !2452)
!2455 = !DILocation(line: 684, column: 9, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2449, file: !102, line: 686, column: 9)
!2457 = !DILocation(line: 686, column: 23, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !102, line: 689, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2419, file: !102, line: 688, column: 7)
!2460 = !DILocation(line: 686, column: 17, scope: !2458)
!2461 = !DILocalVariable(name: "tmp___1", scope: !1782, file: !102, line: 517, type: !14)
!2462 = !DILocation(line: 686, column: 19, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2419, file: !102, line: 686, column: 11)
!2464 = !DILocation(line: 686, column: 11, scope: !2419)
!2465 = !DILocation(line: 688, column: 9, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !102, line: 688, column: 9)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !102, line: 687, column: 9)
!2468 = distinct !DILexicalBlock(scope: !2463, file: !102, line: 686, column: 26)
!2469 = !DILocation(line: 689, column: 42, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2467, file: !102, line: 690, column: 9)
!2471 = !DILocation(line: 690, column: 17, scope: !2470)
!2472 = !DILocation(line: 689, column: 9, scope: !2470)
!2473 = !DILocation(line: 690, column: 9, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2467, file: !102, line: 692, column: 9)
!2475 = !DILocalVariable(name: "i", scope: !1782, file: !102, line: 518, type: !14)
!2476 = !DILocation(line: 694, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !102, line: 696, column: 7)
!2478 = distinct !DILexicalBlock(scope: !2419, file: !102, line: 695, column: 7)
!2479 = !DILocation(line: 0, scope: !2419)
!2480 = !DILocation(line: 694, column: 17, scope: !2477)
!2481 = !DILocation(line: 694, column: 18, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !102, line: 694, column: 13)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !102, line: 694, column: 17)
!2484 = !DILocation(line: 694, column: 13, scope: !2483)
!2485 = !DILocation(line: 694, column: 11, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2482, file: !102, line: 694, column: 25)
!2487 = !DILocation(line: 696, column: 27, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2489, file: !102, line: 697, column: 9)
!2489 = distinct !DILexicalBlock(scope: !2483, file: !102, line: 696, column: 9)
!2490 = !DILocation(line: 696, column: 19, scope: !2488)
!2491 = !DILocalVariable(name: "tmp___3", scope: !1782, file: !102, line: 520, type: !14)
!2492 = !DILocation(line: 696, column: 13, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2483, file: !102, line: 696, column: 13)
!2494 = !DILocation(line: 696, column: 13, scope: !2483)
!2495 = !DILocation(line: 698, column: 29, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !102, line: 698, column: 11)
!2497 = distinct !DILexicalBlock(scope: !2498, file: !102, line: 697, column: 11)
!2498 = distinct !DILexicalBlock(scope: !2493, file: !102, line: 696, column: 22)
!2499 = !DILocation(line: 698, column: 21, scope: !2496)
!2500 = !DILocation(line: 699, column: 15, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !102, line: 699, column: 15)
!2502 = !DILocation(line: 699, column: 15, scope: !2498)
!2503 = !DILocalVariable(name: "tmp___2", scope: !1782, file: !102, line: 519, type: !14)
!2504 = !DILocation(line: 700, column: 11, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !102, line: 699, column: 24)
!2506 = !DILocation(line: 0, scope: !2501)
!2507 = !DILocation(line: 699, column: 25, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !102, line: 702, column: 11)
!2509 = distinct !DILexicalBlock(scope: !2498, file: !102, line: 701, column: 11)
!2510 = !DILocation(line: 699, column: 36, scope: !2508)
!2511 = !DILocation(line: 699, column: 38, scope: !2508)
!2512 = !DILocation(line: 699, column: 43, scope: !2508)
!2513 = !DILocation(line: 699, column: 54, scope: !2508)
!2514 = !DILocation(line: 699, column: 56, scope: !2508)
!2515 = !DILocation(line: 699, column: 11, scope: !2508)
!2516 = !DILocation(line: 702, column: 9, scope: !2498)
!2517 = !DILocation(line: 694, column: 11, scope: !2483)
!2518 = distinct !{!2518, !2476, !2519}
!2519 = !DILocation(line: 695, column: 7, scope: !2477)
!2520 = !DILocation(line: 697, column: 7, scope: !2477)
!2521 = !DILocation(line: 700, column: 5, scope: !2419)
!2522 = !DILocation(line: 704, column: 5, scope: !1909)
!2523 = !DILocation(line: 708, column: 9, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 708, column: 9)
!2525 = !DILocation(line: 708, column: 9, scope: !1909)
!2526 = !DILocation(line: 708, column: 17, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2528, file: !102, line: 708, column: 11)
!2528 = distinct !DILexicalBlock(scope: !2524, file: !102, line: 708, column: 17)
!2529 = !DILocation(line: 708, column: 33, scope: !2527)
!2530 = !DILocation(line: 708, column: 14, scope: !2527)
!2531 = !DILocation(line: 708, column: 43, scope: !2527)
!2532 = !DILocation(line: 708, column: 41, scope: !2527)
!2533 = !DILocation(line: 708, column: 11, scope: !2528)
!2534 = !DILocation(line: 710, column: 13, scope: !2535)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !102, line: 710, column: 13)
!2536 = distinct !DILexicalBlock(scope: !2527, file: !102, line: 708, column: 55)
!2537 = !DILocation(line: 710, column: 13, scope: !2536)
!2538 = !DILocation(line: 711, column: 25, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !102, line: 712, column: 11)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !102, line: 711, column: 11)
!2541 = distinct !DILexicalBlock(scope: !2535, file: !102, line: 710, column: 19)
!2542 = !DILocation(line: 711, column: 11, scope: !2539)
!2543 = !DILocation(line: 714, column: 9, scope: !2541)
!2544 = !DILocation(line: 713, column: 25, scope: !2545)
!2545 = distinct !DILexicalBlock(scope: !2546, file: !102, line: 716, column: 11)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !102, line: 715, column: 11)
!2547 = distinct !DILexicalBlock(scope: !2535, file: !102, line: 714, column: 16)
!2548 = !DILocation(line: 713, column: 11, scope: !2545)
!2549 = !DILocation(line: 717, column: 7, scope: !2536)
!2550 = !DILocation(line: 708, column: 9, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2527, file: !102, line: 717, column: 14)
!2552 = !DILocation(line: 710, column: 5, scope: !2528)
!2553 = !DILocation(line: 715, column: 11, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2524, file: !102, line: 715, column: 9)
!2555 = !DILocation(line: 715, column: 9, scope: !2524)
!2556 = !DILocation(line: 715, column: 17, scope: !2557)
!2557 = distinct !DILexicalBlock(scope: !2558, file: !102, line: 715, column: 11)
!2558 = distinct !DILexicalBlock(scope: !2554, file: !102, line: 715, column: 19)
!2559 = !DILocation(line: 715, column: 33, scope: !2557)
!2560 = !DILocation(line: 715, column: 14, scope: !2557)
!2561 = !DILocation(line: 715, column: 43, scope: !2557)
!2562 = !DILocation(line: 715, column: 41, scope: !2557)
!2563 = !DILocation(line: 715, column: 11, scope: !2558)
!2564 = !DILocation(line: 719, column: 9, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !102, line: 717, column: 9)
!2566 = distinct !DILexicalBlock(scope: !2567, file: !102, line: 716, column: 9)
!2567 = distinct !DILexicalBlock(scope: !2557, file: !102, line: 715, column: 55)
!2568 = !DILocation(line: 720, column: 13, scope: !2569)
!2569 = distinct !DILexicalBlock(scope: !2567, file: !102, line: 720, column: 13)
!2570 = !DILocation(line: 720, column: 13, scope: !2567)
!2571 = !DILocation(line: 722, column: 15, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !102, line: 721, column: 11)
!2573 = distinct !DILexicalBlock(scope: !2569, file: !102, line: 720, column: 19)
!2574 = !DILocation(line: 722, column: 31, scope: !2572)
!2575 = !DILocation(line: 722, column: 41, scope: !2572)
!2576 = !DILocation(line: 723, column: 25, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2572, file: !102, line: 723, column: 11)
!2578 = !DILocation(line: 723, column: 11, scope: !2577)
!2579 = !DILocation(line: 726, column: 9, scope: !2573)
!2580 = !DILocation(line: 727, column: 15, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2582, file: !102, line: 727, column: 11)
!2582 = distinct !DILexicalBlock(scope: !2569, file: !102, line: 726, column: 16)
!2583 = !DILocation(line: 727, column: 31, scope: !2581)
!2584 = !DILocation(line: 727, column: 40, scope: !2581)
!2585 = !DILocation(line: 728, column: 25, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !102, line: 728, column: 11)
!2587 = !DILocation(line: 728, column: 11, scope: !2586)
!2588 = !DILocation(line: 730, column: 25, scope: !2589)
!2589 = distinct !DILexicalBlock(scope: !2567, file: !102, line: 732, column: 9)
!2590 = !DILocation(line: 730, column: 41, scope: !2589)
!2591 = !DILocation(line: 730, column: 52, scope: !2589)
!2592 = !DILocation(line: 730, column: 68, scope: !2589)
!2593 = !DILocation(line: 730, column: 50, scope: !2589)
!2594 = !DILocation(line: 730, column: 79, scope: !2589)
!2595 = !DILocalVariable(name: "temp_vol___1", scope: !1782, file: !102, line: 522, type: !14)
!2596 = !DILocation(line: 731, column: 9, scope: !2589)
!2597 = !DILocation(line: 731, column: 25, scope: !2589)
!2598 = !DILocation(line: 731, column: 34, scope: !2589)
!2599 = !DILocation(line: 732, column: 9, scope: !2589)
!2600 = !DILocation(line: 732, column: 25, scope: !2589)
!2601 = !DILocation(line: 732, column: 35, scope: !2589)
!2602 = !DILocation(line: 734, column: 13, scope: !2589)
!2603 = !DILocation(line: 734, column: 29, scope: !2589)
!2604 = !DILocation(line: 734, column: 38, scope: !2589)
!2605 = !DILocation(line: 735, column: 9, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2589, file: !102, line: 735, column: 9)
!2607 = !DILocation(line: 736, column: 13, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2567, file: !102, line: 736, column: 13)
!2609 = !DILocation(line: 736, column: 13, scope: !2567)
!2610 = !DILocation(line: 737, column: 25, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !102, line: 738, column: 11)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !102, line: 737, column: 11)
!2613 = distinct !DILexicalBlock(scope: !2608, file: !102, line: 736, column: 19)
!2614 = !DILocation(line: 737, column: 11, scope: !2611)
!2615 = !DILocation(line: 740, column: 9, scope: !2613)
!2616 = !DILocation(line: 739, column: 25, scope: !2617)
!2617 = distinct !DILexicalBlock(scope: !2618, file: !102, line: 742, column: 11)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !102, line: 741, column: 11)
!2619 = distinct !DILexicalBlock(scope: !2608, file: !102, line: 740, column: 16)
!2620 = !DILocation(line: 739, column: 11, scope: !2617)
!2621 = !DILocation(line: 743, column: 7, scope: !2567)
!2622 = !DILocation(line: 744, column: 5, scope: !2558)
!2623 = !DILocation(line: 742, column: 15, scope: !1909)
!2624 = !DILocation(line: 742, column: 22, scope: !1909)
!2625 = !DILocation(line: 742, column: 27, scope: !1909)
!2626 = !DILocation(line: 742, column: 12, scope: !1909)
!2627 = !DILocation(line: 743, column: 11, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 743, column: 9)
!2629 = !DILocation(line: 743, column: 9, scope: !1909)
!2630 = !DILocation(line: 745, column: 9, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2628, file: !102, line: 743, column: 17)
!2632 = !DILocation(line: 747, column: 18, scope: !2631)
!2633 = !DILocation(line: 747, column: 34, scope: !2631)
!2634 = !DILocation(line: 748, column: 5, scope: !2631)
!2635 = !DILocation(line: 749, column: 5, scope: !1909)
!2636 = !DILocation(line: 752, column: 17, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2638, file: !102, line: 753, column: 5)
!2638 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 752, column: 5)
!2639 = !DILocalVariable(name: "save_file", scope: !1782, file: !102, line: 502, type: !39)
!2640 = !DILocation(line: 752, column: 9, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 752, column: 9)
!2642 = !DILocation(line: 752, column: 35, scope: !2641)
!2643 = !DILocation(line: 752, column: 9, scope: !1909)
!2644 = !DILocation(line: 754, column: 7, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2646, file: !102, line: 754, column: 7)
!2646 = distinct !DILexicalBlock(scope: !2647, file: !102, line: 753, column: 7)
!2647 = distinct !DILexicalBlock(scope: !2641, file: !102, line: 752, column: 67)
!2648 = !DILocation(line: 755, column: 7, scope: !2647)
!2649 = !DILocation(line: 758, column: 13, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2651, file: !102, line: 758, column: 5)
!2651 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 757, column: 5)
!2652 = !DILocation(line: 758, column: 21, scope: !2650)
!2653 = !DILocation(line: 758, column: 28, scope: !2650)
!2654 = !DILocation(line: 757, column: 5, scope: !2650)
!2655 = !DILocalVariable(name: "dev_nrs", scope: !1782, file: !102, line: 507, type: !14)
!2656 = !DILocation(line: 758, column: 5, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2658, file: !102, line: 761, column: 5)
!2658 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 760, column: 5)
!2659 = !DILocation(line: 0, scope: !1909)
!2660 = !DILocation(line: 758, column: 15, scope: !2657)
!2661 = !DILocation(line: 758, column: 22, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2663, file: !102, line: 758, column: 11)
!2663 = distinct !DILexicalBlock(scope: !2657, file: !102, line: 758, column: 15)
!2664 = !DILocation(line: 758, column: 11, scope: !2663)
!2665 = !DILocation(line: 758, column: 9, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2662, file: !102, line: 758, column: 29)
!2667 = !DILocation(line: 760, column: 14, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2663, file: !102, line: 760, column: 11)
!2669 = !DILocation(line: 760, column: 28, scope: !2668)
!2670 = !DILocation(line: 760, column: 26, scope: !2668)
!2671 = !DILocation(line: 760, column: 11, scope: !2663)
!2672 = !DILocation(line: 762, column: 25, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2674, file: !102, line: 762, column: 9)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !102, line: 761, column: 9)
!2675 = distinct !DILexicalBlock(scope: !2668, file: !102, line: 760, column: 37)
!2676 = !DILocation(line: 762, column: 92, scope: !2673)
!2677 = !DILocation(line: 762, column: 35, scope: !2673)
!2678 = !DILocation(line: 762, column: 118, scope: !2673)
!2679 = !DILocation(line: 762, column: 19, scope: !2673)
!2680 = !DILocalVariable(name: "tmp___5", scope: !1782, file: !102, line: 523, type: !14)
!2681 = !DILocation(line: 762, column: 21, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2675, file: !102, line: 762, column: 13)
!2683 = !DILocation(line: 762, column: 13, scope: !2675)
!2684 = !DILocation(line: 764, column: 11, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !102, line: 764, column: 11)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !102, line: 763, column: 11)
!2687 = distinct !DILexicalBlock(scope: !2682, file: !102, line: 762, column: 28)
!2688 = !DILocation(line: 765, column: 44, scope: !2689)
!2689 = distinct !DILexicalBlock(scope: !2686, file: !102, line: 766, column: 11)
!2690 = !DILocation(line: 766, column: 19, scope: !2689)
!2691 = !DILocation(line: 765, column: 11, scope: !2689)
!2692 = !DILocation(line: 766, column: 11, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2686, file: !102, line: 768, column: 11)
!2694 = !DILocation(line: 768, column: 28, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !102, line: 771, column: 9)
!2696 = distinct !DILexicalBlock(scope: !2675, file: !102, line: 770, column: 9)
!2697 = !DILocation(line: 768, column: 20, scope: !2695)
!2698 = !DILocation(line: 768, column: 18, scope: !2695)
!2699 = !DILocation(line: 769, column: 16, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2675, file: !102, line: 769, column: 13)
!2701 = !DILocation(line: 769, column: 30, scope: !2700)
!2702 = !DILocation(line: 769, column: 28, scope: !2700)
!2703 = !DILocation(line: 769, column: 13, scope: !2675)
!2704 = !DILocation(line: 771, column: 31, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !102, line: 771, column: 11)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !102, line: 770, column: 11)
!2707 = distinct !DILexicalBlock(scope: !2700, file: !102, line: 769, column: 42)
!2708 = !DILocation(line: 771, column: 23, scope: !2705)
!2709 = !DILocation(line: 771, column: 21, scope: !2705)
!2710 = !DILocation(line: 774, column: 9, scope: !2707)
!2711 = !DILocation(line: 774, column: 21, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2700, file: !102, line: 774, column: 16)
!2713 = !DILocation(line: 776, column: 7, scope: !2675)
!2714 = !DILocation(line: 778, column: 18, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2668, file: !102, line: 776, column: 14)
!2716 = !DILocation(line: 779, column: 19, scope: !2715)
!2717 = !DILocation(line: 782, column: 15, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2719, file: !102, line: 782, column: 7)
!2719 = distinct !DILexicalBlock(scope: !2663, file: !102, line: 781, column: 7)
!2720 = !DILocation(line: 782, column: 25, scope: !2718)
!2721 = !DILocation(line: 781, column: 7, scope: !2718)
!2722 = !DILocation(line: 758, column: 15, scope: !2719)
!2723 = distinct !{!2723, !2656, !2724}
!2724 = !DILocation(line: 760, column: 5, scope: !2657)
!2725 = !DILocation(line: 762, column: 5, scope: !2657)
!2726 = !DILocation(line: 784, column: 5, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !102, line: 766, column: 5)
!2728 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 765, column: 5)
!2729 = !DILocation(line: 785, column: 5, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2728, file: !102, line: 786, column: 5)
!2731 = !DILocation(line: 786, column: 5, scope: !1909)
!2732 = !DILocation(line: 790, column: 17, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !102, line: 790, column: 5)
!2734 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 789, column: 5)
!2735 = !DILocation(line: 790, column: 9, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 790, column: 9)
!2737 = !DILocation(line: 790, column: 35, scope: !2736)
!2738 = !DILocation(line: 790, column: 9, scope: !1909)
!2739 = !DILocation(line: 792, column: 7, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2741, file: !102, line: 792, column: 7)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !102, line: 791, column: 7)
!2742 = distinct !DILexicalBlock(scope: !2736, file: !102, line: 790, column: 67)
!2743 = !DILocation(line: 793, column: 7, scope: !2742)
!2744 = !DILocation(line: 795, column: 5, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2746, file: !102, line: 796, column: 5)
!2746 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 795, column: 5)
!2747 = !DILocation(line: 797, column: 11, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2746, file: !102, line: 798, column: 5)
!2749 = !DILocation(line: 797, column: 5, scope: !2748)
!2750 = !DILocation(line: 798, column: 9, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 798, column: 9)
!2752 = !DILocation(line: 798, column: 15, scope: !2751)
!2753 = !DILocation(line: 798, column: 9, scope: !1909)
!2754 = !DILocation(line: 800, column: 7, scope: !2755)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !102, line: 799, column: 7)
!2756 = distinct !DILexicalBlock(scope: !2751, file: !102, line: 798, column: 21)
!2757 = !DILocation(line: 800, column: 15, scope: !2755)
!2758 = !DILocation(line: 800, column: 22, scope: !2755)
!2759 = !DILocation(line: 801, column: 23, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2755, file: !102, line: 801, column: 7)
!2761 = !DILocation(line: 801, column: 42, scope: !2760)
!2762 = !DILocation(line: 801, column: 44, scope: !2760)
!2763 = !DILocation(line: 801, column: 60, scope: !2760)
!2764 = !DILocation(line: 801, column: 17, scope: !2760)
!2765 = !DILocalVariable(name: "tmp___6", scope: !1782, file: !102, line: 524, type: !14)
!2766 = !DILocation(line: 801, column: 22, scope: !2767)
!2767 = distinct !DILexicalBlock(scope: !2756, file: !102, line: 801, column: 11)
!2768 = !DILocation(line: 801, column: 11, scope: !2756)
!2769 = !DILocation(line: 801, column: 18, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2771, file: !102, line: 803, column: 9)
!2771 = distinct !DILexicalBlock(scope: !2772, file: !102, line: 802, column: 9)
!2772 = distinct !DILexicalBlock(scope: !2767, file: !102, line: 801, column: 30)
!2773 = !DILocation(line: 801, column: 9, scope: !2770)
!2774 = !DILocation(line: 804, column: 7, scope: !2772)
!2775 = !DILocation(line: 805, column: 5, scope: !2756)
!2776 = !DILocation(line: 805, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !102, line: 806, column: 7)
!2778 = distinct !DILexicalBlock(scope: !2751, file: !102, line: 805, column: 12)
!2779 = !DILocation(line: 805, column: 15, scope: !2777)
!2780 = !DILocation(line: 805, column: 22, scope: !2777)
!2781 = !DILocation(line: 806, column: 23, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2777, file: !102, line: 806, column: 7)
!2783 = !DILocation(line: 806, column: 42, scope: !2782)
!2784 = !DILocation(line: 806, column: 44, scope: !2782)
!2785 = !DILocation(line: 806, column: 60, scope: !2782)
!2786 = !DILocation(line: 806, column: 17, scope: !2782)
!2787 = !DILocalVariable(name: "tmp___7", scope: !1782, file: !102, line: 525, type: !14)
!2788 = !DILocation(line: 806, column: 22, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2778, file: !102, line: 806, column: 11)
!2790 = !DILocation(line: 806, column: 11, scope: !2778)
!2791 = !DILocation(line: 806, column: 18, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2793, file: !102, line: 808, column: 9)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !102, line: 807, column: 9)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !102, line: 806, column: 30)
!2795 = !DILocation(line: 806, column: 9, scope: !2792)
!2796 = !DILocation(line: 809, column: 7, scope: !2794)
!2797 = !DILocation(line: 810, column: 11, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2799, file: !102, line: 812, column: 5)
!2799 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 811, column: 5)
!2800 = !DILocation(line: 810, column: 5, scope: !2798)
!2801 = !DILocation(line: 811, column: 9, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 811, column: 9)
!2803 = !DILocation(line: 811, column: 13, scope: !2802)
!2804 = !DILocation(line: 811, column: 9, scope: !1909)
!2805 = !DILocation(line: 813, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2807, file: !102, line: 812, column: 7)
!2807 = distinct !DILexicalBlock(scope: !2802, file: !102, line: 811, column: 19)
!2808 = !DILocation(line: 813, column: 15, scope: !2806)
!2809 = !DILocation(line: 813, column: 22, scope: !2806)
!2810 = !DILocation(line: 814, column: 23, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2806, file: !102, line: 814, column: 7)
!2812 = !DILocation(line: 814, column: 42, scope: !2811)
!2813 = !DILocation(line: 814, column: 44, scope: !2811)
!2814 = !DILocation(line: 814, column: 60, scope: !2811)
!2815 = !DILocation(line: 814, column: 17, scope: !2811)
!2816 = !DILocalVariable(name: "tmp___8", scope: !1782, file: !102, line: 526, type: !14)
!2817 = !DILocation(line: 814, column: 22, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2807, file: !102, line: 814, column: 11)
!2819 = !DILocation(line: 814, column: 11, scope: !2807)
!2820 = !DILocation(line: 814, column: 18, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2822, file: !102, line: 816, column: 9)
!2822 = distinct !DILexicalBlock(scope: !2823, file: !102, line: 815, column: 9)
!2823 = distinct !DILexicalBlock(scope: !2818, file: !102, line: 814, column: 30)
!2824 = !DILocation(line: 814, column: 9, scope: !2821)
!2825 = !DILocation(line: 817, column: 7, scope: !2823)
!2826 = !DILocation(line: 818, column: 5, scope: !2807)
!2827 = !DILocation(line: 818, column: 7, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !102, line: 819, column: 7)
!2829 = distinct !DILexicalBlock(scope: !2802, file: !102, line: 818, column: 12)
!2830 = !DILocation(line: 818, column: 15, scope: !2828)
!2831 = !DILocation(line: 818, column: 22, scope: !2828)
!2832 = !DILocation(line: 819, column: 23, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2828, file: !102, line: 819, column: 7)
!2834 = !DILocation(line: 819, column: 42, scope: !2833)
!2835 = !DILocation(line: 819, column: 44, scope: !2833)
!2836 = !DILocation(line: 819, column: 60, scope: !2833)
!2837 = !DILocation(line: 819, column: 17, scope: !2833)
!2838 = !DILocalVariable(name: "tmp___9", scope: !1782, file: !102, line: 527, type: !14)
!2839 = !DILocation(line: 819, column: 22, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2829, file: !102, line: 819, column: 11)
!2841 = !DILocation(line: 819, column: 11, scope: !2829)
!2842 = !DILocation(line: 819, column: 18, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !102, line: 821, column: 9)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !102, line: 820, column: 9)
!2845 = distinct !DILexicalBlock(scope: !2840, file: !102, line: 819, column: 30)
!2846 = !DILocation(line: 819, column: 9, scope: !2843)
!2847 = !DILocation(line: 822, column: 7, scope: !2845)
!2848 = !DILocalVariable(name: "dev_nr_tmp", scope: !1782, file: !102, line: 512, type: !14)
!2849 = !DILocation(line: 823, column: 5, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !102, line: 825, column: 5)
!2851 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 824, column: 5)
!2852 = !DILocation(line: 823, column: 15, scope: !2850)
!2853 = !DILocation(line: 823, column: 22, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !102, line: 823, column: 11)
!2855 = distinct !DILexicalBlock(scope: !2850, file: !102, line: 823, column: 15)
!2856 = !DILocation(line: 823, column: 11, scope: !2855)
!2857 = !DILocation(line: 823, column: 9, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2854, file: !102, line: 823, column: 29)
!2859 = !DILocation(line: 826, column: 7, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2861, file: !102, line: 826, column: 7)
!2861 = distinct !DILexicalBlock(scope: !2855, file: !102, line: 825, column: 7)
!2862 = !DILocation(line: 827, column: 14, scope: !2863)
!2863 = distinct !DILexicalBlock(scope: !2855, file: !102, line: 827, column: 11)
!2864 = !DILocation(line: 827, column: 28, scope: !2863)
!2865 = !DILocation(line: 827, column: 26, scope: !2863)
!2866 = !DILocation(line: 827, column: 11, scope: !2855)
!2867 = !DILocation(line: 829, column: 25, scope: !2868)
!2868 = distinct !DILexicalBlock(scope: !2869, file: !102, line: 829, column: 9)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !102, line: 828, column: 9)
!2870 = distinct !DILexicalBlock(scope: !2863, file: !102, line: 827, column: 37)
!2871 = !DILocation(line: 829, column: 35, scope: !2868)
!2872 = !DILocation(line: 829, column: 9, scope: !2868)
!2873 = !DILocation(line: 830, column: 13, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2870, file: !102, line: 830, column: 13)
!2875 = !DILocation(line: 830, column: 22, scope: !2874)
!2876 = !DILocation(line: 830, column: 13, scope: !2870)
!2877 = !DILocation(line: 832, column: 15, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2879, file: !102, line: 832, column: 15)
!2879 = distinct !DILexicalBlock(scope: !2874, file: !102, line: 830, column: 29)
!2880 = !DILocation(line: 832, column: 41, scope: !2878)
!2881 = !DILocation(line: 832, column: 39, scope: !2878)
!2882 = !DILocation(line: 832, column: 46, scope: !2878)
!2883 = !DILocation(line: 832, column: 51, scope: !2878)
!2884 = !DILocation(line: 832, column: 24, scope: !2878)
!2885 = !DILocation(line: 832, column: 59, scope: !2878)
!2886 = !DILocation(line: 832, column: 64, scope: !2878)
!2887 = !DILocation(line: 832, column: 57, scope: !2878)
!2888 = !DILocation(line: 832, column: 15, scope: !2879)
!2889 = !DILocation(line: 833, column: 24, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2878, file: !102, line: 832, column: 69)
!2891 = !DILocation(line: 833, column: 29, scope: !2890)
!2892 = !DILocation(line: 833, column: 22, scope: !2890)
!2893 = !DILocation(line: 834, column: 11, scope: !2890)
!2894 = !DILocation(line: 835, column: 39, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2878, file: !102, line: 834, column: 18)
!2896 = !DILocation(line: 835, column: 37, scope: !2895)
!2897 = !DILocation(line: 835, column: 44, scope: !2895)
!2898 = !DILocation(line: 835, column: 49, scope: !2895)
!2899 = !DILocation(line: 835, column: 22, scope: !2895)
!2900 = !DILocation(line: 837, column: 9, scope: !2879)
!2901 = !DILocation(line: 837, column: 13, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2870, file: !102, line: 837, column: 13)
!2903 = !DILocation(line: 837, column: 23, scope: !2902)
!2904 = !DILocation(line: 837, column: 13, scope: !2870)
!2905 = !DILocation(line: 839, column: 15, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2907, file: !102, line: 839, column: 15)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !102, line: 837, column: 30)
!2908 = !DILocation(line: 839, column: 42, scope: !2906)
!2909 = !DILocation(line: 839, column: 40, scope: !2906)
!2910 = !DILocation(line: 839, column: 47, scope: !2906)
!2911 = !DILocation(line: 839, column: 52, scope: !2906)
!2912 = !DILocation(line: 839, column: 25, scope: !2906)
!2913 = !DILocation(line: 839, column: 60, scope: !2906)
!2914 = !DILocation(line: 839, column: 65, scope: !2906)
!2915 = !DILocation(line: 839, column: 58, scope: !2906)
!2916 = !DILocation(line: 839, column: 15, scope: !2907)
!2917 = !DILocation(line: 840, column: 25, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2906, file: !102, line: 839, column: 70)
!2919 = !DILocation(line: 840, column: 30, scope: !2918)
!2920 = !DILocation(line: 840, column: 23, scope: !2918)
!2921 = !DILocation(line: 841, column: 11, scope: !2918)
!2922 = !DILocation(line: 842, column: 40, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2906, file: !102, line: 841, column: 18)
!2924 = !DILocation(line: 842, column: 38, scope: !2923)
!2925 = !DILocation(line: 842, column: 45, scope: !2923)
!2926 = !DILocation(line: 842, column: 50, scope: !2923)
!2927 = !DILocation(line: 842, column: 23, scope: !2923)
!2928 = !DILocation(line: 844, column: 9, scope: !2907)
!2929 = !DILocation(line: 844, column: 22, scope: !2870)
!2930 = !DILocation(line: 844, column: 24, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2870, file: !102, line: 844, column: 13)
!2932 = !DILocation(line: 844, column: 13, scope: !2870)
!2933 = !DILocation(line: 845, column: 11, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2931, file: !102, line: 844, column: 31)
!2935 = !DILocation(line: 846, column: 21, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !102, line: 848, column: 9)
!2937 = distinct !DILexicalBlock(scope: !2870, file: !102, line: 847, column: 9)
!2938 = !DILocation(line: 846, column: 41, scope: !2936)
!2939 = !DILocation(line: 846, column: 43, scope: !2936)
!2940 = !DILocation(line: 846, column: 49, scope: !2936)
!2941 = !DILocation(line: 846, column: 69, scope: !2936)
!2942 = !DILocation(line: 846, column: 71, scope: !2936)
!2943 = !DILocation(line: 846, column: 79, scope: !2936)
!2944 = !DILocation(line: 846, column: 99, scope: !2936)
!2945 = !DILocation(line: 846, column: 77, scope: !2936)
!2946 = !DILocation(line: 846, column: 9, scope: !2936)
!2947 = !DILocation(line: 848, column: 40, scope: !2937)
!2948 = !DILocation(line: 848, column: 9, scope: !2937)
!2949 = !DILocation(line: 848, column: 29, scope: !2937)
!2950 = !DILocation(line: 848, column: 38, scope: !2937)
!2951 = !DILocation(line: 849, column: 24, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2870, file: !102, line: 849, column: 13)
!2953 = !DILocation(line: 849, column: 13, scope: !2870)
!2954 = !DILocation(line: 849, column: 15, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2956, file: !102, line: 849, column: 15)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !102, line: 849, column: 35)
!2957 = !DILocation(line: 849, column: 15, scope: !2956)
!2958 = !DILocation(line: 851, column: 25, scope: !2959)
!2959 = distinct !DILexicalBlock(scope: !2960, file: !102, line: 851, column: 13)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !102, line: 850, column: 13)
!2961 = distinct !DILexicalBlock(scope: !2955, file: !102, line: 849, column: 23)
!2962 = !DILocation(line: 851, column: 45, scope: !2959)
!2963 = !DILocation(line: 851, column: 47, scope: !2959)
!2964 = !DILocation(line: 851, column: 53, scope: !2959)
!2965 = !DILocation(line: 851, column: 73, scope: !2959)
!2966 = !DILocation(line: 851, column: 75, scope: !2959)
!2967 = !DILocation(line: 851, column: 83, scope: !2959)
!2968 = !DILocation(line: 851, column: 103, scope: !2959)
!2969 = !DILocation(line: 851, column: 81, scope: !2959)
!2970 = !DILocation(line: 851, column: 13, scope: !2959)
!2971 = !DILocation(line: 852, column: 18, scope: !2960)
!2972 = !DILocation(line: 852, column: 38, scope: !2960)
!2973 = !DILocation(line: 852, column: 40, scope: !2960)
!2974 = !DILocation(line: 852, column: 48, scope: !2960)
!2975 = !DILocation(line: 852, column: 68, scope: !2960)
!2976 = !DILocation(line: 852, column: 46, scope: !2960)
!2977 = !DILocation(line: 854, column: 11, scope: !2961)
!2978 = !DILocation(line: 849, column: 20, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2955, file: !102, line: 849, column: 15)
!2980 = !DILocation(line: 851, column: 25, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2982, file: !102, line: 851, column: 13)
!2982 = distinct !DILexicalBlock(scope: !2983, file: !102, line: 850, column: 13)
!2983 = distinct !DILexicalBlock(scope: !2979, file: !102, line: 849, column: 26)
!2984 = !DILocation(line: 851, column: 45, scope: !2981)
!2985 = !DILocation(line: 851, column: 47, scope: !2981)
!2986 = !DILocation(line: 851, column: 53, scope: !2981)
!2987 = !DILocation(line: 851, column: 73, scope: !2981)
!2988 = !DILocation(line: 851, column: 75, scope: !2981)
!2989 = !DILocation(line: 851, column: 83, scope: !2981)
!2990 = !DILocation(line: 851, column: 103, scope: !2981)
!2991 = !DILocation(line: 851, column: 81, scope: !2981)
!2992 = !DILocation(line: 851, column: 13, scope: !2981)
!2993 = !DILocation(line: 852, column: 18, scope: !2982)
!2994 = !DILocation(line: 852, column: 38, scope: !2982)
!2995 = !DILocation(line: 852, column: 40, scope: !2982)
!2996 = !DILocation(line: 852, column: 48, scope: !2982)
!2997 = !DILocation(line: 852, column: 68, scope: !2982)
!2998 = !DILocation(line: 852, column: 46, scope: !2982)
!2999 = !DILocation(line: 854, column: 11, scope: !2983)
!3000 = !DILocation(line: 855, column: 25, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !102, line: 856, column: 13)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !102, line: 855, column: 13)
!3003 = distinct !DILexicalBlock(scope: !2979, file: !102, line: 854, column: 18)
!3004 = !DILocation(line: 855, column: 45, scope: !3001)
!3005 = !DILocation(line: 855, column: 47, scope: !3001)
!3006 = !DILocation(line: 855, column: 53, scope: !3001)
!3007 = !DILocation(line: 855, column: 73, scope: !3001)
!3008 = !DILocation(line: 855, column: 75, scope: !3001)
!3009 = !DILocation(line: 855, column: 83, scope: !3001)
!3010 = !DILocation(line: 855, column: 103, scope: !3001)
!3011 = !DILocation(line: 855, column: 81, scope: !3001)
!3012 = !DILocation(line: 855, column: 13, scope: !3001)
!3013 = !DILocation(line: 0, scope: !2955)
!3014 = !DILocation(line: 860, column: 9, scope: !2956)
!3015 = !DILocation(line: 855, column: 23, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3017, file: !102, line: 862, column: 11)
!3017 = distinct !DILexicalBlock(scope: !3018, file: !102, line: 861, column: 11)
!3018 = distinct !DILexicalBlock(scope: !2952, file: !102, line: 860, column: 16)
!3019 = !DILocation(line: 855, column: 43, scope: !3016)
!3020 = !DILocation(line: 855, column: 45, scope: !3016)
!3021 = !DILocation(line: 855, column: 51, scope: !3016)
!3022 = !DILocation(line: 855, column: 71, scope: !3016)
!3023 = !DILocation(line: 855, column: 73, scope: !3016)
!3024 = !DILocation(line: 855, column: 81, scope: !3016)
!3025 = !DILocation(line: 855, column: 101, scope: !3016)
!3026 = !DILocation(line: 855, column: 79, scope: !3016)
!3027 = !DILocation(line: 855, column: 11, scope: !3016)
!3028 = !DILocation(line: 857, column: 16, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2870, file: !102, line: 857, column: 13)
!3030 = !DILocation(line: 857, column: 30, scope: !3029)
!3031 = !DILocation(line: 857, column: 28, scope: !3029)
!3032 = !DILocation(line: 857, column: 13, scope: !2870)
!3033 = !DILocation(line: 859, column: 23, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !102, line: 859, column: 11)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !102, line: 858, column: 11)
!3036 = distinct !DILexicalBlock(scope: !3029, file: !102, line: 857, column: 42)
!3037 = !DILocation(line: 859, column: 43, scope: !3034)
!3038 = !DILocation(line: 859, column: 45, scope: !3034)
!3039 = !DILocation(line: 859, column: 51, scope: !3034)
!3040 = !DILocation(line: 859, column: 71, scope: !3034)
!3041 = !DILocation(line: 859, column: 73, scope: !3034)
!3042 = !DILocation(line: 859, column: 81, scope: !3034)
!3043 = !DILocation(line: 859, column: 101, scope: !3034)
!3044 = !DILocation(line: 859, column: 79, scope: !3034)
!3045 = !DILocation(line: 859, column: 11, scope: !3034)
!3046 = !DILocation(line: 861, column: 43, scope: !3035)
!3047 = !DILocation(line: 861, column: 11, scope: !3035)
!3048 = !DILocation(line: 861, column: 31, scope: !3035)
!3049 = !DILocation(line: 861, column: 41, scope: !3035)
!3050 = !DILocation(line: 862, column: 26, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3036, file: !102, line: 862, column: 15)
!3052 = !DILocation(line: 862, column: 15, scope: !3036)
!3053 = !DILocation(line: 862, column: 17, scope: !3054)
!3054 = distinct !DILexicalBlock(scope: !3055, file: !102, line: 862, column: 17)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !102, line: 862, column: 37)
!3056 = !DILocation(line: 862, column: 17, scope: !3055)
!3057 = !DILocation(line: 864, column: 27, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !102, line: 864, column: 15)
!3059 = distinct !DILexicalBlock(scope: !3060, file: !102, line: 863, column: 15)
!3060 = distinct !DILexicalBlock(scope: !3054, file: !102, line: 862, column: 25)
!3061 = !DILocation(line: 864, column: 47, scope: !3058)
!3062 = !DILocation(line: 864, column: 49, scope: !3058)
!3063 = !DILocation(line: 864, column: 55, scope: !3058)
!3064 = !DILocation(line: 864, column: 75, scope: !3058)
!3065 = !DILocation(line: 864, column: 77, scope: !3058)
!3066 = !DILocation(line: 864, column: 85, scope: !3058)
!3067 = !DILocation(line: 864, column: 105, scope: !3058)
!3068 = !DILocation(line: 864, column: 83, scope: !3058)
!3069 = !DILocation(line: 864, column: 15, scope: !3058)
!3070 = !DILocation(line: 865, column: 20, scope: !3059)
!3071 = !DILocation(line: 865, column: 40, scope: !3059)
!3072 = !DILocation(line: 865, column: 42, scope: !3059)
!3073 = !DILocation(line: 865, column: 50, scope: !3059)
!3074 = !DILocation(line: 865, column: 70, scope: !3059)
!3075 = !DILocation(line: 865, column: 48, scope: !3059)
!3076 = !DILocation(line: 867, column: 13, scope: !3060)
!3077 = !DILocation(line: 862, column: 22, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3054, file: !102, line: 862, column: 17)
!3079 = !DILocation(line: 864, column: 27, scope: !3080)
!3080 = distinct !DILexicalBlock(scope: !3081, file: !102, line: 864, column: 15)
!3081 = distinct !DILexicalBlock(scope: !3082, file: !102, line: 863, column: 15)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !102, line: 862, column: 28)
!3083 = !DILocation(line: 864, column: 47, scope: !3080)
!3084 = !DILocation(line: 864, column: 49, scope: !3080)
!3085 = !DILocation(line: 864, column: 55, scope: !3080)
!3086 = !DILocation(line: 864, column: 75, scope: !3080)
!3087 = !DILocation(line: 864, column: 77, scope: !3080)
!3088 = !DILocation(line: 864, column: 85, scope: !3080)
!3089 = !DILocation(line: 864, column: 105, scope: !3080)
!3090 = !DILocation(line: 864, column: 83, scope: !3080)
!3091 = !DILocation(line: 864, column: 15, scope: !3080)
!3092 = !DILocation(line: 865, column: 20, scope: !3081)
!3093 = !DILocation(line: 865, column: 40, scope: !3081)
!3094 = !DILocation(line: 865, column: 42, scope: !3081)
!3095 = !DILocation(line: 865, column: 50, scope: !3081)
!3096 = !DILocation(line: 865, column: 70, scope: !3081)
!3097 = !DILocation(line: 865, column: 48, scope: !3081)
!3098 = !DILocation(line: 867, column: 13, scope: !3082)
!3099 = !DILocation(line: 868, column: 27, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3101, file: !102, line: 869, column: 15)
!3101 = distinct !DILexicalBlock(scope: !3102, file: !102, line: 868, column: 15)
!3102 = distinct !DILexicalBlock(scope: !3078, file: !102, line: 867, column: 20)
!3103 = !DILocation(line: 868, column: 47, scope: !3100)
!3104 = !DILocation(line: 868, column: 49, scope: !3100)
!3105 = !DILocation(line: 868, column: 55, scope: !3100)
!3106 = !DILocation(line: 868, column: 75, scope: !3100)
!3107 = !DILocation(line: 868, column: 77, scope: !3100)
!3108 = !DILocation(line: 868, column: 85, scope: !3100)
!3109 = !DILocation(line: 868, column: 105, scope: !3100)
!3110 = !DILocation(line: 868, column: 83, scope: !3100)
!3111 = !DILocation(line: 868, column: 15, scope: !3100)
!3112 = !DILocation(line: 0, scope: !2870)
!3113 = !DILocation(line: 0, scope: !3054)
!3114 = !DILocation(line: 873, column: 11, scope: !3055)
!3115 = !DILocation(line: 868, column: 25, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3117, file: !102, line: 875, column: 13)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !102, line: 874, column: 13)
!3118 = distinct !DILexicalBlock(scope: !3051, file: !102, line: 873, column: 18)
!3119 = !DILocation(line: 868, column: 45, scope: !3116)
!3120 = !DILocation(line: 868, column: 47, scope: !3116)
!3121 = !DILocation(line: 868, column: 53, scope: !3116)
!3122 = !DILocation(line: 868, column: 73, scope: !3116)
!3123 = !DILocation(line: 868, column: 75, scope: !3116)
!3124 = !DILocation(line: 868, column: 83, scope: !3116)
!3125 = !DILocation(line: 868, column: 103, scope: !3116)
!3126 = !DILocation(line: 868, column: 81, scope: !3116)
!3127 = !DILocation(line: 868, column: 13, scope: !3116)
!3128 = !DILocation(line: 873, column: 9, scope: !3036)
!3129 = !DILocation(line: 874, column: 7, scope: !2870)
!3130 = !DILocation(line: 823, column: 15, scope: !2855)
!3131 = distinct !{!3131, !2849, !3132}
!3132 = !DILocation(line: 824, column: 5, scope: !2850)
!3133 = !DILocation(line: 826, column: 5, scope: !2850)
!3134 = !DILocation(line: 873, column: 5, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !102, line: 830, column: 5)
!3136 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 829, column: 5)
!3137 = !DILocation(line: 874, column: 5, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3136, file: !102, line: 875, column: 5)
!3139 = !DILocation(line: 875, column: 5, scope: !1909)
!3140 = !DILocation(line: 878, column: 9, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 878, column: 9)
!3142 = !DILocation(line: 878, column: 15, scope: !3141)
!3143 = !DILocation(line: 878, column: 9, scope: !1909)
!3144 = !DILocation(line: 880, column: 11, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3146, file: !102, line: 880, column: 11)
!3146 = distinct !DILexicalBlock(scope: !3141, file: !102, line: 878, column: 22)
!3147 = !DILocation(line: 880, column: 17, scope: !3145)
!3148 = !DILocation(line: 880, column: 11, scope: !3146)
!3149 = !DILocation(line: 881, column: 15, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3145, file: !102, line: 880, column: 23)
!3151 = !DILocation(line: 882, column: 7, scope: !3150)
!3152 = !DILocation(line: 883, column: 15, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3145, file: !102, line: 882, column: 14)
!3154 = !DILocation(line: 884, column: 13, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !102, line: 886, column: 7)
!3156 = distinct !DILexicalBlock(scope: !3146, file: !102, line: 885, column: 7)
!3157 = !DILocation(line: 884, column: 7, scope: !3155)
!3158 = !DILocation(line: 888, column: 5, scope: !3146)
!3159 = !DILocation(line: 886, column: 9, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 886, column: 9)
!3161 = !DILocation(line: 886, column: 15, scope: !3160)
!3162 = !DILocation(line: 886, column: 9, scope: !1909)
!3163 = !DILocation(line: 888, column: 7, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !102, line: 887, column: 7)
!3165 = distinct !DILexicalBlock(scope: !3160, file: !102, line: 886, column: 21)
!3166 = !DILocation(line: 888, column: 15, scope: !3164)
!3167 = !DILocation(line: 888, column: 22, scope: !3164)
!3168 = !DILocation(line: 889, column: 24, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3164, file: !102, line: 889, column: 7)
!3170 = !DILocation(line: 889, column: 43, scope: !3169)
!3171 = !DILocation(line: 889, column: 45, scope: !3169)
!3172 = !DILocation(line: 889, column: 61, scope: !3169)
!3173 = !DILocation(line: 889, column: 18, scope: !3169)
!3174 = !DILocalVariable(name: "tmp___10", scope: !1782, file: !102, line: 528, type: !14)
!3175 = !DILocation(line: 889, column: 23, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3165, file: !102, line: 889, column: 11)
!3177 = !DILocation(line: 889, column: 11, scope: !3165)
!3178 = !DILocation(line: 889, column: 18, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3180, file: !102, line: 891, column: 9)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !102, line: 890, column: 9)
!3181 = distinct !DILexicalBlock(scope: !3176, file: !102, line: 889, column: 31)
!3182 = !DILocation(line: 889, column: 9, scope: !3179)
!3183 = !DILocation(line: 892, column: 7, scope: !3181)
!3184 = !DILocation(line: 893, column: 5, scope: !3165)
!3185 = !DILocation(line: 893, column: 7, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3187, file: !102, line: 894, column: 7)
!3187 = distinct !DILexicalBlock(scope: !3160, file: !102, line: 893, column: 12)
!3188 = !DILocation(line: 893, column: 15, scope: !3186)
!3189 = !DILocation(line: 893, column: 22, scope: !3186)
!3190 = !DILocation(line: 894, column: 24, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3186, file: !102, line: 894, column: 7)
!3192 = !DILocation(line: 894, column: 43, scope: !3191)
!3193 = !DILocation(line: 894, column: 45, scope: !3191)
!3194 = !DILocation(line: 894, column: 61, scope: !3191)
!3195 = !DILocation(line: 894, column: 18, scope: !3191)
!3196 = !DILocalVariable(name: "tmp___11", scope: !1782, file: !102, line: 529, type: !14)
!3197 = !DILocation(line: 894, column: 23, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3187, file: !102, line: 894, column: 11)
!3199 = !DILocation(line: 894, column: 11, scope: !3187)
!3200 = !DILocation(line: 894, column: 18, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !102, line: 896, column: 9)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !102, line: 895, column: 9)
!3203 = distinct !DILexicalBlock(scope: !3198, file: !102, line: 894, column: 31)
!3204 = !DILocation(line: 894, column: 9, scope: !3201)
!3205 = !DILocation(line: 897, column: 7, scope: !3203)
!3206 = !DILocation(line: 896, column: 5, scope: !1909)
!3207 = !DILocation(line: 901, column: 9, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 901, column: 9)
!3209 = !DILocation(line: 901, column: 13, scope: !3208)
!3210 = !DILocation(line: 901, column: 9, scope: !1909)
!3211 = !DILocation(line: 903, column: 11, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !102, line: 903, column: 11)
!3213 = distinct !DILexicalBlock(scope: !3208, file: !102, line: 901, column: 20)
!3214 = !DILocation(line: 903, column: 15, scope: !3212)
!3215 = !DILocation(line: 903, column: 11, scope: !3213)
!3216 = !DILocation(line: 904, column: 13, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !102, line: 903, column: 21)
!3218 = !DILocation(line: 905, column: 7, scope: !3217)
!3219 = !DILocation(line: 906, column: 13, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3212, file: !102, line: 905, column: 14)
!3221 = !DILocation(line: 907, column: 13, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3223, file: !102, line: 909, column: 7)
!3223 = distinct !DILexicalBlock(scope: !3213, file: !102, line: 908, column: 7)
!3224 = !DILocation(line: 907, column: 7, scope: !3222)
!3225 = !DILocation(line: 911, column: 5, scope: !3213)
!3226 = !DILocation(line: 909, column: 9, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 909, column: 9)
!3228 = !DILocation(line: 909, column: 13, scope: !3227)
!3229 = !DILocation(line: 909, column: 9, scope: !1909)
!3230 = !DILocation(line: 911, column: 7, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !102, line: 910, column: 7)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !102, line: 909, column: 19)
!3233 = !DILocation(line: 911, column: 15, scope: !3231)
!3234 = !DILocation(line: 911, column: 22, scope: !3231)
!3235 = !DILocation(line: 912, column: 24, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3231, file: !102, line: 912, column: 7)
!3237 = !DILocation(line: 912, column: 43, scope: !3236)
!3238 = !DILocation(line: 912, column: 45, scope: !3236)
!3239 = !DILocation(line: 912, column: 61, scope: !3236)
!3240 = !DILocation(line: 912, column: 18, scope: !3236)
!3241 = !DILocalVariable(name: "tmp___12", scope: !1782, file: !102, line: 530, type: !14)
!3242 = !DILocation(line: 912, column: 23, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3232, file: !102, line: 912, column: 11)
!3244 = !DILocation(line: 912, column: 11, scope: !3232)
!3245 = !DILocation(line: 912, column: 18, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !102, line: 914, column: 9)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !102, line: 913, column: 9)
!3248 = distinct !DILexicalBlock(scope: !3243, file: !102, line: 912, column: 31)
!3249 = !DILocation(line: 912, column: 9, scope: !3246)
!3250 = !DILocation(line: 915, column: 7, scope: !3248)
!3251 = !DILocation(line: 916, column: 5, scope: !3232)
!3252 = !DILocation(line: 916, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !102, line: 917, column: 7)
!3254 = distinct !DILexicalBlock(scope: !3227, file: !102, line: 916, column: 12)
!3255 = !DILocation(line: 916, column: 15, scope: !3253)
!3256 = !DILocation(line: 916, column: 22, scope: !3253)
!3257 = !DILocation(line: 917, column: 24, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3253, file: !102, line: 917, column: 7)
!3259 = !DILocation(line: 917, column: 43, scope: !3258)
!3260 = !DILocation(line: 917, column: 45, scope: !3258)
!3261 = !DILocation(line: 917, column: 61, scope: !3258)
!3262 = !DILocation(line: 917, column: 18, scope: !3258)
!3263 = !DILocalVariable(name: "tmp___13", scope: !1782, file: !102, line: 531, type: !14)
!3264 = !DILocation(line: 917, column: 23, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3254, file: !102, line: 917, column: 11)
!3266 = !DILocation(line: 917, column: 11, scope: !3254)
!3267 = !DILocation(line: 917, column: 18, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3269, file: !102, line: 919, column: 9)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !102, line: 918, column: 9)
!3270 = distinct !DILexicalBlock(scope: !3265, file: !102, line: 917, column: 31)
!3271 = !DILocation(line: 917, column: 9, scope: !3268)
!3272 = !DILocation(line: 920, column: 7, scope: !3270)
!3273 = !DILocation(line: 919, column: 5, scope: !1909)
!3274 = !DILocation(line: 923, column: 5, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !102, line: 923, column: 5)
!3276 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 922, column: 5)
!3277 = !DILocation(line: 924, column: 5, scope: !1909)
!3278 = !DILocation(line: 926, column: 12, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !102, line: 927, column: 5)
!3280 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 926, column: 5)
!3281 = !DILocation(line: 926, column: 5, scope: !3279)
!3282 = !DILocation(line: 927, column: 14, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3280, file: !102, line: 928, column: 5)
!3284 = !DILocation(line: 927, column: 5, scope: !3283)
!3285 = !DILocation(line: 928, column: 5, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3280, file: !102, line: 929, column: 5)
!3287 = !DILocation(line: 929, column: 15, scope: !3280)
!3288 = !DILocation(line: 930, column: 5, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3280, file: !102, line: 930, column: 5)
!3290 = !DILocation(line: 933, column: 5, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3292, file: !102, line: 934, column: 5)
!3292 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 933, column: 5)
!3293 = !DILocation(line: 934, column: 14, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3292, file: !102, line: 935, column: 5)
!3295 = !DILocation(line: 934, column: 5, scope: !3294)
!3296 = !DILocation(line: 935, column: 5, scope: !1909)
!3297 = !DILocation(line: 937, column: 12, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !1888, file: !102, line: 937, column: 9)
!3299 = !DILocation(line: 937, column: 9, scope: !1888)
!3300 = !DILocation(line: 937, column: 14, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3302, file: !102, line: 937, column: 11)
!3302 = distinct !DILexicalBlock(scope: !3298, file: !102, line: 937, column: 19)
!3303 = !DILocation(line: 937, column: 11, scope: !3302)
!3304 = !DILocation(line: 937, column: 16, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3306, file: !102, line: 937, column: 13)
!3306 = distinct !DILexicalBlock(scope: !3301, file: !102, line: 937, column: 21)
!3307 = !DILocation(line: 937, column: 13, scope: !3306)
!3308 = !DILocation(line: 939, column: 18, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !102, line: 939, column: 11)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !102, line: 938, column: 11)
!3311 = distinct !DILexicalBlock(scope: !3305, file: !102, line: 937, column: 24)
!3312 = !DILocation(line: 939, column: 34, scope: !3309)
!3313 = !DILocation(line: 939, column: 43, scope: !3309)
!3314 = !DILocation(line: 939, column: 59, scope: !3309)
!3315 = !DILocation(line: 939, column: 84, scope: !3309)
!3316 = !DILocation(line: 939, column: 82, scope: !3309)
!3317 = !DILocation(line: 939, column: 89, scope: !3309)
!3318 = !DILocation(line: 939, column: 68, scope: !3309)
!3319 = !DILocation(line: 939, column: 94, scope: !3309)
!3320 = !DILocation(line: 939, column: 100, scope: !3309)
!3321 = !DILocation(line: 940, column: 19, scope: !3309)
!3322 = !DILocation(line: 940, column: 35, scope: !3309)
!3323 = !DILocation(line: 940, column: 61, scope: !3309)
!3324 = !DILocation(line: 940, column: 59, scope: !3309)
!3325 = !DILocation(line: 940, column: 66, scope: !3309)
!3326 = !DILocation(line: 940, column: 45, scope: !3309)
!3327 = !DILocation(line: 940, column: 71, scope: !3309)
!3328 = !DILocation(line: 940, column: 77, scope: !3309)
!3329 = !DILocation(line: 939, column: 11, scope: !3309)
!3330 = !DILocation(line: 943, column: 9, scope: !3311)
!3331 = !DILocation(line: 944, column: 7, scope: !3306)
!3332 = !DILocation(line: 945, column: 5, scope: !3302)
!3333 = !DILocation(line: 527, column: 12, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !1888, file: !102, line: 527, column: 9)
!3335 = !DILocation(line: 527, column: 9, scope: !1888)
!3336 = !DILocation(line: 527, column: 14, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3338, file: !102, line: 527, column: 11)
!3338 = distinct !DILexicalBlock(scope: !3334, file: !102, line: 527, column: 19)
!3339 = !DILocation(line: 527, column: 11, scope: !3338)
!3340 = !DILocation(line: 527, column: 19, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3342, file: !102, line: 527, column: 13)
!3342 = distinct !DILexicalBlock(scope: !3337, file: !102, line: 527, column: 21)
!3343 = !DILocation(line: 527, column: 13, scope: !3342)
!3344 = !DILocation(line: 527, column: 11, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3341, file: !102, line: 527, column: 28)
!3346 = !DILocation(line: 529, column: 7, scope: !3342)
!3347 = !DILocation(line: 527, column: 9, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3337, file: !102, line: 529, column: 14)
!3349 = !DILocation(line: 529, column: 5, scope: !3338)
!3350 = !DILocation(line: 527, column: 7, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3334, file: !102, line: 529, column: 12)
!3352 = distinct !{!3352, !1876, !3353}
!3353 = !DILocation(line: 529, column: 3, scope: !1877)
!3354 = !DILocation(line: 531, column: 3, scope: !1877)
!3355 = !DILocation(line: 946, column: 3, scope: !1843)
!3356 = distinct !DISubprogram(name: "set_sound", scope: !102, file: !102, line: 169, type: !3357, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3357 = !DISubroutineType(types: !3358)
!3358 = !{null, !14, !1747}
!3359 = !DILocalVariable(name: "argc", arg: 1, scope: !3356, file: !102, line: 169, type: !14)
!3360 = !DILocation(line: 0, scope: !3356)
!3361 = !DILocalVariable(name: "argv", arg: 2, scope: !3356, file: !102, line: 169, type: !1747)
!3362 = !DILocalVariable(name: "vol_left", scope: !3356, file: !102, line: 172, type: !14)
!3363 = !DILocation(line: 172, column: 7, scope: !3356)
!3364 = !DILocalVariable(name: "vol_right", scope: !3356, file: !102, line: 173, type: !14)
!3365 = !DILocation(line: 173, column: 7, scope: !3356)
!3366 = !DILocalVariable(name: "dummy", scope: !3356, file: !102, line: 174, type: !14)
!3367 = !DILocation(line: 174, column: 7, scope: !3356)
!3368 = !DILocalVariable(name: "pos", scope: !3356, file: !102, line: 175, type: !14)
!3369 = !DILocation(line: 175, column: 7, scope: !3356)
!3370 = !DILocalVariable(name: "left", scope: !3356, file: !102, line: 181, type: !14)
!3371 = !DILocation(line: 181, column: 7, scope: !3356)
!3372 = !DILocalVariable(name: "right", scope: !3356, file: !102, line: 182, type: !14)
!3373 = !DILocation(line: 182, column: 7, scope: !3356)
!3374 = !DILocalVariable(name: "__cil_tmp21", scope: !3356, file: !102, line: 189, type: !28)
!3375 = !DILocation(line: 189, column: 9, scope: !3356)
!3376 = !DILocalVariable(name: "__cil_tmp22", scope: !3356, file: !102, line: 190, type: !28)
!3377 = !DILocation(line: 190, column: 9, scope: !3356)
!3378 = !DILocalVariable(name: "__cil_tmp23", scope: !3356, file: !102, line: 191, type: !28)
!3379 = !DILocation(line: 191, column: 9, scope: !3356)
!3380 = !DILocalVariable(name: "__cil_tmp24", scope: !3356, file: !102, line: 192, type: !28)
!3381 = !DILocation(line: 192, column: 9, scope: !3356)
!3382 = !DILocalVariable(name: "__cil_tmp25", scope: !3356, file: !102, line: 193, type: !28)
!3383 = !DILocation(line: 193, column: 9, scope: !3356)
!3384 = !DILocalVariable(name: "__cil_tmp26", scope: !3356, file: !102, line: 194, type: !28)
!3385 = !DILocation(line: 194, column: 9, scope: !3356)
!3386 = !DILocalVariable(name: "__cil_tmp27", scope: !3356, file: !102, line: 195, type: !28)
!3387 = !DILocation(line: 195, column: 9, scope: !3356)
!3388 = !DILocalVariable(name: "__cil_tmp28", scope: !3356, file: !102, line: 196, type: !28)
!3389 = !DILocation(line: 196, column: 9, scope: !3356)
!3390 = !DILocalVariable(name: "__cil_tmp29", scope: !3356, file: !102, line: 197, type: !28)
!3391 = !DILocation(line: 197, column: 9, scope: !3356)
!3392 = !DILocalVariable(name: "__cil_tmp30", scope: !3356, file: !102, line: 198, type: !28)
!3393 = !DILocation(line: 198, column: 9, scope: !3356)
!3394 = !DILocalVariable(name: "__cil_tmp31", scope: !3356, file: !102, line: 199, type: !28)
!3395 = !DILocation(line: 199, column: 9, scope: !3356)
!3396 = !DILocalVariable(name: "__cil_tmp32", scope: !3356, file: !102, line: 200, type: !28)
!3397 = !DILocation(line: 200, column: 9, scope: !3356)
!3398 = !DILocalVariable(name: "__cil_tmp33", scope: !3356, file: !102, line: 201, type: !28)
!3399 = !DILocation(line: 201, column: 9, scope: !3356)
!3400 = !DILocalVariable(name: "__cil_tmp34", scope: !3356, file: !102, line: 202, type: !28)
!3401 = !DILocation(line: 202, column: 9, scope: !3356)
!3402 = !DILocalVariable(name: "__cil_tmp35", scope: !3356, file: !102, line: 203, type: !28)
!3403 = !DILocation(line: 203, column: 9, scope: !3356)
!3404 = !DILocalVariable(name: "__cil_tmp36", scope: !3356, file: !102, line: 204, type: !28)
!3405 = !DILocation(line: 204, column: 9, scope: !3356)
!3406 = !DILocalVariable(name: "__cil_tmp37", scope: !3356, file: !102, line: 205, type: !28)
!3407 = !DILocation(line: 205, column: 9, scope: !3356)
!3408 = !DILocalVariable(name: "__cil_tmp38", scope: !3356, file: !102, line: 206, type: !28)
!3409 = !DILocation(line: 206, column: 9, scope: !3356)
!3410 = !DILocalVariable(name: "__cil_tmp39", scope: !3356, file: !102, line: 207, type: !28)
!3411 = !DILocation(line: 207, column: 9, scope: !3356)
!3412 = !DILocalVariable(name: "__cil_tmp40", scope: !3356, file: !102, line: 208, type: !28)
!3413 = !DILocation(line: 208, column: 9, scope: !3356)
!3414 = !DILocalVariable(name: "__cil_tmp41", scope: !3356, file: !102, line: 209, type: !28)
!3415 = !DILocation(line: 209, column: 9, scope: !3356)
!3416 = !DILocalVariable(name: "__cil_tmp42", scope: !3356, file: !102, line: 210, type: !28)
!3417 = !DILocation(line: 210, column: 9, scope: !3356)
!3418 = !DILocalVariable(name: "__cil_tmp43", scope: !3356, file: !102, line: 211, type: !28)
!3419 = !DILocation(line: 211, column: 9, scope: !3356)
!3420 = !DILocalVariable(name: "__cil_tmp44", scope: !3356, file: !102, line: 212, type: !28)
!3421 = !DILocation(line: 212, column: 9, scope: !3356)
!3422 = !DILocalVariable(name: "__cil_tmp45", scope: !3356, file: !102, line: 213, type: !28)
!3423 = !DILocation(line: 213, column: 9, scope: !3356)
!3424 = !DILocalVariable(name: "__cil_tmp46", scope: !3356, file: !102, line: 214, type: !28)
!3425 = !DILocation(line: 214, column: 9, scope: !3356)
!3426 = !DILocalVariable(name: "__cil_tmp47", scope: !3356, file: !102, line: 215, type: !28)
!3427 = !DILocation(line: 215, column: 9, scope: !3356)
!3428 = !DILocalVariable(name: "argc_count", scope: !3356, file: !102, line: 176, type: !14)
!3429 = !DILocation(line: 179, column: 15, scope: !3430)
!3430 = distinct !DILexicalBlock(scope: !3431, file: !102, line: 174, column: 3)
!3431 = distinct !DILexicalBlock(scope: !3432, file: !102, line: 218, column: 3)
!3432 = distinct !DILexicalBlock(scope: !3356, file: !102, line: 217, column: 3)
!3433 = !DILocalVariable(name: "SAVE_FILE", scope: !3356, file: !102, line: 179, type: !28)
!3434 = !DILocation(line: 181, column: 3, scope: !3435)
!3435 = distinct !DILexicalBlock(scope: !3431, file: !102, line: 181, column: 3)
!3436 = !DILocation(line: 182, column: 3, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !102, line: 185, column: 3)
!3438 = distinct !DILexicalBlock(scope: !3432, file: !102, line: 184, column: 3)
!3439 = !DILocation(line: 0, scope: !3432)
!3440 = !DILocation(line: 182, column: 13, scope: !3437)
!3441 = !DILocation(line: 184, column: 33, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !102, line: 186, column: 5)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !102, line: 185, column: 5)
!3444 = distinct !DILexicalBlock(scope: !3437, file: !102, line: 182, column: 13)
!3445 = !DILocation(line: 184, column: 26, scope: !3442)
!3446 = !DILocation(line: 184, column: 16, scope: !3442)
!3447 = !DILocalVariable(name: "arg_code", scope: !3356, file: !102, line: 177, type: !14)
!3448 = !DILocation(line: 185, column: 28, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3444, file: !102, line: 185, column: 9)
!3450 = !DILocation(line: 185, column: 20, scope: !3449)
!3451 = !DILocation(line: 185, column: 9, scope: !3444)
!3452 = !DILocation(line: 191, column: 20, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 191, column: 11)
!3454 = distinct !DILexicalBlock(scope: !3455, file: !102, line: 186, column: 7)
!3455 = distinct !DILexicalBlock(scope: !3449, file: !102, line: 185, column: 33)
!3456 = !DILocation(line: 191, column: 11, scope: !3454)
!3457 = !DILocation(line: 191, column: 9, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3453, file: !102, line: 191, column: 27)
!3459 = !DILocation(line: 191, column: 20, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 191, column: 11)
!3461 = !DILocation(line: 191, column: 9, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3460, file: !102, line: 191, column: 27)
!3463 = !DILocation(line: 191, column: 20, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 191, column: 11)
!3465 = !DILocation(line: 191, column: 9, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3464, file: !102, line: 191, column: 27)
!3467 = !DILocation(line: 191, column: 20, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 191, column: 11)
!3469 = !DILocation(line: 191, column: 9, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3468, file: !102, line: 191, column: 27)
!3471 = !DILocation(line: 194, column: 20, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 194, column: 11)
!3473 = !DILocation(line: 194, column: 11, scope: !3454)
!3474 = !DILocation(line: 194, column: 9, scope: !3475)
!3475 = distinct !DILexicalBlock(scope: !3472, file: !102, line: 194, column: 27)
!3476 = !DILocation(line: 194, column: 20, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 194, column: 11)
!3478 = !DILocation(line: 194, column: 9, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3477, file: !102, line: 194, column: 27)
!3480 = !DILocation(line: 197, column: 7, scope: !3454)
!3481 = !DILocation(line: 192, column: 7, scope: !3454)
!3482 = !DILocation(line: 195, column: 40, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !102, line: 196, column: 7)
!3484 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 195, column: 7)
!3485 = !DILocation(line: 196, column: 22, scope: !3483)
!3486 = !DILocation(line: 196, column: 15, scope: !3483)
!3487 = !DILocation(line: 195, column: 7, scope: !3483)
!3488 = !DILocation(line: 196, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !102, line: 198, column: 7)
!3490 = !DILocation(line: 198, column: 40, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3492, file: !102, line: 201, column: 7)
!3492 = distinct !DILexicalBlock(scope: !3454, file: !102, line: 200, column: 7)
!3493 = !DILocation(line: 199, column: 22, scope: !3491)
!3494 = !DILocation(line: 199, column: 15, scope: !3491)
!3495 = !DILocation(line: 198, column: 7, scope: !3491)
!3496 = !DILocation(line: 199, column: 7, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3492, file: !102, line: 201, column: 7)
!3498 = !DILocation(line: 204, column: 5, scope: !3455)
!3499 = !DILocation(line: 203, column: 18, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 203, column: 9)
!3501 = distinct !DILexicalBlock(scope: !3444, file: !102, line: 205, column: 5)
!3502 = !DILocation(line: 203, column: 9, scope: !3501)
!3503 = !DILocation(line: 203, column: 7, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3500, file: !102, line: 203, column: 25)
!3505 = !DILocation(line: 206, column: 18, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 206, column: 9)
!3507 = !DILocation(line: 206, column: 9, scope: !3501)
!3508 = !DILocation(line: 206, column: 7, scope: !3509)
!3509 = distinct !DILexicalBlock(scope: !3506, file: !102, line: 206, column: 25)
!3510 = !DILocation(line: 228, column: 18, scope: !3511)
!3511 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 228, column: 9)
!3512 = !DILocation(line: 228, column: 9, scope: !3501)
!3513 = !DILocation(line: 228, column: 7, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3511, file: !102, line: 228, column: 25)
!3515 = !DILocation(line: 251, column: 18, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 251, column: 9)
!3517 = !DILocation(line: 251, column: 9, scope: !3501)
!3518 = !DILocation(line: 251, column: 7, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3516, file: !102, line: 251, column: 25)
!3520 = !DILocation(line: 295, column: 18, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 295, column: 9)
!3522 = !DILocation(line: 295, column: 9, scope: !3501)
!3523 = !DILocation(line: 295, column: 7, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3521, file: !102, line: 295, column: 25)
!3525 = !DILocation(line: 356, column: 18, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3527 = !DILocation(line: 356, column: 9, scope: !3501)
!3528 = !DILocation(line: 356, column: 7, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3526, file: !102, line: 356, column: 25)
!3530 = !DILocation(line: 356, column: 18, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3532 = !DILocation(line: 356, column: 7, scope: !3533)
!3533 = distinct !DILexicalBlock(scope: !3531, file: !102, line: 356, column: 25)
!3534 = !DILocation(line: 356, column: 18, scope: !3535)
!3535 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3536 = !DILocation(line: 356, column: 7, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3535, file: !102, line: 356, column: 25)
!3538 = !DILocation(line: 356, column: 18, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3540 = !DILocation(line: 356, column: 7, scope: !3541)
!3541 = distinct !DILexicalBlock(scope: !3539, file: !102, line: 356, column: 25)
!3542 = !DILocation(line: 356, column: 18, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3544 = !DILocation(line: 356, column: 7, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3543, file: !102, line: 356, column: 25)
!3546 = !DILocation(line: 356, column: 18, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3548 = !DILocation(line: 356, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3547, file: !102, line: 356, column: 25)
!3550 = !DILocation(line: 356, column: 18, scope: !3551)
!3551 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3552 = !DILocation(line: 356, column: 7, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3551, file: !102, line: 356, column: 25)
!3554 = !DILocation(line: 356, column: 18, scope: !3555)
!3555 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3556 = !DILocation(line: 356, column: 7, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3555, file: !102, line: 356, column: 24)
!3558 = !DILocation(line: 356, column: 18, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3560 = !DILocation(line: 356, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3559, file: !102, line: 356, column: 24)
!3562 = !DILocation(line: 356, column: 18, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3564 = !DILocation(line: 356, column: 7, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3563, file: !102, line: 356, column: 24)
!3566 = !DILocation(line: 356, column: 18, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3568 = !DILocation(line: 356, column: 7, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3567, file: !102, line: 356, column: 24)
!3570 = !DILocation(line: 356, column: 18, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3572 = !DILocation(line: 356, column: 7, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3571, file: !102, line: 356, column: 24)
!3574 = !DILocation(line: 356, column: 18, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3576 = !DILocation(line: 356, column: 7, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3575, file: !102, line: 356, column: 24)
!3578 = !DILocation(line: 356, column: 18, scope: !3579)
!3579 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3580 = !DILocation(line: 356, column: 7, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3579, file: !102, line: 356, column: 24)
!3582 = !DILocation(line: 356, column: 18, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3584 = !DILocation(line: 356, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3583, file: !102, line: 356, column: 24)
!3586 = !DILocation(line: 356, column: 18, scope: !3587)
!3587 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3588 = !DILocation(line: 356, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3587, file: !102, line: 356, column: 24)
!3590 = !DILocation(line: 356, column: 18, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 9)
!3592 = !DILocation(line: 356, column: 7, scope: !3593)
!3593 = distinct !DILexicalBlock(scope: !3591, file: !102, line: 356, column: 24)
!3594 = !DILocation(line: 370, column: 18, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 370, column: 9)
!3596 = !DILocation(line: 370, column: 9, scope: !3501)
!3597 = !DILocation(line: 370, column: 7, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3595, file: !102, line: 370, column: 25)
!3599 = !DILocation(line: 388, column: 18, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 388, column: 9)
!3601 = !DILocation(line: 388, column: 9, scope: !3501)
!3602 = !DILocation(line: 388, column: 7, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3600, file: !102, line: 388, column: 25)
!3604 = !DILocation(line: 406, column: 18, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 406, column: 9)
!3606 = !DILocation(line: 406, column: 9, scope: !3501)
!3607 = !DILocation(line: 406, column: 7, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3605, file: !102, line: 406, column: 25)
!3609 = !DILocation(line: 201, column: 5, scope: !3501)
!3610 = !DILocation(line: 204, column: 5, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !102, line: 204, column: 5)
!3612 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 203, column: 5)
!3613 = !DILocation(line: 205, column: 5, scope: !3501)
!3614 = !DILocation(line: 207, column: 17, scope: !3615)
!3615 = distinct !DILexicalBlock(scope: !3616, file: !102, line: 208, column: 5)
!3616 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 207, column: 5)
!3617 = !DILocalVariable(name: "save_file", scope: !3356, file: !102, line: 178, type: !39)
!3618 = !DILocation(line: 207, column: 9, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 207, column: 9)
!3620 = !DILocation(line: 207, column: 35, scope: !3619)
!3621 = !DILocation(line: 207, column: 9, scope: !3501)
!3622 = !DILocation(line: 208, column: 7, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !102, line: 209, column: 7)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !102, line: 208, column: 7)
!3625 = distinct !DILexicalBlock(scope: !3619, file: !102, line: 207, column: 67)
!3626 = !DILocation(line: 211, column: 5, scope: !3625)
!3627 = !DILocation(line: 211, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3629, file: !102, line: 213, column: 7)
!3629 = distinct !DILexicalBlock(scope: !3630, file: !102, line: 212, column: 7)
!3630 = distinct !DILexicalBlock(scope: !3619, file: !102, line: 211, column: 12)
!3631 = !DILocation(line: 213, column: 13, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3629, file: !102, line: 214, column: 7)
!3633 = !DILocation(line: 213, column: 7, scope: !3632)
!3634 = !DILocation(line: 216, column: 13, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3629, file: !102, line: 216, column: 7)
!3636 = !DILocation(line: 216, column: 7, scope: !3635)
!3637 = !DILocalVariable(name: "ii", scope: !3356, file: !102, line: 171, type: !14)
!3638 = !DILocation(line: 219, column: 7, scope: !3639)
!3639 = distinct !DILexicalBlock(scope: !3640, file: !102, line: 222, column: 7)
!3640 = distinct !DILexicalBlock(scope: !3630, file: !102, line: 221, column: 7)
!3641 = !DILocation(line: 0, scope: !3630)
!3642 = !DILocation(line: 219, column: 17, scope: !3639)
!3643 = !DILocation(line: 219, column: 19, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3645, file: !102, line: 219, column: 13)
!3645 = distinct !DILexicalBlock(scope: !3639, file: !102, line: 219, column: 17)
!3646 = !DILocation(line: 219, column: 13, scope: !3645)
!3647 = !DILocation(line: 219, column: 11, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3644, file: !102, line: 219, column: 26)
!3649 = !DILocation(line: 221, column: 9, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3651, file: !102, line: 222, column: 9)
!3651 = distinct !DILexicalBlock(scope: !3645, file: !102, line: 221, column: 9)
!3652 = !DILocation(line: 222, column: 16, scope: !3653)
!3653 = distinct !DILexicalBlock(scope: !3645, file: !102, line: 222, column: 13)
!3654 = !DILocation(line: 222, column: 25, scope: !3653)
!3655 = !DILocation(line: 222, column: 23, scope: !3653)
!3656 = !DILocation(line: 222, column: 13, scope: !3645)
!3657 = !DILocation(line: 223, column: 22, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3659, file: !102, line: 224, column: 11)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !102, line: 223, column: 11)
!3660 = distinct !DILexicalBlock(scope: !3653, file: !102, line: 222, column: 34)
!3661 = !DILocation(line: 223, column: 32, scope: !3658)
!3662 = !DILocation(line: 223, column: 11, scope: !3658)
!3663 = !DILocation(line: 226, column: 9, scope: !3660)
!3664 = !DILocation(line: 219, column: 12, scope: !3645)
!3665 = distinct !{!3665, !3638, !3666}
!3666 = !DILocation(line: 220, column: 7, scope: !3639)
!3667 = !DILocation(line: 222, column: 7, scope: !3639)
!3668 = !DILocation(line: 226, column: 5, scope: !3669)
!3669 = distinct !DILexicalBlock(scope: !3670, file: !102, line: 227, column: 5)
!3670 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 226, column: 5)
!3671 = !DILocation(line: 227, column: 5, scope: !3501)
!3672 = !DILocation(line: 229, column: 16, scope: !3673)
!3673 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 229, column: 5)
!3674 = !DILocation(line: 230, column: 63, scope: !3675)
!3675 = distinct !DILexicalBlock(scope: !3673, file: !102, line: 230, column: 5)
!3676 = !DILocation(line: 230, column: 56, scope: !3675)
!3677 = !DILocation(line: 230, column: 17, scope: !3675)
!3678 = !DILocation(line: 230, column: 9, scope: !3679)
!3679 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 230, column: 9)
!3680 = !DILocation(line: 230, column: 35, scope: !3679)
!3681 = !DILocation(line: 230, column: 9, scope: !3501)
!3682 = !DILocation(line: 231, column: 7, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3684, file: !102, line: 232, column: 7)
!3684 = distinct !DILexicalBlock(scope: !3685, file: !102, line: 231, column: 7)
!3685 = distinct !DILexicalBlock(scope: !3679, file: !102, line: 230, column: 67)
!3686 = !DILocation(line: 234, column: 5, scope: !3685)
!3687 = !DILocation(line: 234, column: 7, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !102, line: 236, column: 7)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !102, line: 235, column: 7)
!3690 = distinct !DILexicalBlock(scope: !3679, file: !102, line: 234, column: 12)
!3691 = !DILocation(line: 236, column: 13, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3689, file: !102, line: 237, column: 7)
!3693 = !DILocation(line: 236, column: 7, scope: !3692)
!3694 = !DILocation(line: 239, column: 13, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3689, file: !102, line: 239, column: 7)
!3696 = !DILocation(line: 239, column: 7, scope: !3695)
!3697 = !DILocation(line: 242, column: 7, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3699, file: !102, line: 245, column: 7)
!3699 = distinct !DILexicalBlock(scope: !3690, file: !102, line: 244, column: 7)
!3700 = !DILocation(line: 0, scope: !3690)
!3701 = !DILocation(line: 242, column: 17, scope: !3698)
!3702 = !DILocation(line: 242, column: 19, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !102, line: 242, column: 13)
!3704 = distinct !DILexicalBlock(scope: !3698, file: !102, line: 242, column: 17)
!3705 = !DILocation(line: 242, column: 13, scope: !3704)
!3706 = !DILocation(line: 242, column: 11, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3703, file: !102, line: 242, column: 26)
!3708 = !DILocation(line: 244, column: 9, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3710, file: !102, line: 245, column: 9)
!3710 = distinct !DILexicalBlock(scope: !3704, file: !102, line: 244, column: 9)
!3711 = !DILocation(line: 245, column: 16, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3704, file: !102, line: 245, column: 13)
!3713 = !DILocation(line: 245, column: 25, scope: !3712)
!3714 = !DILocation(line: 245, column: 23, scope: !3712)
!3715 = !DILocation(line: 245, column: 13, scope: !3704)
!3716 = !DILocation(line: 246, column: 22, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !102, line: 247, column: 11)
!3718 = distinct !DILexicalBlock(scope: !3719, file: !102, line: 246, column: 11)
!3719 = distinct !DILexicalBlock(scope: !3712, file: !102, line: 245, column: 34)
!3720 = !DILocation(line: 246, column: 32, scope: !3717)
!3721 = !DILocation(line: 246, column: 11, scope: !3717)
!3722 = !DILocation(line: 249, column: 9, scope: !3719)
!3723 = !DILocation(line: 242, column: 12, scope: !3704)
!3724 = distinct !{!3724, !3697, !3725}
!3725 = !DILocation(line: 243, column: 7, scope: !3698)
!3726 = !DILocation(line: 245, column: 7, scope: !3698)
!3727 = !DILocation(line: 248, column: 7, scope: !3728)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !102, line: 249, column: 7)
!3729 = distinct !DILexicalBlock(scope: !3690, file: !102, line: 248, column: 7)
!3730 = !DILocation(line: 250, column: 5, scope: !3501)
!3731 = !DILocation(line: 252, column: 17, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !102, line: 253, column: 5)
!3733 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 252, column: 5)
!3734 = !DILocation(line: 252, column: 9, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 252, column: 9)
!3736 = !DILocation(line: 252, column: 35, scope: !3735)
!3737 = !DILocation(line: 252, column: 9, scope: !3501)
!3738 = !DILocation(line: 254, column: 7, scope: !3739)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !102, line: 254, column: 7)
!3740 = distinct !DILexicalBlock(scope: !3741, file: !102, line: 253, column: 7)
!3741 = distinct !DILexicalBlock(scope: !3735, file: !102, line: 252, column: 67)
!3742 = !DILocation(line: 255, column: 7, scope: !3741)
!3743 = !DILocation(line: 258, column: 11, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 257, column: 5)
!3745 = !DILocation(line: 259, column: 17, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3744, file: !102, line: 259, column: 5)
!3747 = !DILocation(line: 259, column: 11, scope: !3746)
!3748 = !DILocalVariable(name: "tmp", scope: !3356, file: !102, line: 183, type: !14)
!3749 = !DILocation(line: 259, column: 13, scope: !3750)
!3750 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 259, column: 9)
!3751 = !DILocation(line: 259, column: 9, scope: !3501)
!3752 = !DILocation(line: 261, column: 13, scope: !3753)
!3753 = distinct !DILexicalBlock(scope: !3750, file: !102, line: 259, column: 20)
!3754 = !DILocation(line: 262, column: 5, scope: !3753)
!3755 = !DILocation(line: 267, column: 13, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3757, file: !102, line: 264, column: 5)
!3757 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 263, column: 5)
!3758 = !DILocation(line: 266, column: 5, scope: !3756)
!3759 = !DILocation(line: 267, column: 5, scope: !3760)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !102, line: 270, column: 5)
!3761 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 269, column: 5)
!3762 = !DILocation(line: 0, scope: !3501)
!3763 = !DILocation(line: 267, column: 15, scope: !3760)
!3764 = !DILocation(line: 267, column: 17, scope: !3765)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !102, line: 267, column: 11)
!3766 = distinct !DILexicalBlock(scope: !3760, file: !102, line: 267, column: 15)
!3767 = !DILocation(line: 267, column: 11, scope: !3766)
!3768 = !DILocation(line: 267, column: 9, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3765, file: !102, line: 267, column: 24)
!3770 = !DILocation(line: 269, column: 14, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3766, file: !102, line: 269, column: 11)
!3772 = !DILocation(line: 269, column: 23, scope: !3771)
!3773 = !DILocation(line: 269, column: 21, scope: !3771)
!3774 = !DILocation(line: 269, column: 11, scope: !3766)
!3775 = !DILocation(line: 271, column: 25, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3777, file: !102, line: 271, column: 9)
!3777 = distinct !DILexicalBlock(scope: !3778, file: !102, line: 270, column: 9)
!3778 = distinct !DILexicalBlock(scope: !3771, file: !102, line: 269, column: 32)
!3779 = !DILocation(line: 271, column: 92, scope: !3776)
!3780 = !DILocation(line: 271, column: 35, scope: !3776)
!3781 = !DILocation(line: 271, column: 113, scope: !3776)
!3782 = !DILocation(line: 271, column: 19, scope: !3776)
!3783 = !DILocalVariable(name: "tmp___0", scope: !3356, file: !102, line: 184, type: !14)
!3784 = !DILocation(line: 271, column: 21, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3778, file: !102, line: 271, column: 13)
!3786 = !DILocation(line: 271, column: 13, scope: !3778)
!3787 = !DILocation(line: 273, column: 11, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !102, line: 273, column: 11)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !102, line: 272, column: 11)
!3790 = distinct !DILexicalBlock(scope: !3785, file: !102, line: 271, column: 28)
!3791 = !DILocation(line: 274, column: 44, scope: !3792)
!3792 = distinct !DILexicalBlock(scope: !3789, file: !102, line: 275, column: 11)
!3793 = !DILocation(line: 275, column: 19, scope: !3792)
!3794 = !DILocation(line: 274, column: 11, scope: !3792)
!3795 = !DILocation(line: 275, column: 11, scope: !3796)
!3796 = distinct !DILexicalBlock(scope: !3789, file: !102, line: 277, column: 11)
!3797 = !DILocation(line: 277, column: 28, scope: !3798)
!3798 = distinct !DILexicalBlock(scope: !3799, file: !102, line: 280, column: 9)
!3799 = distinct !DILexicalBlock(scope: !3778, file: !102, line: 279, column: 9)
!3800 = !DILocation(line: 277, column: 20, scope: !3798)
!3801 = !DILocation(line: 277, column: 18, scope: !3798)
!3802 = !DILocation(line: 279, column: 16, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3778, file: !102, line: 279, column: 13)
!3804 = !DILocation(line: 279, column: 25, scope: !3803)
!3805 = !DILocation(line: 279, column: 23, scope: !3803)
!3806 = !DILocation(line: 279, column: 13, scope: !3778)
!3807 = !DILocation(line: 281, column: 31, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !102, line: 281, column: 11)
!3809 = distinct !DILexicalBlock(scope: !3810, file: !102, line: 280, column: 11)
!3810 = distinct !DILexicalBlock(scope: !3803, file: !102, line: 279, column: 37)
!3811 = !DILocation(line: 281, column: 23, scope: !3808)
!3812 = !DILocation(line: 281, column: 21, scope: !3808)
!3813 = !DILocation(line: 284, column: 9, scope: !3810)
!3814 = !DILocation(line: 284, column: 21, scope: !3815)
!3815 = distinct !DILexicalBlock(scope: !3803, file: !102, line: 284, column: 16)
!3816 = !DILocation(line: 286, column: 7, scope: !3778)
!3817 = !DILocation(line: 288, column: 18, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3771, file: !102, line: 286, column: 14)
!3819 = !DILocation(line: 289, column: 19, scope: !3818)
!3820 = !DILocation(line: 292, column: 15, scope: !3821)
!3821 = distinct !DILexicalBlock(scope: !3822, file: !102, line: 292, column: 7)
!3822 = distinct !DILexicalBlock(scope: !3766, file: !102, line: 291, column: 7)
!3823 = !DILocation(line: 292, column: 25, scope: !3821)
!3824 = !DILocation(line: 291, column: 7, scope: !3821)
!3825 = !DILocation(line: 267, column: 10, scope: !3822)
!3826 = distinct !{!3826, !3759, !3827}
!3827 = !DILocation(line: 269, column: 5, scope: !3760)
!3828 = !DILocation(line: 271, column: 5, scope: !3760)
!3829 = !DILocation(line: 293, column: 5, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !102, line: 275, column: 5)
!3831 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 274, column: 5)
!3832 = !DILocation(line: 294, column: 5, scope: !3501)
!3833 = !DILocation(line: 296, column: 16, scope: !3834)
!3834 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 296, column: 5)
!3835 = !DILocation(line: 297, column: 63, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3834, file: !102, line: 297, column: 5)
!3837 = !DILocation(line: 297, column: 56, scope: !3836)
!3838 = !DILocation(line: 297, column: 17, scope: !3836)
!3839 = !DILocation(line: 297, column: 9, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 297, column: 9)
!3841 = !DILocation(line: 297, column: 35, scope: !3840)
!3842 = !DILocation(line: 297, column: 9, scope: !3501)
!3843 = !DILocation(line: 299, column: 7, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3845, file: !102, line: 299, column: 7)
!3845 = distinct !DILexicalBlock(scope: !3846, file: !102, line: 298, column: 7)
!3846 = distinct !DILexicalBlock(scope: !3840, file: !102, line: 297, column: 67)
!3847 = !DILocation(line: 300, column: 7, scope: !3846)
!3848 = !DILocation(line: 303, column: 11, scope: !3849)
!3849 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 302, column: 5)
!3850 = !DILocation(line: 304, column: 21, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3849, file: !102, line: 304, column: 5)
!3852 = !DILocation(line: 304, column: 15, scope: !3851)
!3853 = !DILocalVariable(name: "tmp___1", scope: !3356, file: !102, line: 185, type: !14)
!3854 = !DILocation(line: 304, column: 17, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 304, column: 9)
!3856 = !DILocation(line: 304, column: 9, scope: !3501)
!3857 = !DILocation(line: 306, column: 13, scope: !3858)
!3858 = distinct !DILexicalBlock(scope: !3855, file: !102, line: 304, column: 24)
!3859 = !DILocation(line: 307, column: 5, scope: !3858)
!3860 = !DILocation(line: 312, column: 13, scope: !3861)
!3861 = distinct !DILexicalBlock(scope: !3862, file: !102, line: 309, column: 5)
!3862 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 308, column: 5)
!3863 = !DILocation(line: 311, column: 5, scope: !3861)
!3864 = !DILocation(line: 312, column: 5, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3866, file: !102, line: 315, column: 5)
!3866 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 314, column: 5)
!3867 = !DILocation(line: 312, column: 15, scope: !3865)
!3868 = !DILocation(line: 312, column: 17, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3870, file: !102, line: 312, column: 11)
!3870 = distinct !DILexicalBlock(scope: !3865, file: !102, line: 312, column: 15)
!3871 = !DILocation(line: 312, column: 11, scope: !3870)
!3872 = !DILocation(line: 312, column: 9, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3869, file: !102, line: 312, column: 24)
!3874 = !DILocation(line: 314, column: 14, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3870, file: !102, line: 314, column: 11)
!3876 = !DILocation(line: 314, column: 23, scope: !3875)
!3877 = !DILocation(line: 314, column: 21, scope: !3875)
!3878 = !DILocation(line: 314, column: 11, scope: !3870)
!3879 = !DILocation(line: 316, column: 25, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3881, file: !102, line: 316, column: 9)
!3881 = distinct !DILexicalBlock(scope: !3882, file: !102, line: 315, column: 9)
!3882 = distinct !DILexicalBlock(scope: !3875, file: !102, line: 314, column: 32)
!3883 = !DILocation(line: 316, column: 92, scope: !3880)
!3884 = !DILocation(line: 316, column: 35, scope: !3880)
!3885 = !DILocation(line: 316, column: 113, scope: !3880)
!3886 = !DILocation(line: 316, column: 19, scope: !3880)
!3887 = !DILocalVariable(name: "tmp___2", scope: !3356, file: !102, line: 186, type: !14)
!3888 = !DILocation(line: 316, column: 21, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3882, file: !102, line: 316, column: 13)
!3890 = !DILocation(line: 316, column: 13, scope: !3882)
!3891 = !DILocation(line: 318, column: 11, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3893, file: !102, line: 318, column: 11)
!3893 = distinct !DILexicalBlock(scope: !3894, file: !102, line: 317, column: 11)
!3894 = distinct !DILexicalBlock(scope: !3889, file: !102, line: 316, column: 28)
!3895 = !DILocation(line: 319, column: 44, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3893, file: !102, line: 320, column: 11)
!3897 = !DILocation(line: 320, column: 19, scope: !3896)
!3898 = !DILocation(line: 319, column: 11, scope: !3896)
!3899 = !DILocation(line: 320, column: 11, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3893, file: !102, line: 322, column: 11)
!3901 = !DILocation(line: 322, column: 28, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3903, file: !102, line: 325, column: 9)
!3903 = distinct !DILexicalBlock(scope: !3882, file: !102, line: 324, column: 9)
!3904 = !DILocation(line: 322, column: 20, scope: !3902)
!3905 = !DILocation(line: 322, column: 18, scope: !3902)
!3906 = !DILocation(line: 323, column: 16, scope: !3907)
!3907 = distinct !DILexicalBlock(scope: !3882, file: !102, line: 323, column: 13)
!3908 = !DILocation(line: 323, column: 25, scope: !3907)
!3909 = !DILocation(line: 323, column: 23, scope: !3907)
!3910 = !DILocation(line: 323, column: 13, scope: !3882)
!3911 = !DILocation(line: 325, column: 31, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3913, file: !102, line: 325, column: 11)
!3913 = distinct !DILexicalBlock(scope: !3914, file: !102, line: 324, column: 11)
!3914 = distinct !DILexicalBlock(scope: !3907, file: !102, line: 323, column: 37)
!3915 = !DILocation(line: 325, column: 23, scope: !3912)
!3916 = !DILocation(line: 325, column: 21, scope: !3912)
!3917 = !DILocation(line: 328, column: 9, scope: !3914)
!3918 = !DILocation(line: 328, column: 21, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3907, file: !102, line: 328, column: 16)
!3920 = !DILocation(line: 330, column: 7, scope: !3882)
!3921 = !DILocation(line: 332, column: 18, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3875, file: !102, line: 330, column: 14)
!3923 = !DILocation(line: 333, column: 19, scope: !3922)
!3924 = !DILocation(line: 336, column: 15, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3926, file: !102, line: 336, column: 7)
!3926 = distinct !DILexicalBlock(scope: !3870, file: !102, line: 335, column: 7)
!3927 = !DILocation(line: 336, column: 25, scope: !3925)
!3928 = !DILocation(line: 335, column: 7, scope: !3925)
!3929 = !DILocation(line: 312, column: 10, scope: !3926)
!3930 = distinct !{!3930, !3864, !3931}
!3931 = !DILocation(line: 314, column: 5, scope: !3865)
!3932 = !DILocation(line: 316, column: 5, scope: !3865)
!3933 = !DILocation(line: 337, column: 5, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3935, file: !102, line: 320, column: 5)
!3935 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 319, column: 5)
!3936 = !DILocation(line: 338, column: 5, scope: !3501)
!3937 = !DILocation(line: 358, column: 31, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3939, file: !102, line: 357, column: 5)
!3939 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 356, column: 5)
!3940 = !DILocation(line: 358, column: 24, scope: !3938)
!3941 = !DILocation(line: 358, column: 14, scope: !3938)
!3942 = !DILocalVariable(name: "device", scope: !3356, file: !102, line: 180, type: !14)
!3943 = !DILocation(line: 359, column: 16, scope: !3939)
!3944 = !DILocation(line: 361, column: 12, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 361, column: 9)
!3946 = !DILocation(line: 361, column: 25, scope: !3945)
!3947 = !DILocation(line: 361, column: 23, scope: !3945)
!3948 = !DILocation(line: 361, column: 9, scope: !3501)
!3949 = !DILocation(line: 364, column: 54, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3951, file: !102, line: 363, column: 7)
!3951 = distinct !DILexicalBlock(scope: !3952, file: !102, line: 362, column: 7)
!3952 = distinct !DILexicalBlock(scope: !3945, file: !102, line: 361, column: 34)
!3953 = !DILocation(line: 364, column: 47, scope: !3950)
!3954 = !DILocation(line: 364, column: 7, scope: !3950)
!3955 = !DILocation(line: 365, column: 22, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3951, file: !102, line: 367, column: 7)
!3957 = !DILocation(line: 365, column: 28, scope: !3956)
!3958 = !DILocation(line: 365, column: 7, scope: !3956)
!3959 = !DILocation(line: 368, column: 5, scope: !3952)
!3960 = !DILocation(line: 368, column: 40, scope: !3961)
!3961 = distinct !DILexicalBlock(scope: !3962, file: !102, line: 370, column: 7)
!3962 = distinct !DILexicalBlock(scope: !3963, file: !102, line: 369, column: 7)
!3963 = distinct !DILexicalBlock(scope: !3945, file: !102, line: 368, column: 12)
!3964 = !DILocation(line: 368, column: 7, scope: !3961)
!3965 = !DILocation(line: 369, column: 5, scope: !3501)
!3966 = !DILocation(line: 371, column: 16, scope: !3501)
!3967 = !DILocation(line: 372, column: 24, scope: !3968)
!3968 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 372, column: 9)
!3969 = !DILocation(line: 372, column: 17, scope: !3968)
!3970 = !DILocation(line: 372, column: 15, scope: !3968)
!3971 = !DILocation(line: 372, column: 9, scope: !3968)
!3972 = !DILocation(line: 372, column: 39, scope: !3968)
!3973 = !DILocation(line: 372, column: 9, scope: !3501)
!3974 = !DILocation(line: 373, column: 13, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3968, file: !102, line: 372, column: 46)
!3976 = !DILocation(line: 374, column: 5, scope: !3975)
!3977 = !DILocation(line: 374, column: 24, scope: !3978)
!3978 = distinct !DILexicalBlock(scope: !3968, file: !102, line: 374, column: 9)
!3979 = !DILocation(line: 374, column: 17, scope: !3978)
!3980 = !DILocation(line: 374, column: 15, scope: !3978)
!3981 = !DILocation(line: 374, column: 9, scope: !3978)
!3982 = !DILocation(line: 374, column: 39, scope: !3978)
!3983 = !DILocation(line: 374, column: 9, scope: !3968)
!3984 = !DILocation(line: 375, column: 13, scope: !3985)
!3985 = distinct !DILexicalBlock(scope: !3978, file: !102, line: 374, column: 46)
!3986 = !DILocation(line: 376, column: 5, scope: !3985)
!3987 = !DILocation(line: 378, column: 40, scope: !3988)
!3988 = distinct !DILexicalBlock(scope: !3989, file: !102, line: 378, column: 7)
!3989 = distinct !DILexicalBlock(scope: !3990, file: !102, line: 377, column: 7)
!3990 = distinct !DILexicalBlock(scope: !3978, file: !102, line: 376, column: 12)
!3991 = !DILocation(line: 379, column: 22, scope: !3988)
!3992 = !DILocation(line: 379, column: 15, scope: !3988)
!3993 = !DILocation(line: 378, column: 7, scope: !3988)
!3994 = !DILocation(line: 379, column: 7, scope: !3990)
!3995 = !DILocation(line: 382, column: 21, scope: !3996)
!3996 = distinct !DILexicalBlock(scope: !3997, file: !102, line: 382, column: 5)
!3997 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 381, column: 5)
!3998 = !DILocation(line: 382, column: 15, scope: !3996)
!3999 = !DILocalVariable(name: "tmp___3", scope: !3356, file: !102, line: 187, type: !14)
!4000 = !DILocation(line: 382, column: 17, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 382, column: 9)
!4002 = !DILocation(line: 382, column: 9, scope: !3501)
!4003 = !DILocation(line: 384, column: 40, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !102, line: 384, column: 7)
!4005 = distinct !DILexicalBlock(scope: !4006, file: !102, line: 383, column: 7)
!4006 = distinct !DILexicalBlock(scope: !4001, file: !102, line: 382, column: 24)
!4007 = !DILocation(line: 384, column: 7, scope: !4004)
!4008 = !DILocation(line: 387, column: 5, scope: !4006)
!4009 = !DILocation(line: 387, column: 5, scope: !3501)
!4010 = !DILocation(line: 389, column: 16, scope: !3501)
!4011 = !DILocation(line: 390, column: 24, scope: !4012)
!4012 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 390, column: 9)
!4013 = !DILocation(line: 390, column: 17, scope: !4012)
!4014 = !DILocation(line: 390, column: 15, scope: !4012)
!4015 = !DILocation(line: 390, column: 9, scope: !4012)
!4016 = !DILocation(line: 390, column: 39, scope: !4012)
!4017 = !DILocation(line: 390, column: 9, scope: !3501)
!4018 = !DILocation(line: 391, column: 11, scope: !4019)
!4019 = distinct !DILexicalBlock(scope: !4012, file: !102, line: 390, column: 46)
!4020 = !DILocation(line: 392, column: 5, scope: !4019)
!4021 = !DILocation(line: 392, column: 24, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4012, file: !102, line: 392, column: 9)
!4023 = !DILocation(line: 392, column: 17, scope: !4022)
!4024 = !DILocation(line: 392, column: 15, scope: !4022)
!4025 = !DILocation(line: 392, column: 9, scope: !4022)
!4026 = !DILocation(line: 392, column: 39, scope: !4022)
!4027 = !DILocation(line: 392, column: 9, scope: !4012)
!4028 = !DILocation(line: 393, column: 11, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4022, file: !102, line: 392, column: 46)
!4030 = !DILocation(line: 394, column: 5, scope: !4029)
!4031 = !DILocation(line: 396, column: 40, scope: !4032)
!4032 = distinct !DILexicalBlock(scope: !4033, file: !102, line: 396, column: 7)
!4033 = distinct !DILexicalBlock(scope: !4034, file: !102, line: 395, column: 7)
!4034 = distinct !DILexicalBlock(scope: !4022, file: !102, line: 394, column: 12)
!4035 = !DILocation(line: 397, column: 22, scope: !4032)
!4036 = !DILocation(line: 397, column: 15, scope: !4032)
!4037 = !DILocation(line: 396, column: 7, scope: !4032)
!4038 = !DILocation(line: 397, column: 7, scope: !4034)
!4039 = !DILocation(line: 400, column: 21, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4041, file: !102, line: 400, column: 5)
!4041 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 399, column: 5)
!4042 = !DILocation(line: 400, column: 15, scope: !4040)
!4043 = !DILocalVariable(name: "tmp___4", scope: !3356, file: !102, line: 188, type: !14)
!4044 = !DILocation(line: 400, column: 17, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 400, column: 9)
!4046 = !DILocation(line: 400, column: 9, scope: !3501)
!4047 = !DILocation(line: 402, column: 40, scope: !4048)
!4048 = distinct !DILexicalBlock(scope: !4049, file: !102, line: 402, column: 7)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !102, line: 401, column: 7)
!4050 = distinct !DILexicalBlock(scope: !4045, file: !102, line: 400, column: 24)
!4051 = !DILocation(line: 402, column: 7, scope: !4048)
!4052 = !DILocation(line: 405, column: 5, scope: !4050)
!4053 = !DILocation(line: 405, column: 5, scope: !3501)
!4054 = !DILocation(line: 407, column: 38, scope: !4055)
!4055 = distinct !DILexicalBlock(scope: !4056, file: !102, line: 408, column: 5)
!4056 = distinct !DILexicalBlock(scope: !3501, file: !102, line: 407, column: 5)
!4057 = !DILocation(line: 408, column: 20, scope: !4055)
!4058 = !DILocation(line: 408, column: 13, scope: !4055)
!4059 = !DILocation(line: 407, column: 5, scope: !4055)
!4060 = !DILocation(line: 408, column: 16, scope: !4056)
!4061 = !DILocation(line: 409, column: 5, scope: !3501)
!4062 = !DILocation(line: 411, column: 16, scope: !3444)
!4063 = !DILocation(line: 182, column: 23, scope: !4064)
!4064 = distinct !DILexicalBlock(scope: !3444, file: !102, line: 182, column: 9)
!4065 = !DILocation(line: 182, column: 9, scope: !3444)
!4066 = !DILocation(line: 182, column: 7, scope: !4067)
!4067 = distinct !DILexicalBlock(scope: !4064, file: !102, line: 182, column: 32)
!4068 = distinct !{!4068, !3436, !4069}
!4069 = !DILocation(line: 184, column: 3, scope: !3437)
!4070 = !DILocation(line: 186, column: 3, scope: !3437)
!4071 = !DILocation(line: 414, column: 3, scope: !3432)
!4072 = distinct !DISubprogram(name: "getbits", scope: !102, file: !102, line: 63, type: !4073, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4073 = !DISubroutineType(types: !4074)
!4074 = !{!14, !14, !14, !14}
!4075 = !DILocalVariable(name: "x", arg: 1, scope: !4072, file: !102, line: 63, type: !14)
!4076 = !DILocation(line: 0, scope: !4072)
!4077 = !DILocalVariable(name: "p", arg: 2, scope: !4072, file: !102, line: 63, type: !14)
!4078 = !DILocalVariable(name: "n", arg: 3, scope: !4072, file: !102, line: 63, type: !14)
!4079 = !DILocation(line: 66, column: 21, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4072, file: !102, line: 67, column: 3)
!4081 = !DILocation(line: 66, column: 26, scope: !4080)
!4082 = !DILocation(line: 66, column: 14, scope: !4080)
!4083 = !DILocation(line: 66, column: 40, scope: !4080)
!4084 = !DILocation(line: 66, column: 34, scope: !4080)
!4085 = !DILocation(line: 66, column: 32, scope: !4080)
!4086 = !DILocation(line: 66, column: 3, scope: !4080)
!4087 = distinct !DISubprogram(name: "adjust", scope: !102, file: !102, line: 70, type: !345, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4088 = !DILocalVariable(name: "dev_nr", arg: 1, scope: !4087, file: !102, line: 70, type: !14)
!4089 = !DILocation(line: 0, scope: !4087)
!4090 = !DILocalVariable(name: "left", arg: 2, scope: !4087, file: !102, line: 70, type: !14)
!4091 = !DILocalVariable(name: "right", arg: 3, scope: !4087, file: !102, line: 70, type: !14)
!4092 = !DILocalVariable(name: "temp", scope: !4087, file: !102, line: 72, type: !14)
!4093 = !DILocation(line: 72, column: 7, scope: !4087)
!4094 = !DILocalVariable(name: "__cil_tmp6", scope: !4087, file: !102, line: 74, type: !28)
!4095 = !DILocation(line: 74, column: 9, scope: !4087)
!4096 = !DILocation(line: 73, column: 8, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4087, file: !102, line: 76, column: 3)
!4098 = !DILocation(line: 74, column: 12, scope: !4099)
!4099 = distinct !DILexicalBlock(scope: !4097, file: !102, line: 74, column: 7)
!4100 = !DILocation(line: 74, column: 7, scope: !4097)
!4101 = !DILocation(line: 75, column: 5, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4099, file: !102, line: 74, column: 19)
!4103 = !DILocation(line: 76, column: 13, scope: !4104)
!4104 = distinct !DILexicalBlock(scope: !4097, file: !102, line: 76, column: 7)
!4105 = !DILocation(line: 76, column: 7, scope: !4097)
!4106 = !DILocation(line: 77, column: 10, scope: !4107)
!4107 = distinct !DILexicalBlock(scope: !4104, file: !102, line: 76, column: 20)
!4108 = !DILocation(line: 78, column: 3, scope: !4107)
!4109 = !DILocation(line: 79, column: 26, scope: !4110)
!4110 = distinct !DILexicalBlock(scope: !4104, file: !102, line: 78, column: 10)
!4111 = !DILocation(line: 79, column: 17, scope: !4110)
!4112 = !DILocation(line: 79, column: 10, scope: !4110)
!4113 = !DILocation(line: 80, column: 15, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !102, line: 82, column: 3)
!4115 = distinct !DILexicalBlock(scope: !4097, file: !102, line: 81, column: 3)
!4116 = !DILocation(line: 80, column: 82, scope: !4114)
!4117 = !DILocation(line: 80, column: 25, scope: !4114)
!4118 = !DILocation(line: 80, column: 107, scope: !4114)
!4119 = !DILocation(line: 80, column: 9, scope: !4114)
!4120 = !DILocalVariable(name: "tmp", scope: !4087, file: !102, line: 73, type: !14)
!4121 = !DILocation(line: 80, column: 11, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4097, file: !102, line: 80, column: 7)
!4123 = !DILocation(line: 80, column: 7, scope: !4097)
!4124 = !DILocation(line: 82, column: 5, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4126, file: !102, line: 82, column: 5)
!4126 = distinct !DILexicalBlock(scope: !4127, file: !102, line: 81, column: 5)
!4127 = distinct !DILexicalBlock(scope: !4122, file: !102, line: 80, column: 18)
!4128 = !DILocation(line: 83, column: 38, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4126, file: !102, line: 84, column: 5)
!4130 = !DILocation(line: 84, column: 13, scope: !4129)
!4131 = !DILocation(line: 83, column: 5, scope: !4129)
!4132 = !DILocation(line: 84, column: 5, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4126, file: !102, line: 86, column: 5)
!4134 = !DILocation(line: 87, column: 3, scope: !4097)
!4135 = !DILocation(line: 89, column: 1, scope: !4087)
!4136 = distinct !DISubprogram(name: "eval_argv", scope: !102, file: !102, line: 91, type: !4137, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4137 = !DISubroutineType(types: !4138)
!4138 = !{!14, !28}
!4139 = !DILocalVariable(name: "arg", arg: 1, scope: !4136, file: !102, line: 91, type: !28)
!4140 = !DILocation(line: 0, scope: !4136)
!4141 = !DILocalVariable(name: "__cil_tmp47", scope: !4136, file: !102, line: 138, type: !28)
!4142 = !DILocation(line: 138, column: 9, scope: !4136)
!4143 = !DILocalVariable(name: "__cil_tmp48", scope: !4136, file: !102, line: 139, type: !28)
!4144 = !DILocation(line: 139, column: 9, scope: !4136)
!4145 = !DILocalVariable(name: "__cil_tmp49", scope: !4136, file: !102, line: 140, type: !28)
!4146 = !DILocation(line: 140, column: 9, scope: !4136)
!4147 = !DILocalVariable(name: "__cil_tmp50", scope: !4136, file: !102, line: 141, type: !28)
!4148 = !DILocation(line: 141, column: 9, scope: !4136)
!4149 = !DILocalVariable(name: "__cil_tmp51", scope: !4136, file: !102, line: 142, type: !28)
!4150 = !DILocation(line: 142, column: 9, scope: !4136)
!4151 = !DILocalVariable(name: "__cil_tmp52", scope: !4136, file: !102, line: 143, type: !28)
!4152 = !DILocation(line: 143, column: 9, scope: !4136)
!4153 = !DILocalVariable(name: "__cil_tmp53", scope: !4136, file: !102, line: 144, type: !28)
!4154 = !DILocation(line: 144, column: 9, scope: !4136)
!4155 = !DILocalVariable(name: "__cil_tmp54", scope: !4136, file: !102, line: 145, type: !28)
!4156 = !DILocation(line: 145, column: 9, scope: !4136)
!4157 = !DILocalVariable(name: "__cil_tmp55", scope: !4136, file: !102, line: 146, type: !28)
!4158 = !DILocation(line: 146, column: 9, scope: !4136)
!4159 = !DILocalVariable(name: "__cil_tmp56", scope: !4136, file: !102, line: 147, type: !28)
!4160 = !DILocation(line: 147, column: 9, scope: !4136)
!4161 = !DILocalVariable(name: "__cil_tmp57", scope: !4136, file: !102, line: 148, type: !28)
!4162 = !DILocation(line: 148, column: 9, scope: !4136)
!4163 = !DILocalVariable(name: "__cil_tmp58", scope: !4136, file: !102, line: 149, type: !28)
!4164 = !DILocation(line: 149, column: 9, scope: !4136)
!4165 = !DILocalVariable(name: "__cil_tmp59", scope: !4136, file: !102, line: 150, type: !28)
!4166 = !DILocation(line: 150, column: 9, scope: !4136)
!4167 = !DILocalVariable(name: "__cil_tmp60", scope: !4136, file: !102, line: 151, type: !28)
!4168 = !DILocation(line: 151, column: 9, scope: !4136)
!4169 = !DILocalVariable(name: "__cil_tmp61", scope: !4136, file: !102, line: 152, type: !28)
!4170 = !DILocation(line: 152, column: 9, scope: !4136)
!4171 = !DILocalVariable(name: "__cil_tmp62", scope: !4136, file: !102, line: 153, type: !28)
!4172 = !DILocation(line: 153, column: 9, scope: !4136)
!4173 = !DILocalVariable(name: "__cil_tmp63", scope: !4136, file: !102, line: 154, type: !28)
!4174 = !DILocation(line: 154, column: 9, scope: !4136)
!4175 = !DILocalVariable(name: "__cil_tmp64", scope: !4136, file: !102, line: 155, type: !28)
!4176 = !DILocation(line: 155, column: 9, scope: !4136)
!4177 = !DILocalVariable(name: "__cil_tmp65", scope: !4136, file: !102, line: 156, type: !28)
!4178 = !DILocation(line: 156, column: 9, scope: !4136)
!4179 = !DILocalVariable(name: "__cil_tmp66", scope: !4136, file: !102, line: 157, type: !28)
!4180 = !DILocation(line: 157, column: 9, scope: !4136)
!4181 = !DILocalVariable(name: "__cil_tmp67", scope: !4136, file: !102, line: 158, type: !28)
!4182 = !DILocation(line: 158, column: 9, scope: !4136)
!4183 = !DILocalVariable(name: "__cil_tmp68", scope: !4136, file: !102, line: 159, type: !28)
!4184 = !DILocation(line: 159, column: 9, scope: !4136)
!4185 = !DILocalVariable(name: "__cil_tmp69", scope: !4136, file: !102, line: 160, type: !28)
!4186 = !DILocation(line: 160, column: 9, scope: !4136)
!4187 = !DILocalVariable(name: "__cil_tmp70", scope: !4136, file: !102, line: 161, type: !28)
!4188 = !DILocation(line: 161, column: 9, scope: !4136)
!4189 = !DILocalVariable(name: "__cil_tmp71", scope: !4136, file: !102, line: 162, type: !28)
!4190 = !DILocation(line: 162, column: 9, scope: !4136)
!4191 = !DILocalVariable(name: "__cil_tmp72", scope: !4136, file: !102, line: 163, type: !28)
!4192 = !DILocation(line: 163, column: 9, scope: !4136)
!4193 = !DILocalVariable(name: "__cil_tmp73", scope: !4136, file: !102, line: 164, type: !28)
!4194 = !DILocation(line: 164, column: 9, scope: !4136)
!4195 = !DILocalVariable(name: "__cil_tmp74", scope: !4136, file: !102, line: 165, type: !28)
!4196 = !DILocation(line: 165, column: 9, scope: !4136)
!4197 = !DILocalVariable(name: "__cil_tmp75", scope: !4136, file: !102, line: 166, type: !28)
!4198 = !DILocation(line: 166, column: 9, scope: !4136)
!4199 = !DILocalVariable(name: "__cil_tmp76", scope: !4136, file: !102, line: 167, type: !28)
!4200 = !DILocation(line: 167, column: 9, scope: !4136)
!4201 = !DILocalVariable(name: "__cil_tmp77", scope: !4136, file: !102, line: 168, type: !28)
!4202 = !DILocation(line: 168, column: 9, scope: !4136)
!4203 = !DILocalVariable(name: "__cil_tmp78", scope: !4136, file: !102, line: 169, type: !28)
!4204 = !DILocation(line: 169, column: 9, scope: !4136)
!4205 = !DILocalVariable(name: "__cil_tmp79", scope: !4136, file: !102, line: 170, type: !28)
!4206 = !DILocation(line: 170, column: 9, scope: !4136)
!4207 = !DILocalVariable(name: "__cil_tmp80", scope: !4136, file: !102, line: 171, type: !28)
!4208 = !DILocation(line: 171, column: 9, scope: !4136)
!4209 = !DILocalVariable(name: "__cil_tmp81", scope: !4136, file: !102, line: 172, type: !28)
!4210 = !DILocation(line: 172, column: 9, scope: !4136)
!4211 = !DILocalVariable(name: "__cil_tmp82", scope: !4136, file: !102, line: 173, type: !28)
!4212 = !DILocation(line: 173, column: 9, scope: !4136)
!4213 = !DILocalVariable(name: "__cil_tmp83", scope: !4136, file: !102, line: 174, type: !28)
!4214 = !DILocation(line: 174, column: 9, scope: !4136)
!4215 = !DILocalVariable(name: "__cil_tmp84", scope: !4136, file: !102, line: 175, type: !28)
!4216 = !DILocation(line: 175, column: 9, scope: !4136)
!4217 = !DILocalVariable(name: "__cil_tmp85", scope: !4136, file: !102, line: 176, type: !28)
!4218 = !DILocation(line: 176, column: 9, scope: !4136)
!4219 = !DILocalVariable(name: "__cil_tmp86", scope: !4136, file: !102, line: 177, type: !28)
!4220 = !DILocation(line: 177, column: 9, scope: !4136)
!4221 = !DILocalVariable(name: "__cil_tmp87", scope: !4136, file: !102, line: 178, type: !28)
!4222 = !DILocation(line: 178, column: 9, scope: !4136)
!4223 = !DILocalVariable(name: "__cil_tmp88", scope: !4136, file: !102, line: 179, type: !28)
!4224 = !DILocation(line: 179, column: 9, scope: !4136)
!4225 = !DILocalVariable(name: "__cil_tmp89", scope: !4136, file: !102, line: 180, type: !28)
!4226 = !DILocation(line: 180, column: 9, scope: !4136)
!4227 = !DILocalVariable(name: "__cil_tmp90", scope: !4136, file: !102, line: 181, type: !28)
!4228 = !DILocation(line: 181, column: 9, scope: !4136)
!4229 = !DILocalVariable(name: "__cil_tmp91", scope: !4136, file: !102, line: 182, type: !28)
!4230 = !DILocation(line: 182, column: 9, scope: !4136)
!4231 = !DILocation(line: 94, column: 14, scope: !4232)
!4232 = distinct !DILexicalBlock(scope: !4233, file: !102, line: 186, column: 3)
!4233 = distinct !DILexicalBlock(scope: !4234, file: !102, line: 185, column: 3)
!4234 = distinct !DILexicalBlock(scope: !4136, file: !102, line: 184, column: 3)
!4235 = !DILocalVariable(name: "tmp___42", scope: !4136, file: !102, line: 136, type: !14)
!4236 = !DILocation(line: 94, column: 16, scope: !4237)
!4237 = distinct !DILexicalBlock(scope: !4234, file: !102, line: 94, column: 7)
!4238 = !DILocation(line: 94, column: 7, scope: !4234)
!4239 = !DILocation(line: 95, column: 5, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4237, file: !102, line: 94, column: 22)
!4241 = !DILocation(line: 94, column: 16, scope: !4242)
!4242 = distinct !DILexicalBlock(scope: !4243, file: !102, line: 98, column: 5)
!4243 = distinct !DILexicalBlock(scope: !4244, file: !102, line: 97, column: 5)
!4244 = distinct !DILexicalBlock(scope: !4237, file: !102, line: 96, column: 10)
!4245 = !DILocalVariable(name: "tmp___43", scope: !4136, file: !102, line: 137, type: !14)
!4246 = !DILocation(line: 94, column: 18, scope: !4247)
!4247 = distinct !DILexicalBlock(scope: !4244, file: !102, line: 94, column: 9)
!4248 = !DILocation(line: 94, column: 9, scope: !4244)
!4249 = !DILocation(line: 95, column: 7, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4247, file: !102, line: 94, column: 24)
!4251 = !DILocation(line: 96, column: 18, scope: !4252)
!4252 = distinct !DILexicalBlock(scope: !4253, file: !102, line: 98, column: 7)
!4253 = distinct !DILexicalBlock(scope: !4254, file: !102, line: 97, column: 7)
!4254 = distinct !DILexicalBlock(scope: !4247, file: !102, line: 96, column: 12)
!4255 = !DILocalVariable(name: "tmp___40", scope: !4136, file: !102, line: 134, type: !14)
!4256 = !DILocation(line: 96, column: 20, scope: !4257)
!4257 = distinct !DILexicalBlock(scope: !4254, file: !102, line: 96, column: 11)
!4258 = !DILocation(line: 96, column: 11, scope: !4254)
!4259 = !DILocation(line: 97, column: 9, scope: !4260)
!4260 = distinct !DILexicalBlock(scope: !4257, file: !102, line: 96, column: 26)
!4261 = !DILocation(line: 96, column: 20, scope: !4262)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !102, line: 100, column: 9)
!4263 = distinct !DILexicalBlock(scope: !4264, file: !102, line: 99, column: 9)
!4264 = distinct !DILexicalBlock(scope: !4257, file: !102, line: 98, column: 14)
!4265 = !DILocalVariable(name: "tmp___41", scope: !4136, file: !102, line: 135, type: !14)
!4266 = !DILocation(line: 96, column: 22, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !4264, file: !102, line: 96, column: 13)
!4268 = !DILocation(line: 96, column: 13, scope: !4264)
!4269 = !DILocation(line: 97, column: 11, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4267, file: !102, line: 96, column: 28)
!4271 = !DILocation(line: 98, column: 22, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4273, file: !102, line: 100, column: 11)
!4273 = distinct !DILexicalBlock(scope: !4274, file: !102, line: 99, column: 11)
!4274 = distinct !DILexicalBlock(scope: !4267, file: !102, line: 98, column: 16)
!4275 = !DILocalVariable(name: "tmp___38", scope: !4136, file: !102, line: 132, type: !14)
!4276 = !DILocation(line: 98, column: 24, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !102, line: 98, column: 15)
!4278 = !DILocation(line: 98, column: 15, scope: !4274)
!4279 = !DILocation(line: 99, column: 13, scope: !4280)
!4280 = distinct !DILexicalBlock(scope: !4277, file: !102, line: 98, column: 30)
!4281 = !DILocation(line: 98, column: 24, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4283, file: !102, line: 102, column: 13)
!4283 = distinct !DILexicalBlock(scope: !4284, file: !102, line: 101, column: 13)
!4284 = distinct !DILexicalBlock(scope: !4277, file: !102, line: 100, column: 18)
!4285 = !DILocalVariable(name: "tmp___39", scope: !4136, file: !102, line: 133, type: !14)
!4286 = !DILocation(line: 98, column: 26, scope: !4287)
!4287 = distinct !DILexicalBlock(scope: !4284, file: !102, line: 98, column: 17)
!4288 = !DILocation(line: 98, column: 17, scope: !4284)
!4289 = !DILocation(line: 99, column: 15, scope: !4290)
!4290 = distinct !DILexicalBlock(scope: !4287, file: !102, line: 98, column: 32)
!4291 = !DILocation(line: 100, column: 26, scope: !4292)
!4292 = distinct !DILexicalBlock(scope: !4293, file: !102, line: 102, column: 15)
!4293 = distinct !DILexicalBlock(scope: !4294, file: !102, line: 101, column: 15)
!4294 = distinct !DILexicalBlock(scope: !4287, file: !102, line: 100, column: 20)
!4295 = !DILocalVariable(name: "tmp___36", scope: !4136, file: !102, line: 130, type: !14)
!4296 = !DILocation(line: 100, column: 28, scope: !4297)
!4297 = distinct !DILexicalBlock(scope: !4294, file: !102, line: 100, column: 19)
!4298 = !DILocation(line: 100, column: 19, scope: !4294)
!4299 = !DILocation(line: 101, column: 17, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4297, file: !102, line: 100, column: 34)
!4301 = !DILocation(line: 100, column: 28, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4303, file: !102, line: 104, column: 17)
!4303 = distinct !DILexicalBlock(scope: !4304, file: !102, line: 103, column: 17)
!4304 = distinct !DILexicalBlock(scope: !4297, file: !102, line: 102, column: 22)
!4305 = !DILocalVariable(name: "tmp___37", scope: !4136, file: !102, line: 131, type: !14)
!4306 = !DILocation(line: 100, column: 30, scope: !4307)
!4307 = distinct !DILexicalBlock(scope: !4304, file: !102, line: 100, column: 21)
!4308 = !DILocation(line: 100, column: 21, scope: !4304)
!4309 = !DILocation(line: 101, column: 19, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4307, file: !102, line: 100, column: 36)
!4311 = !DILocation(line: 102, column: 30, scope: !4312)
!4312 = distinct !DILexicalBlock(scope: !4313, file: !102, line: 104, column: 19)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !102, line: 103, column: 19)
!4314 = distinct !DILexicalBlock(scope: !4307, file: !102, line: 102, column: 24)
!4315 = !DILocalVariable(name: "tmp___34", scope: !4136, file: !102, line: 128, type: !14)
!4316 = !DILocation(line: 102, column: 32, scope: !4317)
!4317 = distinct !DILexicalBlock(scope: !4314, file: !102, line: 102, column: 23)
!4318 = !DILocation(line: 102, column: 23, scope: !4314)
!4319 = !DILocation(line: 103, column: 21, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4317, file: !102, line: 102, column: 38)
!4321 = !DILocation(line: 102, column: 32, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4323, file: !102, line: 106, column: 21)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !102, line: 105, column: 21)
!4324 = distinct !DILexicalBlock(scope: !4317, file: !102, line: 104, column: 26)
!4325 = !DILocalVariable(name: "tmp___35", scope: !4136, file: !102, line: 129, type: !14)
!4326 = !DILocation(line: 102, column: 34, scope: !4327)
!4327 = distinct !DILexicalBlock(scope: !4324, file: !102, line: 102, column: 25)
!4328 = !DILocation(line: 102, column: 25, scope: !4324)
!4329 = !DILocation(line: 103, column: 23, scope: !4330)
!4330 = distinct !DILexicalBlock(scope: !4327, file: !102, line: 102, column: 40)
!4331 = !DILocation(line: 104, column: 34, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4333, file: !102, line: 106, column: 23)
!4333 = distinct !DILexicalBlock(scope: !4334, file: !102, line: 105, column: 23)
!4334 = distinct !DILexicalBlock(scope: !4327, file: !102, line: 104, column: 28)
!4335 = !DILocalVariable(name: "tmp___32", scope: !4136, file: !102, line: 126, type: !14)
!4336 = !DILocation(line: 104, column: 36, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4334, file: !102, line: 104, column: 27)
!4338 = !DILocation(line: 104, column: 27, scope: !4334)
!4339 = !DILocation(line: 105, column: 25, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4337, file: !102, line: 104, column: 42)
!4341 = !DILocation(line: 104, column: 36, scope: !4342)
!4342 = distinct !DILexicalBlock(scope: !4343, file: !102, line: 108, column: 25)
!4343 = distinct !DILexicalBlock(scope: !4344, file: !102, line: 107, column: 25)
!4344 = distinct !DILexicalBlock(scope: !4337, file: !102, line: 106, column: 30)
!4345 = !DILocalVariable(name: "tmp___33", scope: !4136, file: !102, line: 127, type: !14)
!4346 = !DILocation(line: 104, column: 38, scope: !4347)
!4347 = distinct !DILexicalBlock(scope: !4344, file: !102, line: 104, column: 29)
!4348 = !DILocation(line: 104, column: 29, scope: !4344)
!4349 = !DILocation(line: 105, column: 27, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4347, file: !102, line: 104, column: 44)
!4351 = !DILocation(line: 106, column: 38, scope: !4352)
!4352 = distinct !DILexicalBlock(scope: !4353, file: !102, line: 108, column: 27)
!4353 = distinct !DILexicalBlock(scope: !4354, file: !102, line: 107, column: 27)
!4354 = distinct !DILexicalBlock(scope: !4347, file: !102, line: 106, column: 32)
!4355 = !DILocalVariable(name: "tmp___30", scope: !4136, file: !102, line: 124, type: !14)
!4356 = !DILocation(line: 106, column: 40, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4354, file: !102, line: 106, column: 31)
!4358 = !DILocation(line: 106, column: 31, scope: !4354)
!4359 = !DILocation(line: 107, column: 29, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4357, file: !102, line: 106, column: 46)
!4361 = !DILocation(line: 106, column: 40, scope: !4362)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !102, line: 110, column: 29)
!4363 = distinct !DILexicalBlock(scope: !4364, file: !102, line: 109, column: 29)
!4364 = distinct !DILexicalBlock(scope: !4357, file: !102, line: 108, column: 34)
!4365 = !DILocalVariable(name: "tmp___31", scope: !4136, file: !102, line: 125, type: !14)
!4366 = !DILocation(line: 106, column: 42, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4364, file: !102, line: 106, column: 33)
!4368 = !DILocation(line: 106, column: 33, scope: !4364)
!4369 = !DILocation(line: 107, column: 31, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4367, file: !102, line: 106, column: 48)
!4371 = !DILocation(line: 108, column: 42, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4373, file: !102, line: 110, column: 31)
!4373 = distinct !DILexicalBlock(scope: !4374, file: !102, line: 109, column: 31)
!4374 = distinct !DILexicalBlock(scope: !4367, file: !102, line: 108, column: 36)
!4375 = !DILocalVariable(name: "tmp___28", scope: !4136, file: !102, line: 122, type: !14)
!4376 = !DILocation(line: 108, column: 44, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4374, file: !102, line: 108, column: 35)
!4378 = !DILocation(line: 108, column: 35, scope: !4374)
!4379 = !DILocation(line: 109, column: 33, scope: !4380)
!4380 = distinct !DILexicalBlock(scope: !4377, file: !102, line: 108, column: 50)
!4381 = !DILocation(line: 108, column: 44, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4383, file: !102, line: 112, column: 33)
!4383 = distinct !DILexicalBlock(scope: !4384, file: !102, line: 111, column: 33)
!4384 = distinct !DILexicalBlock(scope: !4377, file: !102, line: 110, column: 38)
!4385 = !DILocalVariable(name: "tmp___29", scope: !4136, file: !102, line: 123, type: !14)
!4386 = !DILocation(line: 108, column: 46, scope: !4387)
!4387 = distinct !DILexicalBlock(scope: !4384, file: !102, line: 108, column: 37)
!4388 = !DILocation(line: 108, column: 37, scope: !4384)
!4389 = !DILocation(line: 109, column: 35, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4387, file: !102, line: 108, column: 52)
!4391 = !DILocation(line: 110, column: 46, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4393, file: !102, line: 112, column: 35)
!4393 = distinct !DILexicalBlock(scope: !4394, file: !102, line: 111, column: 35)
!4394 = distinct !DILexicalBlock(scope: !4387, file: !102, line: 110, column: 40)
!4395 = !DILocalVariable(name: "tmp___26", scope: !4136, file: !102, line: 120, type: !14)
!4396 = !DILocation(line: 110, column: 48, scope: !4397)
!4397 = distinct !DILexicalBlock(scope: !4394, file: !102, line: 110, column: 39)
!4398 = !DILocation(line: 110, column: 39, scope: !4394)
!4399 = !DILocation(line: 111, column: 37, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4397, file: !102, line: 110, column: 54)
!4401 = !DILocation(line: 110, column: 48, scope: !4402)
!4402 = distinct !DILexicalBlock(scope: !4403, file: !102, line: 114, column: 37)
!4403 = distinct !DILexicalBlock(scope: !4404, file: !102, line: 113, column: 37)
!4404 = distinct !DILexicalBlock(scope: !4397, file: !102, line: 112, column: 42)
!4405 = !DILocalVariable(name: "tmp___27", scope: !4136, file: !102, line: 121, type: !14)
!4406 = !DILocation(line: 110, column: 50, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4404, file: !102, line: 110, column: 41)
!4408 = !DILocation(line: 110, column: 41, scope: !4404)
!4409 = !DILocation(line: 111, column: 39, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4407, file: !102, line: 110, column: 56)
!4411 = !DILocation(line: 112, column: 50, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4413, file: !102, line: 114, column: 39)
!4413 = distinct !DILexicalBlock(scope: !4414, file: !102, line: 113, column: 39)
!4414 = distinct !DILexicalBlock(scope: !4407, file: !102, line: 112, column: 44)
!4415 = !DILocalVariable(name: "tmp___24", scope: !4136, file: !102, line: 118, type: !14)
!4416 = !DILocation(line: 112, column: 52, scope: !4417)
!4417 = distinct !DILexicalBlock(scope: !4414, file: !102, line: 112, column: 43)
!4418 = !DILocation(line: 112, column: 43, scope: !4414)
!4419 = !DILocation(line: 113, column: 41, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4417, file: !102, line: 112, column: 58)
!4421 = !DILocation(line: 112, column: 52, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4423, file: !102, line: 116, column: 41)
!4423 = distinct !DILexicalBlock(scope: !4424, file: !102, line: 115, column: 41)
!4424 = distinct !DILexicalBlock(scope: !4417, file: !102, line: 114, column: 46)
!4425 = !DILocalVariable(name: "tmp___25", scope: !4136, file: !102, line: 119, type: !14)
!4426 = !DILocation(line: 112, column: 54, scope: !4427)
!4427 = distinct !DILexicalBlock(scope: !4424, file: !102, line: 112, column: 45)
!4428 = !DILocation(line: 112, column: 45, scope: !4424)
!4429 = !DILocation(line: 113, column: 43, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4427, file: !102, line: 112, column: 60)
!4431 = !DILocation(line: 114, column: 54, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4433, file: !102, line: 116, column: 43)
!4433 = distinct !DILexicalBlock(scope: !4434, file: !102, line: 115, column: 43)
!4434 = distinct !DILexicalBlock(scope: !4427, file: !102, line: 114, column: 48)
!4435 = !DILocalVariable(name: "tmp___22", scope: !4136, file: !102, line: 116, type: !14)
!4436 = !DILocation(line: 114, column: 56, scope: !4437)
!4437 = distinct !DILexicalBlock(scope: !4434, file: !102, line: 114, column: 47)
!4438 = !DILocation(line: 114, column: 47, scope: !4434)
!4439 = !DILocation(line: 115, column: 45, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4437, file: !102, line: 114, column: 62)
!4441 = !DILocation(line: 114, column: 56, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4443, file: !102, line: 118, column: 45)
!4443 = distinct !DILexicalBlock(scope: !4444, file: !102, line: 117, column: 45)
!4444 = distinct !DILexicalBlock(scope: !4437, file: !102, line: 116, column: 50)
!4445 = !DILocalVariable(name: "tmp___23", scope: !4136, file: !102, line: 117, type: !14)
!4446 = !DILocation(line: 114, column: 58, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4444, file: !102, line: 114, column: 49)
!4448 = !DILocation(line: 114, column: 49, scope: !4444)
!4449 = !DILocation(line: 115, column: 47, scope: !4450)
!4450 = distinct !DILexicalBlock(scope: !4447, file: !102, line: 114, column: 64)
!4451 = !DILocation(line: 116, column: 58, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4453, file: !102, line: 118, column: 47)
!4453 = distinct !DILexicalBlock(scope: !4454, file: !102, line: 117, column: 47)
!4454 = distinct !DILexicalBlock(scope: !4447, file: !102, line: 116, column: 52)
!4455 = !DILocalVariable(name: "tmp___20", scope: !4136, file: !102, line: 114, type: !14)
!4456 = !DILocation(line: 116, column: 60, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4454, file: !102, line: 116, column: 51)
!4458 = !DILocation(line: 116, column: 51, scope: !4454)
!4459 = !DILocation(line: 117, column: 49, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4457, file: !102, line: 116, column: 66)
!4461 = !DILocation(line: 116, column: 60, scope: !4462)
!4462 = distinct !DILexicalBlock(scope: !4463, file: !102, line: 120, column: 49)
!4463 = distinct !DILexicalBlock(scope: !4464, file: !102, line: 119, column: 49)
!4464 = distinct !DILexicalBlock(scope: !4457, file: !102, line: 118, column: 54)
!4465 = !DILocalVariable(name: "tmp___21", scope: !4136, file: !102, line: 115, type: !14)
!4466 = !DILocation(line: 116, column: 62, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4464, file: !102, line: 116, column: 53)
!4468 = !DILocation(line: 116, column: 53, scope: !4464)
!4469 = !DILocation(line: 117, column: 51, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4467, file: !102, line: 116, column: 68)
!4471 = !DILocation(line: 118, column: 62, scope: !4472)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !102, line: 120, column: 51)
!4473 = distinct !DILexicalBlock(scope: !4474, file: !102, line: 119, column: 51)
!4474 = distinct !DILexicalBlock(scope: !4467, file: !102, line: 118, column: 56)
!4475 = !DILocalVariable(name: "tmp___18", scope: !4136, file: !102, line: 112, type: !14)
!4476 = !DILocation(line: 118, column: 64, scope: !4477)
!4477 = distinct !DILexicalBlock(scope: !4474, file: !102, line: 118, column: 55)
!4478 = !DILocation(line: 118, column: 55, scope: !4474)
!4479 = !DILocation(line: 119, column: 53, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4477, file: !102, line: 118, column: 70)
!4481 = !DILocation(line: 118, column: 64, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !102, line: 122, column: 53)
!4483 = distinct !DILexicalBlock(scope: !4484, file: !102, line: 121, column: 53)
!4484 = distinct !DILexicalBlock(scope: !4477, file: !102, line: 120, column: 58)
!4485 = !DILocalVariable(name: "tmp___19", scope: !4136, file: !102, line: 113, type: !14)
!4486 = !DILocation(line: 118, column: 66, scope: !4487)
!4487 = distinct !DILexicalBlock(scope: !4484, file: !102, line: 118, column: 57)
!4488 = !DILocation(line: 118, column: 57, scope: !4484)
!4489 = !DILocation(line: 119, column: 55, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4487, file: !102, line: 118, column: 72)
!4491 = !DILocation(line: 120, column: 66, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4493, file: !102, line: 122, column: 55)
!4493 = distinct !DILexicalBlock(scope: !4494, file: !102, line: 121, column: 55)
!4494 = distinct !DILexicalBlock(scope: !4487, file: !102, line: 120, column: 60)
!4495 = !DILocalVariable(name: "tmp___16", scope: !4136, file: !102, line: 110, type: !14)
!4496 = !DILocation(line: 120, column: 68, scope: !4497)
!4497 = distinct !DILexicalBlock(scope: !4494, file: !102, line: 120, column: 59)
!4498 = !DILocation(line: 120, column: 59, scope: !4494)
!4499 = !DILocation(line: 121, column: 57, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4497, file: !102, line: 120, column: 74)
!4501 = !DILocation(line: 120, column: 68, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4503, file: !102, line: 124, column: 57)
!4503 = distinct !DILexicalBlock(scope: !4504, file: !102, line: 123, column: 57)
!4504 = distinct !DILexicalBlock(scope: !4497, file: !102, line: 122, column: 62)
!4505 = !DILocalVariable(name: "tmp___17", scope: !4136, file: !102, line: 111, type: !14)
!4506 = !DILocation(line: 120, column: 70, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4504, file: !102, line: 120, column: 61)
!4508 = !DILocation(line: 120, column: 61, scope: !4504)
!4509 = !DILocation(line: 121, column: 59, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4507, file: !102, line: 120, column: 76)
!4511 = !DILocation(line: 122, column: 70, scope: !4512)
!4512 = distinct !DILexicalBlock(scope: !4513, file: !102, line: 124, column: 59)
!4513 = distinct !DILexicalBlock(scope: !4514, file: !102, line: 123, column: 59)
!4514 = distinct !DILexicalBlock(scope: !4507, file: !102, line: 122, column: 64)
!4515 = !DILocalVariable(name: "tmp___14", scope: !4136, file: !102, line: 108, type: !14)
!4516 = !DILocation(line: 122, column: 72, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4514, file: !102, line: 122, column: 63)
!4518 = !DILocation(line: 122, column: 63, scope: !4514)
!4519 = !DILocation(line: 123, column: 61, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4517, file: !102, line: 122, column: 78)
!4521 = !DILocation(line: 122, column: 72, scope: !4522)
!4522 = distinct !DILexicalBlock(scope: !4523, file: !102, line: 126, column: 61)
!4523 = distinct !DILexicalBlock(scope: !4524, file: !102, line: 125, column: 61)
!4524 = distinct !DILexicalBlock(scope: !4517, file: !102, line: 124, column: 66)
!4525 = !DILocalVariable(name: "tmp___15", scope: !4136, file: !102, line: 109, type: !14)
!4526 = !DILocation(line: 122, column: 74, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4524, file: !102, line: 122, column: 65)
!4528 = !DILocation(line: 122, column: 65, scope: !4524)
!4529 = !DILocation(line: 123, column: 63, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4527, file: !102, line: 122, column: 80)
!4531 = !DILocation(line: 124, column: 74, scope: !4532)
!4532 = distinct !DILexicalBlock(scope: !4533, file: !102, line: 126, column: 63)
!4533 = distinct !DILexicalBlock(scope: !4534, file: !102, line: 125, column: 63)
!4534 = distinct !DILexicalBlock(scope: !4527, file: !102, line: 124, column: 68)
!4535 = !DILocalVariable(name: "tmp___12", scope: !4136, file: !102, line: 106, type: !14)
!4536 = !DILocation(line: 124, column: 76, scope: !4537)
!4537 = distinct !DILexicalBlock(scope: !4534, file: !102, line: 124, column: 67)
!4538 = !DILocation(line: 124, column: 67, scope: !4534)
!4539 = !DILocation(line: 125, column: 65, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4537, file: !102, line: 124, column: 82)
!4541 = !DILocation(line: 124, column: 76, scope: !4542)
!4542 = distinct !DILexicalBlock(scope: !4543, file: !102, line: 128, column: 65)
!4543 = distinct !DILexicalBlock(scope: !4544, file: !102, line: 127, column: 65)
!4544 = distinct !DILexicalBlock(scope: !4537, file: !102, line: 126, column: 70)
!4545 = !DILocalVariable(name: "tmp___13", scope: !4136, file: !102, line: 107, type: !14)
!4546 = !DILocation(line: 124, column: 78, scope: !4547)
!4547 = distinct !DILexicalBlock(scope: !4544, file: !102, line: 124, column: 69)
!4548 = !DILocation(line: 124, column: 69, scope: !4544)
!4549 = !DILocation(line: 125, column: 67, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4547, file: !102, line: 124, column: 84)
!4551 = !DILocation(line: 126, column: 78, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4553, file: !102, line: 128, column: 67)
!4553 = distinct !DILexicalBlock(scope: !4554, file: !102, line: 127, column: 67)
!4554 = distinct !DILexicalBlock(scope: !4547, file: !102, line: 126, column: 72)
!4555 = !DILocalVariable(name: "tmp___10", scope: !4136, file: !102, line: 104, type: !14)
!4556 = !DILocation(line: 126, column: 80, scope: !4557)
!4557 = distinct !DILexicalBlock(scope: !4554, file: !102, line: 126, column: 71)
!4558 = !DILocation(line: 126, column: 71, scope: !4554)
!4559 = !DILocation(line: 127, column: 69, scope: !4560)
!4560 = distinct !DILexicalBlock(scope: !4557, file: !102, line: 126, column: 86)
!4561 = !DILocation(line: 126, column: 80, scope: !4562)
!4562 = distinct !DILexicalBlock(scope: !4563, file: !102, line: 130, column: 69)
!4563 = distinct !DILexicalBlock(scope: !4564, file: !102, line: 129, column: 69)
!4564 = distinct !DILexicalBlock(scope: !4557, file: !102, line: 128, column: 74)
!4565 = !DILocalVariable(name: "tmp___11", scope: !4136, file: !102, line: 105, type: !14)
!4566 = !DILocation(line: 126, column: 82, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4564, file: !102, line: 126, column: 73)
!4568 = !DILocation(line: 126, column: 73, scope: !4564)
!4569 = !DILocation(line: 127, column: 71, scope: !4570)
!4570 = distinct !DILexicalBlock(scope: !4567, file: !102, line: 126, column: 88)
!4571 = !DILocation(line: 128, column: 81, scope: !4572)
!4572 = distinct !DILexicalBlock(scope: !4573, file: !102, line: 130, column: 71)
!4573 = distinct !DILexicalBlock(scope: !4574, file: !102, line: 129, column: 71)
!4574 = distinct !DILexicalBlock(scope: !4567, file: !102, line: 128, column: 76)
!4575 = !DILocalVariable(name: "tmp___8", scope: !4136, file: !102, line: 102, type: !14)
!4576 = !DILocation(line: 128, column: 83, scope: !4577)
!4577 = distinct !DILexicalBlock(scope: !4574, file: !102, line: 128, column: 75)
!4578 = !DILocation(line: 128, column: 75, scope: !4574)
!4579 = !DILocation(line: 129, column: 73, scope: !4580)
!4580 = distinct !DILexicalBlock(scope: !4577, file: !102, line: 128, column: 89)
!4581 = !DILocation(line: 128, column: 83, scope: !4582)
!4582 = distinct !DILexicalBlock(scope: !4583, file: !102, line: 132, column: 73)
!4583 = distinct !DILexicalBlock(scope: !4584, file: !102, line: 131, column: 73)
!4584 = distinct !DILexicalBlock(scope: !4577, file: !102, line: 130, column: 78)
!4585 = !DILocalVariable(name: "tmp___9", scope: !4136, file: !102, line: 103, type: !14)
!4586 = !DILocation(line: 128, column: 85, scope: !4587)
!4587 = distinct !DILexicalBlock(scope: !4584, file: !102, line: 128, column: 77)
!4588 = !DILocation(line: 128, column: 77, scope: !4584)
!4589 = !DILocation(line: 129, column: 75, scope: !4590)
!4590 = distinct !DILexicalBlock(scope: !4587, file: !102, line: 128, column: 91)
!4591 = !DILocation(line: 130, column: 85, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !102, line: 132, column: 75)
!4593 = distinct !DILexicalBlock(scope: !4594, file: !102, line: 131, column: 75)
!4594 = distinct !DILexicalBlock(scope: !4587, file: !102, line: 130, column: 80)
!4595 = !DILocalVariable(name: "tmp___6", scope: !4136, file: !102, line: 100, type: !14)
!4596 = !DILocation(line: 130, column: 87, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4594, file: !102, line: 130, column: 79)
!4598 = !DILocation(line: 130, column: 79, scope: !4594)
!4599 = !DILocation(line: 131, column: 77, scope: !4600)
!4600 = distinct !DILexicalBlock(scope: !4597, file: !102, line: 130, column: 93)
!4601 = !DILocation(line: 130, column: 87, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4603, file: !102, line: 134, column: 77)
!4603 = distinct !DILexicalBlock(scope: !4604, file: !102, line: 133, column: 77)
!4604 = distinct !DILexicalBlock(scope: !4597, file: !102, line: 132, column: 82)
!4605 = !DILocalVariable(name: "tmp___7", scope: !4136, file: !102, line: 101, type: !14)
!4606 = !DILocation(line: 130, column: 89, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4604, file: !102, line: 130, column: 81)
!4608 = !DILocation(line: 130, column: 81, scope: !4604)
!4609 = !DILocation(line: 131, column: 79, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4607, file: !102, line: 130, column: 95)
!4611 = !DILocation(line: 133, column: 89, scope: !4612)
!4612 = distinct !DILexicalBlock(scope: !4613, file: !102, line: 134, column: 79)
!4613 = distinct !DILexicalBlock(scope: !4614, file: !102, line: 133, column: 79)
!4614 = distinct !DILexicalBlock(scope: !4607, file: !102, line: 132, column: 84)
!4615 = !DILocalVariable(name: "tmp___3", scope: !4136, file: !102, line: 97, type: !14)
!4616 = !DILocation(line: 133, column: 91, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4614, file: !102, line: 133, column: 83)
!4618 = !DILocation(line: 133, column: 83, scope: !4614)
!4619 = !DILocation(line: 134, column: 81, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4617, file: !102, line: 133, column: 97)
!4621 = !DILocation(line: 133, column: 91, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4623, file: !102, line: 137, column: 81)
!4623 = distinct !DILexicalBlock(scope: !4624, file: !102, line: 136, column: 81)
!4624 = distinct !DILexicalBlock(scope: !4617, file: !102, line: 135, column: 86)
!4625 = !DILocalVariable(name: "tmp___4", scope: !4136, file: !102, line: 98, type: !14)
!4626 = !DILocation(line: 133, column: 93, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4624, file: !102, line: 133, column: 85)
!4628 = !DILocation(line: 133, column: 85, scope: !4624)
!4629 = !DILocation(line: 134, column: 83, scope: !4630)
!4630 = distinct !DILexicalBlock(scope: !4627, file: !102, line: 133, column: 99)
!4631 = !DILocation(line: 133, column: 93, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4633, file: !102, line: 137, column: 83)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !102, line: 136, column: 83)
!4634 = distinct !DILexicalBlock(scope: !4627, file: !102, line: 135, column: 88)
!4635 = !DILocalVariable(name: "tmp___5", scope: !4136, file: !102, line: 99, type: !14)
!4636 = !DILocation(line: 133, column: 95, scope: !4637)
!4637 = distinct !DILexicalBlock(scope: !4634, file: !102, line: 133, column: 87)
!4638 = !DILocation(line: 133, column: 87, scope: !4634)
!4639 = !DILocation(line: 134, column: 85, scope: !4640)
!4640 = distinct !DILexicalBlock(scope: !4637, file: !102, line: 133, column: 101)
!4641 = !DILocation(line: 135, column: 95, scope: !4642)
!4642 = distinct !DILexicalBlock(scope: !4643, file: !102, line: 137, column: 85)
!4643 = distinct !DILexicalBlock(scope: !4644, file: !102, line: 136, column: 85)
!4644 = distinct !DILexicalBlock(scope: !4637, file: !102, line: 135, column: 90)
!4645 = !DILocalVariable(name: "tmp___2", scope: !4136, file: !102, line: 96, type: !14)
!4646 = !DILocation(line: 135, column: 97, scope: !4647)
!4647 = distinct !DILexicalBlock(scope: !4644, file: !102, line: 135, column: 89)
!4648 = !DILocation(line: 135, column: 89, scope: !4644)
!4649 = !DILocation(line: 136, column: 87, scope: !4650)
!4650 = distinct !DILexicalBlock(scope: !4647, file: !102, line: 135, column: 103)
!4651 = !DILocation(line: 137, column: 97, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4653, file: !102, line: 139, column: 87)
!4653 = distinct !DILexicalBlock(scope: !4654, file: !102, line: 138, column: 87)
!4654 = distinct !DILexicalBlock(scope: !4647, file: !102, line: 137, column: 92)
!4655 = !DILocalVariable(name: "tmp___1", scope: !4136, file: !102, line: 95, type: !14)
!4656 = !DILocation(line: 137, column: 99, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4654, file: !102, line: 137, column: 91)
!4658 = !DILocation(line: 137, column: 91, scope: !4654)
!4659 = !DILocation(line: 138, column: 89, scope: !4660)
!4660 = distinct !DILexicalBlock(scope: !4657, file: !102, line: 137, column: 105)
!4661 = !DILocation(line: 139, column: 99, scope: !4662)
!4662 = distinct !DILexicalBlock(scope: !4663, file: !102, line: 141, column: 89)
!4663 = distinct !DILexicalBlock(scope: !4664, file: !102, line: 140, column: 89)
!4664 = distinct !DILexicalBlock(scope: !4657, file: !102, line: 139, column: 94)
!4665 = !DILocalVariable(name: "tmp___0", scope: !4136, file: !102, line: 94, type: !14)
!4666 = !DILocation(line: 139, column: 101, scope: !4667)
!4667 = distinct !DILexicalBlock(scope: !4664, file: !102, line: 139, column: 93)
!4668 = !DILocation(line: 139, column: 93, scope: !4664)
!4669 = !DILocation(line: 140, column: 91, scope: !4670)
!4670 = distinct !DILexicalBlock(scope: !4667, file: !102, line: 139, column: 107)
!4671 = !DILocation(line: 141, column: 97, scope: !4672)
!4672 = distinct !DILexicalBlock(scope: !4673, file: !102, line: 143, column: 91)
!4673 = distinct !DILexicalBlock(scope: !4674, file: !102, line: 142, column: 91)
!4674 = distinct !DILexicalBlock(scope: !4667, file: !102, line: 141, column: 96)
!4675 = !DILocalVariable(name: "tmp", scope: !4136, file: !102, line: 93, type: !14)
!4676 = !DILocation(line: 141, column: 99, scope: !4677)
!4677 = distinct !DILexicalBlock(scope: !4674, file: !102, line: 141, column: 95)
!4678 = !DILocation(line: 141, column: 95, scope: !4674)
!4679 = !DILocation(line: 142, column: 93, scope: !4680)
!4680 = distinct !DILexicalBlock(scope: !4677, file: !102, line: 141, column: 105)
!4681 = !DILocation(line: 144, column: 93, scope: !4682)
!4682 = distinct !DILexicalBlock(scope: !4677, file: !102, line: 143, column: 98)
!4683 = !DILocation(line: 0, scope: !4237)
!4684 = !DILocation(line: 191, column: 1, scope: !4136)
!4685 = distinct !DISubprogram(name: "get_default_filename", scope: !102, file: !102, line: 152, type: !4686, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4686 = !DISubroutineType(types: !4687)
!4687 = !{!28}
!4688 = !DILocalVariable(name: "__cil_tmp8", scope: !4685, file: !102, line: 161, type: !28)
!4689 = !DILocation(line: 161, column: 9, scope: !4685)
!4690 = !DILocalVariable(name: "__cil_tmp9", scope: !4685, file: !102, line: 162, type: !28)
!4691 = !DILocation(line: 162, column: 9, scope: !4685)
!4692 = !DILocalVariable(name: "__cil_tmp10", scope: !4685, file: !102, line: 163, type: !28)
!4693 = !DILocation(line: 163, column: 9, scope: !4685)
!4694 = !DILocalVariable(name: "__cil_tmp11", scope: !4685, file: !102, line: 164, type: !28)
!4695 = !DILocation(line: 164, column: 9, scope: !4685)
!4696 = !DILocalVariable(name: "__cil_tmp12", scope: !4685, file: !102, line: 165, type: !28)
!4697 = !DILocation(line: 165, column: 9, scope: !4685)
!4698 = !DILocation(line: 156, column: 7, scope: !4699)
!4699 = distinct !DILexicalBlock(scope: !4700, file: !102, line: 169, column: 3)
!4700 = distinct !DILexicalBlock(scope: !4701, file: !102, line: 168, column: 3)
!4701 = distinct !DILexicalBlock(scope: !4685, file: !102, line: 167, column: 3)
!4702 = !DILocalVariable(name: "q", scope: !4685, file: !102, line: 154, type: !28)
!4703 = !DILocation(line: 0, scope: !4685)
!4704 = !DILocation(line: 157, column: 7, scope: !4705)
!4705 = distinct !DILexicalBlock(scope: !4701, file: !102, line: 157, column: 7)
!4706 = !DILocation(line: 157, column: 7, scope: !4701)
!4707 = !DILocation(line: 158, column: 11, scope: !4708)
!4708 = distinct !DILexicalBlock(scope: !4709, file: !102, line: 159, column: 5)
!4709 = distinct !DILexicalBlock(scope: !4710, file: !102, line: 158, column: 5)
!4710 = distinct !DILexicalBlock(scope: !4705, file: !102, line: 157, column: 10)
!4711 = !DILocalVariable(name: "tmp", scope: !4685, file: !102, line: 156, type: !30)
!4712 = !DILocation(line: 158, column: 15, scope: !4713)
!4713 = distinct !DILexicalBlock(scope: !4709, file: !102, line: 160, column: 5)
!4714 = !DILocalVariable(name: "tmp___0", scope: !4685, file: !102, line: 157, type: !30)
!4715 = !DILocation(line: 158, column: 27, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4709, file: !102, line: 160, column: 5)
!4717 = !DILocation(line: 158, column: 38, scope: !4716)
!4718 = !DILocation(line: 158, column: 15, scope: !4716)
!4719 = !DILocalVariable(name: "tmp___1", scope: !4685, file: !102, line: 158, type: !88)
!4720 = !DILocalVariable(name: "SAVE_FILE", scope: !4685, file: !102, line: 155, type: !28)
!4721 = !DILocation(line: 159, column: 5, scope: !4722)
!4722 = distinct !DILexicalBlock(scope: !4709, file: !102, line: 159, column: 5)
!4723 = !DILocation(line: 160, column: 5, scope: !4724)
!4724 = distinct !DILexicalBlock(scope: !4709, file: !102, line: 161, column: 5)
!4725 = !DILocation(line: 163, column: 3, scope: !4710)
!4726 = !DILocation(line: 162, column: 15, scope: !4727)
!4727 = distinct !DILexicalBlock(scope: !4728, file: !102, line: 165, column: 5)
!4728 = distinct !DILexicalBlock(scope: !4729, file: !102, line: 164, column: 5)
!4729 = distinct !DILexicalBlock(scope: !4705, file: !102, line: 163, column: 10)
!4730 = !DILocalVariable(name: "tmp___2", scope: !4685, file: !102, line: 159, type: !30)
!4731 = !DILocation(line: 162, column: 30, scope: !4732)
!4732 = distinct !DILexicalBlock(scope: !4728, file: !102, line: 164, column: 5)
!4733 = !DILocation(line: 162, column: 15, scope: !4732)
!4734 = !DILocalVariable(name: "tmp___3", scope: !4685, file: !102, line: 160, type: !88)
!4735 = !DILocation(line: 163, column: 5, scope: !4736)
!4736 = distinct !DILexicalBlock(scope: !4728, file: !102, line: 163, column: 5)
!4737 = !DILocation(line: 0, scope: !4705)
!4738 = !DILocation(line: 165, column: 3, scope: !4701)
!4739 = distinct !DISubprogram(name: "init_sound", scope: !102, file: !102, line: 950, type: !187, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4740 = !DILocalVariable(name: "__cil_tmp5", scope: !4739, file: !102, line: 956, type: !28)
!4741 = !DILocation(line: 956, column: 9, scope: !4739)
!4742 = !DILocalVariable(name: "__cil_tmp6", scope: !4739, file: !102, line: 957, type: !28)
!4743 = !DILocation(line: 957, column: 9, scope: !4739)
!4744 = !DILocalVariable(name: "__cil_tmp7", scope: !4739, file: !102, line: 958, type: !28)
!4745 = !DILocation(line: 958, column: 9, scope: !4739)
!4746 = !DILocalVariable(name: "__cil_tmp8", scope: !4739, file: !102, line: 959, type: !28)
!4747 = !DILocation(line: 959, column: 9, scope: !4739)
!4748 = !DILocalVariable(name: "__cil_tmp9", scope: !4739, file: !102, line: 960, type: !28)
!4749 = !DILocation(line: 960, column: 9, scope: !4739)
!4750 = !DILocalVariable(name: "__cil_tmp10", scope: !4739, file: !102, line: 961, type: !28)
!4751 = !DILocation(line: 961, column: 9, scope: !4739)
!4752 = !DILocation(line: 954, column: 35, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4754, file: !102, line: 965, column: 3)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 964, column: 3)
!4755 = distinct !DILexicalBlock(scope: !4739, file: !102, line: 963, column: 3)
!4756 = !DILocation(line: 954, column: 14, scope: !4753)
!4757 = !DILocation(line: 954, column: 12, scope: !4753)
!4758 = !DILocation(line: 954, column: 7, scope: !4759)
!4759 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 954, column: 7)
!4760 = !DILocation(line: 954, column: 16, scope: !4759)
!4761 = !DILocation(line: 954, column: 7, scope: !4755)
!4762 = !DILocation(line: 956, column: 5, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !102, line: 956, column: 5)
!4764 = distinct !DILexicalBlock(scope: !4765, file: !102, line: 955, column: 5)
!4765 = distinct !DILexicalBlock(scope: !4759, file: !102, line: 954, column: 21)
!4766 = !DILocation(line: 957, column: 38, scope: !4767)
!4767 = distinct !DILexicalBlock(scope: !4764, file: !102, line: 958, column: 5)
!4768 = !DILocation(line: 958, column: 13, scope: !4767)
!4769 = !DILocation(line: 957, column: 5, scope: !4767)
!4770 = !DILocation(line: 958, column: 5, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4764, file: !102, line: 960, column: 5)
!4772 = !DILocation(line: 960, column: 15, scope: !4773)
!4773 = distinct !DILexicalBlock(scope: !4774, file: !102, line: 963, column: 3)
!4774 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 962, column: 3)
!4775 = !DILocation(line: 960, column: 9, scope: !4773)
!4776 = !DILocalVariable(name: "tmp", scope: !4739, file: !102, line: 952, type: !14)
!4777 = !DILocation(line: 0, scope: !4739)
!4778 = !DILocation(line: 960, column: 11, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 960, column: 7)
!4780 = !DILocation(line: 960, column: 7, scope: !4755)
!4781 = !DILocation(line: 962, column: 5, scope: !4782)
!4782 = distinct !DILexicalBlock(scope: !4783, file: !102, line: 962, column: 5)
!4783 = distinct !DILexicalBlock(scope: !4784, file: !102, line: 961, column: 5)
!4784 = distinct !DILexicalBlock(scope: !4779, file: !102, line: 960, column: 18)
!4785 = !DILocation(line: 963, column: 38, scope: !4786)
!4786 = distinct !DILexicalBlock(scope: !4783, file: !102, line: 964, column: 5)
!4787 = !DILocation(line: 964, column: 13, scope: !4786)
!4788 = !DILocation(line: 963, column: 5, scope: !4786)
!4789 = !DILocation(line: 964, column: 5, scope: !4790)
!4790 = distinct !DILexicalBlock(scope: !4783, file: !102, line: 966, column: 5)
!4791 = !DILocation(line: 966, column: 19, scope: !4792)
!4792 = distinct !DILexicalBlock(scope: !4793, file: !102, line: 969, column: 3)
!4793 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 968, column: 3)
!4794 = !DILocation(line: 966, column: 13, scope: !4792)
!4795 = !DILocalVariable(name: "tmp___0", scope: !4739, file: !102, line: 953, type: !14)
!4796 = !DILocation(line: 966, column: 15, scope: !4797)
!4797 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 966, column: 7)
!4798 = !DILocation(line: 966, column: 7, scope: !4755)
!4799 = !DILocation(line: 968, column: 5, scope: !4800)
!4800 = distinct !DILexicalBlock(scope: !4801, file: !102, line: 968, column: 5)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !102, line: 967, column: 5)
!4802 = distinct !DILexicalBlock(scope: !4797, file: !102, line: 966, column: 22)
!4803 = !DILocation(line: 969, column: 38, scope: !4804)
!4804 = distinct !DILexicalBlock(scope: !4801, file: !102, line: 970, column: 5)
!4805 = !DILocation(line: 970, column: 13, scope: !4804)
!4806 = !DILocation(line: 969, column: 5, scope: !4804)
!4807 = !DILocation(line: 970, column: 5, scope: !4808)
!4808 = distinct !DILexicalBlock(scope: !4801, file: !102, line: 972, column: 5)
!4809 = !DILocation(line: 972, column: 19, scope: !4810)
!4810 = distinct !DILexicalBlock(scope: !4811, file: !102, line: 975, column: 3)
!4811 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 974, column: 3)
!4812 = !DILocation(line: 972, column: 13, scope: !4810)
!4813 = !DILocalVariable(name: "tmp___1", scope: !4739, file: !102, line: 954, type: !14)
!4814 = !DILocation(line: 972, column: 15, scope: !4815)
!4815 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 972, column: 7)
!4816 = !DILocation(line: 972, column: 7, scope: !4755)
!4817 = !DILocation(line: 974, column: 5, scope: !4818)
!4818 = distinct !DILexicalBlock(scope: !4819, file: !102, line: 974, column: 5)
!4819 = distinct !DILexicalBlock(scope: !4820, file: !102, line: 973, column: 5)
!4820 = distinct !DILexicalBlock(scope: !4815, file: !102, line: 972, column: 22)
!4821 = !DILocation(line: 975, column: 38, scope: !4822)
!4822 = distinct !DILexicalBlock(scope: !4819, file: !102, line: 976, column: 5)
!4823 = !DILocation(line: 976, column: 13, scope: !4822)
!4824 = !DILocation(line: 975, column: 5, scope: !4822)
!4825 = !DILocation(line: 976, column: 5, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4819, file: !102, line: 978, column: 5)
!4827 = !DILocation(line: 978, column: 19, scope: !4828)
!4828 = distinct !DILexicalBlock(scope: !4829, file: !102, line: 981, column: 3)
!4829 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 980, column: 3)
!4830 = !DILocation(line: 978, column: 13, scope: !4828)
!4831 = !DILocalVariable(name: "tmp___2", scope: !4739, file: !102, line: 955, type: !14)
!4832 = !DILocation(line: 978, column: 15, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 978, column: 7)
!4834 = !DILocation(line: 978, column: 7, scope: !4755)
!4835 = !DILocation(line: 980, column: 5, scope: !4836)
!4836 = distinct !DILexicalBlock(scope: !4837, file: !102, line: 980, column: 5)
!4837 = distinct !DILexicalBlock(scope: !4838, file: !102, line: 979, column: 5)
!4838 = distinct !DILexicalBlock(scope: !4833, file: !102, line: 978, column: 22)
!4839 = !DILocation(line: 981, column: 38, scope: !4840)
!4840 = distinct !DILexicalBlock(scope: !4837, file: !102, line: 982, column: 5)
!4841 = !DILocation(line: 982, column: 13, scope: !4840)
!4842 = !DILocation(line: 981, column: 5, scope: !4840)
!4843 = !DILocation(line: 982, column: 5, scope: !4844)
!4844 = distinct !DILexicalBlock(scope: !4837, file: !102, line: 984, column: 5)
!4845 = !DILocation(line: 986, column: 9, scope: !4846)
!4846 = distinct !DILexicalBlock(scope: !4755, file: !102, line: 986, column: 7)
!4847 = !DILocation(line: 986, column: 7, scope: !4755)
!4848 = !DILocation(line: 988, column: 5, scope: !4849)
!4849 = distinct !DILexicalBlock(scope: !4850, file: !102, line: 988, column: 5)
!4850 = distinct !DILexicalBlock(scope: !4851, file: !102, line: 987, column: 5)
!4851 = distinct !DILexicalBlock(scope: !4846, file: !102, line: 986, column: 18)
!4852 = !DILocation(line: 989, column: 38, scope: !4853)
!4853 = distinct !DILexicalBlock(scope: !4850, file: !102, line: 990, column: 5)
!4854 = !DILocation(line: 989, column: 5, scope: !4853)
!4855 = !DILocation(line: 990, column: 5, scope: !4856)
!4856 = distinct !DILexicalBlock(scope: !4850, file: !102, line: 991, column: 5)
!4857 = !DILocation(line: 992, column: 3, scope: !4755)
!4858 = distinct !DISubprogram(name: "init_sliders", scope: !102, file: !102, line: 418, type: !187, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4859 = !DILocalVariable(name: "pos", scope: !4858, file: !102, line: 423, type: !14)
!4860 = !DILocation(line: 423, column: 7, scope: !4858)
!4861 = !DILocalVariable(name: "__cil_tmp18", scope: !4858, file: !102, line: 436, type: !28)
!4862 = !DILocation(line: 436, column: 9, scope: !4858)
!4863 = !DILocation(line: 424, column: 16, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !102, line: 439, column: 3)
!4865 = distinct !DILexicalBlock(scope: !4858, file: !102, line: 438, column: 3)
!4866 = !DILocation(line: 424, column: 22, scope: !4864)
!4867 = !DILocation(line: 424, column: 27, scope: !4864)
!4868 = !DILocation(line: 424, column: 32, scope: !4864)
!4869 = !DILocation(line: 424, column: 37, scope: !4864)
!4870 = !DILocalVariable(name: "max_dev", scope: !4858, file: !102, line: 424, type: !14)
!4871 = !DILocation(line: 0, scope: !4858)
!4872 = !DILocation(line: 425, column: 7, scope: !4864)
!4873 = !DILocation(line: 425, column: 12, scope: !4864)
!4874 = !DILocalVariable(name: "X", scope: !4858, file: !102, line: 420, type: !14)
!4875 = !DILocalVariable(name: "Y", scope: !4858, file: !102, line: 421, type: !14)
!4876 = !DILocation(line: 427, column: 9, scope: !4864)
!4877 = !DILocation(line: 428, column: 7, scope: !4864)
!4878 = !DILocation(line: 430, column: 15, scope: !4879)
!4879 = distinct !DILexicalBlock(scope: !4864, file: !102, line: 429, column: 3)
!4880 = !DILocation(line: 430, column: 9, scope: !4879)
!4881 = !DILocalVariable(name: "tmp", scope: !4858, file: !102, line: 425, type: !14)
!4882 = !DILocation(line: 430, column: 11, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4865, file: !102, line: 430, column: 7)
!4884 = !DILocation(line: 430, column: 7, scope: !4865)
!4885 = !DILocation(line: 432, column: 11, scope: !4886)
!4886 = distinct !DILexicalBlock(scope: !4883, file: !102, line: 430, column: 18)
!4887 = !DILocation(line: 433, column: 3, scope: !4886)
!4888 = !DILocation(line: 438, column: 19, scope: !4889)
!4889 = distinct !DILexicalBlock(scope: !4890, file: !102, line: 435, column: 3)
!4890 = distinct !DILexicalBlock(scope: !4865, file: !102, line: 434, column: 3)
!4891 = !DILocation(line: 438, column: 13, scope: !4889)
!4892 = !DILocalVariable(name: "tmp___0", scope: !4858, file: !102, line: 426, type: !14)
!4893 = !DILocation(line: 438, column: 15, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4865, file: !102, line: 438, column: 7)
!4895 = !DILocation(line: 438, column: 7, scope: !4865)
!4896 = !DILocation(line: 440, column: 9, scope: !4897)
!4897 = distinct !DILexicalBlock(scope: !4894, file: !102, line: 438, column: 22)
!4898 = !DILocation(line: 441, column: 3, scope: !4897)
!4899 = !DILocalVariable(name: "dev_nr", scope: !4858, file: !102, line: 422, type: !14)
!4900 = !DILocation(line: 445, column: 3, scope: !4901)
!4901 = distinct !DILexicalBlock(scope: !4902, file: !102, line: 447, column: 3)
!4902 = distinct !DILexicalBlock(scope: !4865, file: !102, line: 446, column: 3)
!4903 = !DILocation(line: 0, scope: !4865)
!4904 = !DILocation(line: 445, column: 13, scope: !4901)
!4905 = !DILocation(line: 445, column: 19, scope: !4906)
!4906 = distinct !DILexicalBlock(scope: !4907, file: !102, line: 445, column: 9)
!4907 = distinct !DILexicalBlock(scope: !4901, file: !102, line: 445, column: 13)
!4908 = !DILocation(line: 445, column: 9, scope: !4907)
!4909 = !DILocation(line: 445, column: 7, scope: !4910)
!4910 = distinct !DILexicalBlock(scope: !4906, file: !102, line: 445, column: 26)
!4911 = !DILocation(line: 447, column: 12, scope: !4912)
!4912 = distinct !DILexicalBlock(scope: !4907, file: !102, line: 447, column: 9)
!4913 = !DILocation(line: 447, column: 25, scope: !4912)
!4914 = !DILocation(line: 447, column: 23, scope: !4912)
!4915 = !DILocation(line: 447, column: 9, scope: !4907)
!4916 = !DILocation(line: 449, column: 11, scope: !4917)
!4917 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 449, column: 11)
!4918 = distinct !DILexicalBlock(scope: !4912, file: !102, line: 447, column: 34)
!4919 = !DILocation(line: 449, column: 21, scope: !4917)
!4920 = !DILocation(line: 449, column: 11, scope: !4918)
!4921 = !DILocation(line: 450, column: 9, scope: !4922)
!4922 = distinct !DILexicalBlock(scope: !4917, file: !102, line: 449, column: 33)
!4923 = !DILocation(line: 452, column: 23, scope: !4924)
!4924 = distinct !DILexicalBlock(scope: !4925, file: !102, line: 453, column: 7)
!4925 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 452, column: 7)
!4926 = !DILocation(line: 452, column: 90, scope: !4924)
!4927 = !DILocation(line: 452, column: 33, scope: !4924)
!4928 = !DILocation(line: 452, column: 115, scope: !4924)
!4929 = !DILocation(line: 452, column: 17, scope: !4924)
!4930 = !DILocalVariable(name: "tmp___1", scope: !4858, file: !102, line: 427, type: !14)
!4931 = !DILocation(line: 452, column: 19, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 452, column: 11)
!4933 = !DILocation(line: 452, column: 11, scope: !4918)
!4934 = !DILocation(line: 454, column: 9, scope: !4935)
!4935 = distinct !DILexicalBlock(scope: !4936, file: !102, line: 454, column: 9)
!4936 = distinct !DILexicalBlock(scope: !4937, file: !102, line: 453, column: 9)
!4937 = distinct !DILexicalBlock(scope: !4932, file: !102, line: 452, column: 26)
!4938 = !DILocation(line: 455, column: 42, scope: !4939)
!4939 = distinct !DILexicalBlock(scope: !4936, file: !102, line: 456, column: 9)
!4940 = !DILocation(line: 456, column: 17, scope: !4939)
!4941 = !DILocation(line: 455, column: 9, scope: !4939)
!4942 = !DILocation(line: 456, column: 9, scope: !4943)
!4943 = distinct !DILexicalBlock(scope: !4936, file: !102, line: 458, column: 9)
!4944 = !DILocation(line: 459, column: 25, scope: !4945)
!4945 = distinct !DILexicalBlock(scope: !4946, file: !102, line: 461, column: 7)
!4946 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 460, column: 7)
!4947 = !DILocation(line: 459, column: 17, scope: !4945)
!4948 = !DILocalVariable(name: "tmp___3", scope: !4858, file: !102, line: 429, type: !14)
!4949 = !DILocation(line: 459, column: 42, scope: !4946)
!4950 = !DILocation(line: 459, column: 40, scope: !4946)
!4951 = !DILocation(line: 459, column: 47, scope: !4946)
!4952 = !DILocation(line: 459, column: 52, scope: !4946)
!4953 = !DILocation(line: 459, column: 25, scope: !4946)
!4954 = !DILocalVariable(name: "tmp___2", scope: !4858, file: !102, line: 428, type: !14)
!4955 = !DILocation(line: 459, column: 15, scope: !4946)
!4956 = !DILocation(line: 459, column: 7, scope: !4946)
!4957 = !DILocation(line: 459, column: 26, scope: !4946)
!4958 = !DILocation(line: 459, column: 35, scope: !4946)
!4959 = !DILocation(line: 459, column: 21, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 459, column: 11)
!4961 = !DILocation(line: 459, column: 26, scope: !4960)
!4962 = !DILocation(line: 459, column: 19, scope: !4960)
!4963 = !DILocation(line: 459, column: 11, scope: !4918)
!4964 = !DILocation(line: 460, column: 39, scope: !4965)
!4965 = distinct !DILexicalBlock(scope: !4960, file: !102, line: 459, column: 31)
!4966 = !DILocation(line: 460, column: 44, scope: !4965)
!4967 = !DILocation(line: 460, column: 17, scope: !4965)
!4968 = !DILocation(line: 460, column: 9, scope: !4965)
!4969 = !DILocation(line: 460, column: 28, scope: !4965)
!4970 = !DILocation(line: 460, column: 37, scope: !4965)
!4971 = !DILocation(line: 461, column: 7, scope: !4965)
!4972 = !DILocation(line: 461, column: 14, scope: !4973)
!4973 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 461, column: 11)
!4974 = !DILocation(line: 461, column: 27, scope: !4973)
!4975 = !DILocation(line: 461, column: 25, scope: !4973)
!4976 = !DILocation(line: 461, column: 11, scope: !4918)
!4977 = !DILocation(line: 463, column: 27, scope: !4978)
!4978 = distinct !DILexicalBlock(scope: !4979, file: !102, line: 463, column: 9)
!4979 = distinct !DILexicalBlock(scope: !4980, file: !102, line: 462, column: 9)
!4980 = distinct !DILexicalBlock(scope: !4973, file: !102, line: 461, column: 39)
!4981 = !DILocation(line: 463, column: 19, scope: !4978)
!4982 = !DILocalVariable(name: "tmp___5", scope: !4858, file: !102, line: 431, type: !14)
!4983 = !DILocation(line: 463, column: 44, scope: !4979)
!4984 = !DILocation(line: 463, column: 42, scope: !4979)
!4985 = !DILocation(line: 463, column: 49, scope: !4979)
!4986 = !DILocation(line: 463, column: 54, scope: !4979)
!4987 = !DILocation(line: 463, column: 27, scope: !4979)
!4988 = !DILocalVariable(name: "tmp___4", scope: !4858, file: !102, line: 430, type: !14)
!4989 = !DILocation(line: 463, column: 17, scope: !4979)
!4990 = !DILocation(line: 463, column: 9, scope: !4979)
!4991 = !DILocation(line: 463, column: 28, scope: !4979)
!4992 = !DILocation(line: 463, column: 38, scope: !4979)
!4993 = !DILocation(line: 463, column: 23, scope: !4994)
!4994 = distinct !DILexicalBlock(scope: !4980, file: !102, line: 463, column: 13)
!4995 = !DILocation(line: 463, column: 28, scope: !4994)
!4996 = !DILocation(line: 463, column: 21, scope: !4994)
!4997 = !DILocation(line: 463, column: 13, scope: !4980)
!4998 = !DILocation(line: 464, column: 42, scope: !4999)
!4999 = distinct !DILexicalBlock(scope: !4994, file: !102, line: 463, column: 33)
!5000 = !DILocation(line: 464, column: 47, scope: !4999)
!5001 = !DILocation(line: 464, column: 19, scope: !4999)
!5002 = !DILocation(line: 464, column: 11, scope: !4999)
!5003 = !DILocation(line: 464, column: 30, scope: !4999)
!5004 = !DILocation(line: 464, column: 40, scope: !4999)
!5005 = !DILocation(line: 465, column: 9, scope: !4999)
!5006 = !DILocation(line: 466, column: 7, scope: !4980)
!5007 = !DILocation(line: 468, column: 48, scope: !5008)
!5008 = distinct !DILexicalBlock(scope: !4973, file: !102, line: 466, column: 14)
!5009 = !DILocation(line: 468, column: 40, scope: !5008)
!5010 = !DILocation(line: 468, column: 59, scope: !5008)
!5011 = !DILocation(line: 468, column: 17, scope: !5008)
!5012 = !DILocation(line: 468, column: 9, scope: !5008)
!5013 = !DILocation(line: 468, column: 28, scope: !5008)
!5014 = !DILocation(line: 468, column: 38, scope: !5008)
!5015 = !DILocation(line: 470, column: 15, scope: !5016)
!5016 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 470, column: 7)
!5017 = !DILocation(line: 470, column: 7, scope: !5016)
!5018 = !DILocation(line: 470, column: 26, scope: !5016)
!5019 = !DILocation(line: 470, column: 28, scope: !5016)
!5020 = !DILocation(line: 471, column: 15, scope: !5016)
!5021 = !DILocation(line: 471, column: 7, scope: !5016)
!5022 = !DILocation(line: 471, column: 26, scope: !5016)
!5023 = !DILocation(line: 471, column: 28, scope: !5016)
!5024 = !DILocation(line: 472, column: 7, scope: !5025)
!5025 = distinct !DILexicalBlock(scope: !5016, file: !102, line: 472, column: 7)
!5026 = !DILocation(line: 473, column: 25, scope: !5027)
!5027 = distinct !DILexicalBlock(scope: !5016, file: !102, line: 474, column: 7)
!5028 = !DILocation(line: 473, column: 17, scope: !5027)
!5029 = !DILocalVariable(name: "tmp___9", scope: !4858, file: !102, line: 434, type: !14)
!5030 = !DILocation(line: 473, column: 11, scope: !5031)
!5031 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 473, column: 11)
!5032 = !DILocation(line: 473, column: 11, scope: !4918)
!5033 = !DILocation(line: 474, column: 27, scope: !5034)
!5034 = distinct !DILexicalBlock(scope: !5035, file: !102, line: 475, column: 9)
!5035 = distinct !DILexicalBlock(scope: !5036, file: !102, line: 474, column: 9)
!5036 = distinct !DILexicalBlock(scope: !5031, file: !102, line: 473, column: 20)
!5037 = !DILocation(line: 474, column: 19, scope: !5034)
!5038 = !DILocalVariable(name: "tmp___8", scope: !4858, file: !102, line: 433, type: !14)
!5039 = !DILocation(line: 474, column: 13, scope: !5040)
!5040 = distinct !DILexicalBlock(scope: !5036, file: !102, line: 474, column: 13)
!5041 = !DILocation(line: 474, column: 13, scope: !5036)
!5042 = !DILocalVariable(name: "tmp___7", scope: !4858, file: !102, line: 432, type: !14)
!5043 = !DILocation(line: 475, column: 9, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !5040, file: !102, line: 474, column: 22)
!5045 = !DILocation(line: 0, scope: !5040)
!5046 = !DILocation(line: 474, column: 25, scope: !5047)
!5047 = distinct !DILexicalBlock(scope: !5048, file: !102, line: 477, column: 9)
!5048 = distinct !DILexicalBlock(scope: !5036, file: !102, line: 476, column: 9)
!5049 = !DILocation(line: 474, column: 32, scope: !5047)
!5050 = !DILocation(line: 474, column: 9, scope: !5047)
!5051 = !DILocation(line: 477, column: 7, scope: !5036)
!5052 = !DILocation(line: 475, column: 21, scope: !5053)
!5053 = distinct !DILexicalBlock(scope: !5054, file: !102, line: 479, column: 7)
!5054 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 478, column: 7)
!5055 = !DILocation(line: 475, column: 29, scope: !5053)
!5056 = !DILocation(line: 475, column: 45, scope: !5053)
!5057 = !DILocation(line: 475, column: 37, scope: !5053)
!5058 = !DILocation(line: 475, column: 56, scope: !5053)
!5059 = !DILocation(line: 475, column: 35, scope: !5053)
!5060 = !DILocation(line: 475, column: 7, scope: !5053)
!5061 = !DILocation(line: 476, column: 14, scope: !5062)
!5062 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 476, column: 11)
!5063 = !DILocation(line: 476, column: 27, scope: !5062)
!5064 = !DILocation(line: 476, column: 25, scope: !5062)
!5065 = !DILocation(line: 476, column: 11, scope: !4918)
!5066 = !DILocation(line: 477, column: 23, scope: !5067)
!5067 = distinct !DILexicalBlock(scope: !5068, file: !102, line: 478, column: 9)
!5068 = distinct !DILexicalBlock(scope: !5069, file: !102, line: 477, column: 9)
!5069 = distinct !DILexicalBlock(scope: !5062, file: !102, line: 476, column: 39)
!5070 = !DILocation(line: 477, column: 31, scope: !5067)
!5071 = !DILocation(line: 477, column: 47, scope: !5067)
!5072 = !DILocation(line: 477, column: 39, scope: !5067)
!5073 = !DILocation(line: 477, column: 58, scope: !5067)
!5074 = !DILocation(line: 477, column: 37, scope: !5067)
!5075 = !DILocation(line: 477, column: 9, scope: !5067)
!5076 = !DILocation(line: 480, column: 7, scope: !5069)
!5077 = !DILocation(line: 478, column: 25, scope: !4918)
!5078 = !DILocation(line: 478, column: 7, scope: !4918)
!5079 = !DILocation(line: 478, column: 23, scope: !4918)
!5080 = !DILocation(line: 479, column: 18, scope: !4918)
!5081 = !DILocalVariable(name: "tmp___10", scope: !4858, file: !102, line: 435, type: !14)
!5082 = !DILocation(line: 479, column: 17, scope: !4918)
!5083 = !DILocation(line: 479, column: 7, scope: !4918)
!5084 = !DILocation(line: 479, column: 25, scope: !4918)
!5085 = !DILocation(line: 479, column: 32, scope: !4918)
!5086 = !DILocation(line: 480, column: 13, scope: !5087)
!5087 = distinct !DILexicalBlock(scope: !4918, file: !102, line: 480, column: 11)
!5088 = !DILocation(line: 480, column: 19, scope: !5087)
!5089 = !DILocation(line: 480, column: 25, scope: !5087)
!5090 = !DILocation(line: 480, column: 17, scope: !5087)
!5091 = !DILocation(line: 480, column: 11, scope: !4918)
!5092 = !DILocation(line: 483, column: 13, scope: !5093)
!5093 = distinct !DILexicalBlock(scope: !5087, file: !102, line: 480, column: 30)
!5094 = !DILocation(line: 483, column: 23, scope: !5093)
!5095 = !DILocation(line: 483, column: 28, scope: !5093)
!5096 = !DILocation(line: 483, column: 32, scope: !5093)
!5097 = !DILocation(line: 483, column: 39, scope: !5093)
!5098 = !DILocation(line: 483, column: 44, scope: !5093)
!5099 = !DILocation(line: 483, column: 37, scope: !5093)
!5100 = !DILocation(line: 483, column: 50, scope: !5093)
!5101 = !DILocation(line: 483, column: 18, scope: !5093)
!5102 = !DILocation(line: 484, column: 7, scope: !5093)
!5103 = !DILocation(line: 485, column: 14, scope: !5104)
!5104 = distinct !DILexicalBlock(scope: !5087, file: !102, line: 485, column: 11)
!5105 = !DILocation(line: 485, column: 27, scope: !5104)
!5106 = !DILocation(line: 485, column: 25, scope: !5104)
!5107 = !DILocation(line: 485, column: 11, scope: !5087)
!5108 = !DILocation(line: 486, column: 11, scope: !5109)
!5109 = distinct !DILexicalBlock(scope: !5104, file: !102, line: 485, column: 39)
!5110 = !DILocation(line: 487, column: 7, scope: !5109)
!5111 = !DILocation(line: 488, column: 11, scope: !5112)
!5112 = distinct !DILexicalBlock(scope: !5104, file: !102, line: 487, column: 14)
!5113 = !DILocation(line: 0, scope: !5104)
!5114 = !DILocation(line: 0, scope: !5087)
!5115 = !DILocation(line: 490, column: 5, scope: !4918)
!5116 = !DILocation(line: 491, column: 7, scope: !5117)
!5117 = distinct !DILexicalBlock(scope: !4912, file: !102, line: 490, column: 12)
!5118 = !DILocation(line: 491, column: 23, scope: !5117)
!5119 = !DILocation(line: 445, column: 12, scope: !4907)
!5120 = distinct !{!5120, !4900, !5121}
!5121 = !DILocation(line: 446, column: 3, scope: !4901)
!5122 = !DILocation(line: 448, column: 3, scope: !4901)
!5123 = !DILocation(line: 493, column: 3, scope: !4865)
