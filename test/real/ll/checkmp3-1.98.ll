; ModuleID = '/tmp/tmp.ll'
source_filename = "c/checkmp3-1.98.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__anonstruct_frame_info_32 = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [33 x i8], i32, i16, i16, i16 }
%struct.__anonstruct_command_flags_30 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.__anonstruct_meta_options_29 = type { i32, i32 }
%struct.rusage = type { %struct.timeval, %struct.timeval, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.__anonstruct_vbr_data_28 = type { i32, i32, i32, i32 }
%struct.__anonstruct_gen_info_27 = type { i32, i32, i32, i32, i32, i32, double }
%struct.__anonstruct_mp3_time_29 = type { i32, i32, i32 }
%struct.__anonstruct_id3_tag_info_33 = type { i16, i16, [31 x i8], [31 x i8], [31 x i8], [5 x i8], [31 x i8], i16, i16, i16 }

@.str = private unnamed_addr constant [17 x i8] c"q:epv::ahs::ib::\00", align 1
@optarg = external global i8*, align 8
@stderr = external global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"You must supply an integer greater than 1 to use the '-q' flag.\00", align 1
@optind = external global i32, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"11111111111\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"10\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"11\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@bitrate_matrix = internal global [6 x [16 x i32]] [[16 x i32] [i32 1, i32 32, i32 64, i32 96, i32 128, i32 160, i32 192, i32 224, i32 256, i32 288, i32 320, i32 352, i32 384, i32 416, i32 448, i32 0], [16 x i32] [i32 1, i32 32, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 384, i32 0], [16 x i32] [i32 1, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 160, i32 192, i32 224, i32 256, i32 320, i32 0], [16 x i32] [i32 1, i32 32, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 176, i32 192, i32 224, i32 256, i32 0], [16 x i32] [i32 1, i32 8, i32 16, i32 24, i32 32, i32 40, i32 48, i32 56, i32 64, i32 80, i32 96, i32 112, i32 128, i32 144, i32 160, i32 0], [16 x i32] zeroinitializer], align 16, !dbg !0
@sampling_rate_matrix = internal global [4 x [3 x i32]] [[3 x i32] [i32 44100, i32 22050, i32 11025], [3 x i32] [i32 48000, i32 24000, i32 12000], [3 x i32] [i32 32000, i32 16000, i32 8000], [3 x i32] zeroinitializer], align 16, !dbg !124
@.str.8 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Could not get system usage for myself.\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"%-20s%1ld.%02lds\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"USER_TIME\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"SYS_TIME\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.15 = private unnamed_addr constant [9 x i8] c"%-20s%d\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"FrameOffset\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"FrameLength\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"FrameDataLength\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"BitRate\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"SampRate\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"%-20s%s\0A\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"BinString\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%-20s%lu\0A\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"BinLen\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"%-20s%u\0A\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"IntHeader\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"NEXT_FRAME\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.30 = private unnamed_addr constant [102 x i8] c"\0AAn expected frame was not found. Expected it at offset 0x%x (BYTE %d), now at offset 0x%x (BYTE %d).\00", align 1
@.str.31 = private unnamed_addr constant [100 x i8] c"\0AMininum contiguous number of frames wasn't reached. Got to %d, needed %d at offset 0x%x (BYTE %d).\00", align 1
@.str.32 = private unnamed_addr constant [58 x i8] c"\0ASomething happened at byte %d. Next expected frame: %d.\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%c%c%c%c\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"%c%c\00", align 1
@.str.35 = private unnamed_addr constant [99 x i8] c"\0AA possible header 0x%x passed the weak sieve, but failed the strong one at offset 0x%x (BYTE %d).\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"Possible ID3v2 frame found, skipping\0A\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c"%s %s\09%s %d\09%s %d\09%s %d\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"FILE_NAME\00", align 1
@.str.39 = private unnamed_addr constant [12 x i8] c"GOOD_FRAMES\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c"BAD_FRAMES\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"LAST_BYTE_CHECKED\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"%-20s%d\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"\09%s %d\09%s %d\09%s %d\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"VBR_HIGH\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"VBR_LOW\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"VBR_AVERAGE\00", align 1
@.str.47 = private unnamed_addr constant [22 x i8] c"\09%-20s%02u:%02u.%02u\0A\00", align 1
@.str.48 = private unnamed_addr constant [12 x i8] c"SONG_LENGTH\00", align 1
@.str.49 = private unnamed_addr constant [22 x i8] c"\0A%-20s%02u:%02u.%02u\0A\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"\0A%-20s%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [8 x i8] c"MP3_TAG\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"TITLE\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"ARTIST\00", align 1
@.str.54 = private unnamed_addr constant [6 x i8] c"ALBUM\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"YEAR\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"COMMENT\00", align 1
@.str.57 = private unnamed_addr constant [6 x i8] c"GENRE\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"TRACK\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"ID3.11\00", align 1
@.str.60 = private unnamed_addr constant [18 x i8] c"mp3_check: %s %s\0A\00", align 1
@.str.61 = private unnamed_addr constant [22 x i8] c"mp3_check: stdout %s\0A\00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"MPV_1\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"MPV_2\00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"MPV_25\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"MPV_RESERVED\00", align 1
@.str.68 = private unnamed_addr constant [3 x i8] c"L1\00", align 1
@.str.69 = private unnamed_addr constant [3 x i8] c"L2\00", align 1
@.str.70 = private unnamed_addr constant [3 x i8] c"L3\00", align 1
@.str.71 = private unnamed_addr constant [11 x i8] c"L_RESERVED\00", align 1
@.str.72 = private unnamed_addr constant [9 x i8] c"PROT_BIT\00", align 1
@.str.73 = private unnamed_addr constant [9 x i8] c"BIT_RATE\00", align 1
@.str.74 = private unnamed_addr constant [12 x i8] c"SAMPLE_FREQ\00", align 1
@.str.75 = private unnamed_addr constant [18 x i8] c"SAMPLES_PER_FRAME\00", align 1
@.str.76 = private unnamed_addr constant [8 x i8] c"PAD_BIT\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"PRIV_BIT\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"STEREO\00", align 1
@.str.79 = private unnamed_addr constant [13 x i8] c"JOINT_STEREO\00", align 1
@.str.80 = private unnamed_addr constant [12 x i8] c"DUAL_STEREO\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"SINGLE_CHANNEL\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"MODE_EXTENSION\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"ID3V2\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"FRAME_LENGTH\00", align 1
@.str.85 = private unnamed_addr constant [10 x i8] c"COPYRIGHT\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"ORIGINAL\00", align 1
@.str.87 = private unnamed_addr constant [10 x i8] c"EMPH_NONE\00", align 1
@.str.88 = private unnamed_addr constant [10 x i8] c"EMPH_5015\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"EMPH_RESERV\00", align 1
@.str.90 = private unnamed_addr constant [10 x i8] c"EMPH_CCIT\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"CHECK_STATE\00", align 1
@.str.92 = private unnamed_addr constant [11 x i8] c"BIN_STRING\00", align 1
@inited = internal global i32 0, align 4, !dbg !131
@empty_frame = internal global %struct.__anonstruct_frame_info_32 zeroinitializer, align 4, !dbg !81
@.str.93 = private unnamed_addr constant [93 x i8] c"\0Ausage: checkmp3 [-e] [-p] [-v[v]] [-a] [-b[<byte_count>]] [-i] [-s[s]] [-h] [-] [file ...]\0A\00", align 1
@.str.94 = private unnamed_addr constant [77 x i8] c"     -q<number>        Determines the mininum <number> of contiguous frames\0A\00", align 1
@.str.95 = private unnamed_addr constant [72 x i8] c"                       that must be present for an error NOT to occur.\0A\00", align 1
@.str.96 = private unnamed_addr constant [78 x i8] c"                       Analyzing random data will find spurious MP3 headers,\0A\00", align 1
@.str.97 = private unnamed_addr constant [73 x i8] c"                       but finding <number> sequential headers are even\0A\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"                       harder to find.\0A\0A\00", align 1
@.str.99 = private unnamed_addr constant [81 x i8] c"     -e                While id3v2 support is under development, this flag will\0A\00", align 1
@.str.100 = private unnamed_addr constant [78 x i8] c"                       allow you to have mp3_check record a frame error when\0A\00", align 1
@.str.101 = private unnamed_addr constant [47 x i8] c"                       a id3v2 tag is found.\0A\0A\00", align 1
@.str.102 = private unnamed_addr constant [76 x i8] c"     -p                Shows just the essentials (what you get without the\0A\00", align 1
@.str.103 = private unnamed_addr constant [74 x i8] c"                       -v option) on a single line for easy parsing. The\0A\00", align 1
@.str.104 = private unnamed_addr constant [79 x i8] c"                       fields are separated by tabs, and the name/value pairs\0A\00", align 1
@.str.105 = private unnamed_addr constant [50 x i8] c"                       are separated by spaces.\0A\0A\00", align 1
@.str.106 = private unnamed_addr constant [76 x i8] c"     -v[v]             Lists details about the mp3 in name -> value order.\0A\00", align 1
@.str.107 = private unnamed_addr constant [75 x i8] c"                       Adding an extra 'v' at the end gives details about\0A\00", align 1
@.str.108 = private unnamed_addr constant [55 x i8] c"                       each frame. Extremly verbose!\0A\0A\00", align 1
@.str.109 = private unnamed_addr constant [69 x i8] c"     -a                Checks the mp3 from stem to stern (default).\0A\00", align 1
@.str.110 = private unnamed_addr constant [71 x i8] c"                       If any other flags are present, it will not be\0A\00", align 1
@.str.111 = private unnamed_addr constant [71 x i8] c"                       enabled, and will instead behave as though the\0A\00", align 1
@.str.112 = private unnamed_addr constant [49 x i8] c"                       '-b' switch is present.\0A\0A\00", align 1
@.str.113 = private unnamed_addr constant [71 x i8] c"     -b[<byte_count>]  If a frame is not found by <byte_count> bytes,\0A\00", align 1
@.str.114 = private unnamed_addr constant [65 x i8] c"                       quit, and return an error. If byte_count\0A\00", align 1
@.str.115 = private unnamed_addr constant [67 x i8] c"                       is not specified, it will search until the\0A\00", align 1
@.str.116 = private unnamed_addr constant [53 x i8] c"                       first valid frame and quit.\0A\0A\00", align 1
@.str.117 = private unnamed_addr constant [71 x i8] c"     -i                Check to see if there is a ID3 tag, and if so,\0A\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"                       display the info.\0A\0A\00", align 1
@.str.119 = private unnamed_addr constant [72 x i8] c"     -s[s|f]           Sends the mp3 to stdout (for CGI applications).\0A\00", align 1
@.str.120 = private unnamed_addr constant [73 x i8] c"                       If an additional 's' is there, then no output is\0A\00", align 1
@.str.121 = private unnamed_addr constant [71 x i8] c"                       made, just errors are reported (super silent).\0A\00", align 1
@.str.122 = private unnamed_addr constant [70 x i8] c"                       With the 'f' used, only valid frames are sent\0A\00", align 1
@.str.123 = private unnamed_addr constant [73 x i8] c"                       to stdout ('f'ixing the mp3 is attempted). Also,\0A\00", align 1
@.str.124 = private unnamed_addr constant [74 x i8] c"                       it is important to note that the id3 tag will not\0A\00", align 1
@.str.125 = private unnamed_addr constant [71 x i8] c"                       be included in the 'f'ixed mp3. If you want it\0A\00", align 1
@.str.126 = private unnamed_addr constant [72 x i8] c"                       included, you have to include the '-i' option.\0A\0A\00", align 1
@.str.127 = private unnamed_addr constant [64 x i8] c"     -h                Print this text including the version.\0A\0A\00", align 1
@.str.128 = private unnamed_addr constant [19 x i8] c"* VERSION:  %s   \0A\00", align 1
@.str.129 = private unnamed_addr constant [5 x i8] c"1.98\00", align 1
@.str.130 = private unnamed_addr constant [19 x i8] c"* HOMEPAGE: %s   \0A\00", align 1
@.str.131 = private unnamed_addr constant [46 x i8] c"http://sourceforge.net/project/?group_id=6126\00", align 1
@.str.132 = private unnamed_addr constant [19 x i8] c"* AUTHOR :  %s   \0A\00", align 1
@.str.133 = private unnamed_addr constant [38 x i8] c"Eric Bullen <ericb at thedeepsky.com>\00", align 1
@.str.134 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.135 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.136 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@crc_table = internal global [256 x i16] [i16 0, i16 -16191, i16 -15999, i16 320, i16 -15615, i16 960, i16 640, i16 -15807, i16 -14847, i16 1728, i16 1920, i16 -14527, i16 1280, i16 -14911, i16 -15231, i16 1088, i16 -13311, i16 3264, i16 3456, i16 -12991, i16 3840, i16 -12351, i16 -12671, i16 3648, i16 2560, i16 -13631, i16 -13439, i16 2880, i16 -14079, i16 2496, i16 2176, i16 -14271, i16 -10239, i16 6336, i16 6528, i16 -9919, i16 6912, i16 -9279, i16 -9599, i16 6720, i16 7680, i16 -8511, i16 -8319, i16 8000, i16 -8959, i16 7616, i16 7296, i16 -9151, i16 5120, i16 -11071, i16 -10879, i16 5440, i16 -10495, i16 6080, i16 5760, i16 -10687, i16 -11775, i16 4800, i16 4992, i16 -11455, i16 4352, i16 -11839, i16 -12159, i16 4160, i16 -4095, i16 12480, i16 12672, i16 -3775, i16 13056, i16 -3135, i16 -3455, i16 12864, i16 13824, i16 -2367, i16 -2175, i16 14144, i16 -2815, i16 13760, i16 13440, i16 -3007, i16 15360, i16 -831, i16 -639, i16 15680, i16 -255, i16 16320, i16 16000, i16 -447, i16 -1535, i16 15040, i16 15232, i16 -1215, i16 14592, i16 -1599, i16 -1919, i16 14400, i16 10240, i16 -5951, i16 -5759, i16 10560, i16 -5375, i16 11200, i16 10880, i16 -5567, i16 -4607, i16 11968, i16 12160, i16 -4287, i16 11520, i16 -4671, i16 -4991, i16 11328, i16 -7167, i16 9408, i16 9600, i16 -6847, i16 9984, i16 -6207, i16 -6527, i16 9792, i16 8704, i16 -7487, i16 -7295, i16 9024, i16 -7935, i16 8640, i16 8320, i16 -8127, i16 -24575, i16 24768, i16 24960, i16 -24255, i16 25344, i16 -23615, i16 -23935, i16 25152, i16 26112, i16 -22847, i16 -22655, i16 26432, i16 -23295, i16 26048, i16 25728, i16 -23487, i16 27648, i16 -21311, i16 -21119, i16 27968, i16 -20735, i16 28608, i16 28288, i16 -20927, i16 -22015, i16 27328, i16 27520, i16 -21695, i16 26880, i16 -22079, i16 -22399, i16 26688, i16 30720, i16 -18239, i16 -18047, i16 31040, i16 -17663, i16 31680, i16 31360, i16 -17855, i16 -16895, i16 32448, i16 32640, i16 -16575, i16 32000, i16 -16959, i16 -17279, i16 31808, i16 -19455, i16 29888, i16 30080, i16 -19135, i16 30464, i16 -18495, i16 -18815, i16 30272, i16 29184, i16 -19775, i16 -19583, i16 29504, i16 -20223, i16 29120, i16 28800, i16 -20415, i16 20480, i16 -28479, i16 -28287, i16 20800, i16 -27903, i16 21440, i16 21120, i16 -28095, i16 -27135, i16 22208, i16 22400, i16 -26815, i16 21760, i16 -27199, i16 -27519, i16 21568, i16 -25599, i16 23744, i16 23936, i16 -25279, i16 24320, i16 -24639, i16 -24959, i16 24128, i16 23040, i16 -25919, i16 -25727, i16 23360, i16 -26367, i16 22976, i16 22656, i16 -26559, i16 -30719, i16 18624, i16 18816, i16 -30399, i16 19200, i16 -29759, i16 -30079, i16 19008, i16 19968, i16 -28991, i16 -28799, i16 20288, i16 -29439, i16 19904, i16 19584, i16 -29631, i16 17408, i16 -31551, i16 -31359, i16 17728, i16 -30975, i16 18368, i16 18048, i16 -31167, i16 -32255, i16 17088, i16 17280, i16 -31935, i16 16640, i16 -32319, i16 -32639, i16 16448], align 16, !dbg !133

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !148 {
entry:
  %flags = alloca %struct.__anonstruct_command_flags_30, align 4
  %flag_options = alloca %struct.__anonstruct_meta_options_29, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.value(metadata i8** %argv, metadata !155, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_command_flags_30* %flags, metadata !156, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_meta_options_29* %flag_options, metadata !172, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata !4, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata !4, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i32 0, metadata !183, metadata !DIExpression()), !dbg !154
  call void @init_command_flags_struct(%struct.__anonstruct_command_flags_30* %flags), !dbg !184
  br label %while.body, !dbg !188

while.body:                                       ; preds = %switch_break, %entry
  br label %while_continue___0, !dbg !191

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !191

while_continue:                                   ; preds = %while_continue___0
  %call = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0)) #8, !dbg !192
  call void @llvm.dbg.value(metadata i32 %call, metadata !196, metadata !DIExpression()), !dbg !154
  %cmp = icmp ne i32 %call, -1, !dbg !197
  br i1 %cmp, label %if.end, label %if.then, !dbg !199

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !200

if.end:                                           ; preds = %while_continue
  %cmp1 = icmp eq i32 %call, 113, !dbg !202
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !205

if.then2:                                         ; preds = %if.end
  br label %case_113, !dbg !206

if.end3:                                          ; preds = %if.end
  %cmp4 = icmp eq i32 %call, 101, !dbg !208
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !210

if.then5:                                         ; preds = %if.end3
  br label %case_101, !dbg !211

if.end6:                                          ; preds = %if.end3
  %cmp7 = icmp eq i32 %call, 112, !dbg !213
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !215

if.then8:                                         ; preds = %if.end6
  br label %case_112, !dbg !216

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %call, 118, !dbg !218
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !220

if.then11:                                        ; preds = %if.end9
  br label %case_118, !dbg !221

if.end12:                                         ; preds = %if.end9
  %cmp13 = icmp eq i32 %call, 97, !dbg !223
  br i1 %cmp13, label %if.then14, label %if.end15, !dbg !225

if.then14:                                        ; preds = %if.end12
  br label %case_97, !dbg !226

if.end15:                                         ; preds = %if.end12
  %cmp16 = icmp eq i32 %call, 115, !dbg !228
  br i1 %cmp16, label %if.then17, label %if.end18, !dbg !230

if.then17:                                        ; preds = %if.end15
  br label %case_115, !dbg !231

if.end18:                                         ; preds = %if.end15
  %cmp19 = icmp eq i32 %call, 105, !dbg !233
  br i1 %cmp19, label %if.then20, label %if.end21, !dbg !235

if.then20:                                        ; preds = %if.end18
  br label %case_105, !dbg !236

if.end21:                                         ; preds = %if.end18
  %cmp22 = icmp eq i32 %call, 98, !dbg !238
  br i1 %cmp22, label %if.then23, label %if.end24, !dbg !240

if.then23:                                        ; preds = %if.end21
  br label %case_98, !dbg !241

if.end24:                                         ; preds = %if.end21
  %cmp25 = icmp eq i32 %call, 104, !dbg !243
  br i1 %cmp25, label %if.then26, label %if.end27, !dbg !245

if.then26:                                        ; preds = %if.end24
  br label %case_104, !dbg !246

if.end27:                                         ; preds = %if.end24
  br label %switch_default, !dbg !248

case_113:                                         ; preds = %if.then2
  %0 = load i8*, i8** @optarg, align 8, !dbg !249
  %call28 = call i32 @atoi(i8* %0) #9, !dbg !252
  call void @llvm.dbg.value(metadata i32 %call28, metadata !253, metadata !DIExpression()), !dbg !154
  %cmp29 = icmp sgt i32 %call28, 1, !dbg !254
  br i1 %cmp29, label %if.then30, label %if.else, !dbg !256

if.then30:                                        ; preds = %case_113
  %1 = load i8*, i8** @optarg, align 8, !dbg !257
  %call31 = call i32 @atoi(i8* %1) #9, !dbg !261
  %min_frame_seq = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 1, !dbg !262
  store i32 %call31, i32* %min_frame_seq, align 4, !dbg !263
  %qflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 6, !dbg !264
  store i32 1, i32* %qflag, align 4, !dbg !265
  br label %if.end33, !dbg !266

if.else:                                          ; preds = %case_113
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !267
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i32 0, i32 0)), !dbg !271
  br label %return, !dbg !272

if.end33:                                         ; preds = %if.then30
  br label %switch_break, !dbg !273

case_101:                                         ; preds = %if.then5
  %eflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 2, !dbg !274
  store i32 1, i32* %eflag, align 4, !dbg !275
  br label %switch_break, !dbg !276

case_112:                                         ; preds = %if.then8
  %pflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 5, !dbg !277
  store i32 1, i32* %pflag, align 4, !dbg !278
  br label %switch_break, !dbg !279

case_118:                                         ; preds = %if.then11
  %vflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 9, !dbg !280
  store i32 1, i32* %vflag, align 4, !dbg !281
  %3 = load i8*, i8** @optarg, align 8, !dbg !282
  %tobool = icmp ne i8* %3, null, !dbg !282
  br i1 %tobool, label %if.then34, label %if.end39, !dbg !284

if.then34:                                        ; preds = %case_118
  %4 = load i8*, i8** @optarg, align 8, !dbg !285
  %5 = load i8, i8* %4, align 1, !dbg !288
  %conv = sext i8 %5 to i32, !dbg !289
  %cmp35 = icmp eq i32 %conv, 118, !dbg !290
  br i1 %cmp35, label %if.then37, label %if.end38, !dbg !291

if.then37:                                        ; preds = %if.then34
  %vvflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 10, !dbg !292
  store i32 1, i32* %vvflag, align 4, !dbg !294
  br label %if.end38, !dbg !295

if.end38:                                         ; preds = %if.then37, %if.then34
  br label %if.end39, !dbg !296

if.end39:                                         ; preds = %if.end38, %case_118
  br label %switch_break, !dbg !297

case_97:                                          ; preds = %if.then14
  %aflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 0, !dbg !298
  store i32 1, i32* %aflag, align 4, !dbg !299
  br label %switch_break, !dbg !300

case_115:                                         ; preds = %if.then17
  %sflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !301
  store i32 1, i32* %sflag, align 4, !dbg !302
  %6 = load i8*, i8** @optarg, align 8, !dbg !303
  %tobool40 = icmp ne i8* %6, null, !dbg !303
  br i1 %tobool40, label %if.then41, label %if.end47, !dbg !305

if.then41:                                        ; preds = %case_115
  %7 = load i8*, i8** @optarg, align 8, !dbg !306
  %8 = load i8, i8* %7, align 1, !dbg !309
  %conv42 = sext i8 %8 to i32, !dbg !310
  %cmp43 = icmp eq i32 %conv42, 115, !dbg !311
  br i1 %cmp43, label %if.then45, label %if.end46, !dbg !312

if.then45:                                        ; preds = %if.then41
  %ssflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !313
  store i32 1, i32* %ssflag, align 4, !dbg !315
  br label %if.end46, !dbg !316

if.end46:                                         ; preds = %if.then45, %if.then41
  br label %if.end47, !dbg !317

if.end47:                                         ; preds = %if.end46, %case_115
  %9 = load i8*, i8** @optarg, align 8, !dbg !318
  %tobool48 = icmp ne i8* %9, null, !dbg !318
  br i1 %tobool48, label %if.then49, label %if.end55, !dbg !320

if.then49:                                        ; preds = %if.end47
  %10 = load i8*, i8** @optarg, align 8, !dbg !321
  %11 = load i8, i8* %10, align 1, !dbg !324
  %conv50 = sext i8 %11 to i32, !dbg !325
  %cmp51 = icmp eq i32 %conv50, 102, !dbg !326
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !327

if.then53:                                        ; preds = %if.then49
  %fflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !328
  store i32 1, i32* %fflag, align 4, !dbg !330
  br label %if.end54, !dbg !331

if.end54:                                         ; preds = %if.then53, %if.then49
  br label %if.end55, !dbg !332

if.end55:                                         ; preds = %if.end54, %if.end47
  br label %switch_break, !dbg !333

case_105:                                         ; preds = %if.then20
  %iflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 4, !dbg !334
  store i32 1, i32* %iflag, align 4, !dbg !335
  br label %switch_break, !dbg !336

case_98:                                          ; preds = %if.then23
  %12 = load i8*, i8** @optarg, align 8, !dbg !337
  %tobool56 = icmp ne i8* %12, null, !dbg !337
  br i1 %tobool56, label %if.then57, label %if.end59, !dbg !339

if.then57:                                        ; preds = %case_98
  %13 = load i8*, i8** @optarg, align 8, !dbg !340
  %call58 = call i32 @atoi(i8* %13) #9, !dbg !344
  %byte_limit = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 0, !dbg !345
  store i32 %call58, i32* %byte_limit, align 4, !dbg !346
  br label %if.end59, !dbg !347

if.end59:                                         ; preds = %if.then57, %case_98
  %bflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 1, !dbg !348
  store i32 1, i32* %bflag, align 4, !dbg !349
  br label %switch_break, !dbg !350

case_104:                                         ; preds = %if.then26
  call void @print_usage(), !dbg !351
  br label %switch_break, !dbg !354

switch_default:                                   ; preds = %if.end27
  call void @print_usage(), !dbg !355
  br label %switch_break, !dbg !358

switch_break:                                     ; preds = %switch_default, %case_104, %if.end59, %case_105, %if.end55, %case_97, %if.end39, %case_112, %case_101, %if.end33
  br label %while.body, !dbg !188, !llvm.loop !359

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !361

while_break:                                      ; preds = %while_break___0, %if.then
  %14 = load i32, i32* @optind, align 4, !dbg !362
  %idx.ext = sext i32 %14 to i64, !dbg !363
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !363
  call void @llvm.dbg.value(metadata i8** %add.ptr, metadata !155, metadata !DIExpression()), !dbg !154
  %15 = load i8*, i8** %add.ptr, align 8, !dbg !364
  %16 = ptrtoint i8* %15 to i64, !dbg !366
  %cmp60 = icmp eq i64 %16, 0, !dbg !367
  br i1 %cmp60, label %if.then62, label %if.end63, !dbg !368

if.then62:                                        ; preds = %while_break
  call void @print_usage(), !dbg !369
  br label %if.end63, !dbg !373

if.end63:                                         ; preds = %if.then62, %while_break
  %vflag64 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 9, !dbg !374
  %17 = load i32, i32* %vflag64, align 4, !dbg !374
  %tobool65 = icmp ne i32 %17, 0, !dbg !376
  br i1 %tobool65, label %if.end76, label %if.then66, !dbg !377

if.then66:                                        ; preds = %if.end63
  %aflag67 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 0, !dbg !378
  %18 = load i32, i32* %aflag67, align 4, !dbg !378
  %tobool68 = icmp ne i32 %18, 0, !dbg !381
  br i1 %tobool68, label %if.end75, label %if.then69, !dbg !382

if.then69:                                        ; preds = %if.then66
  %bflag70 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 1, !dbg !383
  %19 = load i32, i32* %bflag70, align 4, !dbg !383
  %tobool71 = icmp ne i32 %19, 0, !dbg !386
  br i1 %tobool71, label %if.end74, label %if.then72, !dbg !387

if.then72:                                        ; preds = %if.then69
  %aflag73 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 0, !dbg !388
  store i32 1, i32* %aflag73, align 4, !dbg !390
  br label %if.end74, !dbg !391

if.end74:                                         ; preds = %if.then72, %if.then69
  br label %if.end75, !dbg !392

if.end75:                                         ; preds = %if.end74, %if.then66
  br label %if.end76, !dbg !393

if.end76:                                         ; preds = %if.end75, %if.end63
  %aflag77 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 0, !dbg !394
  %20 = load i32, i32* %aflag77, align 4, !dbg !394
  %tobool78 = icmp ne i32 %20, 0, !dbg !396
  br i1 %tobool78, label %if.end81, label %if.then79, !dbg !397

if.then79:                                        ; preds = %if.end76
  %bflag80 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 1, !dbg !398
  store i32 1, i32* %bflag80, align 4, !dbg !400
  br label %if.end81, !dbg !401

if.end81:                                         ; preds = %if.then79, %if.end76
  %call82 = call i32 @parse_args(i8** %add.ptr, %struct.__anonstruct_meta_options_29* %flag_options, %struct.__anonstruct_command_flags_30* %flags), !dbg !402
  call void @llvm.dbg.value(metadata i32 %call82, metadata !405, metadata !DIExpression()), !dbg !154
  %tobool83 = icmp ne i32 %call82, 0, !dbg !406
  br i1 %tobool83, label %if.end85, label %if.then84, !dbg !408

if.then84:                                        ; preds = %if.end81
  %inc = add nsw i32 0, 1, !dbg !409
  call void @llvm.dbg.value(metadata i32 %inc, metadata !183, metadata !DIExpression()), !dbg !154
  br label %if.end85, !dbg !411

if.end85:                                         ; preds = %if.then84, %if.end81
  %got_error.0 = phi i32 [ 0, %if.end81 ], [ %inc, %if.then84 ], !dbg !412
  call void @llvm.dbg.value(metadata i32 %got_error.0, metadata !183, metadata !DIExpression()), !dbg !154
  %sflag86 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !413
  %21 = load i32, i32* %sflag86, align 4, !dbg !413
  %tobool87 = icmp ne i32 %21, 0, !dbg !415
  br i1 %tobool87, label %if.end89, label %if.then88, !dbg !416

if.then88:                                        ; preds = %if.end85
  call void @print_sys_usage(), !dbg !417
  br label %if.end89, !dbg !421

if.end89:                                         ; preds = %if.then88, %if.end85
  %cmp90 = icmp sgt i32 %got_error.0, 0, !dbg !422
  br i1 %cmp90, label %if.then92, label %if.else93, !dbg !424

if.then92:                                        ; preds = %if.end89
  br label %return, !dbg !425

if.else93:                                        ; preds = %if.end89
  br label %return, !dbg !427

return:                                           ; preds = %if.else93, %if.then92, %if.else
  %retval.0 = phi i32 [ -1, %if.else ], [ -1, %if.then92 ], [ 0, %if.else93 ], !dbg !412
  ret i32 %retval.0, !dbg !429
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind ssp uwtable
define void @init_command_flags_struct(%struct.__anonstruct_command_flags_30* %flags) #0 !dbg !430 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_command_flags_30* %flags, metadata !434, metadata !DIExpression()), !dbg !435
  %aflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 0, !dbg !436
  store i32 0, i32* %aflag, align 4, !dbg !438
  %bflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 1, !dbg !439
  store i32 0, i32* %bflag, align 4, !dbg !440
  %eflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 2, !dbg !441
  store i32 0, i32* %eflag, align 4, !dbg !442
  %fflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !443
  store i32 0, i32* %fflag, align 4, !dbg !444
  %iflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 4, !dbg !445
  store i32 0, i32* %iflag, align 4, !dbg !446
  %pflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 5, !dbg !447
  store i32 0, i32* %pflag, align 4, !dbg !448
  %qflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 6, !dbg !449
  store i32 0, i32* %qflag, align 4, !dbg !450
  %sflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !451
  store i32 0, i32* %sflag, align 4, !dbg !452
  %ssflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !453
  store i32 0, i32* %ssflag, align 4, !dbg !454
  %vflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 9, !dbg !455
  store i32 0, i32* %vflag, align 4, !dbg !456
  %vvflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 10, !dbg !457
  store i32 0, i32* %vvflag, align 4, !dbg !458
  ret void, !dbg !459
}

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #2

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @print_usage() #0 !dbg !460 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !463, metadata !DIExpression()), !dbg !464
  call void @llvm.dbg.declare(metadata !4, metadata !465, metadata !DIExpression()), !dbg !466
  call void @llvm.dbg.declare(metadata !4, metadata !467, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.declare(metadata !4, metadata !469, metadata !DIExpression()), !dbg !470
  call void @llvm.dbg.declare(metadata !4, metadata !471, metadata !DIExpression()), !dbg !472
  call void @llvm.dbg.declare(metadata !4, metadata !473, metadata !DIExpression()), !dbg !474
  call void @llvm.dbg.declare(metadata !4, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata !4, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata !4, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata !4, metadata !481, metadata !DIExpression()), !dbg !482
  call void @llvm.dbg.declare(metadata !4, metadata !483, metadata !DIExpression()), !dbg !484
  call void @llvm.dbg.declare(metadata !4, metadata !485, metadata !DIExpression()), !dbg !486
  call void @llvm.dbg.declare(metadata !4, metadata !487, metadata !DIExpression()), !dbg !488
  call void @llvm.dbg.declare(metadata !4, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata !4, metadata !491, metadata !DIExpression()), !dbg !492
  call void @llvm.dbg.declare(metadata !4, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata !4, metadata !495, metadata !DIExpression()), !dbg !496
  call void @llvm.dbg.declare(metadata !4, metadata !497, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.declare(metadata !4, metadata !499, metadata !DIExpression()), !dbg !500
  call void @llvm.dbg.declare(metadata !4, metadata !501, metadata !DIExpression()), !dbg !502
  call void @llvm.dbg.declare(metadata !4, metadata !503, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.declare(metadata !4, metadata !505, metadata !DIExpression()), !dbg !506
  call void @llvm.dbg.declare(metadata !4, metadata !507, metadata !DIExpression()), !dbg !508
  call void @llvm.dbg.declare(metadata !4, metadata !509, metadata !DIExpression()), !dbg !510
  call void @llvm.dbg.declare(metadata !4, metadata !511, metadata !DIExpression()), !dbg !512
  call void @llvm.dbg.declare(metadata !4, metadata !513, metadata !DIExpression()), !dbg !514
  call void @llvm.dbg.declare(metadata !4, metadata !515, metadata !DIExpression()), !dbg !516
  call void @llvm.dbg.declare(metadata !4, metadata !517, metadata !DIExpression()), !dbg !518
  call void @llvm.dbg.declare(metadata !4, metadata !519, metadata !DIExpression()), !dbg !520
  call void @llvm.dbg.declare(metadata !4, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata !4, metadata !523, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.declare(metadata !4, metadata !525, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.declare(metadata !4, metadata !527, metadata !DIExpression()), !dbg !528
  call void @llvm.dbg.declare(metadata !4, metadata !529, metadata !DIExpression()), !dbg !530
  call void @llvm.dbg.declare(metadata !4, metadata !531, metadata !DIExpression()), !dbg !532
  call void @llvm.dbg.declare(metadata !4, metadata !533, metadata !DIExpression()), !dbg !534
  call void @llvm.dbg.declare(metadata !4, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata !4, metadata !537, metadata !DIExpression()), !dbg !538
  call void @llvm.dbg.declare(metadata !4, metadata !539, metadata !DIExpression()), !dbg !540
  call void @llvm.dbg.declare(metadata !4, metadata !541, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.declare(metadata !4, metadata !543, metadata !DIExpression()), !dbg !544
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !545
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.93, i32 0, i32 0)), !dbg !549
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !550
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.94, i32 0, i32 0)), !dbg !552
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !553
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.95, i32 0, i32 0)), !dbg !555
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !556
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.96, i32 0, i32 0)), !dbg !558
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !559
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %4, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.97, i32 0, i32 0)), !dbg !561
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !562
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.98, i32 0, i32 0)), !dbg !564
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !565
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %6, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.99, i32 0, i32 0)), !dbg !567
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !568
  %call7 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.100, i32 0, i32 0)), !dbg !570
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !571
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.101, i32 0, i32 0)), !dbg !573
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !574
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.102, i32 0, i32 0)), !dbg !576
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !577
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.103, i32 0, i32 0)), !dbg !579
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !580
  %call11 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.104, i32 0, i32 0)), !dbg !582
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !583
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.105, i32 0, i32 0)), !dbg !585
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !586
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.106, i32 0, i32 0)), !dbg !588
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !589
  %call14 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.107, i32 0, i32 0)), !dbg !591
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !592
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.108, i32 0, i32 0)), !dbg !594
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !595
  %call16 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.109, i32 0, i32 0)), !dbg !597
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !598
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.110, i32 0, i32 0)), !dbg !600
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !601
  %call18 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.111, i32 0, i32 0)), !dbg !603
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !604
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.112, i32 0, i32 0)), !dbg !606
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !607
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.113, i32 0, i32 0)), !dbg !609
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !610
  %call21 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.114, i32 0, i32 0)), !dbg !612
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !613
  %call22 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.115, i32 0, i32 0)), !dbg !615
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !616
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %23, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.116, i32 0, i32 0)), !dbg !618
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !619
  %call24 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %24, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.117, i32 0, i32 0)), !dbg !621
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !622
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.118, i32 0, i32 0)), !dbg !624
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !625
  %call26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %26, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.119, i32 0, i32 0)), !dbg !627
  %27 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !628
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %27, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.120, i32 0, i32 0)), !dbg !630
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !631
  %call28 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %28, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.121, i32 0, i32 0)), !dbg !633
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634
  %call29 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.122, i32 0, i32 0)), !dbg !636
  %30 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !637
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %30, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.123, i32 0, i32 0)), !dbg !639
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !640
  %call31 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.124, i32 0, i32 0)), !dbg !642
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !643
  %call32 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %32, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.125, i32 0, i32 0)), !dbg !645
  %33 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !646
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %33, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.126, i32 0, i32 0)), !dbg !648
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !649
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %34, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.127, i32 0, i32 0)), !dbg !651
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !652
  %call35 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.128, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.129, i32 0, i32 0)), !dbg !654
  %36 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !655
  %call36 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.130, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.131, i32 0, i32 0)), !dbg !657
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !658
  %call37 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %37, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.132, i32 0, i32 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.133, i32 0, i32 0)), !dbg !660
  call void @exit(i32 1) #10, !dbg !661
  unreachable, !dbg !661

return:                                           ; No predecessors!
  ret void, !dbg !663
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @parse_args(i8** %argv, %struct.__anonstruct_meta_options_29* %flag_options, %struct.__anonstruct_command_flags_30* %flags) #0 !dbg !664 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata %struct.__anonstruct_meta_options_29* %flag_options, metadata !670, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata %struct.__anonstruct_command_flags_30* %flags, metadata !671, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.declare(metadata !4, metadata !672, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.declare(metadata !4, metadata !674, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.declare(metadata !4, metadata !676, metadata !DIExpression()), !dbg !677
  call void @llvm.dbg.declare(metadata !4, metadata !678, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.value(metadata i32 0, metadata !680, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !669
  br label %while.body, !dbg !682

while.body:                                       ; preds = %if.end26, %entry
  %filename.0 = phi i8* [ undef, %entry ], [ %filename.3, %if.end26 ]
  %fp.0 = phi %struct._IO_FILE* [ undef, %entry ], [ %fp.3, %if.end26 ]
  %error_count.0 = phi i32 [ 0, %entry ], [ %error_count.3, %if.end26 ], !dbg !686
  %found_file.0 = phi i32 [ 0, %entry ], [ %found_file.4, %if.end26 ], !dbg !687
  %argv.addr.0 = phi i8** [ %argv, %entry ], [ %argv.addr.3, %if.end26 ]
  call void @llvm.dbg.value(metadata i8** %argv.addr.0, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %found_file.0, metadata !681, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %error_count.0, metadata !680, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.0, metadata !688, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8* %filename.0, metadata !689, metadata !DIExpression()), !dbg !669
  br label %while_continue___0, !dbg !690

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !690

while_continue:                                   ; preds = %while_continue___0
  %0 = load i8*, i8** %argv.addr.0, align 8, !dbg !691
  %tobool = icmp ne i8* %0, null, !dbg !691
  br i1 %tobool, label %if.then, label %if.end12, !dbg !694

if.then:                                          ; preds = %while_continue
  %1 = load i8*, i8** %argv.addr.0, align 8, !dbg !695
  %call = call i32 @strcmp(i8* %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.134, i32 0, i32 0)) #9, !dbg !699
  call void @llvm.dbg.value(metadata i32 %call, metadata !700, metadata !DIExpression()), !dbg !669
  %cmp = icmp eq i32 %call, 0, !dbg !701
  br i1 %cmp, label %if.then1, label %if.else, !dbg !703

if.then1:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 1, metadata !681, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), metadata !689, metadata !DIExpression()), !dbg !669
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !704
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %2, metadata !688, metadata !DIExpression()), !dbg !669
  %incdec.ptr = getelementptr inbounds i8*, i8** %argv.addr.0, i32 1, !dbg !706
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !668, metadata !DIExpression()), !dbg !669
  br label %if.end11, !dbg !707

if.else:                                          ; preds = %if.then
  %3 = load i8*, i8** %argv.addr.0, align 8, !dbg !708
  %call2 = call %struct._IO_FILE* @fopen(i8* %3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.136, i32 0, i32 0)), !dbg !712
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call2, metadata !688, metadata !DIExpression()), !dbg !669
  %4 = ptrtoint %struct._IO_FILE* %call2 to i64, !dbg !713
  %cmp3 = icmp ne i64 %4, 0, !dbg !715
  br i1 %cmp3, label %if.then4, label %if.else6, !dbg !716

if.then4:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i32 1, metadata !681, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8** %argv.addr.0, metadata !717, metadata !DIExpression()), !dbg !669
  %incdec.ptr5 = getelementptr inbounds i8*, i8** %argv.addr.0, i32 1, !dbg !718
  call void @llvm.dbg.value(metadata i8** %incdec.ptr5, metadata !668, metadata !DIExpression()), !dbg !669
  %5 = load i8*, i8** %argv.addr.0, align 8, !dbg !720
  call void @llvm.dbg.value(metadata i8* %5, metadata !689, metadata !DIExpression()), !dbg !669
  br label %if.end, !dbg !721

if.else6:                                         ; preds = %if.else
  %call7 = call i32* @__errno_location() #11, !dbg !722
  call void @llvm.dbg.value(metadata i32* %call7, metadata !726, metadata !DIExpression()), !dbg !669
  %6 = load i32, i32* %call7, align 4, !dbg !728
  %call8 = call i8* @strerror(i32 %6) #8, !dbg !730
  call void @llvm.dbg.value(metadata i8* %call8, metadata !731, metadata !DIExpression()), !dbg !669
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !732
  %8 = load i8*, i8** %argv.addr.0, align 8, !dbg !734
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i8* %8, i8* %call8), !dbg !735
  %incdec.ptr10 = getelementptr inbounds i8*, i8** %argv.addr.0, i32 1, !dbg !736
  call void @llvm.dbg.value(metadata i8** %incdec.ptr10, metadata !668, metadata !DIExpression()), !dbg !669
  br label %__Cont, !dbg !737

if.end:                                           ; preds = %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then1
  %filename.1 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.135, i32 0, i32 0), %if.then1 ], [ %5, %if.end ], !dbg !738
  %fp.1 = phi %struct._IO_FILE* [ %2, %if.then1 ], [ %call2, %if.end ], !dbg !738
  %argv.addr.1 = phi i8** [ %incdec.ptr, %if.then1 ], [ %incdec.ptr5, %if.end ], !dbg !738
  call void @llvm.dbg.value(metadata i8** %argv.addr.1, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 1, metadata !681, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.1, metadata !688, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8* %filename.1, metadata !689, metadata !DIExpression()), !dbg !669
  br label %if.end12, !dbg !739

if.end12:                                         ; preds = %if.end11, %while_continue
  %filename.2 = phi i8* [ %filename.1, %if.end11 ], [ %filename.0, %while_continue ]
  %fp.2 = phi %struct._IO_FILE* [ %fp.1, %if.end11 ], [ %fp.0, %while_continue ]
  %found_file.2 = phi i32 [ 1, %if.end11 ], [ %found_file.0, %while_continue ], !dbg !687
  %argv.addr.2 = phi i8** [ %argv.addr.1, %if.end11 ], [ %argv.addr.0, %while_continue ]
  call void @llvm.dbg.value(metadata i8** %argv.addr.2, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %found_file.2, metadata !681, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.2, metadata !688, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8* %filename.2, metadata !689, metadata !DIExpression()), !dbg !669
  %tobool13 = icmp ne i32 %found_file.2, 0, !dbg !740
  br i1 %tobool13, label %if.then14, label %if.end23, !dbg !742

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 @scan_file(%struct._IO_FILE* %fp.2, i8* %filename.2, %struct.__anonstruct_meta_options_29* %flag_options, %struct.__anonstruct_command_flags_30* %flags), !dbg !743
  call void @llvm.dbg.value(metadata i32 %call15, metadata !747, metadata !DIExpression()), !dbg !669
  %tobool16 = icmp ne i32 %call15, 0, !dbg !748
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !750

if.then17:                                        ; preds = %if.then14
  %inc = add nsw i32 %error_count.0, 1, !dbg !751
  call void @llvm.dbg.value(metadata i32 %inc, metadata !680, metadata !DIExpression()), !dbg !669
  br label %if.end18, !dbg !753

if.end18:                                         ; preds = %if.then17, %if.then14
  %error_count.1 = phi i32 [ %error_count.0, %if.then14 ], [ %inc, %if.then17 ], !dbg !687
  call void @llvm.dbg.value(metadata i32 %error_count.1, metadata !680, metadata !DIExpression()), !dbg !669
  %9 = ptrtoint %struct._IO_FILE* %fp.2 to i64, !dbg !754
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !756
  %11 = ptrtoint %struct._IO_FILE* %10 to i64, !dbg !757
  %cmp19 = icmp ne i64 %9, %11, !dbg !758
  br i1 %cmp19, label %if.then20, label %if.end22, !dbg !759

if.then20:                                        ; preds = %if.end18
  %call21 = call i32 @fclose(%struct._IO_FILE* %fp.2), !dbg !760
  br label %if.end22, !dbg !764

if.end22:                                         ; preds = %if.then20, %if.end18
  call void @llvm.dbg.value(metadata i32 0, metadata !681, metadata !DIExpression()), !dbg !669
  br label %if.end23, !dbg !765

if.end23:                                         ; preds = %if.end22, %if.end12
  %error_count.2 = phi i32 [ %error_count.1, %if.end22 ], [ %error_count.0, %if.end12 ], !dbg !686
  %found_file.3 = phi i32 [ 0, %if.end22 ], [ %found_file.2, %if.end12 ], !dbg !766
  call void @llvm.dbg.value(metadata i32 %found_file.3, metadata !681, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %error_count.2, metadata !680, metadata !DIExpression()), !dbg !669
  br label %__Cont, !dbg !740

__Cont:                                           ; preds = %if.end23, %if.else6
  %filename.3 = phi i8* [ %filename.2, %if.end23 ], [ %filename.0, %if.else6 ]
  %fp.3 = phi %struct._IO_FILE* [ %fp.2, %if.end23 ], [ %call2, %if.else6 ], !dbg !738
  %error_count.3 = phi i32 [ %error_count.2, %if.end23 ], [ %error_count.0, %if.else6 ], !dbg !686
  %found_file.4 = phi i32 [ %found_file.3, %if.end23 ], [ %found_file.0, %if.else6 ], !dbg !687
  %argv.addr.3 = phi i8** [ %argv.addr.2, %if.end23 ], [ %incdec.ptr10, %if.else6 ], !dbg !738
  call void @llvm.dbg.value(metadata i8** %argv.addr.3, metadata !668, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %found_file.4, metadata !681, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i32 %error_count.3, metadata !680, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp.3, metadata !688, metadata !DIExpression()), !dbg !669
  call void @llvm.dbg.value(metadata i8* %filename.3, metadata !689, metadata !DIExpression()), !dbg !669
  %12 = load i8*, i8** %argv.addr.3, align 8, !dbg !767
  %tobool24 = icmp ne i8* %12, null, !dbg !767
  br i1 %tobool24, label %if.end26, label %if.then25, !dbg !769

if.then25:                                        ; preds = %__Cont
  br label %while_break, !dbg !770

if.end26:                                         ; preds = %__Cont
  br label %while.body, !dbg !682, !llvm.loop !772

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !774

while_break:                                      ; preds = %while_break___0, %if.then25
  %cmp27 = icmp sgt i32 %error_count.3, 0, !dbg !775
  br i1 %cmp27, label %if.then28, label %if.else29, !dbg !777

if.then28:                                        ; preds = %while_break
  br label %return, !dbg !778

if.else29:                                        ; preds = %while_break
  br label %return, !dbg !780

return:                                           ; preds = %if.else29, %if.then28
  %retval.0 = phi i32 [ 0, %if.then28 ], [ 1, %if.else29 ], !dbg !782
  ret i32 %retval.0, !dbg !783
}

; Function Attrs: noinline nounwind ssp uwtable
define void @print_sys_usage() #0 !dbg !784 {
entry:
  %process_usage = alloca %struct.rusage, align 8
  call void @llvm.dbg.declare(metadata %struct.rusage* %process_usage, metadata !785, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.declare(metadata !4, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata !4, metadata !815, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.declare(metadata !4, metadata !817, metadata !DIExpression()), !dbg !818
  call void @llvm.dbg.declare(metadata !4, metadata !819, metadata !DIExpression()), !dbg !820
  call void @llvm.dbg.declare(metadata !4, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata !4, metadata !823, metadata !DIExpression()), !dbg !824
  %call = call i32 @getrusage(i32 0, %struct.rusage* %process_usage) #8, !dbg !825
  call void @llvm.dbg.value(metadata i32 %call, metadata !829, metadata !DIExpression()), !dbg !830
  %tobool = icmp ne i32 %call, 0, !dbg !831
  br i1 %tobool, label %if.then, label %if.else, !dbg !833

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !834
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0)), !dbg !838
  br label %if.end, !dbg !839

if.else:                                          ; preds = %entry
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !840
  %ru_utime = getelementptr inbounds %struct.rusage, %struct.rusage* %process_usage, i32 0, i32 0, !dbg !844
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime, i32 0, i32 0, !dbg !846
  %1 = load i64, i64* %tv_sec, align 8, !dbg !846
  %ru_utime3 = getelementptr inbounds %struct.rusage, %struct.rusage* %process_usage, i32 0, i32 0, !dbg !847
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_utime3, i32 0, i32 1, !dbg !848
  %2 = load i64, i64* %tv_usec, align 8, !dbg !848
  %div = sdiv i64 %2, 10000, !dbg !849
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i64 %1, i64 %div), !dbg !850
  %ru_stime = getelementptr inbounds %struct.rusage, %struct.rusage* %process_usage, i32 0, i32 1, !dbg !851
  %tv_sec5 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime, i32 0, i32 0, !dbg !853
  %3 = load i64, i64* %tv_sec5, align 8, !dbg !853
  %ru_stime6 = getelementptr inbounds %struct.rusage, %struct.rusage* %process_usage, i32 0, i32 1, !dbg !854
  %tv_usec7 = getelementptr inbounds %struct.timeval, %struct.timeval* %ru_stime6, i32 0, i32 1, !dbg !855
  %4 = load i64, i64* %tv_usec7, align 8, !dbg !855
  %div8 = sdiv i64 %4, 10000, !dbg !856
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i32 0, i32 0), i64 %3, i64 %div8), !dbg !857
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !858
}

; Function Attrs: noinline nounwind ssp uwtable
define void @init_vbr_tag_struct(%struct.__anonstruct_vbr_data_28* %vbr_info) #0 !dbg !859 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_vbr_data_28* %vbr_info, metadata !870, metadata !DIExpression()), !dbg !871
  %high_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 0, !dbg !872
  store i32 0, i32* %high_rate, align 4, !dbg !874
  %low_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !875
  store i32 0, i32* %low_rate, align 4, !dbg !876
  %ave_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 3, !dbg !877
  store i32 0, i32* %ave_rate, align 4, !dbg !878
  %sum_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 2, !dbg !879
  store i32 0, i32* %sum_rate, align 4, !dbg !880
  ret void, !dbg !881
}

; Function Attrs: noinline nounwind ssp uwtable
define void @init_gen_info_struct(%struct.__anonstruct_gen_info_27* %file_info) #0 !dbg !882 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !896, metadata !DIExpression()), !dbg !897
  %file_pos = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 0, !dbg !898
  store i32 0, i32* %file_pos, align 8, !dbg !900
  %good_frame_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !901
  store i32 0, i32* %good_frame_count, align 4, !dbg !902
  %bad_frame_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 2, !dbg !903
  store i32 0, i32* %bad_frame_count, align 8, !dbg !904
  %frame_sequence_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !905
  store i32 0, i32* %frame_sequence_count, align 4, !dbg !906
  %byte_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !907
  store i32 0, i32* %byte_count, align 8, !dbg !908
  %next_expected_frame = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !909
  store i32 4, i32* %next_expected_frame, align 4, !dbg !910
  %time_in_seconds = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 6, !dbg !911
  store double 0.000000e+00, double* %time_in_seconds, align 8, !dbg !912
  ret void, !dbg !913
}

; Function Attrs: noinline nounwind ssp uwtable
define void @init_mp3_time_struct(%struct.__anonstruct_mp3_time_29* %song_time) #0 !dbg !914 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mp3_time_29* %song_time, metadata !924, metadata !DIExpression()), !dbg !925
  %minutes = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 0, !dbg !926
  store i32 0, i32* %minutes, align 4, !dbg !928
  %seconds = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 1, !dbg !929
  store i32 0, i32* %seconds, align 4, !dbg !930
  %frac_second = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 2, !dbg !931
  store i32 0, i32* %frac_second, align 4, !dbg !932
  ret void, !dbg !933
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @copy_int_array_to_str(i8* %possible_mp3_tag, i8* %tag_field, i32 %offset, i32 %length, i32 %max_length) #0 !dbg !934 {
entry:
  call void @llvm.dbg.value(metadata i8* %possible_mp3_tag, metadata !937, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i8* %tag_field, metadata !939, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 %offset, metadata !940, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 %length, metadata !941, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 %max_length, metadata !942, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 0, metadata !943, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 0, metadata !944, metadata !DIExpression()), !dbg !938
  %add = add nsw i32 %offset, %length, !dbg !945
  %cmp = icmp slt i32 %max_length, %add, !dbg !948
  br i1 %cmp, label %if.then, label %if.end, !dbg !949

if.then:                                          ; preds = %entry
  br label %return, !dbg !950

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata i32 %offset, metadata !944, metadata !DIExpression()), !dbg !938
  br label %while.body, !dbg !952

while.body:                                       ; preds = %if.end4, %if.end
  %counter.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end4 ], !dbg !955
  %position.0 = phi i32 [ %offset, %if.end ], [ %inc7, %if.end4 ], !dbg !955
  call void @llvm.dbg.value(metadata i32 %position.0, metadata !944, metadata !DIExpression()), !dbg !938
  call void @llvm.dbg.value(metadata i32 %counter.0, metadata !943, metadata !DIExpression()), !dbg !938
  br label %while_continue___0, !dbg !956

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !956

while_continue:                                   ; preds = %while_continue___0
  %add1 = add nsw i32 %offset, %length, !dbg !957
  %cmp2 = icmp slt i32 %position.0, %add1, !dbg !960
  br i1 %cmp2, label %if.end4, label %if.then3, !dbg !961

if.then3:                                         ; preds = %while_continue
  br label %while_break, !dbg !962

if.end4:                                          ; preds = %while_continue
  %idx.ext = sext i32 %position.0 to i64, !dbg !964
  %add.ptr = getelementptr inbounds i8, i8* %possible_mp3_tag, i64 %idx.ext, !dbg !964
  %0 = load i8, i8* %add.ptr, align 1, !dbg !965
  %idx.ext5 = sext i32 %counter.0 to i64, !dbg !966
  %add.ptr6 = getelementptr inbounds i8, i8* %tag_field, i64 %idx.ext5, !dbg !966
  store i8 %0, i8* %add.ptr6, align 1, !dbg !967
  %inc = add nsw i32 %counter.0, 1, !dbg !968
  call void @llvm.dbg.value(metadata i32 %inc, metadata !943, metadata !DIExpression()), !dbg !938
  %inc7 = add nsw i32 %position.0, 1, !dbg !969
  call void @llvm.dbg.value(metadata i32 %inc7, metadata !944, metadata !DIExpression()), !dbg !938
  br label %while.body, !dbg !952, !llvm.loop !970

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !972

while_break:                                      ; preds = %while_break___0, %if.then3
  br label %return, !dbg !973

return:                                           ; preds = %while_break, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ 1, %while_break ], !dbg !955
  ret i32 %retval.0, !dbg !974
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @validate_id3_tag(i8* %possible_mp3_tag, %struct.__anonstruct_id3_tag_info_33* %id3_tag) #0 !dbg !975 {
entry:
  call void @llvm.dbg.value(metadata i8* %possible_mp3_tag, metadata !998, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.value(metadata %struct.__anonstruct_id3_tag_info_33* %id3_tag, metadata !1000, metadata !DIExpression()), !dbg !999
  %add.ptr = getelementptr inbounds i8, i8* %possible_mp3_tag, i64 0, !dbg !1001
  %0 = load i8, i8* %add.ptr, align 1, !dbg !1004
  %conv = sext i8 %0 to i32, !dbg !1005
  %cmp = icmp eq i32 %conv, 84, !dbg !1006
  br i1 %cmp, label %if.then, label %if.else37, !dbg !1007

if.then:                                          ; preds = %entry
  %add.ptr2 = getelementptr inbounds i8, i8* %possible_mp3_tag, i64 1, !dbg !1008
  %1 = load i8, i8* %add.ptr2, align 1, !dbg !1011
  %conv3 = sext i8 %1 to i32, !dbg !1012
  %cmp4 = icmp eq i32 %conv3, 65, !dbg !1013
  br i1 %cmp4, label %if.then6, label %if.else34, !dbg !1014

if.then6:                                         ; preds = %if.then
  %add.ptr7 = getelementptr inbounds i8, i8* %possible_mp3_tag, i64 2, !dbg !1015
  %2 = load i8, i8* %add.ptr7, align 1, !dbg !1018
  %conv8 = sext i8 %2 to i32, !dbg !1019
  %cmp9 = icmp eq i32 %conv8, 71, !dbg !1020
  br i1 %cmp9, label %if.then11, label %if.else31, !dbg !1021

if.then11:                                        ; preds = %if.then6
  %TAG_PRESENT = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 0, !dbg !1022
  store i16 1, i16* %TAG_PRESENT, align 2, !dbg !1024
  %add.ptr12 = getelementptr inbounds i8, i8* %possible_mp3_tag, i64 126, !dbg !1025
  %3 = load i8, i8* %add.ptr12, align 1, !dbg !1027
  %conv13 = sext i8 %3 to i32, !dbg !1028
  %cmp14 = icmp ne i32 %conv13, 0, !dbg !1029
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !1030

if.then16:                                        ; preds = %if.then11
  %add.ptr17 = getelementptr inbounds i8, i8* %possible_mp3_tag, i64 126, !dbg !1031
  %4 = load i8, i8* %add.ptr17, align 1, !dbg !1033
  %conv18 = sext i8 %4 to i16, !dbg !1034
  %TRACK_NUMBER = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 8, !dbg !1035
  store i16 %conv18, i16* %TRACK_NUMBER, align 2, !dbg !1036
  %ID3_311_VERSION = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 1, !dbg !1037
  store i16 1, i16* %ID3_311_VERSION, align 2, !dbg !1038
  br label %if.end, !dbg !1039

if.else:                                          ; preds = %if.then11
  %TRACK_NUMBER19 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 8, !dbg !1040
  store i16 0, i16* %TRACK_NUMBER19, align 2, !dbg !1042
  %ID3_311_VERSION20 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 1, !dbg !1043
  store i16 0, i16* %ID3_311_VERSION20, align 2, !dbg !1044
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  %add.ptr21 = getelementptr inbounds i8, i8* %possible_mp3_tag, i64 127, !dbg !1045
  %5 = load i8, i8* %add.ptr21, align 1, !dbg !1047
  %conv22 = sext i8 %5 to i16, !dbg !1048
  %GENRE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 7, !dbg !1049
  store i16 %conv22, i16* %GENRE, align 2, !dbg !1050
  %TITLE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 2, !dbg !1051
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %TITLE, i32 0, i32 0, !dbg !1053
  %call = call i32 @copy_int_array_to_str(i8* %possible_mp3_tag, i8* %arraydecay, i32 3, i32 30, i32 128), !dbg !1054
  %ARTIST = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 3, !dbg !1055
  %arraydecay23 = getelementptr inbounds [31 x i8], [31 x i8]* %ARTIST, i32 0, i32 0, !dbg !1057
  %call24 = call i32 @copy_int_array_to_str(i8* %possible_mp3_tag, i8* %arraydecay23, i32 33, i32 30, i32 128), !dbg !1058
  %ALBUM = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 4, !dbg !1059
  %arraydecay25 = getelementptr inbounds [31 x i8], [31 x i8]* %ALBUM, i32 0, i32 0, !dbg !1061
  %call26 = call i32 @copy_int_array_to_str(i8* %possible_mp3_tag, i8* %arraydecay25, i32 63, i32 30, i32 128), !dbg !1062
  %YEAR = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 5, !dbg !1063
  %arraydecay27 = getelementptr inbounds [5 x i8], [5 x i8]* %YEAR, i32 0, i32 0, !dbg !1065
  %call28 = call i32 @copy_int_array_to_str(i8* %possible_mp3_tag, i8* %arraydecay27, i32 93, i32 4, i32 128), !dbg !1066
  %COMMENT = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 6, !dbg !1067
  %arraydecay29 = getelementptr inbounds [31 x i8], [31 x i8]* %COMMENT, i32 0, i32 0, !dbg !1069
  %call30 = call i32 @copy_int_array_to_str(i8* %possible_mp3_tag, i8* %arraydecay29, i32 97, i32 30, i32 128), !dbg !1070
  br label %if.end33, !dbg !1071

if.else31:                                        ; preds = %if.then6
  %TAG_PRESENT32 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 0, !dbg !1072
  store i16 0, i16* %TAG_PRESENT32, align 2, !dbg !1074
  br label %return, !dbg !1075

if.end33:                                         ; preds = %if.end
  br label %if.end36, !dbg !1076

if.else34:                                        ; preds = %if.then
  %TAG_PRESENT35 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 0, !dbg !1077
  store i16 0, i16* %TAG_PRESENT35, align 2, !dbg !1079
  br label %return, !dbg !1080

if.end36:                                         ; preds = %if.end33
  br label %if.end39, !dbg !1081

if.else37:                                        ; preds = %entry
  %TAG_PRESENT38 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 0, !dbg !1082
  store i16 0, i16* %TAG_PRESENT38, align 2, !dbg !1084
  br label %return, !dbg !1085

if.end39:                                         ; preds = %if.end36
  br label %return, !dbg !1086

return:                                           ; preds = %if.end39, %if.else37, %if.else34, %if.else31
  %retval.0 = phi i32 [ 1, %if.end39 ], [ 0, %if.else31 ], [ 0, %if.else34 ], [ 0, %if.else37 ], !dbg !1087
  ret i32 %retval.0, !dbg !1088
}

; Function Attrs: noinline nounwind ssp uwtable
define void @init_id3_tag_struct(%struct.__anonstruct_id3_tag_info_33* %TAG) #0 !dbg !1089 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_id3_tag_info_33* %TAG, metadata !1092, metadata !DIExpression()), !dbg !1093
  %TAG_PRESENT = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 0, !dbg !1094
  store i16 0, i16* %TAG_PRESENT, align 2, !dbg !1097
  %ID3_311_VERSION = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 1, !dbg !1098
  store i16 0, i16* %ID3_311_VERSION, align 2, !dbg !1099
  %TITLE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 2, !dbg !1100
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %TITLE, i32 0, i32 0, !dbg !1102
  %call = call i8* @memset(i8* %arraydecay, i32 0, i32 31) #8, !dbg !1103
  %ARTIST = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 3, !dbg !1104
  %arraydecay1 = getelementptr inbounds [31 x i8], [31 x i8]* %ARTIST, i32 0, i32 0, !dbg !1106
  %call2 = call i8* @memset(i8* %arraydecay1, i32 0, i32 31) #8, !dbg !1107
  %ALBUM = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 4, !dbg !1108
  %arraydecay3 = getelementptr inbounds [31 x i8], [31 x i8]* %ALBUM, i32 0, i32 0, !dbg !1110
  %call4 = call i8* @memset(i8* %arraydecay3, i32 0, i32 31) #8, !dbg !1111
  %YEAR = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 5, !dbg !1112
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %YEAR, i32 0, i32 0, !dbg !1114
  %call6 = call i8* @memset(i8* %arraydecay5, i32 0, i32 5) #8, !dbg !1115
  %COMMENT = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 6, !dbg !1116
  %arraydecay7 = getelementptr inbounds [31 x i8], [31 x i8]* %COMMENT, i32 0, i32 0, !dbg !1118
  %call8 = call i8* @memset(i8* %arraydecay7, i32 0, i32 31) #8, !dbg !1119
  %GENRE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 7, !dbg !1120
  store i16 0, i16* %GENRE, align 2, !dbg !1121
  %TRACK_NUMBER = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 8, !dbg !1122
  store i16 0, i16* %TRACK_NUMBER, align 2, !dbg !1123
  %COMPLIANT_PAD_FIELDS = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %TAG, i32 0, i32 9, !dbg !1124
  store i16 0, i16* %COMPLIANT_PAD_FIELDS, align 2, !dbg !1125
  ret void, !dbg !1126
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @check_header_value(i32* %header, i8* %filename, %struct.__anonstruct_frame_info_32* %FI) #0 !dbg !1127 {
entry:
  %bin_string = alloca [33 x i8], align 16
  call void @llvm.dbg.value(metadata i32* %header, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i8* %filename, metadata !1134, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata %struct.__anonstruct_frame_info_32* %FI, metadata !1135, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata [33 x i8]* %bin_string, metadata !1136, metadata !DIExpression()), !dbg !1137
  call void @llvm.dbg.declare(metadata !4, metadata !1138, metadata !DIExpression()), !dbg !1139
  call void @llvm.dbg.declare(metadata !4, metadata !1140, metadata !DIExpression()), !dbg !1141
  call void @llvm.dbg.declare(metadata !4, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata !4, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata !4, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.declare(metadata !4, metadata !1148, metadata !DIExpression()), !dbg !1149
  call void @llvm.dbg.declare(metadata !4, metadata !1150, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.declare(metadata !4, metadata !1152, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.declare(metadata !4, metadata !1154, metadata !DIExpression()), !dbg !1155
  call void @llvm.dbg.declare(metadata !4, metadata !1156, metadata !DIExpression()), !dbg !1157
  call void @llvm.dbg.declare(metadata !4, metadata !1158, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.declare(metadata !4, metadata !1160, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.declare(metadata !4, metadata !1162, metadata !DIExpression()), !dbg !1163
  call void @llvm.dbg.declare(metadata !4, metadata !1164, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.declare(metadata !4, metadata !1166, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.declare(metadata !4, metadata !1168, metadata !DIExpression()), !dbg !1169
  call void @llvm.dbg.declare(metadata !4, metadata !1170, metadata !DIExpression()), !dbg !1171
  call void @llvm.dbg.declare(metadata !4, metadata !1172, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.declare(metadata !4, metadata !1174, metadata !DIExpression()), !dbg !1175
  call void @llvm.dbg.declare(metadata !4, metadata !1176, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata !4, metadata !1178, metadata !DIExpression()), !dbg !1179
  call void @llvm.dbg.declare(metadata !4, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata !4, metadata !1182, metadata !DIExpression()), !dbg !1183
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i64 0, i64 0, !dbg !1184
  store i8 0, i8* %arrayidx, align 16, !dbg !1186
  call void @llvm.dbg.value(metadata i32 1, metadata !1187, metadata !DIExpression()), !dbg !1133
  br label %while.body, !dbg !1188

while.body:                                       ; preds = %if.end, %entry
  %tmp.0 = phi i32 [ 1, %entry ], [ %inc, %if.end ], !dbg !1191
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !1187, metadata !DIExpression()), !dbg !1133
  br label %while_continue___2, !dbg !1192

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !1192

while_continue:                                   ; preds = %while_continue___2
  %cmp = icmp uge i32 %tmp.0, 33, !dbg !1193
  br i1 %cmp, label %if.then, label %if.end, !dbg !1196

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1197

if.end:                                           ; preds = %while_continue
  %idxprom = zext i32 %tmp.0 to i64, !dbg !1199
  %arrayidx1 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i64 0, i64 %idxprom, !dbg !1199
  store i8 0, i8* %arrayidx1, align 1, !dbg !1200
  %inc = add i32 %tmp.0, 1, !dbg !1196
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1187, metadata !DIExpression()), !dbg !1133
  br label %while.body, !dbg !1188, !llvm.loop !1201

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !1203

while_break:                                      ; preds = %while_break___2, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !1204, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 0, metadata !1205, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata i32 0, metadata !1206, metadata !DIExpression()), !dbg !1133
  %check_state = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1207
  store i16 0, i16* %check_state, align 4, !dbg !1208
  %arrayidx2 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i64 0, i64 32, !dbg !1209
  store i8 0, i8* %arrayidx2, align 16, !dbg !1210
  call void @llvm.dbg.value(metadata i32 0, metadata !1204, metadata !DIExpression()), !dbg !1133
  br label %while.body3, !dbg !1211

while.body3:                                      ; preds = %if.end6, %while_break
  %i.0 = phi i32 [ 0, %while_break ], [ %inc9, %if.end6 ], !dbg !1191
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1204, metadata !DIExpression()), !dbg !1133
  br label %while_continue___3, !dbg !1214

while_continue___3:                               ; preds = %while.body3
  br label %while_continue___0, !dbg !1214

while_continue___0:                               ; preds = %while_continue___3
  %cmp4 = icmp slt i32 %i.0, 32, !dbg !1215
  br i1 %cmp4, label %if.end6, label %if.then5, !dbg !1218

if.then5:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !1219

if.end6:                                          ; preds = %while_continue___0
  %idxprom7 = sext i32 %i.0 to i64, !dbg !1221
  %arrayidx8 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i64 0, i64 %idxprom7, !dbg !1221
  store i8 48, i8* %arrayidx8, align 1, !dbg !1222
  %inc9 = add nsw i32 %i.0, 1, !dbg !1223
  call void @llvm.dbg.value(metadata i32 %inc9, metadata !1204, metadata !DIExpression()), !dbg !1133
  br label %while.body3, !dbg !1211, !llvm.loop !1224

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !1226

while_break___0:                                  ; preds = %while_break___3, %if.then5
  call void @llvm.dbg.value(metadata i32 0, metadata !1204, metadata !DIExpression()), !dbg !1133
  br label %while.body10, !dbg !1227

while.body10:                                     ; preds = %if.end18, %while_break___0
  %i.1 = phi i32 [ 0, %while_break___0 ], [ %inc19, %if.end18 ], !dbg !1191
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1204, metadata !DIExpression()), !dbg !1133
  br label %while_continue___4, !dbg !1230

while_continue___4:                               ; preds = %while.body10
  br label %while_continue___1, !dbg !1230

while_continue___1:                               ; preds = %while_continue___4
  %cmp11 = icmp slt i32 %i.1, 32, !dbg !1231
  br i1 %cmp11, label %if.end13, label %if.then12, !dbg !1234

if.then12:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1235

if.end13:                                         ; preds = %while_continue___1
  %0 = load i32, i32* %header, align 4, !dbg !1237
  %shr = lshr i32 %0, %i.1, !dbg !1239
  %and = and i32 %shr, 1, !dbg !1240
  %cmp14 = icmp eq i32 %and, 1, !dbg !1241
  br i1 %cmp14, label %if.then15, label %if.end18, !dbg !1242

if.then15:                                        ; preds = %if.end13
  %sub = sub nsw i32 31, %i.1, !dbg !1243
  %idxprom16 = sext i32 %sub to i64, !dbg !1245
  %arrayidx17 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i64 0, i64 %idxprom16, !dbg !1245
  store i8 49, i8* %arrayidx17, align 1, !dbg !1246
  br label %if.end18, !dbg !1247

if.end18:                                         ; preds = %if.then15, %if.end13
  %inc19 = add nsw i32 %i.1, 1, !dbg !1248
  call void @llvm.dbg.value(metadata i32 %inc19, metadata !1204, metadata !DIExpression()), !dbg !1133
  br label %while.body10, !dbg !1227, !llvm.loop !1249

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !1251

while_break___1:                                  ; preds = %while_break___4, %if.then12
  %BIN_STRING = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 28, !dbg !1252
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %BIN_STRING, i32 0, i32 0, !dbg !1255
  %arraydecay20 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1256
  %call = call i8* @strcpy(i8* %arraydecay, i8* %arraydecay20) #8, !dbg !1257
  %1 = load i32, i32* %header, align 4, !dbg !1258
  %INT_HEADER = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 29, !dbg !1259
  store i32 %1, i32* %INT_HEADER, align 4, !dbg !1260
  %arraydecay21 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1261
  %call22 = call i32 @cmp_str(i8* %arraydecay21, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i32 0, i32 0), i32 31), !dbg !1263
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1264, metadata !DIExpression()), !dbg !1133
  %tobool = icmp ne i32 %call22, 0, !dbg !1265
  br i1 %tobool, label %if.then23, label %if.else, !dbg !1267

if.then23:                                        ; preds = %while_break___1
  %check_state24 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1268
  store i16 1, i16* %check_state24, align 4, !dbg !1270
  br label %if.end26, !dbg !1271

if.else:                                          ; preds = %while_break___1
  %check_state25 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1272
  %2 = load i16, i16* %check_state25, align 4, !dbg !1272
  %conv = sext i16 %2 to i32, !dbg !1274
  br label %return, !dbg !1275

if.end26:                                         ; preds = %if.then23
  %arraydecay27 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1276
  %call28 = call i32 @cmp_str(i8* %arraydecay27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 20), !dbg !1279
  call void @llvm.dbg.value(metadata i32 %call28, metadata !1280, metadata !DIExpression()), !dbg !1133
  %tobool29 = icmp ne i32 %call28, 0, !dbg !1281
  br i1 %tobool29, label %if.then30, label %if.else31, !dbg !1283

if.then30:                                        ; preds = %if.end26
  %MPV_25 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 7, !dbg !1284
  store i16 1, i16* %MPV_25, align 4, !dbg !1286
  br label %if.end49, !dbg !1287

if.else31:                                        ; preds = %if.end26
  %arraydecay32 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1288
  %call33 = call i32 @cmp_str(i8* %arraydecay32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 20), !dbg !1292
  call void @llvm.dbg.value(metadata i32 %call33, metadata !1293, metadata !DIExpression()), !dbg !1133
  %tobool34 = icmp ne i32 %call33, 0, !dbg !1294
  br i1 %tobool34, label %if.then35, label %if.else36, !dbg !1296

if.then35:                                        ; preds = %if.else31
  %MPV_RESERVED = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 8, !dbg !1297
  store i16 1, i16* %MPV_RESERVED, align 2, !dbg !1299
  br label %if.end48, !dbg !1300

if.else36:                                        ; preds = %if.else31
  %arraydecay37 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1301
  %call38 = call i32 @cmp_str(i8* %arraydecay37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 20), !dbg !1305
  call void @llvm.dbg.value(metadata i32 %call38, metadata !1306, metadata !DIExpression()), !dbg !1133
  %tobool39 = icmp ne i32 %call38, 0, !dbg !1307
  br i1 %tobool39, label %if.then40, label %if.else41, !dbg !1309

if.then40:                                        ; preds = %if.else36
  %MPV_2 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 6, !dbg !1310
  store i16 1, i16* %MPV_2, align 2, !dbg !1312
  br label %if.end47, !dbg !1313

if.else41:                                        ; preds = %if.else36
  %arraydecay42 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1314
  %call43 = call i32 @cmp_str(i8* %arraydecay42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 20), !dbg !1318
  call void @llvm.dbg.value(metadata i32 %call43, metadata !1319, metadata !DIExpression()), !dbg !1133
  %tobool44 = icmp ne i32 %call43, 0, !dbg !1320
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !1322

if.then45:                                        ; preds = %if.else41
  %MPV_1 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 5, !dbg !1323
  store i16 1, i16* %MPV_1, align 4, !dbg !1325
  br label %if.end46, !dbg !1326

if.end46:                                         ; preds = %if.then45, %if.else41
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then40
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %if.then35
  br label %if.end49

if.end49:                                         ; preds = %if.end48, %if.then30
  %arraydecay50 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1327
  %call51 = call i32 @cmp_str(i8* %arraydecay50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 18), !dbg !1330
  call void @llvm.dbg.value(metadata i32 %call51, metadata !1331, metadata !DIExpression()), !dbg !1133
  %tobool52 = icmp ne i32 %call51, 0, !dbg !1332
  br i1 %tobool52, label %if.then53, label %if.else54, !dbg !1334

if.then53:                                        ; preds = %if.end49
  %L_RESERVED = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 12, !dbg !1335
  store i16 1, i16* %L_RESERVED, align 2, !dbg !1337
  %SAMPLES_PER_FRAME = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 4, !dbg !1338
  store i32 0, i32* %SAMPLES_PER_FRAME, align 4, !dbg !1339
  br label %if.end75, !dbg !1340

if.else54:                                        ; preds = %if.end49
  %arraydecay55 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1341
  %call56 = call i32 @cmp_str(i8* %arraydecay55, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 18), !dbg !1345
  call void @llvm.dbg.value(metadata i32 %call56, metadata !1346, metadata !DIExpression()), !dbg !1133
  %tobool57 = icmp ne i32 %call56, 0, !dbg !1347
  br i1 %tobool57, label %if.then58, label %if.else60, !dbg !1349

if.then58:                                        ; preds = %if.else54
  %L3 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 11, !dbg !1350
  store i16 1, i16* %L3, align 4, !dbg !1352
  %SAMPLES_PER_FRAME59 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 4, !dbg !1353
  store i32 1152, i32* %SAMPLES_PER_FRAME59, align 4, !dbg !1354
  br label %if.end74, !dbg !1355

if.else60:                                        ; preds = %if.else54
  %arraydecay61 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1356
  %call62 = call i32 @cmp_str(i8* %arraydecay61, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 18), !dbg !1360
  call void @llvm.dbg.value(metadata i32 %call62, metadata !1361, metadata !DIExpression()), !dbg !1133
  %tobool63 = icmp ne i32 %call62, 0, !dbg !1362
  br i1 %tobool63, label %if.then64, label %if.else66, !dbg !1364

if.then64:                                        ; preds = %if.else60
  %L2 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1365
  store i16 1, i16* %L2, align 2, !dbg !1367
  %SAMPLES_PER_FRAME65 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 4, !dbg !1368
  store i32 1152, i32* %SAMPLES_PER_FRAME65, align 4, !dbg !1369
  br label %if.end73, !dbg !1370

if.else66:                                        ; preds = %if.else60
  %arraydecay67 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1371
  %call68 = call i32 @cmp_str(i8* %arraydecay67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 18), !dbg !1375
  call void @llvm.dbg.value(metadata i32 %call68, metadata !1376, metadata !DIExpression()), !dbg !1133
  %tobool69 = icmp ne i32 %call68, 0, !dbg !1377
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !1379

if.then70:                                        ; preds = %if.else66
  %L1 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 9, !dbg !1380
  store i16 1, i16* %L1, align 4, !dbg !1382
  %SAMPLES_PER_FRAME71 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 4, !dbg !1383
  store i32 384, i32* %SAMPLES_PER_FRAME71, align 4, !dbg !1384
  br label %if.end72, !dbg !1385

if.end72:                                         ; preds = %if.then70, %if.else66
  br label %if.end73

if.end73:                                         ; preds = %if.end72, %if.then64
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then58
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then53
  %arraydecay76 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1386
  %call77 = call i32 @cmp_str(i8* %arraydecay76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i32 16), !dbg !1389
  call void @llvm.dbg.value(metadata i32 %call77, metadata !1390, metadata !DIExpression()), !dbg !1133
  %tobool78 = icmp ne i32 %call77, 0, !dbg !1391
  br i1 %tobool78, label %if.then79, label %if.end80, !dbg !1393

if.then79:                                        ; preds = %if.end75
  %PROT_BIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 13, !dbg !1394
  store i16 1, i16* %PROT_BIT, align 4, !dbg !1396
  br label %if.end80, !dbg !1397

if.end80:                                         ; preds = %if.then79, %if.end75
  %3 = load i32, i32* %header, align 4, !dbg !1398
  %shr81 = lshr i32 %3, 12, !dbg !1399
  %and82 = and i32 %shr81, 15, !dbg !1400
  call void @llvm.dbg.value(metadata i32 %and82, metadata !1205, metadata !DIExpression()), !dbg !1133
  %MPV_183 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 5, !dbg !1401
  %4 = load i16, i16* %MPV_183, align 4, !dbg !1401
  %tobool84 = icmp ne i16 %4, 0, !dbg !1403
  br i1 %tobool84, label %if.then85, label %if.else91, !dbg !1404

if.then85:                                        ; preds = %if.end80
  %L186 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 9, !dbg !1405
  %5 = load i16, i16* %L186, align 4, !dbg !1405
  %tobool87 = icmp ne i16 %5, 0, !dbg !1408
  br i1 %tobool87, label %if.then88, label %if.else89, !dbg !1409

if.then88:                                        ; preds = %if.then85
  call void @llvm.dbg.value(metadata i32 0, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end90, !dbg !1410

if.else89:                                        ; preds = %if.then85
  br label %_L___4, !dbg !1412

if.end90:                                         ; preds = %if.then88
  br label %if.end147, !dbg !1414

if.else91:                                        ; preds = %if.end80
  br label %_L___4, !dbg !1414

_L___4:                                           ; preds = %if.else91, %if.else89
  %MPV_192 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 5, !dbg !1415
  %6 = load i16, i16* %MPV_192, align 4, !dbg !1415
  %tobool93 = icmp ne i16 %6, 0, !dbg !1417
  br i1 %tobool93, label %if.then94, label %if.else100, !dbg !1418

if.then94:                                        ; preds = %_L___4
  %L295 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1419
  %7 = load i16, i16* %L295, align 2, !dbg !1419
  %tobool96 = icmp ne i16 %7, 0, !dbg !1422
  br i1 %tobool96, label %if.then97, label %if.else98, !dbg !1423

if.then97:                                        ; preds = %if.then94
  call void @llvm.dbg.value(metadata i32 1, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end99, !dbg !1424

if.else98:                                        ; preds = %if.then94
  br label %_L___3, !dbg !1426

if.end99:                                         ; preds = %if.then97
  br label %if.end146, !dbg !1428

if.else100:                                       ; preds = %_L___4
  br label %_L___3, !dbg !1428

_L___3:                                           ; preds = %if.else100, %if.else98
  %MPV_1101 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 5, !dbg !1429
  %8 = load i16, i16* %MPV_1101, align 4, !dbg !1429
  %tobool102 = icmp ne i16 %8, 0, !dbg !1431
  br i1 %tobool102, label %if.then103, label %if.else109, !dbg !1432

if.then103:                                       ; preds = %_L___3
  %L3104 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 11, !dbg !1433
  %9 = load i16, i16* %L3104, align 4, !dbg !1433
  %tobool105 = icmp ne i16 %9, 0, !dbg !1436
  br i1 %tobool105, label %if.then106, label %if.else107, !dbg !1437

if.then106:                                       ; preds = %if.then103
  call void @llvm.dbg.value(metadata i32 2, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end108, !dbg !1438

if.else107:                                       ; preds = %if.then103
  br label %_L___2, !dbg !1440

if.end108:                                        ; preds = %if.then106
  br label %if.end145, !dbg !1442

if.else109:                                       ; preds = %_L___3
  br label %_L___2, !dbg !1442

_L___2:                                           ; preds = %if.else109, %if.else107
  %MPV_2110 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 6, !dbg !1443
  %10 = load i16, i16* %MPV_2110, align 2, !dbg !1443
  %tobool111 = icmp ne i16 %10, 0, !dbg !1445
  br i1 %tobool111, label %if.then112, label %if.else113, !dbg !1446

if.then112:                                       ; preds = %_L___2
  br label %_L___1, !dbg !1447

if.else113:                                       ; preds = %_L___2
  %MPV_25114 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 7, !dbg !1449
  %11 = load i16, i16* %MPV_25114, align 4, !dbg !1449
  %tobool115 = icmp ne i16 %11, 0, !dbg !1451
  br i1 %tobool115, label %if.then116, label %if.else122, !dbg !1445

if.then116:                                       ; preds = %if.else113
  br label %_L___1, !dbg !1452

_L___1:                                           ; preds = %if.then116, %if.then112
  %L1117 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 9, !dbg !1453
  %12 = load i16, i16* %L1117, align 4, !dbg !1453
  %tobool118 = icmp ne i16 %12, 0, !dbg !1456
  br i1 %tobool118, label %if.then119, label %if.else120, !dbg !1457

if.then119:                                       ; preds = %_L___1
  call void @llvm.dbg.value(metadata i32 3, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end121, !dbg !1458

if.else120:                                       ; preds = %_L___1
  br label %_L___0, !dbg !1460

if.end121:                                        ; preds = %if.then119
  br label %if.end143, !dbg !1462

if.else122:                                       ; preds = %if.else113
  br label %_L___0, !dbg !1462

_L___0:                                           ; preds = %if.else122, %if.else120
  %MPV_2123 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 6, !dbg !1463
  %13 = load i16, i16* %MPV_2123, align 2, !dbg !1463
  %tobool124 = icmp ne i16 %13, 0, !dbg !1465
  br i1 %tobool124, label %if.then125, label %if.else126, !dbg !1466

if.then125:                                       ; preds = %_L___0
  br label %_L, !dbg !1467

if.else126:                                       ; preds = %_L___0
  %MPV_25127 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 7, !dbg !1469
  %14 = load i16, i16* %MPV_25127, align 4, !dbg !1469
  %tobool128 = icmp ne i16 %14, 0, !dbg !1471
  br i1 %tobool128, label %if.then129, label %if.else140, !dbg !1465

if.then129:                                       ; preds = %if.else126
  br label %_L, !dbg !1472

_L:                                               ; preds = %if.then129, %if.then125
  %L2130 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1473
  %15 = load i16, i16* %L2130, align 2, !dbg !1473
  %tobool131 = icmp ne i16 %15, 0, !dbg !1476
  br i1 %tobool131, label %if.then132, label %if.else133, !dbg !1477

if.then132:                                       ; preds = %_L
  call void @llvm.dbg.value(metadata i32 4, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end139, !dbg !1478

if.else133:                                       ; preds = %_L
  %L3134 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 11, !dbg !1480
  %16 = load i16, i16* %L3134, align 4, !dbg !1480
  %tobool135 = icmp ne i16 %16, 0, !dbg !1482
  br i1 %tobool135, label %if.then136, label %if.else137, !dbg !1476

if.then136:                                       ; preds = %if.else133
  call void @llvm.dbg.value(metadata i32 4, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end138, !dbg !1483

if.else137:                                       ; preds = %if.else133
  call void @llvm.dbg.value(metadata i32 5, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end138

if.end138:                                        ; preds = %if.else137, %if.then136
  %column_part.0 = phi i32 [ 4, %if.then136 ], [ 5, %if.else137 ], !dbg !1485
  call void @llvm.dbg.value(metadata i32 %column_part.0, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end139

if.end139:                                        ; preds = %if.end138, %if.then132
  %column_part.1 = phi i32 [ 4, %if.then132 ], [ %column_part.0, %if.end138 ], !dbg !1486
  call void @llvm.dbg.value(metadata i32 %column_part.1, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end141, !dbg !1487

if.else140:                                       ; preds = %if.else126
  call void @llvm.dbg.value(metadata i32 5, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end141

if.end141:                                        ; preds = %if.else140, %if.end139
  %column_part.2 = phi i32 [ %column_part.1, %if.end139 ], [ 5, %if.else140 ], !dbg !1488
  call void @llvm.dbg.value(metadata i32 %column_part.2, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end142

if.end142:                                        ; preds = %if.end141
  br label %if.end143

if.end143:                                        ; preds = %if.end142, %if.end121
  %column_part.3 = phi i32 [ 3, %if.end121 ], [ %column_part.2, %if.end142 ], !dbg !1489
  call void @llvm.dbg.value(metadata i32 %column_part.3, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end144

if.end144:                                        ; preds = %if.end143
  br label %if.end145

if.end145:                                        ; preds = %if.end144, %if.end108
  %column_part.4 = phi i32 [ 2, %if.end108 ], [ %column_part.3, %if.end144 ], !dbg !1490
  call void @llvm.dbg.value(metadata i32 %column_part.4, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end146

if.end146:                                        ; preds = %if.end145, %if.end99
  %column_part.5 = phi i32 [ 1, %if.end99 ], [ %column_part.4, %if.end145 ], !dbg !1491
  call void @llvm.dbg.value(metadata i32 %column_part.5, metadata !1206, metadata !DIExpression()), !dbg !1133
  br label %if.end147

if.end147:                                        ; preds = %if.end146, %if.end90
  %column_part.6 = phi i32 [ 0, %if.end90 ], [ %column_part.5, %if.end146 ], !dbg !1492
  call void @llvm.dbg.value(metadata i32 %column_part.6, metadata !1206, metadata !DIExpression()), !dbg !1133
  %idxprom148 = sext i32 %column_part.6 to i64, !dbg !1493
  %arrayidx149 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* @bitrate_matrix, i64 0, i64 %idxprom148, !dbg !1493
  %idxprom150 = sext i32 %and82 to i64, !dbg !1493
  %arrayidx151 = getelementptr inbounds [16 x i32], [16 x i32]* %arrayidx149, i64 0, i64 %idxprom150, !dbg !1493
  %17 = load i32, i32* %arrayidx151, align 4, !dbg !1493
  %BIT_RATE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1494
  store i32 %17, i32* %BIT_RATE, align 4, !dbg !1495
  %18 = load i32, i32* %header, align 4, !dbg !1496
  %shr152 = lshr i32 %18, 10, !dbg !1497
  %and153 = and i32 %shr152, 3, !dbg !1498
  call void @llvm.dbg.value(metadata i32 %and153, metadata !1205, metadata !DIExpression()), !dbg !1133
  %MPV_1154 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 5, !dbg !1499
  %19 = load i16, i16* %MPV_1154, align 4, !dbg !1499
  %tobool155 = icmp ne i16 %19, 0, !dbg !1501
  br i1 %tobool155, label %if.then156, label %if.else160, !dbg !1502

if.then156:                                       ; preds = %if.end147
  %idxprom157 = sext i32 %and153 to i64, !dbg !1503
  %arrayidx158 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @sampling_rate_matrix, i64 0, i64 %idxprom157, !dbg !1503
  %arrayidx159 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx158, i64 0, i64 0, !dbg !1503
  %20 = load i32, i32* %arrayidx159, align 4, !dbg !1503
  %SAMPLE_FREQ = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1505
  store i32 %20, i32* %SAMPLE_FREQ, align 4, !dbg !1506
  br label %if.end180, !dbg !1507

if.else160:                                       ; preds = %if.end147
  %MPV_2161 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 6, !dbg !1508
  %21 = load i16, i16* %MPV_2161, align 2, !dbg !1508
  %tobool162 = icmp ne i16 %21, 0, !dbg !1510
  br i1 %tobool162, label %if.then163, label %if.else168, !dbg !1511

if.then163:                                       ; preds = %if.else160
  %idxprom164 = sext i32 %and153 to i64, !dbg !1512
  %arrayidx165 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @sampling_rate_matrix, i64 0, i64 %idxprom164, !dbg !1512
  %arrayidx166 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx165, i64 0, i64 1, !dbg !1512
  %22 = load i32, i32* %arrayidx166, align 4, !dbg !1512
  %SAMPLE_FREQ167 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1514
  store i32 %22, i32* %SAMPLE_FREQ167, align 4, !dbg !1515
  br label %if.end179, !dbg !1516

if.else168:                                       ; preds = %if.else160
  %MPV_25169 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 7, !dbg !1517
  %23 = load i16, i16* %MPV_25169, align 4, !dbg !1517
  %tobool170 = icmp ne i16 %23, 0, !dbg !1519
  br i1 %tobool170, label %if.then171, label %if.else176, !dbg !1520

if.then171:                                       ; preds = %if.else168
  %idxprom172 = sext i32 %and153 to i64, !dbg !1521
  %arrayidx173 = getelementptr inbounds [4 x [3 x i32]], [4 x [3 x i32]]* @sampling_rate_matrix, i64 0, i64 %idxprom172, !dbg !1521
  %arrayidx174 = getelementptr inbounds [3 x i32], [3 x i32]* %arrayidx173, i64 0, i64 2, !dbg !1521
  %24 = load i32, i32* %arrayidx174, align 4, !dbg !1521
  %SAMPLE_FREQ175 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1523
  store i32 %24, i32* %SAMPLE_FREQ175, align 4, !dbg !1524
  br label %if.end178, !dbg !1525

if.else176:                                       ; preds = %if.else168
  %SAMPLE_FREQ177 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1526
  store i32 0, i32* %SAMPLE_FREQ177, align 4, !dbg !1528
  br label %if.end178

if.end178:                                        ; preds = %if.else176, %if.then171
  br label %if.end179

if.end179:                                        ; preds = %if.end178, %if.then163
  br label %if.end180

if.end180:                                        ; preds = %if.end179, %if.then156
  %arraydecay181 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1529
  %call182 = call i32 @cmp_str(i8* %arraydecay181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 9), !dbg !1532
  call void @llvm.dbg.value(metadata i32 %call182, metadata !1533, metadata !DIExpression()), !dbg !1133
  %tobool183 = icmp ne i32 %call182, 0, !dbg !1534
  br i1 %tobool183, label %if.then184, label %if.end185, !dbg !1536

if.then184:                                       ; preds = %if.end180
  %PAD_BIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1537
  store i16 1, i16* %PAD_BIT, align 2, !dbg !1539
  br label %if.end185, !dbg !1540

if.end185:                                        ; preds = %if.then184, %if.end180
  %arraydecay186 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1541
  %call187 = call i32 @cmp_str(i8* %arraydecay186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 8), !dbg !1544
  call void @llvm.dbg.value(metadata i32 %call187, metadata !1545, metadata !DIExpression()), !dbg !1133
  %tobool188 = icmp ne i32 %call187, 0, !dbg !1546
  br i1 %tobool188, label %if.then189, label %if.end190, !dbg !1548

if.then189:                                       ; preds = %if.end185
  %PRIV_BIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 15, !dbg !1549
  store i16 1, i16* %PRIV_BIT, align 4, !dbg !1551
  br label %if.end190, !dbg !1552

if.end190:                                        ; preds = %if.then189, %if.end185
  %arraydecay191 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1553
  %call192 = call i32 @cmp_str(i8* %arraydecay191, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 7), !dbg !1556
  call void @llvm.dbg.value(metadata i32 %call192, metadata !1557, metadata !DIExpression()), !dbg !1133
  %tobool193 = icmp ne i32 %call192, 0, !dbg !1558
  br i1 %tobool193, label %if.then194, label %if.else195, !dbg !1560

if.then194:                                       ; preds = %if.end190
  %STEREO = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 16, !dbg !1561
  store i16 1, i16* %STEREO, align 2, !dbg !1563
  br label %if.end213, !dbg !1564

if.else195:                                       ; preds = %if.end190
  %arraydecay196 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1565
  %call197 = call i32 @cmp_str(i8* %arraydecay196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 7), !dbg !1569
  call void @llvm.dbg.value(metadata i32 %call197, metadata !1570, metadata !DIExpression()), !dbg !1133
  %tobool198 = icmp ne i32 %call197, 0, !dbg !1571
  br i1 %tobool198, label %if.then199, label %if.else200, !dbg !1573

if.then199:                                       ; preds = %if.else195
  %JOINT_STEREO = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 17, !dbg !1574
  store i16 1, i16* %JOINT_STEREO, align 4, !dbg !1576
  %MODE_EXTENSION = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 20, !dbg !1577
  store i16 1, i16* %MODE_EXTENSION, align 2, !dbg !1578
  br label %if.end212, !dbg !1579

if.else200:                                       ; preds = %if.else195
  %arraydecay201 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1580
  %call202 = call i32 @cmp_str(i8* %arraydecay201, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 7), !dbg !1584
  call void @llvm.dbg.value(metadata i32 %call202, metadata !1585, metadata !DIExpression()), !dbg !1133
  %tobool203 = icmp ne i32 %call202, 0, !dbg !1586
  br i1 %tobool203, label %if.then204, label %if.else205, !dbg !1588

if.then204:                                       ; preds = %if.else200
  %DUAL_STEREO = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 18, !dbg !1589
  store i16 1, i16* %DUAL_STEREO, align 2, !dbg !1591
  br label %if.end211, !dbg !1592

if.else205:                                       ; preds = %if.else200
  %arraydecay206 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1593
  %call207 = call i32 @cmp_str(i8* %arraydecay206, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 7), !dbg !1597
  call void @llvm.dbg.value(metadata i32 %call207, metadata !1598, metadata !DIExpression()), !dbg !1133
  %tobool208 = icmp ne i32 %call207, 0, !dbg !1599
  br i1 %tobool208, label %if.then209, label %if.end210, !dbg !1601

if.then209:                                       ; preds = %if.else205
  %SINGLE_CHANNEL = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 19, !dbg !1602
  store i16 1, i16* %SINGLE_CHANNEL, align 4, !dbg !1604
  br label %if.end210, !dbg !1605

if.end210:                                        ; preds = %if.then209, %if.else205
  br label %if.end211

if.end211:                                        ; preds = %if.end210, %if.then204
  br label %if.end212

if.end212:                                        ; preds = %if.end211, %if.then199
  br label %if.end213

if.end213:                                        ; preds = %if.end212, %if.then194
  %arraydecay214 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1606
  %call215 = call i32 @cmp_str(i8* %arraydecay214, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 3), !dbg !1609
  call void @llvm.dbg.value(metadata i32 %call215, metadata !1610, metadata !DIExpression()), !dbg !1133
  %tobool216 = icmp ne i32 %call215, 0, !dbg !1611
  br i1 %tobool216, label %if.then217, label %if.end218, !dbg !1613

if.then217:                                       ; preds = %if.end213
  %COPYRIGHT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 22, !dbg !1614
  store i16 1, i16* %COPYRIGHT, align 2, !dbg !1616
  br label %if.end218, !dbg !1617

if.end218:                                        ; preds = %if.then217, %if.end213
  %arraydecay219 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1618
  %call220 = call i32 @cmp_str(i8* %arraydecay219, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), i32 2), !dbg !1621
  call void @llvm.dbg.value(metadata i32 %call220, metadata !1622, metadata !DIExpression()), !dbg !1133
  %tobool221 = icmp ne i32 %call220, 0, !dbg !1623
  br i1 %tobool221, label %if.then222, label %if.end223, !dbg !1625

if.then222:                                       ; preds = %if.end218
  %ORIGINAL = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 23, !dbg !1626
  store i16 1, i16* %ORIGINAL, align 4, !dbg !1628
  br label %if.end223, !dbg !1629

if.end223:                                        ; preds = %if.then222, %if.end218
  %arraydecay224 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1630
  %call225 = call i32 @cmp_str(i8* %arraydecay224, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i32 1), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %call225, metadata !1634, metadata !DIExpression()), !dbg !1133
  %tobool226 = icmp ne i32 %call225, 0, !dbg !1635
  br i1 %tobool226, label %if.then227, label %if.else228, !dbg !1637

if.then227:                                       ; preds = %if.end223
  %EMPH_NONE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 24, !dbg !1638
  store i16 1, i16* %EMPH_NONE, align 2, !dbg !1640
  br label %if.end246, !dbg !1641

if.else228:                                       ; preds = %if.end223
  %arraydecay229 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1642
  %call230 = call i32 @cmp_str(i8* %arraydecay229, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i32 1), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %call230, metadata !1647, metadata !DIExpression()), !dbg !1133
  %tobool231 = icmp ne i32 %call230, 0, !dbg !1648
  br i1 %tobool231, label %if.then232, label %if.else233, !dbg !1650

if.then232:                                       ; preds = %if.else228
  %EMPH_5015 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 25, !dbg !1651
  store i16 1, i16* %EMPH_5015, align 4, !dbg !1653
  br label %if.end245, !dbg !1654

if.else233:                                       ; preds = %if.else228
  %arraydecay234 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1655
  %call235 = call i32 @cmp_str(i8* %arraydecay234, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i32 1), !dbg !1659
  call void @llvm.dbg.value(metadata i32 %call235, metadata !1660, metadata !DIExpression()), !dbg !1133
  %tobool236 = icmp ne i32 %call235, 0, !dbg !1661
  br i1 %tobool236, label %if.then237, label %if.else238, !dbg !1663

if.then237:                                       ; preds = %if.else233
  %EMPH_RESERV = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 26, !dbg !1664
  store i16 1, i16* %EMPH_RESERV, align 2, !dbg !1666
  br label %if.end244, !dbg !1667

if.else238:                                       ; preds = %if.else233
  %arraydecay239 = getelementptr inbounds [33 x i8], [33 x i8]* %bin_string, i32 0, i32 0, !dbg !1668
  %call240 = call i32 @cmp_str(i8* %arraydecay239, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i32 1), !dbg !1672
  call void @llvm.dbg.value(metadata i32 %call240, metadata !1673, metadata !DIExpression()), !dbg !1133
  %tobool241 = icmp ne i32 %call240, 0, !dbg !1674
  br i1 %tobool241, label %if.then242, label %if.end243, !dbg !1676

if.then242:                                       ; preds = %if.else238
  %EMPH_CCIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 27, !dbg !1677
  store i16 1, i16* %EMPH_CCIT, align 4, !dbg !1679
  br label %if.end243, !dbg !1680

if.end243:                                        ; preds = %if.then242, %if.else238
  br label %if.end244

if.end244:                                        ; preds = %if.end243, %if.then237
  br label %if.end245

if.end245:                                        ; preds = %if.end244, %if.then232
  br label %if.end246

if.end246:                                        ; preds = %if.end245, %if.then227
  %SAMPLE_FREQ247 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1681
  %25 = load i32, i32* %SAMPLE_FREQ247, align 4, !dbg !1681
  %cmp248 = icmp sgt i32 %25, 0, !dbg !1683
  br i1 %cmp248, label %if.then250, label %if.else429, !dbg !1684

if.then250:                                       ; preds = %if.end246
  %MPV_1251 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 5, !dbg !1685
  %26 = load i16, i16* %MPV_1251, align 4, !dbg !1685
  %tobool252 = icmp ne i16 %26, 0, !dbg !1688
  br i1 %tobool252, label %if.then253, label %if.else334, !dbg !1689

if.then253:                                       ; preds = %if.then250
  %L1254 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 9, !dbg !1690
  %27 = load i16, i16* %L1254, align 4, !dbg !1690
  %tobool255 = icmp ne i16 %27, 0, !dbg !1693
  br i1 %tobool255, label %if.then256, label %if.else268, !dbg !1694

if.then256:                                       ; preds = %if.then253
  %PAD_BIT257 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1695
  %28 = load i16, i16* %PAD_BIT257, align 2, !dbg !1695
  %conv258 = sext i16 %28 to i32, !dbg !1698
  %cmp259 = icmp eq i32 %conv258, 1, !dbg !1699
  br i1 %cmp259, label %if.then261, label %if.else266, !dbg !1700

if.then261:                                       ; preds = %if.then256
  %BIT_RATE262 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1701
  %29 = load i32, i32* %BIT_RATE262, align 4, !dbg !1701
  %mul = mul nsw i32 12, %29, !dbg !1703
  %mul263 = mul nsw i32 %mul, 1000, !dbg !1704
  %SAMPLE_FREQ264 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1705
  %30 = load i32, i32* %SAMPLE_FREQ264, align 4, !dbg !1705
  %div = sdiv i32 %mul263, %30, !dbg !1706
  %add = add nsw i32 %div, 4, !dbg !1707
  %mul265 = mul nsw i32 %add, 4, !dbg !1708
  %FRAME_LENGTH = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1709
  store i32 %mul265, i32* %FRAME_LENGTH, align 4, !dbg !1710
  br label %if.end267, !dbg !1711

if.else266:                                       ; preds = %if.then256
  br label %_L___9, !dbg !1712

if.end267:                                        ; preds = %if.then261
  br label %if.end333, !dbg !1714

if.else268:                                       ; preds = %if.then253
  br label %_L___9, !dbg !1714

_L___9:                                           ; preds = %if.else268, %if.else266
  %L1269 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 9, !dbg !1715
  %31 = load i16, i16* %L1269, align 4, !dbg !1715
  %tobool270 = icmp ne i16 %31, 0, !dbg !1717
  br i1 %tobool270, label %if.then271, label %if.else286, !dbg !1718

if.then271:                                       ; preds = %_L___9
  %PAD_BIT272 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1719
  %32 = load i16, i16* %PAD_BIT272, align 2, !dbg !1719
  %conv273 = sext i16 %32 to i32, !dbg !1722
  %cmp274 = icmp eq i32 %conv273, 0, !dbg !1723
  br i1 %cmp274, label %if.then276, label %if.else284, !dbg !1724

if.then276:                                       ; preds = %if.then271
  %BIT_RATE277 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1725
  %33 = load i32, i32* %BIT_RATE277, align 4, !dbg !1725
  %mul278 = mul nsw i32 12, %33, !dbg !1727
  %mul279 = mul nsw i32 %mul278, 1000, !dbg !1728
  %SAMPLE_FREQ280 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1729
  %34 = load i32, i32* %SAMPLE_FREQ280, align 4, !dbg !1729
  %div281 = sdiv i32 %mul279, %34, !dbg !1730
  %mul282 = mul nsw i32 %div281, 4, !dbg !1731
  %FRAME_LENGTH283 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1732
  store i32 %mul282, i32* %FRAME_LENGTH283, align 4, !dbg !1733
  br label %if.end285, !dbg !1734

if.else284:                                       ; preds = %if.then271
  br label %_L___8, !dbg !1735

if.end285:                                        ; preds = %if.then276
  br label %if.end332, !dbg !1737

if.else286:                                       ; preds = %_L___9
  br label %_L___8, !dbg !1737

_L___8:                                           ; preds = %if.else286, %if.else284
  %L2287 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1738
  %35 = load i16, i16* %L2287, align 2, !dbg !1738
  %tobool288 = icmp ne i16 %35, 0, !dbg !1740
  br i1 %tobool288, label %if.then289, label %if.else290, !dbg !1741

if.then289:                                       ; preds = %_L___8
  br label %_L___7, !dbg !1742

if.else290:                                       ; preds = %_L___8
  %L3291 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 11, !dbg !1744
  %36 = load i16, i16* %L3291, align 4, !dbg !1744
  %tobool292 = icmp ne i16 %36, 0, !dbg !1746
  br i1 %tobool292, label %if.then293, label %if.else308, !dbg !1740

if.then293:                                       ; preds = %if.else290
  br label %_L___7, !dbg !1747

_L___7:                                           ; preds = %if.then293, %if.then289
  %PAD_BIT294 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1748
  %37 = load i16, i16* %PAD_BIT294, align 2, !dbg !1748
  %conv295 = sext i16 %37 to i32, !dbg !1751
  %cmp296 = icmp eq i32 %conv295, 1, !dbg !1752
  br i1 %cmp296, label %if.then298, label %if.else306, !dbg !1753

if.then298:                                       ; preds = %_L___7
  %BIT_RATE299 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1754
  %38 = load i32, i32* %BIT_RATE299, align 4, !dbg !1754
  %mul300 = mul nsw i32 144, %38, !dbg !1756
  %mul301 = mul nsw i32 %mul300, 1000, !dbg !1757
  %SAMPLE_FREQ302 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1758
  %39 = load i32, i32* %SAMPLE_FREQ302, align 4, !dbg !1758
  %div303 = sdiv i32 %mul301, %39, !dbg !1759
  %add304 = add nsw i32 %div303, 1, !dbg !1760
  %FRAME_LENGTH305 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1761
  store i32 %add304, i32* %FRAME_LENGTH305, align 4, !dbg !1762
  br label %if.end307, !dbg !1763

if.else306:                                       ; preds = %_L___7
  br label %_L___6, !dbg !1764

if.end307:                                        ; preds = %if.then298
  br label %if.end330, !dbg !1766

if.else308:                                       ; preds = %if.else290
  br label %_L___6, !dbg !1766

_L___6:                                           ; preds = %if.else308, %if.else306
  %L2309 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1767
  %40 = load i16, i16* %L2309, align 2, !dbg !1767
  %tobool310 = icmp ne i16 %40, 0, !dbg !1769
  br i1 %tobool310, label %if.then311, label %if.else312, !dbg !1770

if.then311:                                       ; preds = %_L___6
  br label %_L___5, !dbg !1771

if.else312:                                       ; preds = %_L___6
  %L3313 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 11, !dbg !1773
  %41 = load i16, i16* %L3313, align 4, !dbg !1773
  %tobool314 = icmp ne i16 %41, 0, !dbg !1775
  br i1 %tobool314, label %if.then315, label %if.end328, !dbg !1769

if.then315:                                       ; preds = %if.else312
  br label %_L___5, !dbg !1776

_L___5:                                           ; preds = %if.then315, %if.then311
  %PAD_BIT316 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1777
  %42 = load i16, i16* %PAD_BIT316, align 2, !dbg !1777
  %conv317 = sext i16 %42 to i32, !dbg !1780
  %cmp318 = icmp eq i32 %conv317, 0, !dbg !1781
  br i1 %cmp318, label %if.then320, label %if.end327, !dbg !1782

if.then320:                                       ; preds = %_L___5
  %BIT_RATE321 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1783
  %43 = load i32, i32* %BIT_RATE321, align 4, !dbg !1783
  %mul322 = mul nsw i32 144, %43, !dbg !1785
  %mul323 = mul nsw i32 %mul322, 1000, !dbg !1786
  %SAMPLE_FREQ324 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1787
  %44 = load i32, i32* %SAMPLE_FREQ324, align 4, !dbg !1787
  %div325 = sdiv i32 %mul323, %44, !dbg !1788
  %FRAME_LENGTH326 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1789
  store i32 %div325, i32* %FRAME_LENGTH326, align 4, !dbg !1790
  br label %if.end327, !dbg !1791

if.end327:                                        ; preds = %if.then320, %_L___5
  br label %if.end328, !dbg !1792

if.end328:                                        ; preds = %if.end327, %if.else312
  br label %if.end329

if.end329:                                        ; preds = %if.end328
  br label %if.end330

if.end330:                                        ; preds = %if.end329, %if.end307
  br label %if.end331

if.end331:                                        ; preds = %if.end330
  br label %if.end332

if.end332:                                        ; preds = %if.end331, %if.end285
  br label %if.end333

if.end333:                                        ; preds = %if.end332, %if.end267
  br label %if.end428, !dbg !1793

if.else334:                                       ; preds = %if.then250
  %MPV_2335 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 6, !dbg !1794
  %45 = load i16, i16* %MPV_2335, align 2, !dbg !1794
  %tobool336 = icmp ne i16 %45, 0, !dbg !1796
  br i1 %tobool336, label %if.then337, label %if.else338, !dbg !1797

if.then337:                                       ; preds = %if.else334
  br label %_L___15, !dbg !1798

if.else338:                                       ; preds = %if.else334
  %MPV_25339 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 7, !dbg !1800
  %46 = load i16, i16* %MPV_25339, align 4, !dbg !1800
  %tobool340 = icmp ne i16 %46, 0, !dbg !1802
  br i1 %tobool340, label %if.then341, label %if.end426, !dbg !1796

if.then341:                                       ; preds = %if.else338
  br label %_L___15, !dbg !1803

_L___15:                                          ; preds = %if.then341, %if.then337
  %L1342 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 9, !dbg !1804
  %47 = load i16, i16* %L1342, align 4, !dbg !1804
  %tobool343 = icmp ne i16 %47, 0, !dbg !1807
  br i1 %tobool343, label %if.then344, label %if.else360, !dbg !1808

if.then344:                                       ; preds = %_L___15
  %PAD_BIT345 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1809
  %48 = load i16, i16* %PAD_BIT345, align 2, !dbg !1809
  %conv346 = sext i16 %48 to i32, !dbg !1812
  %cmp347 = icmp eq i32 %conv346, 1, !dbg !1813
  br i1 %cmp347, label %if.then349, label %if.else358, !dbg !1814

if.then349:                                       ; preds = %if.then344
  %BIT_RATE350 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1815
  %49 = load i32, i32* %BIT_RATE350, align 4, !dbg !1815
  %mul351 = mul nsw i32 240, %49, !dbg !1817
  %mul352 = mul nsw i32 %mul351, 1000, !dbg !1818
  %SAMPLE_FREQ353 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1819
  %50 = load i32, i32* %SAMPLE_FREQ353, align 4, !dbg !1819
  %div354 = sdiv i32 %mul352, %50, !dbg !1820
  %add355 = add nsw i32 %div354, 4, !dbg !1821
  %mul356 = mul nsw i32 %add355, 4, !dbg !1822
  %FRAME_LENGTH357 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1823
  store i32 %mul356, i32* %FRAME_LENGTH357, align 4, !dbg !1824
  br label %if.end359, !dbg !1825

if.else358:                                       ; preds = %if.then344
  br label %_L___14, !dbg !1826

if.end359:                                        ; preds = %if.then349
  br label %if.end425, !dbg !1828

if.else360:                                       ; preds = %_L___15
  br label %_L___14, !dbg !1828

_L___14:                                          ; preds = %if.else360, %if.else358
  %L1361 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 9, !dbg !1829
  %51 = load i16, i16* %L1361, align 4, !dbg !1829
  %tobool362 = icmp ne i16 %51, 0, !dbg !1831
  br i1 %tobool362, label %if.then363, label %if.else378, !dbg !1832

if.then363:                                       ; preds = %_L___14
  %PAD_BIT364 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1833
  %52 = load i16, i16* %PAD_BIT364, align 2, !dbg !1833
  %conv365 = sext i16 %52 to i32, !dbg !1836
  %cmp366 = icmp eq i32 %conv365, 0, !dbg !1837
  br i1 %cmp366, label %if.then368, label %if.else376, !dbg !1838

if.then368:                                       ; preds = %if.then363
  %BIT_RATE369 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1839
  %53 = load i32, i32* %BIT_RATE369, align 4, !dbg !1839
  %mul370 = mul nsw i32 240, %53, !dbg !1841
  %mul371 = mul nsw i32 %mul370, 1000, !dbg !1842
  %SAMPLE_FREQ372 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1843
  %54 = load i32, i32* %SAMPLE_FREQ372, align 4, !dbg !1843
  %div373 = sdiv i32 %mul371, %54, !dbg !1844
  %mul374 = mul nsw i32 %div373, 4, !dbg !1845
  %FRAME_LENGTH375 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1846
  store i32 %mul374, i32* %FRAME_LENGTH375, align 4, !dbg !1847
  br label %if.end377, !dbg !1848

if.else376:                                       ; preds = %if.then363
  br label %_L___13, !dbg !1849

if.end377:                                        ; preds = %if.then368
  br label %if.end424, !dbg !1851

if.else378:                                       ; preds = %_L___14
  br label %_L___13, !dbg !1851

_L___13:                                          ; preds = %if.else378, %if.else376
  %L2379 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1852
  %55 = load i16, i16* %L2379, align 2, !dbg !1852
  %tobool380 = icmp ne i16 %55, 0, !dbg !1854
  br i1 %tobool380, label %if.then381, label %if.else382, !dbg !1855

if.then381:                                       ; preds = %_L___13
  br label %_L___12, !dbg !1856

if.else382:                                       ; preds = %_L___13
  %L3383 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 11, !dbg !1858
  %56 = load i16, i16* %L3383, align 4, !dbg !1858
  %tobool384 = icmp ne i16 %56, 0, !dbg !1860
  br i1 %tobool384, label %if.then385, label %if.else400, !dbg !1854

if.then385:                                       ; preds = %if.else382
  br label %_L___12, !dbg !1861

_L___12:                                          ; preds = %if.then385, %if.then381
  %PAD_BIT386 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1862
  %57 = load i16, i16* %PAD_BIT386, align 2, !dbg !1862
  %conv387 = sext i16 %57 to i32, !dbg !1865
  %cmp388 = icmp eq i32 %conv387, 1, !dbg !1866
  br i1 %cmp388, label %if.then390, label %if.else398, !dbg !1867

if.then390:                                       ; preds = %_L___12
  %BIT_RATE391 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1868
  %58 = load i32, i32* %BIT_RATE391, align 4, !dbg !1868
  %mul392 = mul nsw i32 72, %58, !dbg !1870
  %mul393 = mul nsw i32 %mul392, 1000, !dbg !1871
  %SAMPLE_FREQ394 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1872
  %59 = load i32, i32* %SAMPLE_FREQ394, align 4, !dbg !1872
  %div395 = sdiv i32 %mul393, %59, !dbg !1873
  %add396 = add nsw i32 %div395, 1, !dbg !1874
  %FRAME_LENGTH397 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1875
  store i32 %add396, i32* %FRAME_LENGTH397, align 4, !dbg !1876
  br label %if.end399, !dbg !1877

if.else398:                                       ; preds = %_L___12
  br label %_L___11, !dbg !1878

if.end399:                                        ; preds = %if.then390
  br label %if.end422, !dbg !1880

if.else400:                                       ; preds = %if.else382
  br label %_L___11, !dbg !1880

_L___11:                                          ; preds = %if.else400, %if.else398
  %L2401 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1881
  %60 = load i16, i16* %L2401, align 2, !dbg !1881
  %tobool402 = icmp ne i16 %60, 0, !dbg !1883
  br i1 %tobool402, label %if.then403, label %if.else404, !dbg !1884

if.then403:                                       ; preds = %_L___11
  br label %_L___10, !dbg !1885

if.else404:                                       ; preds = %_L___11
  %L3405 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 11, !dbg !1887
  %61 = load i16, i16* %L3405, align 4, !dbg !1887
  %tobool406 = icmp ne i16 %61, 0, !dbg !1889
  br i1 %tobool406, label %if.then407, label %if.end420, !dbg !1883

if.then407:                                       ; preds = %if.else404
  br label %_L___10, !dbg !1890

_L___10:                                          ; preds = %if.then407, %if.then403
  %PAD_BIT408 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 14, !dbg !1891
  %62 = load i16, i16* %PAD_BIT408, align 2, !dbg !1891
  %conv409 = sext i16 %62 to i32, !dbg !1894
  %cmp410 = icmp eq i32 %conv409, 0, !dbg !1895
  br i1 %cmp410, label %if.then412, label %if.end419, !dbg !1896

if.then412:                                       ; preds = %_L___10
  %BIT_RATE413 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1897
  %63 = load i32, i32* %BIT_RATE413, align 4, !dbg !1897
  %mul414 = mul nsw i32 72, %63, !dbg !1899
  %mul415 = mul nsw i32 %mul414, 1000, !dbg !1900
  %SAMPLE_FREQ416 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1901
  %64 = load i32, i32* %SAMPLE_FREQ416, align 4, !dbg !1901
  %div417 = sdiv i32 %mul415, %64, !dbg !1902
  %FRAME_LENGTH418 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1903
  store i32 %div417, i32* %FRAME_LENGTH418, align 4, !dbg !1904
  br label %if.end419, !dbg !1905

if.end419:                                        ; preds = %if.then412, %_L___10
  br label %if.end420, !dbg !1906

if.end420:                                        ; preds = %if.end419, %if.else404
  br label %if.end421

if.end421:                                        ; preds = %if.end420
  br label %if.end422

if.end422:                                        ; preds = %if.end421, %if.end399
  br label %if.end423

if.end423:                                        ; preds = %if.end422
  br label %if.end424

if.end424:                                        ; preds = %if.end423, %if.end377
  br label %if.end425

if.end425:                                        ; preds = %if.end424, %if.end359
  br label %if.end426, !dbg !1907

if.end426:                                        ; preds = %if.end425, %if.else338
  br label %if.end427

if.end427:                                        ; preds = %if.end426
  br label %if.end428

if.end428:                                        ; preds = %if.end427, %if.end333
  br label %if.end431, !dbg !1908

if.else429:                                       ; preds = %if.end246
  %FRAME_LENGTH430 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 0, !dbg !1909
  store i32 0, i32* %FRAME_LENGTH430, align 4, !dbg !1911
  br label %if.end431

if.end431:                                        ; preds = %if.else429, %if.end428
  %L_RESERVED432 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 12, !dbg !1912
  %65 = load i16, i16* %L_RESERVED432, align 2, !dbg !1912
  %tobool433 = icmp ne i16 %65, 0, !dbg !1914
  br i1 %tobool433, label %if.then434, label %if.else436, !dbg !1915

if.then434:                                       ; preds = %if.end431
  %check_state435 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1916
  store i16 0, i16* %check_state435, align 4, !dbg !1918
  br label %if.end637, !dbg !1919

if.else436:                                       ; preds = %if.end431
  %BIT_RATE437 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1920
  %66 = load i32, i32* %BIT_RATE437, align 4, !dbg !1920
  %cmp438 = icmp eq i32 %66, 0, !dbg !1922
  br i1 %cmp438, label %if.then440, label %if.else442, !dbg !1914

if.then440:                                       ; preds = %if.else436
  %check_state441 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1923
  store i16 0, i16* %check_state441, align 4, !dbg !1925
  br label %if.end636, !dbg !1926

if.else442:                                       ; preds = %if.else436
  %BIT_RATE443 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1927
  %67 = load i32, i32* %BIT_RATE443, align 4, !dbg !1927
  %cmp444 = icmp eq i32 %67, 1, !dbg !1929
  br i1 %cmp444, label %if.then446, label %if.else448, !dbg !1930

if.then446:                                       ; preds = %if.else442
  %check_state447 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1931
  store i16 0, i16* %check_state447, align 4, !dbg !1933
  br label %if.end635, !dbg !1934

if.else448:                                       ; preds = %if.else442
  %SAMPLE_FREQ449 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 3, !dbg !1935
  %68 = load i32, i32* %SAMPLE_FREQ449, align 4, !dbg !1935
  %cmp450 = icmp eq i32 %68, 0, !dbg !1937
  br i1 %cmp450, label %if.then452, label %if.else454, !dbg !1938

if.then452:                                       ; preds = %if.else448
  %check_state453 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1939
  store i16 0, i16* %check_state453, align 4, !dbg !1941
  br label %if.end634, !dbg !1942

if.else454:                                       ; preds = %if.else448
  %L2455 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1943
  %69 = load i16, i16* %L2455, align 2, !dbg !1943
  %tobool456 = icmp ne i16 %69, 0, !dbg !1945
  br i1 %tobool456, label %if.then457, label %if.else472, !dbg !1946

if.then457:                                       ; preds = %if.else454
  %BIT_RATE458 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1947
  %70 = load i32, i32* %BIT_RATE458, align 4, !dbg !1947
  %cmp459 = icmp eq i32 %70, 32, !dbg !1950
  br i1 %cmp459, label %if.then461, label %if.else470, !dbg !1951

if.then461:                                       ; preds = %if.then457
  %SINGLE_CHANNEL462 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 19, !dbg !1952
  %71 = load i16, i16* %SINGLE_CHANNEL462, align 4, !dbg !1952
  %conv463 = sext i16 %71 to i32, !dbg !1955
  %cmp464 = icmp eq i32 %conv463, 0, !dbg !1956
  br i1 %cmp464, label %if.then466, label %if.else468, !dbg !1957

if.then466:                                       ; preds = %if.then461
  %check_state467 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1958
  store i16 0, i16* %check_state467, align 4, !dbg !1960
  br label %if.end469, !dbg !1961

if.else468:                                       ; preds = %if.then461
  br label %_L___31, !dbg !1962

if.end469:                                        ; preds = %if.then466
  br label %if.end471, !dbg !1964

if.else470:                                       ; preds = %if.then457
  br label %_L___31, !dbg !1965

if.end471:                                        ; preds = %if.end469
  br label %if.end633, !dbg !1967

if.else472:                                       ; preds = %if.else454
  br label %_L___31, !dbg !1967

_L___31:                                          ; preds = %if.else472, %if.else470, %if.else468
  %L2473 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1968
  %72 = load i16, i16* %L2473, align 2, !dbg !1968
  %tobool474 = icmp ne i16 %72, 0, !dbg !1970
  br i1 %tobool474, label %if.then475, label %if.else490, !dbg !1971

if.then475:                                       ; preds = %_L___31
  %BIT_RATE476 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1972
  %73 = load i32, i32* %BIT_RATE476, align 4, !dbg !1972
  %cmp477 = icmp eq i32 %73, 48, !dbg !1975
  br i1 %cmp477, label %if.then479, label %if.else488, !dbg !1976

if.then479:                                       ; preds = %if.then475
  %SINGLE_CHANNEL480 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 19, !dbg !1977
  %74 = load i16, i16* %SINGLE_CHANNEL480, align 4, !dbg !1977
  %conv481 = sext i16 %74 to i32, !dbg !1980
  %cmp482 = icmp eq i32 %conv481, 0, !dbg !1981
  br i1 %cmp482, label %if.then484, label %if.else486, !dbg !1982

if.then484:                                       ; preds = %if.then479
  %check_state485 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !1983
  store i16 0, i16* %check_state485, align 4, !dbg !1985
  br label %if.end487, !dbg !1986

if.else486:                                       ; preds = %if.then479
  br label %_L___29, !dbg !1987

if.end487:                                        ; preds = %if.then484
  br label %if.end489, !dbg !1989

if.else488:                                       ; preds = %if.then475
  br label %_L___29, !dbg !1990

if.end489:                                        ; preds = %if.end487
  br label %if.end632, !dbg !1992

if.else490:                                       ; preds = %_L___31
  br label %_L___29, !dbg !1992

_L___29:                                          ; preds = %if.else490, %if.else488, %if.else486
  %L2491 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !1993
  %75 = load i16, i16* %L2491, align 2, !dbg !1993
  %tobool492 = icmp ne i16 %75, 0, !dbg !1995
  br i1 %tobool492, label %if.then493, label %if.else508, !dbg !1996

if.then493:                                       ; preds = %_L___29
  %BIT_RATE494 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !1997
  %76 = load i32, i32* %BIT_RATE494, align 4, !dbg !1997
  %cmp495 = icmp eq i32 %76, 56, !dbg !2000
  br i1 %cmp495, label %if.then497, label %if.else506, !dbg !2001

if.then497:                                       ; preds = %if.then493
  %SINGLE_CHANNEL498 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 19, !dbg !2002
  %77 = load i16, i16* %SINGLE_CHANNEL498, align 4, !dbg !2002
  %conv499 = sext i16 %77 to i32, !dbg !2005
  %cmp500 = icmp eq i32 %conv499, 0, !dbg !2006
  br i1 %cmp500, label %if.then502, label %if.else504, !dbg !2007

if.then502:                                       ; preds = %if.then497
  %check_state503 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2008
  store i16 0, i16* %check_state503, align 4, !dbg !2010
  br label %if.end505, !dbg !2011

if.else504:                                       ; preds = %if.then497
  br label %_L___27, !dbg !2012

if.end505:                                        ; preds = %if.then502
  br label %if.end507, !dbg !2014

if.else506:                                       ; preds = %if.then493
  br label %_L___27, !dbg !2015

if.end507:                                        ; preds = %if.end505
  br label %if.end631, !dbg !2017

if.else508:                                       ; preds = %_L___29
  br label %_L___27, !dbg !2017

_L___27:                                          ; preds = %if.else508, %if.else506, %if.else504
  %L2509 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !2018
  %78 = load i16, i16* %L2509, align 2, !dbg !2018
  %tobool510 = icmp ne i16 %78, 0, !dbg !2020
  br i1 %tobool510, label %if.then511, label %if.else526, !dbg !2021

if.then511:                                       ; preds = %_L___27
  %BIT_RATE512 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !2022
  %79 = load i32, i32* %BIT_RATE512, align 4, !dbg !2022
  %cmp513 = icmp eq i32 %79, 80, !dbg !2025
  br i1 %cmp513, label %if.then515, label %if.else524, !dbg !2026

if.then515:                                       ; preds = %if.then511
  %SINGLE_CHANNEL516 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 19, !dbg !2027
  %80 = load i16, i16* %SINGLE_CHANNEL516, align 4, !dbg !2027
  %conv517 = sext i16 %80 to i32, !dbg !2030
  %cmp518 = icmp eq i32 %conv517, 0, !dbg !2031
  br i1 %cmp518, label %if.then520, label %if.else522, !dbg !2032

if.then520:                                       ; preds = %if.then515
  %check_state521 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2033
  store i16 0, i16* %check_state521, align 4, !dbg !2035
  br label %if.end523, !dbg !2036

if.else522:                                       ; preds = %if.then515
  br label %_L___25, !dbg !2037

if.end523:                                        ; preds = %if.then520
  br label %if.end525, !dbg !2039

if.else524:                                       ; preds = %if.then511
  br label %_L___25, !dbg !2040

if.end525:                                        ; preds = %if.end523
  br label %if.end630, !dbg !2042

if.else526:                                       ; preds = %_L___27
  br label %_L___25, !dbg !2042

_L___25:                                          ; preds = %if.else526, %if.else524, %if.else522
  %L2527 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !2043
  %81 = load i16, i16* %L2527, align 2, !dbg !2043
  %tobool528 = icmp ne i16 %81, 0, !dbg !2045
  br i1 %tobool528, label %if.then529, label %if.else544, !dbg !2046

if.then529:                                       ; preds = %_L___25
  %BIT_RATE530 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !2047
  %82 = load i32, i32* %BIT_RATE530, align 4, !dbg !2047
  %cmp531 = icmp eq i32 %82, 32, !dbg !2050
  br i1 %cmp531, label %if.then533, label %if.else542, !dbg !2051

if.then533:                                       ; preds = %if.then529
  %SINGLE_CHANNEL534 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 19, !dbg !2052
  %83 = load i16, i16* %SINGLE_CHANNEL534, align 4, !dbg !2052
  %conv535 = sext i16 %83 to i32, !dbg !2055
  %cmp536 = icmp eq i32 %conv535, 0, !dbg !2056
  br i1 %cmp536, label %if.then538, label %if.else540, !dbg !2057

if.then538:                                       ; preds = %if.then533
  %check_state539 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2058
  store i16 0, i16* %check_state539, align 4, !dbg !2060
  br label %if.end541, !dbg !2061

if.else540:                                       ; preds = %if.then533
  br label %_L___23, !dbg !2062

if.end541:                                        ; preds = %if.then538
  br label %if.end543, !dbg !2064

if.else542:                                       ; preds = %if.then529
  br label %_L___23, !dbg !2065

if.end543:                                        ; preds = %if.end541
  br label %if.end629, !dbg !2067

if.else544:                                       ; preds = %_L___25
  br label %_L___23, !dbg !2067

_L___23:                                          ; preds = %if.else544, %if.else542, %if.else540
  %L2545 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !2068
  %84 = load i16, i16* %L2545, align 2, !dbg !2068
  %tobool546 = icmp ne i16 %84, 0, !dbg !2070
  br i1 %tobool546, label %if.then547, label %if.else565, !dbg !2071

if.then547:                                       ; preds = %_L___23
  %BIT_RATE548 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !2072
  %85 = load i32, i32* %BIT_RATE548, align 4, !dbg !2072
  %cmp549 = icmp eq i32 %85, 224, !dbg !2075
  br i1 %cmp549, label %if.then551, label %if.else563, !dbg !2076

if.then551:                                       ; preds = %if.then547
  %STEREO552 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 16, !dbg !2077
  %86 = load i16, i16* %STEREO552, align 2, !dbg !2077
  %tobool553 = icmp ne i16 %86, 0, !dbg !2080
  br i1 %tobool553, label %if.then554, label %if.else555, !dbg !2081

if.then554:                                       ; preds = %if.then551
  br label %_L___21, !dbg !2082

if.else555:                                       ; preds = %if.then551
  %DUAL_STEREO556 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 18, !dbg !2084
  %87 = load i16, i16* %DUAL_STEREO556, align 2, !dbg !2084
  %tobool557 = icmp ne i16 %87, 0, !dbg !2086
  br i1 %tobool557, label %if.then558, label %if.else559, !dbg !2080

if.then558:                                       ; preds = %if.else555
  br label %_L___21, !dbg !2087

if.else559:                                       ; preds = %if.else555
  %check_state560 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2089
  store i16 0, i16* %check_state560, align 4, !dbg !2091
  br label %if.end561

if.end561:                                        ; preds = %if.else559
  br label %if.end562

if.end562:                                        ; preds = %if.end561
  br label %if.end564, !dbg !2092

if.else563:                                       ; preds = %if.then547
  br label %_L___21, !dbg !2093

if.end564:                                        ; preds = %if.end562
  br label %if.end628, !dbg !2095

if.else565:                                       ; preds = %_L___23
  br label %_L___21, !dbg !2095

_L___21:                                          ; preds = %if.else565, %if.else563, %if.then558, %if.then554
  %L2566 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !2096
  %88 = load i16, i16* %L2566, align 2, !dbg !2096
  %tobool567 = icmp ne i16 %88, 0, !dbg !2098
  br i1 %tobool567, label %if.then568, label %if.else586, !dbg !2099

if.then568:                                       ; preds = %_L___21
  %BIT_RATE569 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !2100
  %89 = load i32, i32* %BIT_RATE569, align 4, !dbg !2100
  %cmp570 = icmp eq i32 %89, 256, !dbg !2103
  br i1 %cmp570, label %if.then572, label %if.else584, !dbg !2104

if.then572:                                       ; preds = %if.then568
  %STEREO573 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 16, !dbg !2105
  %90 = load i16, i16* %STEREO573, align 2, !dbg !2105
  %tobool574 = icmp ne i16 %90, 0, !dbg !2108
  br i1 %tobool574, label %if.then575, label %if.else576, !dbg !2109

if.then575:                                       ; preds = %if.then572
  br label %_L___19, !dbg !2110

if.else576:                                       ; preds = %if.then572
  %DUAL_STEREO577 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 18, !dbg !2112
  %91 = load i16, i16* %DUAL_STEREO577, align 2, !dbg !2112
  %tobool578 = icmp ne i16 %91, 0, !dbg !2114
  br i1 %tobool578, label %if.then579, label %if.else580, !dbg !2108

if.then579:                                       ; preds = %if.else576
  br label %_L___19, !dbg !2115

if.else580:                                       ; preds = %if.else576
  %check_state581 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2117
  store i16 0, i16* %check_state581, align 4, !dbg !2119
  br label %if.end582

if.end582:                                        ; preds = %if.else580
  br label %if.end583

if.end583:                                        ; preds = %if.end582
  br label %if.end585, !dbg !2120

if.else584:                                       ; preds = %if.then568
  br label %_L___19, !dbg !2121

if.end585:                                        ; preds = %if.end583
  br label %if.end627, !dbg !2123

if.else586:                                       ; preds = %_L___21
  br label %_L___19, !dbg !2123

_L___19:                                          ; preds = %if.else586, %if.else584, %if.then579, %if.then575
  %L2587 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !2124
  %92 = load i16, i16* %L2587, align 2, !dbg !2124
  %tobool588 = icmp ne i16 %92, 0, !dbg !2126
  br i1 %tobool588, label %if.then589, label %if.else607, !dbg !2127

if.then589:                                       ; preds = %_L___19
  %BIT_RATE590 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !2128
  %93 = load i32, i32* %BIT_RATE590, align 4, !dbg !2128
  %cmp591 = icmp eq i32 %93, 320, !dbg !2131
  br i1 %cmp591, label %if.then593, label %if.else605, !dbg !2132

if.then593:                                       ; preds = %if.then589
  %STEREO594 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 16, !dbg !2133
  %94 = load i16, i16* %STEREO594, align 2, !dbg !2133
  %tobool595 = icmp ne i16 %94, 0, !dbg !2136
  br i1 %tobool595, label %if.then596, label %if.else597, !dbg !2137

if.then596:                                       ; preds = %if.then593
  br label %_L___17, !dbg !2138

if.else597:                                       ; preds = %if.then593
  %DUAL_STEREO598 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 18, !dbg !2140
  %95 = load i16, i16* %DUAL_STEREO598, align 2, !dbg !2140
  %tobool599 = icmp ne i16 %95, 0, !dbg !2142
  br i1 %tobool599, label %if.then600, label %if.else601, !dbg !2136

if.then600:                                       ; preds = %if.else597
  br label %_L___17, !dbg !2143

if.else601:                                       ; preds = %if.else597
  %check_state602 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2145
  store i16 0, i16* %check_state602, align 4, !dbg !2147
  br label %if.end603

if.end603:                                        ; preds = %if.else601
  br label %if.end604

if.end604:                                        ; preds = %if.end603
  br label %if.end606, !dbg !2148

if.else605:                                       ; preds = %if.then589
  br label %_L___17, !dbg !2149

if.end606:                                        ; preds = %if.end604
  br label %if.end626, !dbg !2151

if.else607:                                       ; preds = %_L___19
  br label %_L___17, !dbg !2151

_L___17:                                          ; preds = %if.else607, %if.else605, %if.then600, %if.then596
  %L2608 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 10, !dbg !2152
  %96 = load i16, i16* %L2608, align 2, !dbg !2152
  %tobool609 = icmp ne i16 %96, 0, !dbg !2154
  br i1 %tobool609, label %if.then610, label %if.end625, !dbg !2155

if.then610:                                       ; preds = %_L___17
  %BIT_RATE611 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 2, !dbg !2156
  %97 = load i32, i32* %BIT_RATE611, align 4, !dbg !2156
  %cmp612 = icmp eq i32 %97, 384, !dbg !2159
  br i1 %cmp612, label %if.then614, label %if.end624, !dbg !2160

if.then614:                                       ; preds = %if.then610
  %STEREO615 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 16, !dbg !2161
  %98 = load i16, i16* %STEREO615, align 2, !dbg !2161
  %tobool616 = icmp ne i16 %98, 0, !dbg !2164
  br i1 %tobool616, label %if.end623, label %if.then617, !dbg !2165

if.then617:                                       ; preds = %if.then614
  %DUAL_STEREO618 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 18, !dbg !2166
  %99 = load i16, i16* %DUAL_STEREO618, align 2, !dbg !2166
  %tobool619 = icmp ne i16 %99, 0, !dbg !2169
  br i1 %tobool619, label %if.end622, label %if.then620, !dbg !2170

if.then620:                                       ; preds = %if.then617
  %check_state621 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2171
  store i16 0, i16* %check_state621, align 4, !dbg !2173
  br label %if.end622, !dbg !2174

if.end622:                                        ; preds = %if.then620, %if.then617
  br label %if.end623, !dbg !2175

if.end623:                                        ; preds = %if.end622, %if.then614
  br label %if.end624, !dbg !2176

if.end624:                                        ; preds = %if.end623, %if.then610
  br label %if.end625, !dbg !2177

if.end625:                                        ; preds = %if.end624, %_L___17
  br label %if.end626

if.end626:                                        ; preds = %if.end625, %if.end606
  br label %if.end627

if.end627:                                        ; preds = %if.end626, %if.end585
  br label %if.end628

if.end628:                                        ; preds = %if.end627, %if.end564
  br label %if.end629

if.end629:                                        ; preds = %if.end628, %if.end543
  br label %if.end630

if.end630:                                        ; preds = %if.end629, %if.end525
  br label %if.end631

if.end631:                                        ; preds = %if.end630, %if.end507
  br label %if.end632

if.end632:                                        ; preds = %if.end631, %if.end489
  br label %if.end633

if.end633:                                        ; preds = %if.end632, %if.end471
  br label %if.end634

if.end634:                                        ; preds = %if.end633, %if.then452
  br label %if.end635

if.end635:                                        ; preds = %if.end634, %if.then446
  br label %if.end636

if.end636:                                        ; preds = %if.end635, %if.then440
  br label %if.end637

if.end637:                                        ; preds = %if.end636, %if.then434
  %check_state638 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %FI, i32 0, i32 32, !dbg !2178
  %100 = load i16, i16* %check_state638, align 4, !dbg !2178
  %conv639 = sext i16 %100 to i32, !dbg !2179
  br label %return, !dbg !2180

return:                                           ; preds = %if.end637, %if.else
  %retval.0 = phi i32 [ %conv639, %if.end637 ], [ %conv, %if.else ], !dbg !1191
  ret i32 %retval.0, !dbg !2181
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

declare i32 @cmp_str(i8*, i8*, i32) #4

; Function Attrs: nounwind
declare i32 @getrusage(i32, %struct.rusage*) #2

declare i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @rotate_char_array(i8* %byte_list, i32* %new_byte, %struct.__anonstruct_gen_info_27* %file_info) #0 !dbg !2182 {
entry:
  call void @llvm.dbg.value(metadata i8* %byte_list, metadata !2185, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32* %new_byte, metadata !2187, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !2188, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 0, metadata !2189, metadata !DIExpression()), !dbg !2186
  %byte_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !2190
  %0 = load i32, i32* %byte_count, align 8, !dbg !2190
  %rem = srem i32 %0, 128, !dbg !2192
  call void @llvm.dbg.value(metadata i32 %rem, metadata !2189, metadata !DIExpression()), !dbg !2186
  %1 = load i32, i32* %new_byte, align 4, !dbg !2193
  %conv = trunc i32 %1 to i8, !dbg !2194
  %idx.ext = sext i32 %rem to i64, !dbg !2195
  %add.ptr = getelementptr inbounds i8, i8* %byte_list, i64 %idx.ext, !dbg !2195
  store i8 %conv, i8* %add.ptr, align 1, !dbg !2196
  ret i32 1, !dbg !2197
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @transform_char_array(i8* %byte_list, %struct.__anonstruct_gen_info_27* %file_info) #0 !dbg !2198 {
entry:
  %trans_list = alloca [128 x i8], align 16
  call void @llvm.dbg.value(metadata i8* %byte_list, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !2203, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.declare(metadata [128 x i8]* %trans_list, metadata !2204, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.declare(metadata !4, metadata !2209, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.value(metadata i32 0, metadata !2211, metadata !DIExpression()), !dbg !2202
  %arrayidx = getelementptr inbounds [128 x i8], [128 x i8]* %trans_list, i64 0, i64 0, !dbg !2212
  store i8 42, i8* %arrayidx, align 16, !dbg !2214
  call void @llvm.dbg.value(metadata i32 1, metadata !2215, metadata !DIExpression()), !dbg !2202
  br label %while.body, !dbg !2216

while.body:                                       ; preds = %if.end, %entry
  %tmp.0 = phi i32 [ 1, %entry ], [ %inc, %if.end ], !dbg !2219
  call void @llvm.dbg.value(metadata i32 %tmp.0, metadata !2215, metadata !DIExpression()), !dbg !2202
  br label %while_continue___2, !dbg !2220

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !2220

while_continue:                                   ; preds = %while_continue___2
  %cmp = icmp uge i32 %tmp.0, 128, !dbg !2221
  br i1 %cmp, label %if.then, label %if.end, !dbg !2224

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2225

if.end:                                           ; preds = %while_continue
  %idxprom = zext i32 %tmp.0 to i64, !dbg !2227
  %arrayidx1 = getelementptr inbounds [128 x i8], [128 x i8]* %trans_list, i64 0, i64 %idxprom, !dbg !2227
  store i8 0, i8* %arrayidx1, align 1, !dbg !2228
  %inc = add i32 %tmp.0, 1, !dbg !2224
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2215, metadata !DIExpression()), !dbg !2202
  br label %while.body, !dbg !2216, !llvm.loop !2229

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !2231

while_break:                                      ; preds = %while_break___2, %if.then
  %byte_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !2232
  %0 = load i32, i32* %byte_count, align 8, !dbg !2232
  %rem = srem i32 %0, 128, !dbg !2233
  %add = add nsw i32 %rem, 1, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %add, metadata !2211, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i32 %add, metadata !2235, metadata !DIExpression()), !dbg !2202
  br label %while.body2, !dbg !2236

while.body2:                                      ; preds = %if.end5, %while_break
  %counter.0 = phi i32 [ %add, %while_break ], [ %inc8, %if.end5 ], !dbg !2219
  call void @llvm.dbg.value(metadata i32 %counter.0, metadata !2235, metadata !DIExpression()), !dbg !2202
  br label %while_continue___3, !dbg !2239

while_continue___3:                               ; preds = %while.body2
  br label %while_continue___0, !dbg !2239

while_continue___0:                               ; preds = %while_continue___3
  %cmp3 = icmp slt i32 %counter.0, 128, !dbg !2240
  br i1 %cmp3, label %if.end5, label %if.then4, !dbg !2243

if.then4:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !2244

if.end5:                                          ; preds = %while_continue___0
  %idx.ext = sext i32 %counter.0 to i64, !dbg !2246
  %add.ptr = getelementptr inbounds i8, i8* %byte_list, i64 %idx.ext, !dbg !2246
  %1 = load i8, i8* %add.ptr, align 1, !dbg !2247
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %trans_list, i32 0, i32 0, !dbg !2248
  %sub = sub nsw i32 %counter.0, %add, !dbg !2249
  %idx.ext6 = sext i32 %sub to i64, !dbg !2250
  %add.ptr7 = getelementptr inbounds i8, i8* %arraydecay, i64 %idx.ext6, !dbg !2250
  store i8 %1, i8* %add.ptr7, align 1, !dbg !2251
  %inc8 = add nsw i32 %counter.0, 1, !dbg !2252
  call void @llvm.dbg.value(metadata i32 %inc8, metadata !2235, metadata !DIExpression()), !dbg !2202
  br label %while.body2, !dbg !2236, !llvm.loop !2253

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !2255

while_break___0:                                  ; preds = %while_break___3, %if.then4
  call void @llvm.dbg.value(metadata i32 0, metadata !2235, metadata !DIExpression()), !dbg !2202
  br label %while.body9, !dbg !2256

while.body9:                                      ; preds = %if.end12, %while_break___0
  %counter.1 = phi i32 [ 0, %while_break___0 ], [ %inc20, %if.end12 ], !dbg !2219
  call void @llvm.dbg.value(metadata i32 %counter.1, metadata !2235, metadata !DIExpression()), !dbg !2202
  br label %while_continue___4, !dbg !2259

while_continue___4:                               ; preds = %while.body9
  br label %while_continue___1, !dbg !2259

while_continue___1:                               ; preds = %while_continue___4
  %cmp10 = icmp slt i32 %counter.1, %add, !dbg !2260
  br i1 %cmp10, label %if.end12, label %if.then11, !dbg !2263

if.then11:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2264

if.end12:                                         ; preds = %while_continue___1
  %idx.ext13 = sext i32 %counter.1 to i64, !dbg !2266
  %add.ptr14 = getelementptr inbounds i8, i8* %byte_list, i64 %idx.ext13, !dbg !2266
  %2 = load i8, i8* %add.ptr14, align 1, !dbg !2267
  %arraydecay15 = getelementptr inbounds [128 x i8], [128 x i8]* %trans_list, i32 0, i32 0, !dbg !2268
  %sub16 = sub nsw i32 128, %add, !dbg !2269
  %add17 = add nsw i32 %sub16, %counter.1, !dbg !2270
  %idx.ext18 = sext i32 %add17 to i64, !dbg !2271
  %add.ptr19 = getelementptr inbounds i8, i8* %arraydecay15, i64 %idx.ext18, !dbg !2271
  store i8 %2, i8* %add.ptr19, align 1, !dbg !2272
  %inc20 = add nsw i32 %counter.1, 1, !dbg !2273
  call void @llvm.dbg.value(metadata i32 %inc20, metadata !2235, metadata !DIExpression()), !dbg !2202
  br label %while.body9, !dbg !2256, !llvm.loop !2274

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !2276

while_break___1:                                  ; preds = %while_break___4, %if.then11
  %arraydecay21 = getelementptr inbounds [128 x i8], [128 x i8]* %trans_list, i32 0, i32 0, !dbg !2277
  %call = call i8* @memcpy(i8* %byte_list, i8* %arraydecay21, i32 128) #8, !dbg !2280
  ret i32 1, !dbg !2281
}

; Function Attrs: nounwind
declare i8* @memcpy(i8*, i8*, i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @translate_time(%struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_mp3_time_29* %song_time) #0 !dbg !2282 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !2285, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata %struct.__anonstruct_mp3_time_29* %song_time, metadata !2287, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2288, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata double 0.000000e+00, metadata !2289, metadata !DIExpression()), !dbg !2286
  %time_in_seconds = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 6, !dbg !2290
  %0 = load double, double* %time_in_seconds, align 8, !dbg !2290
  %div = fdiv double %0, 6.000000e+01, !dbg !2292
  call void @llvm.dbg.value(metadata double %div, metadata !2288, metadata !DIExpression()), !dbg !2286
  %conv = fptosi double %div to i32, !dbg !2293
  %conv1 = sitofp i32 %conv to double, !dbg !2294
  %sub = fsub double %div, %conv1, !dbg !2295
  %mul = fmul double 6.000000e+01, %sub, !dbg !2296
  call void @llvm.dbg.value(metadata double %mul, metadata !2289, metadata !DIExpression()), !dbg !2286
  %conv2 = fptosi double %mul to i32, !dbg !2297
  %conv3 = sitofp i32 %conv2 to double, !dbg !2298
  %sub4 = fsub double %mul, %conv3, !dbg !2299
  %mul5 = fmul double 1.000000e+02, %sub4, !dbg !2300
  %conv6 = fptosi double %mul5 to i32, !dbg !2301
  %frac_second = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 2, !dbg !2302
  store i32 %conv6, i32* %frac_second, align 4, !dbg !2303
  %conv7 = fptosi double %div to i32, !dbg !2304
  %minutes = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 0, !dbg !2305
  store i32 %conv7, i32* %minutes, align 4, !dbg !2306
  %conv8 = fptosi double %mul to i32, !dbg !2307
  %seconds = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 1, !dbg !2308
  store i32 %conv8, i32* %seconds, align 4, !dbg !2309
  ret void, !dbg !2310
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @dump_id3_tag(%struct.__anonstruct_id3_tag_info_33* %id3_tag) #0 !dbg !2311 {
entry:
  %title = alloca [30 x i8], align 16
  %artist = alloca [30 x i8], align 16
  %album = alloca [30 x i8], align 16
  %year = alloca [4 x i8], align 1
  %comment = alloca [30 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.__anonstruct_id3_tag_info_33* %id3_tag, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.declare(metadata [30 x i8]* %title, metadata !2316, metadata !DIExpression()), !dbg !2320
  call void @llvm.dbg.declare(metadata [30 x i8]* %artist, metadata !2321, metadata !DIExpression()), !dbg !2322
  call void @llvm.dbg.declare(metadata [30 x i8]* %album, metadata !2323, metadata !DIExpression()), !dbg !2324
  call void @llvm.dbg.declare(metadata [4 x i8]* %year, metadata !2325, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.declare(metadata [30 x i8]* %comment, metadata !2329, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.declare(metadata !4, metadata !2331, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.declare(metadata !4, metadata !2333, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.declare(metadata !4, metadata !2335, metadata !DIExpression()), !dbg !2336
  call void @llvm.dbg.declare(metadata !4, metadata !2337, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.declare(metadata !4, metadata !2339, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.declare(metadata !4, metadata !2341, metadata !DIExpression()), !dbg !2342
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2315
  %arraydecay = getelementptr inbounds [30 x i8], [30 x i8]* %title, i32 0, i32 0, !dbg !2344
  %call = call i8* @memset(i8* %arraydecay, i32 0, i32 30) #8, !dbg !2348
  %arraydecay1 = getelementptr inbounds [30 x i8], [30 x i8]* %artist, i32 0, i32 0, !dbg !2349
  %call2 = call i8* @memset(i8* %arraydecay1, i32 0, i32 30) #8, !dbg !2351
  %arraydecay3 = getelementptr inbounds [30 x i8], [30 x i8]* %album, i32 0, i32 0, !dbg !2352
  %call4 = call i8* @memset(i8* %arraydecay3, i32 0, i32 30) #8, !dbg !2354
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %year, i32 0, i32 0, !dbg !2355
  %call6 = call i8* @memset(i8* %arraydecay5, i32 0, i32 4) #8, !dbg !2357
  %arraydecay7 = getelementptr inbounds [30 x i8], [30 x i8]* %comment, i32 0, i32 0, !dbg !2358
  %call8 = call i8* @memset(i8* %arraydecay7, i32 0, i32 30) #8, !dbg !2360
  %TITLE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 2, !dbg !2361
  %arraydecay9 = getelementptr inbounds [31 x i8], [31 x i8]* %TITLE, i32 0, i32 0, !dbg !2363
  %call10 = call i32 @get_last_char_offset(i8* %arraydecay9), !dbg !2364
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2365, metadata !DIExpression()), !dbg !2315
  %arraydecay11 = getelementptr inbounds [30 x i8], [30 x i8]* %title, i32 0, i32 0, !dbg !2366
  %TITLE12 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 2, !dbg !2368
  %arraydecay13 = getelementptr inbounds [31 x i8], [31 x i8]* %TITLE12, i32 0, i32 0, !dbg !2369
  %call14 = call i8* @strncpy(i8* %arraydecay11, i8* %arraydecay13, i32 %call10) #8, !dbg !2370
  %ARTIST = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 3, !dbg !2371
  %arraydecay15 = getelementptr inbounds [31 x i8], [31 x i8]* %ARTIST, i32 0, i32 0, !dbg !2373
  %call16 = call i32 @get_last_char_offset(i8* %arraydecay15), !dbg !2374
  call void @llvm.dbg.value(metadata i32 %call16, metadata !2375, metadata !DIExpression()), !dbg !2315
  %arraydecay17 = getelementptr inbounds [30 x i8], [30 x i8]* %artist, i32 0, i32 0, !dbg !2376
  %ARTIST18 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 3, !dbg !2378
  %arraydecay19 = getelementptr inbounds [31 x i8], [31 x i8]* %ARTIST18, i32 0, i32 0, !dbg !2379
  %call20 = call i8* @strncpy(i8* %arraydecay17, i8* %arraydecay19, i32 %call16) #8, !dbg !2380
  %ALBUM = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 4, !dbg !2381
  %arraydecay21 = getelementptr inbounds [31 x i8], [31 x i8]* %ALBUM, i32 0, i32 0, !dbg !2383
  %call22 = call i32 @get_last_char_offset(i8* %arraydecay21), !dbg !2384
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2385, metadata !DIExpression()), !dbg !2315
  %arraydecay23 = getelementptr inbounds [30 x i8], [30 x i8]* %album, i32 0, i32 0, !dbg !2386
  %ALBUM24 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 4, !dbg !2388
  %arraydecay25 = getelementptr inbounds [31 x i8], [31 x i8]* %ALBUM24, i32 0, i32 0, !dbg !2389
  %call26 = call i8* @strncpy(i8* %arraydecay23, i8* %arraydecay25, i32 %call22) #8, !dbg !2390
  %YEAR = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 5, !dbg !2391
  %arraydecay27 = getelementptr inbounds [5 x i8], [5 x i8]* %YEAR, i32 0, i32 0, !dbg !2393
  %call28 = call i32 @get_last_char_offset(i8* %arraydecay27), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %call28, metadata !2395, metadata !DIExpression()), !dbg !2315
  %arraydecay29 = getelementptr inbounds [4 x i8], [4 x i8]* %year, i32 0, i32 0, !dbg !2396
  %YEAR30 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 5, !dbg !2398
  %arraydecay31 = getelementptr inbounds [5 x i8], [5 x i8]* %YEAR30, i32 0, i32 0, !dbg !2399
  %call32 = call i8* @strncpy(i8* %arraydecay29, i8* %arraydecay31, i32 %call28) #8, !dbg !2400
  %COMMENT = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 6, !dbg !2401
  %arraydecay33 = getelementptr inbounds [31 x i8], [31 x i8]* %COMMENT, i32 0, i32 0, !dbg !2403
  %call34 = call i32 @get_last_char_offset(i8* %arraydecay33), !dbg !2404
  call void @llvm.dbg.value(metadata i32 %call34, metadata !2405, metadata !DIExpression()), !dbg !2315
  %arraydecay35 = getelementptr inbounds [30 x i8], [30 x i8]* %comment, i32 0, i32 0, !dbg !2406
  %COMMENT36 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 6, !dbg !2408
  %arraydecay37 = getelementptr inbounds [31 x i8], [31 x i8]* %COMMENT36, i32 0, i32 0, !dbg !2409
  %call38 = call i8* @strncpy(i8* %arraydecay35, i8* %arraydecay37, i32 %call34) #8, !dbg !2410
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2411
  %call39 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0), %struct._IO_FILE* %0), !dbg !2413
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body, !dbg !2414

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !2417
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while_continue___4, !dbg !2418

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !2418

while_continue:                                   ; preds = %while_continue___4
  %cmp = icmp slt i32 %i.0, 30, !dbg !2419
  br i1 %cmp, label %if.end, label %if.then, !dbg !2422

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2423

if.end:                                           ; preds = %while_continue
  %arraydecay40 = getelementptr inbounds [30 x i8], [30 x i8]* %title, i32 0, i32 0, !dbg !2425
  %idx.ext = sext i32 %i.0 to i64, !dbg !2428
  %add.ptr = getelementptr inbounds i8, i8* %arraydecay40, i64 %idx.ext, !dbg !2428
  %1 = load i8, i8* %add.ptr, align 1, !dbg !2429
  %conv = sext i8 %1 to i32, !dbg !2430
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2431
  %call41 = call i32 @fputc(i32 %conv, %struct._IO_FILE* %2), !dbg !2432
  %inc = add nsw i32 %i.0, 1, !dbg !2433
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body, !dbg !2414, !llvm.loop !2434

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !2436

while_break:                                      ; preds = %while_break___4, %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body42, !dbg !2437

while.body42:                                     ; preds = %if.end46, %while_break
  %i.1 = phi i32 [ 0, %while_break ], [ %inc52, %if.end46 ], !dbg !2417
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while_continue___5, !dbg !2440

while_continue___5:                               ; preds = %while.body42
  br label %while_continue___0, !dbg !2440

while_continue___0:                               ; preds = %while_continue___5
  %cmp43 = icmp slt i32 %i.1, 30, !dbg !2441
  br i1 %cmp43, label %if.end46, label %if.then45, !dbg !2444

if.then45:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2445

if.end46:                                         ; preds = %while_continue___0
  %arraydecay47 = getelementptr inbounds [30 x i8], [30 x i8]* %artist, i32 0, i32 0, !dbg !2447
  %idx.ext48 = sext i32 %i.1 to i64, !dbg !2450
  %add.ptr49 = getelementptr inbounds i8, i8* %arraydecay47, i64 %idx.ext48, !dbg !2450
  %3 = load i8, i8* %add.ptr49, align 1, !dbg !2451
  %conv50 = sext i8 %3 to i32, !dbg !2452
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2453
  %call51 = call i32 @fputc(i32 %conv50, %struct._IO_FILE* %4), !dbg !2454
  %inc52 = add nsw i32 %i.1, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i32 %inc52, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body42, !dbg !2437, !llvm.loop !2456

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !2458

while_break___0:                                  ; preds = %while_break___5, %if.then45
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body53, !dbg !2459

while.body53:                                     ; preds = %if.end57, %while_break___0
  %i.2 = phi i32 [ 0, %while_break___0 ], [ %inc63, %if.end57 ], !dbg !2417
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while_continue___6, !dbg !2462

while_continue___6:                               ; preds = %while.body53
  br label %while_continue___1, !dbg !2462

while_continue___1:                               ; preds = %while_continue___6
  %cmp54 = icmp slt i32 %i.2, 30, !dbg !2463
  br i1 %cmp54, label %if.end57, label %if.then56, !dbg !2466

if.then56:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2467

if.end57:                                         ; preds = %while_continue___1
  %arraydecay58 = getelementptr inbounds [30 x i8], [30 x i8]* %album, i32 0, i32 0, !dbg !2469
  %idx.ext59 = sext i32 %i.2 to i64, !dbg !2472
  %add.ptr60 = getelementptr inbounds i8, i8* %arraydecay58, i64 %idx.ext59, !dbg !2472
  %5 = load i8, i8* %add.ptr60, align 1, !dbg !2473
  %conv61 = sext i8 %5 to i32, !dbg !2474
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2475
  %call62 = call i32 @fputc(i32 %conv61, %struct._IO_FILE* %6), !dbg !2476
  %inc63 = add nsw i32 %i.2, 1, !dbg !2477
  call void @llvm.dbg.value(metadata i32 %inc63, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body53, !dbg !2459, !llvm.loop !2478

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !2480

while_break___1:                                  ; preds = %while_break___6, %if.then56
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body64, !dbg !2481

while.body64:                                     ; preds = %if.end68, %while_break___1
  %i.3 = phi i32 [ 0, %while_break___1 ], [ %inc74, %if.end68 ], !dbg !2417
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while_continue___7, !dbg !2484

while_continue___7:                               ; preds = %while.body64
  br label %while_continue___2, !dbg !2484

while_continue___2:                               ; preds = %while_continue___7
  %cmp65 = icmp slt i32 %i.3, 4, !dbg !2485
  br i1 %cmp65, label %if.end68, label %if.then67, !dbg !2488

if.then67:                                        ; preds = %while_continue___2
  br label %while_break___2, !dbg !2489

if.end68:                                         ; preds = %while_continue___2
  %arraydecay69 = getelementptr inbounds [4 x i8], [4 x i8]* %year, i32 0, i32 0, !dbg !2491
  %idx.ext70 = sext i32 %i.3 to i64, !dbg !2494
  %add.ptr71 = getelementptr inbounds i8, i8* %arraydecay69, i64 %idx.ext70, !dbg !2494
  %7 = load i8, i8* %add.ptr71, align 1, !dbg !2495
  %conv72 = sext i8 %7 to i32, !dbg !2496
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2497
  %call73 = call i32 @fputc(i32 %conv72, %struct._IO_FILE* %8), !dbg !2498
  %inc74 = add nsw i32 %i.3, 1, !dbg !2499
  call void @llvm.dbg.value(metadata i32 %inc74, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body64, !dbg !2481, !llvm.loop !2500

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !2502

while_break___2:                                  ; preds = %while_break___7, %if.then67
  call void @llvm.dbg.value(metadata i32 0, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body75, !dbg !2503

while.body75:                                     ; preds = %if.end79, %while_break___2
  %i.4 = phi i32 [ 0, %while_break___2 ], [ %inc85, %if.end79 ], !dbg !2417
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while_continue___8, !dbg !2506

while_continue___8:                               ; preds = %while.body75
  br label %while_continue___3, !dbg !2506

while_continue___3:                               ; preds = %while_continue___8
  %cmp76 = icmp slt i32 %i.4, 29, !dbg !2507
  br i1 %cmp76, label %if.end79, label %if.then78, !dbg !2510

if.then78:                                        ; preds = %while_continue___3
  br label %while_break___3, !dbg !2511

if.end79:                                         ; preds = %while_continue___3
  %arraydecay80 = getelementptr inbounds [30 x i8], [30 x i8]* %comment, i32 0, i32 0, !dbg !2513
  %idx.ext81 = sext i32 %i.4 to i64, !dbg !2516
  %add.ptr82 = getelementptr inbounds i8, i8* %arraydecay80, i64 %idx.ext81, !dbg !2516
  %9 = load i8, i8* %add.ptr82, align 1, !dbg !2517
  %conv83 = sext i8 %9 to i32, !dbg !2518
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2519
  %call84 = call i32 @fputc(i32 %conv83, %struct._IO_FILE* %10), !dbg !2520
  %inc85 = add nsw i32 %i.4, 1, !dbg !2521
  call void @llvm.dbg.value(metadata i32 %inc85, metadata !2343, metadata !DIExpression()), !dbg !2315
  br label %while.body75, !dbg !2503, !llvm.loop !2522

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !2524

while_break___3:                                  ; preds = %while_break___8, %if.then78
  %TRACK_NUMBER = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 8, !dbg !2525
  %11 = load i16, i16* %TRACK_NUMBER, align 2, !dbg !2525
  %conv86 = sext i16 %11 to i32, !dbg !2527
  %cmp87 = icmp ne i32 %conv86, 0, !dbg !2528
  br i1 %cmp87, label %if.then89, label %if.else, !dbg !2529

if.then89:                                        ; preds = %while_break___3
  %TRACK_NUMBER90 = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 8, !dbg !2530
  %12 = load i16, i16* %TRACK_NUMBER90, align 2, !dbg !2530
  %conv91 = sext i16 %12 to i32, !dbg !2534
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2535
  %call92 = call i32 @fputc(i32 %conv91, %struct._IO_FILE* %13), !dbg !2536
  br label %if.end97, !dbg !2537

if.else:                                          ; preds = %while_break___3
  %arraydecay93 = getelementptr inbounds [30 x i8], [30 x i8]* %comment, i32 0, i32 0, !dbg !2538
  %add.ptr94 = getelementptr inbounds i8, i8* %arraydecay93, i64 29, !dbg !2542
  %14 = load i8, i8* %add.ptr94, align 1, !dbg !2543
  %conv95 = sext i8 %14 to i32, !dbg !2544
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2545
  %call96 = call i32 @fputc(i32 %conv95, %struct._IO_FILE* %15), !dbg !2546
  br label %if.end97

if.end97:                                         ; preds = %if.else, %if.then89
  %GENRE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 7, !dbg !2547
  %16 = load i16, i16* %GENRE, align 2, !dbg !2547
  %conv98 = sext i16 %16 to i32, !dbg !2550
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2551
  %call99 = call i32 @fputc(i32 %conv98, %struct._IO_FILE* %17), !dbg !2552
  ret i32 1, !dbg !2553
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @get_last_char_offset(i8* %fat_string) #0 !dbg !2554 {
entry:
  call void @llvm.dbg.value(metadata i8* %fat_string, metadata !2557, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i32 0, metadata !2559, metadata !DIExpression()), !dbg !2558
  %call = call i32 @strlen(i8* %fat_string) #9, !dbg !2560
  call void @llvm.dbg.value(metadata i32 %call, metadata !2564, metadata !DIExpression()), !dbg !2558
  %sub = sub i32 %call, 1, !dbg !2565
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2559, metadata !DIExpression()), !dbg !2558
  br label %while.body, !dbg !2566

while.body:                                       ; preds = %if.end6, %entry
  %i.0 = phi i32 [ %sub, %entry ], [ %dec, %if.end6 ], !dbg !2569
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2559, metadata !DIExpression()), !dbg !2558
  br label %while_continue___0, !dbg !2570

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2570

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp sge i32 %i.0, 0, !dbg !2571
  br i1 %cmp, label %if.end, label %if.then, !dbg !2574

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2575

if.end:                                           ; preds = %while_continue
  %call1 = call i16** @__ctype_b_loc() #11, !dbg !2577
  call void @llvm.dbg.value(metadata i16** %call1, metadata !2580, metadata !DIExpression()), !dbg !2558
  %0 = load i16*, i16** %call1, align 8, !dbg !2584
  %idx.ext = sext i32 %i.0 to i64, !dbg !2586
  %add.ptr = getelementptr inbounds i8, i8* %fat_string, i64 %idx.ext, !dbg !2586
  %1 = load i8, i8* %add.ptr, align 1, !dbg !2587
  %conv = sext i8 %1 to i32, !dbg !2588
  %idx.ext2 = sext i32 %conv to i64, !dbg !2589
  %add.ptr3 = getelementptr inbounds i16, i16* %0, i64 %idx.ext2, !dbg !2589
  %2 = load i16, i16* %add.ptr3, align 2, !dbg !2590
  %conv4 = zext i16 %2 to i32, !dbg !2591
  %and = and i32 %conv4, 32768, !dbg !2592
  %tobool = icmp ne i32 %and, 0, !dbg !2592
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2593

if.then5:                                         ; preds = %if.end
  %add = add nsw i32 %i.0, 1, !dbg !2594
  br label %return, !dbg !2596

if.end6:                                          ; preds = %if.end
  %dec = add nsw i32 %i.0, -1, !dbg !2597
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2559, metadata !DIExpression()), !dbg !2558
  br label %while.body, !dbg !2566, !llvm.loop !2598

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2600

while_break:                                      ; preds = %while_break___0, %if.then
  %call7 = call i32 @strlen(i8* %fat_string) #9, !dbg !2601
  call void @llvm.dbg.value(metadata i32 %call7, metadata !2604, metadata !DIExpression()), !dbg !2558
  br label %return, !dbg !2605

return:                                           ; preds = %while_break, %if.then5
  %retval.0 = phi i32 [ %add, %if.then5 ], [ %call7, %while_break ], !dbg !2569
  ret i32 %retval.0, !dbg !2606
}

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #2

declare i32 @fputs(i8*, %struct._IO_FILE*) #4

declare i32 @fputc(i32, %struct._IO_FILE*) #4

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #3

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() #5

; Function Attrs: noinline nounwind ssp uwtable
define i32 @check_vbr_and_time(%struct.__anonstruct_frame_info_32* %mp3_i, %struct.__anonstruct_vbr_data_28* %vbr_info, %struct.__anonstruct_gen_info_27* %file_info) #0 !dbg !2607 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_frame_info_32* %mp3_i, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata %struct.__anonstruct_vbr_data_28* %vbr_info, metadata !2612, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.value(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !2613, metadata !DIExpression()), !dbg !2611
  %SAMPLES_PER_FRAME = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 4, !dbg !2614
  %0 = load i32, i32* %SAMPLES_PER_FRAME, align 4, !dbg !2614
  %conv = sitofp i32 %0 to double, !dbg !2616
  %mul = fmul double %conv, 1.000000e+00, !dbg !2617
  %SAMPLE_FREQ = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 3, !dbg !2618
  %1 = load i32, i32* %SAMPLE_FREQ, align 4, !dbg !2618
  %conv1 = sitofp i32 %1 to double, !dbg !2619
  %mul2 = fmul double %conv1, 1.000000e+00, !dbg !2620
  %div = fdiv double %mul, %mul2, !dbg !2621
  %time_in_seconds = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 6, !dbg !2622
  %2 = load double, double* %time_in_seconds, align 8, !dbg !2623
  %add = fadd double %2, %div, !dbg !2623
  store double %add, double* %time_in_seconds, align 8, !dbg !2623
  %high_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 0, !dbg !2624
  %3 = load i32, i32* %high_rate, align 4, !dbg !2624
  %BIT_RATE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !2626
  %4 = load i32, i32* %BIT_RATE, align 4, !dbg !2626
  %cmp = icmp slt i32 %3, %4, !dbg !2627
  br i1 %cmp, label %if.then, label %if.end, !dbg !2628

if.then:                                          ; preds = %entry
  %BIT_RATE4 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !2629
  %5 = load i32, i32* %BIT_RATE4, align 4, !dbg !2629
  %high_rate5 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 0, !dbg !2631
  store i32 %5, i32* %high_rate5, align 4, !dbg !2632
  br label %if.end, !dbg !2633

if.end:                                           ; preds = %if.then, %entry
  %BIT_RATE6 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !2634
  %6 = load i32, i32* %BIT_RATE6, align 4, !dbg !2634
  %low_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !2636
  %7 = load i32, i32* %low_rate, align 4, !dbg !2636
  %cmp7 = icmp slt i32 %6, %7, !dbg !2637
  br i1 %cmp7, label %if.then9, label %if.else, !dbg !2638

if.then9:                                         ; preds = %if.end
  %BIT_RATE10 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !2639
  %8 = load i32, i32* %BIT_RATE10, align 4, !dbg !2639
  %low_rate11 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !2641
  store i32 %8, i32* %low_rate11, align 4, !dbg !2642
  br label %if.end19, !dbg !2643

if.else:                                          ; preds = %if.end
  %low_rate12 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !2644
  %9 = load i32, i32* %low_rate12, align 4, !dbg !2644
  %cmp13 = icmp eq i32 %9, 0, !dbg !2646
  br i1 %cmp13, label %if.then15, label %if.end18, !dbg !2647

if.then15:                                        ; preds = %if.else
  %BIT_RATE16 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !2648
  %10 = load i32, i32* %BIT_RATE16, align 4, !dbg !2648
  %low_rate17 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !2650
  store i32 %10, i32* %low_rate17, align 4, !dbg !2651
  br label %if.end18, !dbg !2652

if.end18:                                         ; preds = %if.then15, %if.else
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.then9
  %BIT_RATE20 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !2653
  %11 = load i32, i32* %BIT_RATE20, align 4, !dbg !2653
  %sum_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 2, !dbg !2654
  %12 = load i32, i32* %sum_rate, align 4, !dbg !2655
  %add21 = add nsw i32 %12, %11, !dbg !2655
  store i32 %add21, i32* %sum_rate, align 4, !dbg !2655
  ret i32 1, !dbg !2656
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @print_frame_info(%struct.__anonstruct_frame_info_32* %mp3_i, %struct.__anonstruct_gen_info_27* %file_info) #0 !dbg !2657 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_frame_info_32* %mp3_i, metadata !2660, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.value(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !2662, metadata !DIExpression()), !dbg !2661
  call void @llvm.dbg.declare(metadata !4, metadata !2663, metadata !DIExpression()), !dbg !2664
  call void @llvm.dbg.declare(metadata !4, metadata !2665, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.declare(metadata !4, metadata !2667, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.declare(metadata !4, metadata !2669, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.declare(metadata !4, metadata !2671, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.declare(metadata !4, metadata !2673, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.declare(metadata !4, metadata !2675, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.declare(metadata !4, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.declare(metadata !4, metadata !2679, metadata !DIExpression()), !dbg !2680
  call void @llvm.dbg.declare(metadata !4, metadata !2681, metadata !DIExpression()), !dbg !2682
  call void @llvm.dbg.declare(metadata !4, metadata !2683, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.declare(metadata !4, metadata !2685, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.declare(metadata !4, metadata !2687, metadata !DIExpression()), !dbg !2688
  call void @llvm.dbg.declare(metadata !4, metadata !2689, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.declare(metadata !4, metadata !2691, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.declare(metadata !4, metadata !2693, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.declare(metadata !4, metadata !2695, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.declare(metadata !4, metadata !2697, metadata !DIExpression()), !dbg !2698
  call void @llvm.dbg.declare(metadata !4, metadata !2699, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.declare(metadata !4, metadata !2701, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.declare(metadata !4, metadata !2703, metadata !DIExpression()), !dbg !2704
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !2705
  %good_frame_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !2709
  %0 = load i32, i32* %good_frame_count, align 4, !dbg !2709
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i32 %0), !dbg !2711
  %byte_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !2712
  %1 = load i32, i32* %byte_count, align 8, !dbg !2712
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i32 0, i32 0), i32 %1), !dbg !2714
  %FRAME_LENGTH = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 0, !dbg !2715
  %2 = load i32, i32* %FRAME_LENGTH, align 4, !dbg !2715
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i32 0, i32 0), i32 %2), !dbg !2717
  %FRAME_DATA_LENGTH = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 1, !dbg !2718
  %3 = load i32, i32* %FRAME_DATA_LENGTH, align 4, !dbg !2718
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i32 0, i32 0), i32 %3), !dbg !2720
  %BIT_RATE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !2721
  %4 = load i32, i32* %BIT_RATE, align 4, !dbg !2721
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 %4), !dbg !2723
  %SAMPLE_FREQ = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 3, !dbg !2724
  %5 = load i32, i32* %SAMPLE_FREQ, align 4, !dbg !2724
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.21, i32 0, i32 0), i32 %5), !dbg !2726
  %BIN_STRING = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 28, !dbg !2727
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %BIN_STRING, i32 0, i32 0, !dbg !2729
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* %arraydecay), !dbg !2730
  %BIN_STRING8 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 28, !dbg !2731
  %arraydecay9 = getelementptr inbounds [33 x i8], [33 x i8]* %BIN_STRING8, i32 0, i32 0, !dbg !2733
  %call10 = call i32 @strlen(i8* %arraydecay9) #9, !dbg !2734
  call void @llvm.dbg.value(metadata i32 %call10, metadata !2735, metadata !DIExpression()), !dbg !2661
  %conv = zext i32 %call10 to i64, !dbg !2736
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i64 %conv), !dbg !2738
  %INT_HEADER = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 29, !dbg !2739
  %6 = load i32, i32* %INT_HEADER, align 4, !dbg !2739
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i32 %6), !dbg !2741
  %byte_count13 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !2742
  %7 = load i32, i32* %byte_count13, align 8, !dbg !2742
  %FRAME_LENGTH14 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 0, !dbg !2744
  %8 = load i32, i32* %FRAME_LENGTH14, align 4, !dbg !2744
  %add = add nsw i32 %7, %8, !dbg !2745
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.28, i32 0, i32 0), i32 %add), !dbg !2746
  ret i32 1, !dbg !2747
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @scan_file(%struct._IO_FILE* %fp, i8* %filename, %struct.__anonstruct_meta_options_29* %flag_options, %struct.__anonstruct_command_flags_30* %flags) #0 !dbg !2748 {
entry:
  %possible_mp3_tag = alloca [128 x i8], align 16
  %header_value = alloca i32, align 4
  %mp3_i = alloca %struct.__anonstruct_frame_info_32, align 4
  %vbr_info = alloca %struct.__anonstruct_vbr_data_28, align 4
  %song_time = alloca %struct.__anonstruct_mp3_time_29, align 4
  %first_mp3_frame = alloca %struct.__anonstruct_frame_info_32, align 8
  %id3_tag = alloca %struct.__anonstruct_id3_tag_info_33, align 2
  %file_info = alloca %struct.__anonstruct_gen_info_27, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !2751, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8* %filename, metadata !2753, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata %struct.__anonstruct_meta_options_29* %flag_options, metadata !2754, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata %struct.__anonstruct_command_flags_30* %flags, metadata !2755, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.declare(metadata [128 x i8]* %possible_mp3_tag, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @llvm.dbg.declare(metadata i32* %header_value, metadata !2758, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_frame_info_32* %mp3_i, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_vbr_data_28* %vbr_info, metadata !2762, metadata !DIExpression()), !dbg !2763
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_mp3_time_29* %song_time, metadata !2764, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_frame_info_32* %first_mp3_frame, metadata !2766, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_id3_tag_info_33* %id3_tag, metadata !2768, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata !4, metadata !2772, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.declare(metadata !4, metadata !2774, metadata !DIExpression()), !dbg !2775
  call void @llvm.dbg.declare(metadata !4, metadata !2776, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.declare(metadata !4, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata !4, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.declare(metadata !4, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.declare(metadata !4, metadata !2784, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.declare(metadata !4, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.declare(metadata !4, metadata !2788, metadata !DIExpression()), !dbg !2789
  call void @llvm.dbg.declare(metadata !4, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @llvm.dbg.declare(metadata !4, metadata !2792, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.declare(metadata !4, metadata !2794, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.declare(metadata !4, metadata !2796, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.declare(metadata !4, metadata !2798, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.declare(metadata !4, metadata !2800, metadata !DIExpression()), !dbg !2801
  call void @llvm.dbg.declare(metadata !4, metadata !2802, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.declare(metadata !4, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata !4, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata !4, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.declare(metadata !4, metadata !2810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.declare(metadata !4, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.declare(metadata !4, metadata !2814, metadata !DIExpression()), !dbg !2815
  call void @llvm.dbg.declare(metadata !4, metadata !2816, metadata !DIExpression()), !dbg !2817
  call void @llvm.dbg.declare(metadata !4, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.declare(metadata !4, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata !4, metadata !2822, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.declare(metadata !4, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.declare(metadata !4, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @llvm.dbg.declare(metadata !4, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata !4, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata !4, metadata !2832, metadata !DIExpression()), !dbg !2833
  call void @llvm.dbg.declare(metadata !4, metadata !2834, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.declare(metadata !4, metadata !2836, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.declare(metadata !4, metadata !2838, metadata !DIExpression()), !dbg !2839
  call void @llvm.dbg.declare(metadata !4, metadata !2840, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.declare(metadata !4, metadata !2842, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.declare(metadata !4, metadata !2844, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.declare(metadata !4, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata !4, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata !4, metadata !2850, metadata !DIExpression()), !dbg !2851
  call void @llvm.dbg.declare(metadata !4, metadata !2852, metadata !DIExpression()), !dbg !2853
  call void @llvm.dbg.declare(metadata !4, metadata !2854, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.declare(metadata !4, metadata !2856, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.declare(metadata !4, metadata !2858, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.declare(metadata !4, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.declare(metadata !4, metadata !2862, metadata !DIExpression()), !dbg !2863
  call void @llvm.dbg.declare(metadata !4, metadata !2864, metadata !DIExpression()), !dbg !2865
  call void @llvm.dbg.declare(metadata !4, metadata !2866, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.declare(metadata !4, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.declare(metadata !4, metadata !2870, metadata !DIExpression()), !dbg !2871
  call void @llvm.dbg.declare(metadata !4, metadata !2872, metadata !DIExpression()), !dbg !2873
  call void @llvm.dbg.declare(metadata !4, metadata !2874, metadata !DIExpression()), !dbg !2875
  call void @llvm.dbg.declare(metadata !4, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata !4, metadata !2878, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.declare(metadata !4, metadata !2880, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.declare(metadata !4, metadata !2882, metadata !DIExpression()), !dbg !2883
  call void @llvm.dbg.declare(metadata !4, metadata !2884, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.declare(metadata !4, metadata !2886, metadata !DIExpression()), !dbg !2887
  call void @llvm.dbg.declare(metadata !4, metadata !2888, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.declare(metadata !4, metadata !2890, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.declare(metadata !4, metadata !2892, metadata !DIExpression()), !dbg !2893
  call void @llvm.dbg.declare(metadata !4, metadata !2894, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.declare(metadata !4, metadata !2896, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.declare(metadata !4, metadata !2898, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.declare(metadata !4, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata !4, metadata !2902, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.declare(metadata !4, metadata !2904, metadata !DIExpression()), !dbg !2905
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2907, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 0, metadata !2908, metadata !DIExpression()), !dbg !2752
  store i32 0, i32* %header_value, align 4, !dbg !2909
  call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2752
  call void @init_frame_struct(%struct.__anonstruct_frame_info_32* %first_mp3_frame), !dbg !2914
  call void @init_vbr_tag_struct(%struct.__anonstruct_vbr_data_28* %vbr_info), !dbg !2916
  call void @init_gen_info_struct(%struct.__anonstruct_gen_info_27* %file_info), !dbg !2918
  br label %while.body, !dbg !2920

while.body:                                       ; preds = %if.end357, %entry
  %found_first_frame.0 = phi i32 [ 0, %entry ], [ %found_first_frame.3, %if.end357 ], !dbg !2923
  %found_valid_header.0 = phi i8 [ 1, %entry ], [ %found_valid_header.4, %if.end357 ], !dbg !2923
  call void @llvm.dbg.value(metadata i8 %found_valid_header.0, metadata !2912, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %found_first_frame.0, metadata !2908, metadata !DIExpression()), !dbg !2752
  br label %while_continue___4, !dbg !2924

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !2924

while_continue:                                   ; preds = %while_continue___4
  %tobool = icmp ne i32 0, 0, !dbg !2925
  br i1 %tobool, label %if.then, label %if.end, !dbg !2928

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2929

if.end:                                           ; preds = %while_continue
  %bflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 1, !dbg !2931
  %0 = load i32, i32* %bflag, align 4, !dbg !2931
  %tobool1 = icmp ne i32 %0, 0, !dbg !2933
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2934

if.then2:                                         ; preds = %if.end
  br label %_L, !dbg !2935

if.else:                                          ; preds = %if.end
  %aflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 0, !dbg !2937
  %1 = load i32, i32* %aflag, align 4, !dbg !2937
  %tobool3 = icmp ne i32 %1, 0, !dbg !2939
  br i1 %tobool3, label %if.then4, label %if.end11, !dbg !2933

if.then4:                                         ; preds = %if.else
  br label %_L, !dbg !2940

_L:                                               ; preds = %if.then4, %if.then2
  %bflag5 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 1, !dbg !2941
  %2 = load i32, i32* %bflag5, align 4, !dbg !2941
  %tobool6 = icmp ne i32 %2, 0, !dbg !2944
  br i1 %tobool6, label %if.then7, label %if.end10, !dbg !2945

if.then7:                                         ; preds = %_L
  %byte_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !2946
  %3 = load i32, i32* %byte_count, align 8, !dbg !2946
  %byte_limit = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 0, !dbg !2949
  %4 = load i32, i32* %byte_limit, align 4, !dbg !2949
  %cmp = icmp sgt i32 %3, %4, !dbg !2950
  br i1 %cmp, label %if.then8, label %if.end9, !dbg !2951

if.then8:                                         ; preds = %if.then7
  br label %while_break, !dbg !2952

if.end9:                                          ; preds = %if.then7
  br label %if.end10, !dbg !2954

if.end10:                                         ; preds = %if.end9, %_L
  br label %if.end11, !dbg !2955

if.end11:                                         ; preds = %if.end10, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  %tobool13 = icmp ne i8 %found_valid_header.0, 0, !dbg !2956
  br i1 %tobool13, label %if.else29, label %if.then14, !dbg !2958

if.then14:                                        ; preds = %if.end12
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !2959
  %call = call i32 @get_char_from_file(%struct._IO_FILE* %fp, i32* %header_value, %struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_command_flags_30* %flags, i8* %arraydecay), !dbg !2963
  call void @llvm.dbg.value(metadata i32 %call, metadata !2964, metadata !DIExpression()), !dbg !2752
  %tobool15 = icmp ne i32 %call, 0, !dbg !2965
  br i1 %tobool15, label %if.then16, label %if.else27, !dbg !2967

if.then16:                                        ; preds = %if.then14
  %ssflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !2968
  %5 = load i32, i32* %ssflag, align 4, !dbg !2968
  %tobool17 = icmp ne i32 %5, 0, !dbg !2971
  br i1 %tobool17, label %if.end26, label %if.then18, !dbg !2972

if.then18:                                        ; preds = %if.then16
  %sflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !2973
  %6 = load i32, i32* %sflag, align 4, !dbg !2973
  %tobool19 = icmp ne i32 %6, 0, !dbg !2976
  br i1 %tobool19, label %if.then20, label %if.end25, !dbg !2977

if.then20:                                        ; preds = %if.then18
  %fflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !2978
  %7 = load i32, i32* %fflag, align 4, !dbg !2978
  %tobool21 = icmp ne i32 %7, 0, !dbg !2981
  br i1 %tobool21, label %if.end24, label %if.then22, !dbg !2982

if.then22:                                        ; preds = %if.then20
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2983
  %9 = load i32, i32* %header_value, align 4, !dbg !2987
  %and = and i32 %9, 255, !dbg !2988
  %call23 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 %and), !dbg !2989
  br label %if.end24, !dbg !2990

if.end24:                                         ; preds = %if.then22, %if.then20
  br label %if.end25, !dbg !2991

if.end25:                                         ; preds = %if.end24, %if.then18
  br label %if.end26, !dbg !2992

if.end26:                                         ; preds = %if.end25, %if.then16
  br label %if.end28, !dbg !2993

if.else27:                                        ; preds = %if.then14
  br label %while_break, !dbg !2994

if.end28:                                         ; preds = %if.end26
  br label %if.end55, !dbg !2996

if.else29:                                        ; preds = %if.end12
  store i32 0, i32* %header_value, align 4, !dbg !2997
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while.body31, !dbg !2999

while.body31:                                     ; preds = %if.end54, %if.else29
  %counter.0 = phi i32 [ 0, %if.else29 ], [ %inc, %if.end54 ], !dbg !3002
  call void @llvm.dbg.value(metadata i32 %counter.0, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while_continue___5, !dbg !3003

while_continue___5:                               ; preds = %while.body31
  br label %while_continue___0, !dbg !3003

while_continue___0:                               ; preds = %while_continue___5
  %cmp32 = icmp slt i32 %counter.0, 4, !dbg !3004
  br i1 %cmp32, label %if.end34, label %if.then33, !dbg !3007

if.then33:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !3008

if.end34:                                         ; preds = %while_continue___0
  %arraydecay35 = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !3010
  %call36 = call i32 @get_char_from_file(%struct._IO_FILE* %fp, i32* %header_value, %struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_command_flags_30* %flags, i8* %arraydecay35), !dbg !3013
  call void @llvm.dbg.value(metadata i32 %call36, metadata !3014, metadata !DIExpression()), !dbg !2752
  %tobool37 = icmp ne i32 %call36, 0, !dbg !3015
  br i1 %tobool37, label %if.then38, label %if.else53, !dbg !3017

if.then38:                                        ; preds = %if.end34
  %ssflag39 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !3018
  %10 = load i32, i32* %ssflag39, align 4, !dbg !3018
  %tobool40 = icmp ne i32 %10, 0, !dbg !3021
  br i1 %tobool40, label %if.end52, label %if.then41, !dbg !3022

if.then41:                                        ; preds = %if.then38
  %sflag42 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3023
  %11 = load i32, i32* %sflag42, align 4, !dbg !3023
  %tobool43 = icmp ne i32 %11, 0, !dbg !3026
  br i1 %tobool43, label %if.then44, label %if.end51, !dbg !3027

if.then44:                                        ; preds = %if.then41
  %fflag45 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !3028
  %12 = load i32, i32* %fflag45, align 4, !dbg !3028
  %tobool46 = icmp ne i32 %12, 0, !dbg !3031
  br i1 %tobool46, label %if.end50, label %if.then47, !dbg !3032

if.then47:                                        ; preds = %if.then44
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3033
  %14 = load i32, i32* %header_value, align 4, !dbg !3037
  %and48 = and i32 %14, 255, !dbg !3038
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 %and48), !dbg !3039
  br label %if.end50, !dbg !3040

if.end50:                                         ; preds = %if.then47, %if.then44
  br label %if.end51, !dbg !3041

if.end51:                                         ; preds = %if.end50, %if.then41
  br label %if.end52, !dbg !3042

if.end52:                                         ; preds = %if.end51, %if.then38
  br label %if.end54, !dbg !3043

if.else53:                                        ; preds = %if.end34
  br label %while_break___0, !dbg !3044

if.end54:                                         ; preds = %if.end52
  %inc = add nsw i32 %counter.0, 1, !dbg !3046
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while.body31, !dbg !2999, !llvm.loop !3047

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !3049

while_break___0:                                  ; preds = %while_break___5, %if.else53, %if.then33
  br label %if.end55

if.end55:                                         ; preds = %while_break___0, %if.end28
  %15 = load i32, i32* %header_value, align 4, !dbg !3050
  %shr = lshr i32 %15, 21, !dbg !3052
  %and56 = and i32 %shr, 2047, !dbg !3053
  %cmp57 = icmp eq i32 %and56, 2047, !dbg !3054
  br i1 %cmp57, label %if.then58, label %if.else254, !dbg !3055

if.then58:                                        ; preds = %if.end55
  call void @llvm.dbg.value(metadata i8 1, metadata !2913, metadata !DIExpression()), !dbg !2752
  call void @init_frame_struct(%struct.__anonstruct_frame_info_32* %mp3_i), !dbg !3056
  %call59 = call i32 @check_header_value(i32* %header_value, i8* %filename, %struct.__anonstruct_frame_info_32* %mp3_i), !dbg !3060
  call void @llvm.dbg.value(metadata i32 %call59, metadata !3062, metadata !DIExpression()), !dbg !2752
  %tobool60 = icmp ne i32 %call59, 0, !dbg !3063
  br i1 %tobool60, label %if.then61, label %if.else223, !dbg !3065

if.then61:                                        ; preds = %if.then58
  call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2752
  %good_frame_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3066
  %16 = load i32, i32* %good_frame_count, align 4, !dbg !3066
  %cmp62 = icmp sgt i32 %16, 0, !dbg !3069
  br i1 %cmp62, label %if.then63, label %if.else91, !dbg !3070

if.then63:                                        ; preds = %if.then61
  %next_expected_frame = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3071
  %17 = load i32, i32* %next_expected_frame, align 4, !dbg !3071
  %byte_count64 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3074
  %18 = load i32, i32* %byte_count64, align 8, !dbg !3074
  %cmp65 = icmp ne i32 %17, %18, !dbg !3075
  br i1 %cmp65, label %if.then66, label %if.else89, !dbg !3076

if.then66:                                        ; preds = %if.then63
  %bad_frame_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 2, !dbg !3077
  %19 = load i32, i32* %bad_frame_count, align 8, !dbg !3080
  %inc67 = add nsw i32 %19, 1, !dbg !3080
  store i32 %inc67, i32* %bad_frame_count, align 8, !dbg !3080
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3081
  %next_expected_frame68 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3083
  %21 = load i32, i32* %next_expected_frame68, align 4, !dbg !3083
  %next_expected_frame69 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3084
  %22 = load i32, i32* %next_expected_frame69, align 4, !dbg !3084
  %byte_count70 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3085
  %23 = load i32, i32* %byte_count70, align 8, !dbg !3085
  %byte_count71 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3086
  %24 = load i32, i32* %byte_count71, align 8, !dbg !3086
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.30, i32 0, i32 0), i32 %21, i32 %22, i32 %23, i32 %24), !dbg !3087
  %qflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 6, !dbg !3088
  %25 = load i32, i32* %qflag, align 4, !dbg !3088
  %tobool73 = icmp ne i32 %25, 0, !dbg !3090
  br i1 %tobool73, label %if.then74, label %if.end88, !dbg !3091

if.then74:                                        ; preds = %if.then66
  %frame_sequence_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3092
  %26 = load i32, i32* %frame_sequence_count, align 4, !dbg !3092
  %cmp75 = icmp sgt i32 %26, 0, !dbg !3095
  br i1 %cmp75, label %if.then76, label %if.end87, !dbg !3096

if.then76:                                        ; preds = %if.then74
  %min_frame_seq = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 1, !dbg !3097
  %27 = load i32, i32* %min_frame_seq, align 4, !dbg !3097
  %frame_sequence_count77 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3100
  %28 = load i32, i32* %frame_sequence_count77, align 4, !dbg !3100
  %cmp78 = icmp sgt i32 %27, %28, !dbg !3101
  br i1 %cmp78, label %if.then79, label %if.end86, !dbg !3102

if.then79:                                        ; preds = %if.then76
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3103
  %frame_sequence_count80 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3107
  %30 = load i32, i32* %frame_sequence_count80, align 4, !dbg !3107
  %min_frame_seq81 = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 1, !dbg !3108
  %31 = load i32, i32* %min_frame_seq81, align 4, !dbg !3108
  %next_expected_frame82 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3109
  %32 = load i32, i32* %next_expected_frame82, align 4, !dbg !3109
  %next_expected_frame83 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3110
  %33 = load i32, i32* %next_expected_frame83, align 4, !dbg !3110
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.31, i32 0, i32 0), i32 %30, i32 %31, i32 %32, i32 %33), !dbg !3111
  %frame_sequence_count85 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3112
  store i32 0, i32* %frame_sequence_count85, align 4, !dbg !3113
  br label %if.end86, !dbg !3114

if.end86:                                         ; preds = %if.then79, %if.then76
  br label %if.end87, !dbg !3115

if.end87:                                         ; preds = %if.end86, %if.then74
  br label %if.end88, !dbg !3116

if.end88:                                         ; preds = %if.end87, %if.then66
  br label %if.end90, !dbg !3117

if.else89:                                        ; preds = %if.then63
  br label %_L___0, !dbg !3118

if.end90:                                         ; preds = %if.end88
  br label %if.end105, !dbg !3120

if.else91:                                        ; preds = %if.then61
  br label %_L___0, !dbg !3120

_L___0:                                           ; preds = %if.else91, %if.else89
  %next_expected_frame92 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3121
  %34 = load i32, i32* %next_expected_frame92, align 4, !dbg !3121
  %byte_count93 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3123
  %35 = load i32, i32* %byte_count93, align 8, !dbg !3123
  %cmp94 = icmp eq i32 %34, %35, !dbg !3124
  br i1 %cmp94, label %if.then95, label %if.else100, !dbg !3125

if.then95:                                        ; preds = %_L___0
  %good_frame_count96 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3126
  %36 = load i32, i32* %good_frame_count96, align 4, !dbg !3128
  %inc97 = add nsw i32 %36, 1, !dbg !3128
  store i32 %inc97, i32* %good_frame_count96, align 4, !dbg !3128
  %frame_sequence_count98 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3129
  %37 = load i32, i32* %frame_sequence_count98, align 4, !dbg !3130
  %inc99 = add nsw i32 %37, 1, !dbg !3130
  store i32 %inc99, i32* %frame_sequence_count98, align 4, !dbg !3130
  br label %if.end104, !dbg !3131

if.else100:                                       ; preds = %_L___0
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3132
  %byte_count101 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3136
  %39 = load i32, i32* %byte_count101, align 8, !dbg !3136
  %next_expected_frame102 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3137
  %40 = load i32, i32* %next_expected_frame102, align 4, !dbg !3137
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %38, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.32, i32 0, i32 0), i32 %39, i32 %40), !dbg !3138
  br label %if.end104

if.end104:                                        ; preds = %if.else100, %if.then95
  br label %if.end105

if.end105:                                        ; preds = %if.end104, %if.end90
  %ssflag106 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !3139
  %41 = load i32, i32* %ssflag106, align 4, !dbg !3139
  %tobool107 = icmp ne i32 %41, 0, !dbg !3141
  br i1 %tobool107, label %if.end125, label %if.then108, !dbg !3142

if.then108:                                       ; preds = %if.end105
  %sflag109 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3143
  %42 = load i32, i32* %sflag109, align 4, !dbg !3143
  %tobool110 = icmp ne i32 %42, 0, !dbg !3146
  br i1 %tobool110, label %if.then111, label %if.end124, !dbg !3147

if.then111:                                       ; preds = %if.then108
  %fflag112 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !3148
  %43 = load i32, i32* %fflag112, align 4, !dbg !3148
  %tobool113 = icmp ne i32 %43, 0, !dbg !3151
  br i1 %tobool113, label %if.then114, label %if.end123, !dbg !3152

if.then114:                                       ; preds = %if.then111
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3153
  %45 = load i32, i32* %header_value, align 4, !dbg !3157
  %shr115 = lshr i32 %45, 24, !dbg !3158
  %and116 = and i32 %shr115, 255, !dbg !3159
  %46 = load i32, i32* %header_value, align 4, !dbg !3160
  %shr117 = lshr i32 %46, 16, !dbg !3161
  %and118 = and i32 %shr117, 255, !dbg !3162
  %47 = load i32, i32* %header_value, align 4, !dbg !3163
  %shr119 = lshr i32 %47, 8, !dbg !3164
  %and120 = and i32 %shr119, 255, !dbg !3165
  %48 = load i32, i32* %header_value, align 4, !dbg !3166
  %and121 = and i32 %48, 255, !dbg !3167
  %call122 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %44, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 %and116, i32 %and118, i32 %and120, i32 %and121), !dbg !3168
  br label %if.end123, !dbg !3169

if.end123:                                        ; preds = %if.then114, %if.then111
  br label %if.end124, !dbg !3170

if.end124:                                        ; preds = %if.end123, %if.then108
  br label %if.end125, !dbg !3171

if.end125:                                        ; preds = %if.end124, %if.end105
  %PROT_BIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 13, !dbg !3172
  %49 = load i16, i16* %PROT_BIT, align 4, !dbg !3172
  %tobool126 = icmp ne i16 %49, 0, !dbg !3174
  br i1 %tobool126, label %if.then127, label %if.end171, !dbg !3175

if.then127:                                       ; preds = %if.end125
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while.body129, !dbg !3176

while.body129:                                    ; preds = %if.end152, %if.then127
  %counter.1 = phi i32 [ 0, %if.then127 ], [ %inc153, %if.end152 ], !dbg !3180
  call void @llvm.dbg.value(metadata i32 %counter.1, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while_continue___6, !dbg !3181

while_continue___6:                               ; preds = %while.body129
  br label %while_continue___1, !dbg !3181

while_continue___1:                               ; preds = %while_continue___6
  %cmp130 = icmp slt i32 %counter.1, 2, !dbg !3182
  br i1 %cmp130, label %if.end132, label %if.then131, !dbg !3185

if.then131:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !3186

if.end132:                                        ; preds = %while_continue___1
  %arraydecay133 = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !3188
  %call134 = call i32 @get_char_from_file(%struct._IO_FILE* %fp, i32* %header_value, %struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_command_flags_30* %flags, i8* %arraydecay133), !dbg !3191
  call void @llvm.dbg.value(metadata i32 %call134, metadata !3192, metadata !DIExpression()), !dbg !2752
  %tobool135 = icmp ne i32 %call134, 0, !dbg !3193
  br i1 %tobool135, label %if.then136, label %if.else151, !dbg !3195

if.then136:                                       ; preds = %if.end132
  %ssflag137 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !3196
  %50 = load i32, i32* %ssflag137, align 4, !dbg !3196
  %tobool138 = icmp ne i32 %50, 0, !dbg !3199
  br i1 %tobool138, label %if.end150, label %if.then139, !dbg !3200

if.then139:                                       ; preds = %if.then136
  %sflag140 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3201
  %51 = load i32, i32* %sflag140, align 4, !dbg !3201
  %tobool141 = icmp ne i32 %51, 0, !dbg !3204
  br i1 %tobool141, label %if.then142, label %if.end149, !dbg !3205

if.then142:                                       ; preds = %if.then139
  %fflag143 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !3206
  %52 = load i32, i32* %fflag143, align 4, !dbg !3206
  %tobool144 = icmp ne i32 %52, 0, !dbg !3209
  br i1 %tobool144, label %if.end148, label %if.then145, !dbg !3210

if.then145:                                       ; preds = %if.then142
  %53 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3211
  %54 = load i32, i32* %header_value, align 4, !dbg !3215
  %and146 = and i32 %54, 255, !dbg !3216
  %call147 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %53, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 %and146), !dbg !3217
  br label %if.end148, !dbg !3218

if.end148:                                        ; preds = %if.then145, %if.then142
  br label %if.end149, !dbg !3219

if.end149:                                        ; preds = %if.end148, %if.then139
  br label %if.end150, !dbg !3220

if.end150:                                        ; preds = %if.end149, %if.then136
  br label %if.end152, !dbg !3221

if.else151:                                       ; preds = %if.end132
  br label %while_break___1, !dbg !3222

if.end152:                                        ; preds = %if.end150
  %inc153 = add nsw i32 %counter.1, 1, !dbg !3224
  call void @llvm.dbg.value(metadata i32 %inc153, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while.body129, !dbg !3176, !llvm.loop !3225

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !3227

while_break___1:                                  ; preds = %while_break___6, %if.else151, %if.then131
  %55 = load i32, i32* %header_value, align 4, !dbg !3228
  %and154 = and i32 %55, 65535, !dbg !3229
  %conv = trunc i32 %and154 to i16, !dbg !3230
  %CRC16_VALUE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 30, !dbg !3231
  store i16 %conv, i16* %CRC16_VALUE, align 4, !dbg !3232
  %ssflag155 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !3233
  %56 = load i32, i32* %ssflag155, align 4, !dbg !3233
  %tobool156 = icmp ne i32 %56, 0, !dbg !3235
  br i1 %tobool156, label %if.end170, label %if.then157, !dbg !3236

if.then157:                                       ; preds = %while_break___1
  %sflag158 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3237
  %57 = load i32, i32* %sflag158, align 4, !dbg !3237
  %tobool159 = icmp ne i32 %57, 0, !dbg !3240
  br i1 %tobool159, label %if.then160, label %if.end169, !dbg !3241

if.then160:                                       ; preds = %if.then157
  %fflag161 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !3242
  %58 = load i32, i32* %fflag161, align 4, !dbg !3242
  %tobool162 = icmp ne i32 %58, 0, !dbg !3245
  br i1 %tobool162, label %if.then163, label %if.end168, !dbg !3246

if.then163:                                       ; preds = %if.then160
  %59 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3247
  %60 = load i32, i32* %header_value, align 4, !dbg !3251
  %shr164 = lshr i32 %60, 8, !dbg !3252
  %and165 = and i32 %shr164, 255, !dbg !3253
  %61 = load i32, i32* %header_value, align 4, !dbg !3254
  %and166 = and i32 %61, 255, !dbg !3255
  %call167 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 %and165, i32 %and166), !dbg !3256
  br label %if.end168, !dbg !3257

if.end168:                                        ; preds = %if.then163, %if.then160
  br label %if.end169, !dbg !3258

if.end169:                                        ; preds = %if.end168, %if.then157
  br label %if.end170, !dbg !3259

if.end170:                                        ; preds = %if.end169, %while_break___1
  br label %if.end171, !dbg !3260

if.end171:                                        ; preds = %if.end170, %if.end125
  %call172 = call i32 @check_vbr_and_time(%struct.__anonstruct_frame_info_32* %mp3_i, %struct.__anonstruct_vbr_data_28* %vbr_info, %struct.__anonstruct_gen_info_27* %file_info), !dbg !3261
  %good_frame_count173 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3264
  %62 = load i32, i32* %good_frame_count173, align 4, !dbg !3264
  %cmp174 = icmp sgt i32 %62, 0, !dbg !3266
  br i1 %cmp174, label %if.then176, label %if.end177, !dbg !3267

if.then176:                                       ; preds = %if.end171
  %63 = bitcast %struct.__anonstruct_frame_info_32* %first_mp3_frame to i8*, !dbg !3268
  %64 = bitcast %struct.__anonstruct_frame_info_32* %mp3_i to i8*, !dbg !3268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 112, i1 false), !dbg !3268
  call void @llvm.dbg.value(metadata i32 1, metadata !2908, metadata !DIExpression()), !dbg !2752
  br label %if.end177, !dbg !3270

if.end177:                                        ; preds = %if.then176, %if.end171
  %found_first_frame.1 = phi i32 [ 1, %if.then176 ], [ %found_first_frame.0, %if.end171 ], !dbg !2923
  call void @llvm.dbg.value(metadata i32 %found_first_frame.1, metadata !2908, metadata !DIExpression()), !dbg !2752
  %sflag178 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3271
  %65 = load i32, i32* %sflag178, align 4, !dbg !3271
  %tobool179 = icmp ne i32 %65, 0, !dbg !3273
  br i1 %tobool179, label %if.end190, label %if.then180, !dbg !3274

if.then180:                                       ; preds = %if.end177
  %vvflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 10, !dbg !3275
  %66 = load i32, i32* %vvflag, align 4, !dbg !3275
  %tobool181 = icmp ne i32 %66, 0, !dbg !3278
  br i1 %tobool181, label %if.then182, label %if.end189, !dbg !3279

if.then182:                                       ; preds = %if.then180
  %good_frame_count183 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3280
  %67 = load i32, i32* %good_frame_count183, align 4, !dbg !3280
  %cmp184 = icmp sgt i32 %67, 0, !dbg !3283
  br i1 %cmp184, label %if.then186, label %if.end188, !dbg !3284

if.then186:                                       ; preds = %if.then182
  %call187 = call i32 @print_frame_info(%struct.__anonstruct_frame_info_32* %mp3_i, %struct.__anonstruct_gen_info_27* %file_info), !dbg !3285
  br label %if.end188, !dbg !3289

if.end188:                                        ; preds = %if.then186, %if.then182
  br label %if.end189, !dbg !3290

if.end189:                                        ; preds = %if.end188, %if.then180
  br label %if.end190, !dbg !3291

if.end190:                                        ; preds = %if.end189, %if.end177
  %PROT_BIT191 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 13, !dbg !3292
  %68 = load i16, i16* %PROT_BIT191, align 4, !dbg !3292
  %tobool192 = icmp ne i16 %68, 0, !dbg !3294
  br i1 %tobool192, label %if.then193, label %if.else196, !dbg !3295

if.then193:                                       ; preds = %if.end190
  %byte_count194 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3296
  %69 = load i32, i32* %byte_count194, align 8, !dbg !3296
  %FRAME_LENGTH = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 0, !dbg !3298
  %70 = load i32, i32* %FRAME_LENGTH, align 4, !dbg !3298
  %add = add nsw i32 %69, %70, !dbg !3299
  %sub = sub nsw i32 %add, 2, !dbg !3300
  %next_expected_frame195 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3301
  store i32 %sub, i32* %next_expected_frame195, align 4, !dbg !3302
  br label %if.end201, !dbg !3303

if.else196:                                       ; preds = %if.end190
  %byte_count197 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3304
  %71 = load i32, i32* %byte_count197, align 8, !dbg !3304
  %FRAME_LENGTH198 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 0, !dbg !3306
  %72 = load i32, i32* %FRAME_LENGTH198, align 4, !dbg !3306
  %add199 = add nsw i32 %71, %72, !dbg !3307
  %next_expected_frame200 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3308
  store i32 %add199, i32* %next_expected_frame200, align 4, !dbg !3309
  br label %if.end201

if.end201:                                        ; preds = %if.else196, %if.then193
  %aflag202 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 0, !dbg !3310
  %73 = load i32, i32* %aflag202, align 4, !dbg !3310
  %tobool203 = icmp ne i32 %73, 0, !dbg !3312
  br i1 %tobool203, label %if.then204, label %if.else205, !dbg !3313

if.then204:                                       ; preds = %if.end201
  br label %_L___1, !dbg !3314

if.else205:                                       ; preds = %if.end201
  %bflag206 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 1, !dbg !3316
  %74 = load i32, i32* %bflag206, align 4, !dbg !3316
  %tobool207 = icmp ne i32 %74, 0, !dbg !3318
  br i1 %tobool207, label %if.then208, label %if.else220, !dbg !3312

if.then208:                                       ; preds = %if.else205
  %byte_limit209 = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 0, !dbg !3319
  %75 = load i32, i32* %byte_limit209, align 4, !dbg !3319
  %cmp210 = icmp sgt i32 %75, 0, !dbg !3322
  br i1 %cmp210, label %if.then212, label %if.else218, !dbg !3323

if.then212:                                       ; preds = %if.then208
  br label %_L___1, !dbg !3324

_L___1:                                           ; preds = %if.then212, %if.then204
  %arraydecay213 = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !3325
  %call214 = call i32 @move_to_next_frame(i8* %arraydecay213, %struct.__anonstruct_frame_info_32* %mp3_i, %struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_command_flags_30* %flags, %struct._IO_FILE* %fp), !dbg !3329
  call void @llvm.dbg.value(metadata i32 %call214, metadata !3330, metadata !DIExpression()), !dbg !2752
  %tobool215 = icmp ne i32 %call214, 0, !dbg !3331
  br i1 %tobool215, label %if.end217, label %if.then216, !dbg !3333

if.then216:                                       ; preds = %_L___1
  br label %while_break, !dbg !3334

if.end217:                                        ; preds = %_L___1
  br label %if.end219, !dbg !3336

if.else218:                                       ; preds = %if.then208
  br label %while_break, !dbg !3337

if.end219:                                        ; preds = %if.end217
  br label %if.end221, !dbg !3339

if.else220:                                       ; preds = %if.else205
  br label %while_break, !dbg !3340

if.end221:                                        ; preds = %if.end219
  br label %if.end222

if.end222:                                        ; preds = %if.end221
  br label %if.end253, !dbg !3342

if.else223:                                       ; preds = %if.then58
  %bad_frame_count224 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 2, !dbg !3343
  %76 = load i32, i32* %bad_frame_count224, align 8, !dbg !3345
  %inc225 = add nsw i32 %76, 1, !dbg !3345
  store i32 %inc225, i32* %bad_frame_count224, align 8, !dbg !3345
  %vflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 9, !dbg !3346
  %77 = load i32, i32* %vflag, align 4, !dbg !3346
  %tobool226 = icmp ne i32 %77, 0, !dbg !3348
  br i1 %tobool226, label %if.then227, label %if.end231, !dbg !3349

if.then227:                                       ; preds = %if.else223
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3350
  %79 = load i32, i32* %header_value, align 4, !dbg !3354
  %byte_count228 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3355
  %80 = load i32, i32* %byte_count228, align 8, !dbg !3355
  %byte_count229 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3356
  %81 = load i32, i32* %byte_count229, align 8, !dbg !3356
  %call230 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %78, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.35, i32 0, i32 0), i32 %79, i32 %80, i32 %81), !dbg !3357
  br label %if.end231, !dbg !3358

if.end231:                                        ; preds = %if.then227, %if.else223
  %qflag232 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 6, !dbg !3359
  %82 = load i32, i32* %qflag232, align 4, !dbg !3359
  %tobool233 = icmp ne i32 %82, 0, !dbg !3361
  br i1 %tobool233, label %if.then234, label %if.end252, !dbg !3362

if.then234:                                       ; preds = %if.end231
  %frame_sequence_count235 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3363
  %83 = load i32, i32* %frame_sequence_count235, align 4, !dbg !3363
  %cmp236 = icmp sgt i32 %83, 0, !dbg !3366
  br i1 %cmp236, label %if.then238, label %if.end251, !dbg !3367

if.then238:                                       ; preds = %if.then234
  %min_frame_seq239 = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 1, !dbg !3368
  %84 = load i32, i32* %min_frame_seq239, align 4, !dbg !3368
  %frame_sequence_count240 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3371
  %85 = load i32, i32* %frame_sequence_count240, align 4, !dbg !3371
  %cmp241 = icmp sgt i32 %84, %85, !dbg !3372
  br i1 %cmp241, label %if.then243, label %if.end250, !dbg !3373

if.then243:                                       ; preds = %if.then238
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3374
  %frame_sequence_count244 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3378
  %87 = load i32, i32* %frame_sequence_count244, align 4, !dbg !3378
  %min_frame_seq245 = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 1, !dbg !3379
  %88 = load i32, i32* %min_frame_seq245, align 4, !dbg !3379
  %next_expected_frame246 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3380
  %89 = load i32, i32* %next_expected_frame246, align 4, !dbg !3380
  %next_expected_frame247 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3381
  %90 = load i32, i32* %next_expected_frame247, align 4, !dbg !3381
  %call248 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %86, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.31, i32 0, i32 0), i32 %87, i32 %88, i32 %89, i32 %90), !dbg !3382
  %frame_sequence_count249 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3383
  store i32 0, i32* %frame_sequence_count249, align 4, !dbg !3384
  br label %if.end250, !dbg !3385

if.end250:                                        ; preds = %if.then243, %if.then238
  br label %if.end251, !dbg !3386

if.end251:                                        ; preds = %if.end250, %if.then234
  br label %if.end252, !dbg !3387

if.end252:                                        ; preds = %if.end251, %if.end231
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.end222
  %found_first_frame.2 = phi i32 [ %found_first_frame.1, %if.end222 ], [ %found_first_frame.0, %if.end252 ], !dbg !2923
  %found_valid_header.1 = phi i8 [ 1, %if.end222 ], [ %found_valid_header.0, %if.end252 ], !dbg !2923
  call void @llvm.dbg.value(metadata i8 %found_valid_header.1, metadata !2912, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %found_first_frame.2, metadata !2908, metadata !DIExpression()), !dbg !2752
  br label %if.end357, !dbg !3388

if.else254:                                       ; preds = %if.end55
  %file_pos = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 0, !dbg !3389
  %91 = load i32, i32* %file_pos, align 8, !dbg !3389
  %cmp255 = icmp eq i32 %91, 4, !dbg !3391
  br i1 %cmp255, label %if.then257, label %if.else355, !dbg !3392

if.then257:                                       ; preds = %if.else254
  %92 = load i32, i32* %header_value, align 4, !dbg !3393
  %and258 = and i32 %92, -256, !dbg !3396
  %cmp259 = icmp eq i32 %and258, 1229206272, !dbg !3397
  br i1 %cmp259, label %if.then261, label %if.else353, !dbg !3398

if.then261:                                       ; preds = %if.then257
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3399
  %call262 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %93, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i32 0, i32 0)), !dbg !3403
  %ID3V2 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 21, !dbg !3404
  store i16 1, i16* %ID3V2, align 4, !dbg !3405
  %eflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 2, !dbg !3406
  %94 = load i32, i32* %eflag, align 4, !dbg !3406
  %tobool263 = icmp ne i32 %94, 0, !dbg !3408
  br i1 %tobool263, label %if.then264, label %if.end288, !dbg !3409

if.then264:                                       ; preds = %if.then261
  %qflag265 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 6, !dbg !3410
  %95 = load i32, i32* %qflag265, align 4, !dbg !3410
  %tobool266 = icmp ne i32 %95, 0, !dbg !3413
  br i1 %tobool266, label %if.then267, label %if.end285, !dbg !3414

if.then267:                                       ; preds = %if.then264
  %frame_sequence_count268 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3415
  %96 = load i32, i32* %frame_sequence_count268, align 4, !dbg !3415
  %cmp269 = icmp sgt i32 %96, 0, !dbg !3418
  br i1 %cmp269, label %if.then271, label %if.end284, !dbg !3419

if.then271:                                       ; preds = %if.then267
  %min_frame_seq272 = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 1, !dbg !3420
  %97 = load i32, i32* %min_frame_seq272, align 4, !dbg !3420
  %frame_sequence_count273 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3423
  %98 = load i32, i32* %frame_sequence_count273, align 4, !dbg !3423
  %cmp274 = icmp sgt i32 %97, %98, !dbg !3424
  br i1 %cmp274, label %if.then276, label %if.end283, !dbg !3425

if.then276:                                       ; preds = %if.then271
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3426
  %frame_sequence_count277 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3430
  %100 = load i32, i32* %frame_sequence_count277, align 4, !dbg !3430
  %min_frame_seq278 = getelementptr inbounds %struct.__anonstruct_meta_options_29, %struct.__anonstruct_meta_options_29* %flag_options, i32 0, i32 1, !dbg !3431
  %101 = load i32, i32* %min_frame_seq278, align 4, !dbg !3431
  %next_expected_frame279 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3432
  %102 = load i32, i32* %next_expected_frame279, align 4, !dbg !3432
  %next_expected_frame280 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3433
  %103 = load i32, i32* %next_expected_frame280, align 4, !dbg !3433
  %call281 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %99, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.31, i32 0, i32 0), i32 %100, i32 %101, i32 %102, i32 %103), !dbg !3434
  %frame_sequence_count282 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 3, !dbg !3435
  store i32 0, i32* %frame_sequence_count282, align 4, !dbg !3436
  br label %if.end283, !dbg !3437

if.end283:                                        ; preds = %if.then276, %if.then271
  br label %if.end284, !dbg !3438

if.end284:                                        ; preds = %if.end283, %if.then267
  br label %if.end285, !dbg !3439

if.end285:                                        ; preds = %if.end284, %if.then264
  %bad_frame_count286 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 2, !dbg !3440
  %104 = load i32, i32* %bad_frame_count286, align 8, !dbg !3441
  %inc287 = add nsw i32 %104, 1, !dbg !3441
  store i32 %inc287, i32* %bad_frame_count286, align 8, !dbg !3441
  br label %if.end288, !dbg !3442

if.end288:                                        ; preds = %if.end285, %if.then261
  call void @llvm.dbg.value(metadata i32 0, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while.body290, !dbg !3443

while.body290:                                    ; preds = %if.end314, %if.end288
  %counter.2 = phi i32 [ 0, %if.end288 ], [ %inc315, %if.end314 ], !dbg !3446
  call void @llvm.dbg.value(metadata i32 %counter.2, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while_continue___7, !dbg !3447

while_continue___7:                               ; preds = %while.body290
  br label %while_continue___2, !dbg !3447

while_continue___2:                               ; preds = %while_continue___7
  %cmp291 = icmp slt i32 %counter.2, 6, !dbg !3448
  br i1 %cmp291, label %if.end294, label %if.then293, !dbg !3451

if.then293:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !3452

if.end294:                                        ; preds = %while_continue___2
  %arraydecay295 = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !3454
  %call296 = call i32 @get_char_from_file(%struct._IO_FILE* %fp, i32* %header_value, %struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_command_flags_30* %flags, i8* %arraydecay295), !dbg !3457
  call void @llvm.dbg.value(metadata i32 %call296, metadata !3458, metadata !DIExpression()), !dbg !2752
  %tobool297 = icmp ne i32 %call296, 0, !dbg !3459
  br i1 %tobool297, label %if.then298, label %if.else313, !dbg !3461

if.then298:                                       ; preds = %if.end294
  %ssflag299 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !3462
  %105 = load i32, i32* %ssflag299, align 4, !dbg !3462
  %tobool300 = icmp ne i32 %105, 0, !dbg !3465
  br i1 %tobool300, label %if.end312, label %if.then301, !dbg !3466

if.then301:                                       ; preds = %if.then298
  %sflag302 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3467
  %106 = load i32, i32* %sflag302, align 4, !dbg !3467
  %tobool303 = icmp ne i32 %106, 0, !dbg !3470
  br i1 %tobool303, label %if.then304, label %if.end311, !dbg !3471

if.then304:                                       ; preds = %if.then301
  %fflag305 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !3472
  %107 = load i32, i32* %fflag305, align 4, !dbg !3472
  %tobool306 = icmp ne i32 %107, 0, !dbg !3475
  br i1 %tobool306, label %if.end310, label %if.then307, !dbg !3476

if.then307:                                       ; preds = %if.then304
  %108 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3477
  %109 = load i32, i32* %header_value, align 4, !dbg !3481
  %and308 = and i32 %109, 255, !dbg !3482
  %call309 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 %and308), !dbg !3483
  br label %if.end310, !dbg !3484

if.end310:                                        ; preds = %if.then307, %if.then304
  br label %if.end311, !dbg !3485

if.end311:                                        ; preds = %if.end310, %if.then301
  br label %if.end312, !dbg !3486

if.end312:                                        ; preds = %if.end311, %if.then298
  br label %if.end314, !dbg !3487

if.else313:                                       ; preds = %if.end294
  br label %while_break___2, !dbg !3488

if.end314:                                        ; preds = %if.end312
  %inc315 = add nsw i32 %counter.2, 1, !dbg !3490
  call void @llvm.dbg.value(metadata i32 %inc315, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while.body290, !dbg !3443, !llvm.loop !3491

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !3493

while_break___2:                                  ; preds = %while_break___7, %if.else313, %if.then293
  %110 = load i32, i32* %header_value, align 4, !dbg !3494
  %shr316 = lshr i32 %110, 3, !dbg !3495
  %and317 = and i32 %shr316, 266338304, !dbg !3496
  %111 = load i32, i32* %header_value, align 4, !dbg !3497
  %shr318 = lshr i32 %111, 2, !dbg !3498
  %and319 = and i32 %shr318, 2080768, !dbg !3499
  %or = or i32 %and317, %and319, !dbg !3500
  %112 = load i32, i32* %header_value, align 4, !dbg !3501
  %shr320 = lshr i32 %112, 1, !dbg !3502
  %and321 = and i32 %shr320, 16256, !dbg !3503
  %or322 = or i32 %or, %and321, !dbg !3504
  %113 = load i32, i32* %header_value, align 4, !dbg !3505
  %and323 = and i32 %113, 127, !dbg !3506
  %or324 = or i32 %or322, %and323, !dbg !3507
  call void @llvm.dbg.value(metadata i32 %or324, metadata !2906, metadata !DIExpression()), !dbg !2752
  %add325 = add nsw i32 %or324, 14, !dbg !3508
  %next_expected_frame326 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 5, !dbg !3509
  store i32 %add325, i32* %next_expected_frame326, align 4, !dbg !3510
  br label %while.body328, !dbg !3511

while.body328:                                    ; preds = %if.end352, %while_break___2
  %counter.3 = phi i32 [ %or324, %while_break___2 ], [ %dec, %if.end352 ], !dbg !3446
  call void @llvm.dbg.value(metadata i32 %counter.3, metadata !2906, metadata !DIExpression()), !dbg !2752
  br label %while_continue___8, !dbg !3514

while_continue___8:                               ; preds = %while.body328
  br label %while_continue___3, !dbg !3514

while_continue___3:                               ; preds = %while_continue___8
  call void @llvm.dbg.value(metadata i32 %counter.3, metadata !3515, metadata !DIExpression()), !dbg !2752
  %dec = add nsw i32 %counter.3, -1, !dbg !3516
  call void @llvm.dbg.value(metadata i32 %dec, metadata !2906, metadata !DIExpression()), !dbg !2752
  %cmp329 = icmp sgt i32 %counter.3, 0, !dbg !3518
  br i1 %cmp329, label %if.end332, label %if.then331, !dbg !3520

if.then331:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !3521

if.end332:                                        ; preds = %while_continue___3
  %arraydecay333 = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !3523
  %call334 = call i32 @get_char_from_file(%struct._IO_FILE* %fp, i32* %header_value, %struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_command_flags_30* %flags, i8* %arraydecay333), !dbg !3526
  call void @llvm.dbg.value(metadata i32 %call334, metadata !3527, metadata !DIExpression()), !dbg !2752
  %tobool335 = icmp ne i32 %call334, 0, !dbg !3528
  br i1 %tobool335, label %if.then336, label %if.else351, !dbg !3530

if.then336:                                       ; preds = %if.end332
  %ssflag337 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 8, !dbg !3531
  %114 = load i32, i32* %ssflag337, align 4, !dbg !3531
  %tobool338 = icmp ne i32 %114, 0, !dbg !3534
  br i1 %tobool338, label %if.end350, label %if.then339, !dbg !3535

if.then339:                                       ; preds = %if.then336
  %sflag340 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3536
  %115 = load i32, i32* %sflag340, align 4, !dbg !3536
  %tobool341 = icmp ne i32 %115, 0, !dbg !3539
  br i1 %tobool341, label %if.then342, label %if.end349, !dbg !3540

if.then342:                                       ; preds = %if.then339
  %fflag343 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !3541
  %116 = load i32, i32* %fflag343, align 4, !dbg !3541
  %tobool344 = icmp ne i32 %116, 0, !dbg !3544
  br i1 %tobool344, label %if.end348, label %if.then345, !dbg !3545

if.then345:                                       ; preds = %if.then342
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3546
  %118 = load i32, i32* %header_value, align 4, !dbg !3550
  %and346 = and i32 %118, 255, !dbg !3551
  %call347 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %117, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.29, i32 0, i32 0), i32 %and346), !dbg !3552
  br label %if.end348, !dbg !3553

if.end348:                                        ; preds = %if.then345, %if.then342
  br label %if.end349, !dbg !3554

if.end349:                                        ; preds = %if.end348, %if.then339
  br label %if.end350, !dbg !3555

if.end350:                                        ; preds = %if.end349, %if.then336
  br label %if.end352, !dbg !3556

if.else351:                                       ; preds = %if.end332
  br label %while_break___3, !dbg !3557

if.end352:                                        ; preds = %if.end350
  br label %while.body328, !dbg !3511, !llvm.loop !3559

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !3561

while_break___3:                                  ; preds = %while_break___8, %if.else351, %if.then331
  call void @llvm.dbg.value(metadata i8 1, metadata !2912, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2752
  br label %if.end354, !dbg !3562

if.else353:                                       ; preds = %if.then257
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2752
  br label %if.end354

if.end354:                                        ; preds = %if.else353, %while_break___3
  %found_valid_header.2 = phi i8 [ 1, %while_break___3 ], [ 0, %if.else353 ], !dbg !3563
  call void @llvm.dbg.value(metadata i8 %found_valid_header.2, metadata !2912, metadata !DIExpression()), !dbg !2752
  br label %if.end356, !dbg !3564

if.else355:                                       ; preds = %if.else254
  call void @llvm.dbg.value(metadata i8 0, metadata !2912, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i8 0, metadata !2913, metadata !DIExpression()), !dbg !2752
  br label %if.end356

if.end356:                                        ; preds = %if.else355, %if.end354
  %found_valid_header.3 = phi i8 [ %found_valid_header.2, %if.end354 ], [ 0, %if.else355 ], !dbg !3565
  call void @llvm.dbg.value(metadata i8 %found_valid_header.3, metadata !2912, metadata !DIExpression()), !dbg !2752
  br label %if.end357

if.end357:                                        ; preds = %if.end356, %if.end253
  %found_first_frame.3 = phi i32 [ %found_first_frame.2, %if.end253 ], [ %found_first_frame.0, %if.end356 ], !dbg !2923
  %found_valid_header.4 = phi i8 [ %found_valid_header.1, %if.end253 ], [ %found_valid_header.3, %if.end356 ], !dbg !3566
  call void @llvm.dbg.value(metadata i8 %found_valid_header.4, metadata !2912, metadata !DIExpression()), !dbg !2752
  call void @llvm.dbg.value(metadata i32 %found_first_frame.3, metadata !2908, metadata !DIExpression()), !dbg !2752
  br label %while.body, !dbg !2920, !llvm.loop !3567

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !3569

while_break:                                      ; preds = %while_break___4, %if.else220, %if.else218, %if.then216, %if.else27, %if.then8, %if.then
  %found_first_frame.4 = phi i32 [ %found_first_frame.0, %if.then ], [ %found_first_frame.0, %if.then8 ], [ %found_first_frame.1, %if.then216 ], [ %found_first_frame.1, %if.else218 ], [ %found_first_frame.1, %if.else220 ], [ %found_first_frame.0, %if.else27 ], [ undef, %while_break___4 ], !dbg !2923
  call void @llvm.dbg.value(metadata i32 %found_first_frame.4, metadata !2908, metadata !DIExpression()), !dbg !2752
  %sflag358 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3570
  %119 = load i32, i32* %sflag358, align 4, !dbg !3570
  %tobool359 = icmp ne i32 %119, 0, !dbg !3572
  br i1 %tobool359, label %if.end426, label %if.then360, !dbg !3573

if.then360:                                       ; preds = %while_break
  %pflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 5, !dbg !3574
  %120 = load i32, i32* %pflag, align 4, !dbg !3574
  %tobool361 = icmp ne i32 %120, 0, !dbg !3577
  br i1 %tobool361, label %if.then362, label %if.else367, !dbg !3578

if.then362:                                       ; preds = %if.then360
  %good_frame_count363 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3579
  %121 = load i32, i32* %good_frame_count363, align 4, !dbg !3579
  %bad_frame_count364 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 2, !dbg !3583
  %122 = load i32, i32* %bad_frame_count364, align 8, !dbg !3583
  %byte_count365 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3584
  %123 = load i32, i32* %byte_count365, align 8, !dbg !3584
  %call366 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* %filename, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 %122, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i32 %123), !dbg !3585
  br label %if.end376, !dbg !3586

if.else367:                                       ; preds = %if.then360
  %call368 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !3587
  %call369 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.38, i32 0, i32 0), i8* %filename), !dbg !3591
  %good_frame_count370 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3593
  %124 = load i32, i32* %good_frame_count370, align 4, !dbg !3593
  %call371 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.39, i32 0, i32 0), i32 %124), !dbg !3595
  %bad_frame_count372 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 2, !dbg !3596
  %125 = load i32, i32* %bad_frame_count372, align 8, !dbg !3596
  %call373 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i32 0, i32 0), i32 %125), !dbg !3598
  %byte_count374 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3599
  %126 = load i32, i32* %byte_count374, align 8, !dbg !3599
  %call375 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i32 0, i32 0), i32 %126), !dbg !3601
  br label %if.end376

if.end376:                                        ; preds = %if.else367, %if.then362
  %high_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 0, !dbg !3602
  %127 = load i32, i32* %high_rate, align 4, !dbg !3602
  %low_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !3604
  %128 = load i32, i32* %low_rate, align 4, !dbg !3604
  %cmp377 = icmp ne i32 %127, %128, !dbg !3605
  br i1 %cmp377, label %if.then379, label %if.end402, !dbg !3606

if.then379:                                       ; preds = %if.end376
  %good_frame_count380 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3607
  %129 = load i32, i32* %good_frame_count380, align 4, !dbg !3607
  %cmp381 = icmp sgt i32 %129, 0, !dbg !3610
  br i1 %cmp381, label %if.then383, label %if.end401, !dbg !3611

if.then383:                                       ; preds = %if.then379
  %sum_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 2, !dbg !3612
  %130 = load i32, i32* %sum_rate, align 4, !dbg !3612
  %good_frame_count384 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 1, !dbg !3614
  %131 = load i32, i32* %good_frame_count384, align 4, !dbg !3614
  %div = sdiv i32 %130, %131, !dbg !3615
  %ave_rate = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 3, !dbg !3616
  store i32 %div, i32* %ave_rate, align 4, !dbg !3617
  %pflag385 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 5, !dbg !3618
  %132 = load i32, i32* %pflag385, align 4, !dbg !3618
  %tobool386 = icmp ne i32 %132, 0, !dbg !3620
  br i1 %tobool386, label %if.then387, label %if.else392, !dbg !3621

if.then387:                                       ; preds = %if.then383
  %high_rate388 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 0, !dbg !3622
  %133 = load i32, i32* %high_rate388, align 4, !dbg !3622
  %low_rate389 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !3626
  %134 = load i32, i32* %low_rate389, align 4, !dbg !3626
  %ave_rate390 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 3, !dbg !3627
  %135 = load i32, i32* %ave_rate390, align 4, !dbg !3627
  %call391 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %133, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 %135), !dbg !3628
  br label %if.end400, !dbg !3629

if.else392:                                       ; preds = %if.then383
  %call393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !3630
  %high_rate394 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 0, !dbg !3634
  %136 = load i32, i32* %high_rate394, align 4, !dbg !3634
  %call395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.44, i32 0, i32 0), i32 %136), !dbg !3636
  %low_rate396 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 1, !dbg !3637
  %137 = load i32, i32* %low_rate396, align 4, !dbg !3637
  %call397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i32 %137), !dbg !3639
  %ave_rate398 = getelementptr inbounds %struct.__anonstruct_vbr_data_28, %struct.__anonstruct_vbr_data_28* %vbr_info, i32 0, i32 3, !dbg !3640
  %138 = load i32, i32* %ave_rate398, align 4, !dbg !3640
  %call399 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i32 0, i32 0), i32 %138), !dbg !3642
  br label %if.end400

if.end400:                                        ; preds = %if.else392, %if.then387
  br label %if.end401, !dbg !3643

if.end401:                                        ; preds = %if.end400, %if.then379
  br label %if.end402, !dbg !3644

if.end402:                                        ; preds = %if.end401, %if.end376
  %tobool403 = icmp ne i32 %found_first_frame.4, 0, !dbg !3645
  br i1 %tobool403, label %if.then404, label %if.else423, !dbg !3647

if.then404:                                       ; preds = %if.end402
  %vflag405 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 9, !dbg !3648
  %139 = load i32, i32* %vflag405, align 4, !dbg !3648
  %tobool406 = icmp ne i32 %139, 0, !dbg !3651
  br i1 %tobool406, label %if.then407, label %if.end412, !dbg !3652

if.then407:                                       ; preds = %if.then404
  %pflag408 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 5, !dbg !3653
  %140 = load i32, i32* %pflag408, align 4, !dbg !3653
  %tobool409 = icmp ne i32 %140, 0, !dbg !3656
  br i1 %tobool409, label %if.end411, label %if.then410, !dbg !3657

if.then410:                                       ; preds = %if.then407
  call void @print_summary(%struct.__anonstruct_frame_info_32* byval align 8 %first_mp3_frame, i8* %filename), !dbg !3658
  br label %if.end411, !dbg !3662

if.end411:                                        ; preds = %if.then410, %if.then407
  br label %if.end412, !dbg !3663

if.end412:                                        ; preds = %if.end411, %if.then404
  call void @translate_time(%struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_mp3_time_29* %song_time), !dbg !3664
  %pflag413 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 5, !dbg !3667
  %141 = load i32, i32* %pflag413, align 4, !dbg !3667
  %tobool414 = icmp ne i32 %141, 0, !dbg !3669
  br i1 %tobool414, label %if.then415, label %if.else417, !dbg !3670

if.then415:                                       ; preds = %if.end412
  %minutes = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 0, !dbg !3671
  %142 = load i32, i32* %minutes, align 4, !dbg !3671
  %seconds = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 1, !dbg !3675
  %143 = load i32, i32* %seconds, align 4, !dbg !3675
  %frac_second = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 2, !dbg !3676
  %144 = load i32, i32* %frac_second, align 4, !dbg !3676
  %call416 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 %142, i32 %143, i32 %144), !dbg !3677
  br label %if.end422, !dbg !3678

if.else417:                                       ; preds = %if.end412
  %minutes418 = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 0, !dbg !3679
  %145 = load i32, i32* %minutes418, align 4, !dbg !3679
  %seconds419 = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 1, !dbg !3683
  %146 = load i32, i32* %seconds419, align 4, !dbg !3683
  %frac_second420 = getelementptr inbounds %struct.__anonstruct_mp3_time_29, %struct.__anonstruct_mp3_time_29* %song_time, i32 0, i32 2, !dbg !3684
  %147 = load i32, i32* %frac_second420, align 4, !dbg !3684
  %call421 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.48, i32 0, i32 0), i32 %145, i32 %146, i32 %147), !dbg !3685
  br label %if.end422

if.end422:                                        ; preds = %if.else417, %if.then415
  br label %if.end425, !dbg !3686

if.else423:                                       ; preds = %if.end402
  %call424 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !3687
  br label %if.end425

if.end425:                                        ; preds = %if.else423, %if.end422
  br label %if.end426, !dbg !3691

if.end426:                                        ; preds = %if.end425, %while_break
  call void @init_id3_tag_struct(%struct.__anonstruct_id3_tag_info_33* %id3_tag), !dbg !3692
  %arraydecay427 = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !3695
  %call428 = call i32 @transform_char_array(i8* %arraydecay427, %struct.__anonstruct_gen_info_27* %file_info), !dbg !3697
  %iflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 4, !dbg !3698
  %148 = load i32, i32* %iflag, align 4, !dbg !3698
  %tobool429 = icmp ne i32 %148, 0, !dbg !3700
  br i1 %tobool429, label %if.then430, label %if.else475, !dbg !3701

if.then430:                                       ; preds = %if.end426
  %arraydecay431 = getelementptr inbounds [128 x i8], [128 x i8]* %possible_mp3_tag, i32 0, i32 0, !dbg !3702
  %call432 = call i32 @validate_id3_tag(i8* %arraydecay431, %struct.__anonstruct_id3_tag_info_33* %id3_tag), !dbg !3706
  call void @llvm.dbg.value(metadata i32 %call432, metadata !3707, metadata !DIExpression()), !dbg !2752
  %tobool433 = icmp ne i32 %call432, 0, !dbg !3708
  br i1 %tobool433, label %if.then434, label %if.else473, !dbg !3710

if.then434:                                       ; preds = %if.then430
  %iflag435 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 4, !dbg !3711
  %149 = load i32, i32* %iflag435, align 4, !dbg !3711
  %tobool436 = icmp ne i32 %149, 0, !dbg !3714
  br i1 %tobool436, label %if.then437, label %if.end447, !dbg !3715

if.then437:                                       ; preds = %if.then434
  %fflag438 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 3, !dbg !3716
  %150 = load i32, i32* %fflag438, align 4, !dbg !3716
  %tobool439 = icmp ne i32 %150, 0, !dbg !3719
  br i1 %tobool439, label %if.then440, label %if.end446, !dbg !3720

if.then440:                                       ; preds = %if.then437
  %sflag441 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3721
  %151 = load i32, i32* %sflag441, align 4, !dbg !3721
  %tobool442 = icmp ne i32 %151, 0, !dbg !3724
  br i1 %tobool442, label %if.then443, label %if.end445, !dbg !3725

if.then443:                                       ; preds = %if.then440
  %call444 = call i32 @dump_id3_tag(%struct.__anonstruct_id3_tag_info_33* %id3_tag), !dbg !3726
  br label %if.end445, !dbg !3730

if.end445:                                        ; preds = %if.then443, %if.then440
  br label %if.end446, !dbg !3731

if.end446:                                        ; preds = %if.end445, %if.then437
  br label %if.end447, !dbg !3732

if.end447:                                        ; preds = %if.end446, %if.then434
  %sflag448 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3733
  %152 = load i32, i32* %sflag448, align 4, !dbg !3733
  %tobool449 = icmp ne i32 %152, 0, !dbg !3735
  br i1 %tobool449, label %if.end472, label %if.then450, !dbg !3736

if.then450:                                       ; preds = %if.end447
  %vflag451 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 9, !dbg !3737
  %153 = load i32, i32* %vflag451, align 4, !dbg !3737
  %tobool452 = icmp ne i32 %153, 0, !dbg !3740
  br i1 %tobool452, label %if.then453, label %if.end471, !dbg !3741

if.then453:                                       ; preds = %if.then450
  %call454 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 1), !dbg !3742
  %TITLE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 2, !dbg !3746
  %arraydecay455 = getelementptr inbounds [31 x i8], [31 x i8]* %TITLE, i32 0, i32 0, !dbg !3748
  %call456 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.52, i32 0, i32 0), i8* %arraydecay455), !dbg !3749
  %ARTIST = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 3, !dbg !3750
  %arraydecay457 = getelementptr inbounds [31 x i8], [31 x i8]* %ARTIST, i32 0, i32 0, !dbg !3752
  %call458 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* %arraydecay457), !dbg !3753
  %ALBUM = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 4, !dbg !3754
  %arraydecay459 = getelementptr inbounds [31 x i8], [31 x i8]* %ALBUM, i32 0, i32 0, !dbg !3756
  %call460 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.54, i32 0, i32 0), i8* %arraydecay459), !dbg !3757
  %YEAR = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 5, !dbg !3758
  %arraydecay461 = getelementptr inbounds [5 x i8], [5 x i8]* %YEAR, i32 0, i32 0, !dbg !3760
  %call462 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay461), !dbg !3761
  %COMMENT = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 6, !dbg !3762
  %arraydecay463 = getelementptr inbounds [31 x i8], [31 x i8]* %COMMENT, i32 0, i32 0, !dbg !3764
  %call464 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i8* %arraydecay463), !dbg !3765
  %GENRE = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 7, !dbg !3766
  %154 = load i16, i16* %GENRE, align 2, !dbg !3766
  %conv465 = sext i16 %154 to i32, !dbg !3768
  %call466 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.57, i32 0, i32 0), i32 %conv465), !dbg !3769
  %TRACK_NUMBER = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 8, !dbg !3770
  %155 = load i16, i16* %TRACK_NUMBER, align 2, !dbg !3770
  %conv467 = sext i16 %155 to i32, !dbg !3772
  %call468 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i32 %conv467), !dbg !3773
  %ID3_311_VERSION = getelementptr inbounds %struct.__anonstruct_id3_tag_info_33, %struct.__anonstruct_id3_tag_info_33* %id3_tag, i32 0, i32 1, !dbg !3774
  %156 = load i16, i16* %ID3_311_VERSION, align 2, !dbg !3774
  %conv469 = sext i16 %156 to i32, !dbg !3776
  %call470 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i32 0, i32 0), i32 %conv469), !dbg !3777
  br label %if.end471, !dbg !3778

if.end471:                                        ; preds = %if.then453, %if.then450
  br label %if.end472, !dbg !3779

if.end472:                                        ; preds = %if.end471, %if.end447
  br label %if.end474, !dbg !3780

if.else473:                                       ; preds = %if.then430
  br label %_L___2, !dbg !3781

if.end474:                                        ; preds = %if.end472
  br label %if.end485, !dbg !3783

if.else475:                                       ; preds = %if.end426
  br label %_L___2, !dbg !3783

_L___2:                                           ; preds = %if.else475, %if.else473
  %sflag476 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 7, !dbg !3784
  %157 = load i32, i32* %sflag476, align 4, !dbg !3784
  %tobool477 = icmp ne i32 %157, 0, !dbg !3786
  br i1 %tobool477, label %if.end484, label %if.then478, !dbg !3787

if.then478:                                       ; preds = %_L___2
  %iflag479 = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 4, !dbg !3788
  %158 = load i32, i32* %iflag479, align 4, !dbg !3788
  %tobool480 = icmp ne i32 %158, 0, !dbg !3791
  br i1 %tobool480, label %if.then481, label %if.end483, !dbg !3792

if.then481:                                       ; preds = %if.then478
  %call482 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i32 0), !dbg !3793
  br label %if.end483, !dbg !3797

if.end483:                                        ; preds = %if.then481, %if.then478
  br label %if.end484, !dbg !3798

if.end484:                                        ; preds = %if.end483, %_L___2
  br label %if.end485

if.end485:                                        ; preds = %if.end484, %if.end474
  %call486 = call i32 @ferror(%struct._IO_FILE* %fp) #8, !dbg !3799
  call void @llvm.dbg.value(metadata i32 %call486, metadata !3802, metadata !DIExpression()), !dbg !2752
  %tobool487 = icmp ne i32 %call486, 0, !dbg !3803
  br i1 %tobool487, label %if.then488, label %if.end492, !dbg !3805

if.then488:                                       ; preds = %if.end485
  %call489 = call i32* @__errno_location() #11, !dbg !3806
  call void @llvm.dbg.value(metadata i32* %call489, metadata !3810, metadata !DIExpression()), !dbg !2752
  %159 = load i32, i32* %call489, align 4, !dbg !3811
  %call490 = call i8* @strerror(i32 %159) #8, !dbg !3813
  call void @llvm.dbg.value(metadata i8* %call490, metadata !3814, metadata !DIExpression()), !dbg !2752
  %160 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3815
  %call491 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.60, i32 0, i32 0), i8* %filename, i8* %call490), !dbg !3817
  call void @clearerr(%struct._IO_FILE* %fp) #8, !dbg !3818
  br label %if.end492, !dbg !3820

if.end492:                                        ; preds = %if.then488, %if.end485
  %161 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3821
  %call493 = call i32 @ferror(%struct._IO_FILE* %161) #8, !dbg !3824
  call void @llvm.dbg.value(metadata i32 %call493, metadata !3825, metadata !DIExpression()), !dbg !2752
  %tobool494 = icmp ne i32 %call493, 0, !dbg !3826
  br i1 %tobool494, label %if.then495, label %if.end499, !dbg !3828

if.then495:                                       ; preds = %if.end492
  %call496 = call i32* @__errno_location() #11, !dbg !3829
  call void @llvm.dbg.value(metadata i32* %call496, metadata !3833, metadata !DIExpression()), !dbg !2752
  %162 = load i32, i32* %call496, align 4, !dbg !3834
  %call497 = call i8* @strerror(i32 %162) #8, !dbg !3836
  call void @llvm.dbg.value(metadata i8* %call497, metadata !3837, metadata !DIExpression()), !dbg !2752
  %163 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3838
  %call498 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %163, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.61, i32 0, i32 0), i8* %call497), !dbg !3840
  call void @exit(i32 1) #10, !dbg !3841
  unreachable, !dbg !3841

if.end499:                                        ; preds = %if.end492
  %bad_frame_count500 = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 2, !dbg !3843
  %164 = load i32, i32* %bad_frame_count500, align 8, !dbg !3843
  %cmp501 = icmp sgt i32 %164, 0, !dbg !3845
  br i1 %cmp501, label %if.then503, label %if.else504, !dbg !3846

if.then503:                                       ; preds = %if.end499
  br label %return, !dbg !3847

if.else504:                                       ; preds = %if.end499
  br label %return, !dbg !3849

return:                                           ; preds = %if.else504, %if.then503
  %retval.0 = phi i32 [ 0, %if.then503 ], [ 1, %if.else504 ], !dbg !3851
  ret i32 %retval.0, !dbg !3852
}

; Function Attrs: noinline nounwind ssp uwtable
define void @init_frame_struct(%struct.__anonstruct_frame_info_32* %FI) #0 !dbg !3853 {
entry:
  call void @llvm.dbg.value(metadata %struct.__anonstruct_frame_info_32* %FI, metadata !3856, metadata !DIExpression()), !dbg !3857
  %0 = load i32, i32* @inited, align 4, !dbg !3858
  %tobool = icmp ne i32 %0, 0, !dbg !3858
  br i1 %tobool, label %if.end2, label %if.then, !dbg !3861

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3857
  store i32 1, i32* @inited, align 4, !dbg !3863
  store i32 0, i32* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 0), align 4, !dbg !3865
  store i32 0, i32* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 1), align 4, !dbg !3866
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 30), align 4, !dbg !3867
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 31), align 2, !dbg !3868
  store i32 0, i32* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 2), align 4, !dbg !3869
  store i32 0, i32* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 3), align 4, !dbg !3870
  store i32 0, i32* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 4), align 4, !dbg !3871
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 5), align 4, !dbg !3872
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 6), align 2, !dbg !3873
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 7), align 4, !dbg !3874
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 8), align 2, !dbg !3875
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 9), align 4, !dbg !3876
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 10), align 2, !dbg !3877
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 11), align 4, !dbg !3878
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 12), align 2, !dbg !3879
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 13), align 4, !dbg !3880
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 14), align 2, !dbg !3881
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 15), align 4, !dbg !3882
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 16), align 2, !dbg !3883
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 17), align 4, !dbg !3884
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 18), align 2, !dbg !3885
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 19), align 4, !dbg !3886
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 20), align 2, !dbg !3887
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 21), align 4, !dbg !3888
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 22), align 2, !dbg !3889
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 23), align 4, !dbg !3890
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 24), align 2, !dbg !3891
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 25), align 4, !dbg !3892
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 26), align 2, !dbg !3893
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 27), align 4, !dbg !3894
  call void @llvm.dbg.value(metadata i32 0, metadata !3862, metadata !DIExpression()), !dbg !3857
  br label %while.body, !dbg !3895

while.body:                                       ; preds = %if.end, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %if.end ], !dbg !3898
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3862, metadata !DIExpression()), !dbg !3857
  br label %while_continue___0, !dbg !3899

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !3899

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, 32, !dbg !3900
  br i1 %cmp, label %if.end, label %if.then1, !dbg !3903

if.then1:                                         ; preds = %while_continue
  br label %while_break, !dbg !3904

if.end:                                           ; preds = %while_continue
  %idxprom = sext i32 %i.0 to i64, !dbg !3906
  %arrayidx = getelementptr inbounds [33 x i8], [33 x i8]* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 28), i64 0, i64 %idxprom, !dbg !3906
  store i8 48, i8* %arrayidx, align 1, !dbg !3907
  %inc = add nsw i32 %i.0, 1, !dbg !3908
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3862, metadata !DIExpression()), !dbg !3857
  br label %while.body, !dbg !3895, !llvm.loop !3909

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !3911

while_break:                                      ; preds = %while_break___0, %if.then1
  store i8 0, i8* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 28, i64 32), align 2, !dbg !3912
  store i32 0, i32* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 29), align 4, !dbg !3913
  store i16 0, i16* getelementptr inbounds (%struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* @empty_frame, i32 0, i32 32), align 4, !dbg !3914
  br label %if.end2, !dbg !3915

if.end2:                                          ; preds = %while_break, %entry
  %1 = bitcast %struct.__anonstruct_frame_info_32* %FI to i8*, !dbg !3916
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 bitcast (%struct.__anonstruct_frame_info_32* @empty_frame to i8*), i64 112, i1 false), !dbg !3916
  ret void, !dbg !3917
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @get_char_from_file(%struct._IO_FILE* %fp, i32* %header_value, %struct.__anonstruct_gen_info_27* %file_info, %struct.__anonstruct_command_flags_30* %flags, i8* %possible_mp3_tag) #0 !dbg !3918 {
entry:
  %step_char = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fp, metadata !3921, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i32* %header_value, metadata !3923, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata %struct.__anonstruct_gen_info_27* %file_info, metadata !3924, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata %struct.__anonstruct_command_flags_30* %flags, metadata !3925, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.value(metadata i8* %possible_mp3_tag, metadata !3926, metadata !DIExpression()), !dbg !3922
  call void @llvm.dbg.declare(metadata i32* %step_char, metadata !3927, metadata !DIExpression()), !dbg !3928
  store i32 0, i32* %step_char, align 4, !dbg !3929
  %call = call i32 @_IO_getc(%struct._IO_FILE* %fp), !dbg !3932
  store i32 %call, i32* %step_char, align 4, !dbg !3934
  %0 = load i32, i32* %step_char, align 4, !dbg !3935
  %cmp = icmp ne i32 %0, -1, !dbg !3937
  br i1 %cmp, label %if.then, label %if.else, !dbg !3938

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %header_value, align 4, !dbg !3939
  %shl = shl i32 %1, 8, !dbg !3941
  %2 = load i32, i32* %step_char, align 4, !dbg !3942
  %add = add i32 %shl, %2, !dbg !3943
  store i32 %add, i32* %header_value, align 4, !dbg !3944
  %file_pos = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 0, !dbg !3945
  %3 = load i32, i32* %file_pos, align 8, !dbg !3946
  %inc = add nsw i32 %3, 1, !dbg !3946
  store i32 %inc, i32* %file_pos, align 8, !dbg !3946
  %byte_count = getelementptr inbounds %struct.__anonstruct_gen_info_27, %struct.__anonstruct_gen_info_27* %file_info, i32 0, i32 4, !dbg !3947
  %4 = load i32, i32* %byte_count, align 8, !dbg !3948
  %inc1 = add nsw i32 %4, 1, !dbg !3948
  store i32 %inc1, i32* %byte_count, align 8, !dbg !3948
  %iflag = getelementptr inbounds %struct.__anonstruct_command_flags_30, %struct.__anonstruct_command_flags_30* %flags, i32 0, i32 4, !dbg !3949
  %5 = load i32, i32* %iflag, align 4, !dbg !3949
  %tobool = icmp ne i32 %5, 0, !dbg !3951
  br i1 %tobool, label %if.then2, label %if.end, !dbg !3952

if.then2:                                         ; preds = %if.then
  %call3 = call i32 @rotate_char_array(i8* %possible_mp3_tag, i32* %step_char, %struct.__anonstruct_gen_info_27* %file_info), !dbg !3953
  br label %if.end, !dbg !3957

if.end:                                           ; preds = %if.then2, %if.then
  br label %return, !dbg !3958

if.else:                                          ; preds = %entry
  br label %return, !dbg !3959

return:                                           ; preds = %if.else, %if.end
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %if.else ], !dbg !3961
  ret i32 %retval.0, !dbg !3962
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

declare i32 @move_to_next_frame(i8*, %struct.__anonstruct_frame_info_32*, %struct.__anonstruct_gen_info_27*, %struct.__anonstruct_command_flags_30*, %struct._IO_FILE*) #4

; Function Attrs: noinline nounwind ssp uwtable
define void @print_summary(%struct.__anonstruct_frame_info_32* byval align 8 %mp3_i, i8* %filename) #0 !dbg !3963 {
entry:
  call void @llvm.dbg.declare(metadata %struct.__anonstruct_frame_info_32* %mp3_i, metadata !3966, metadata !DIExpression()), !dbg !3967
  call void @llvm.dbg.value(metadata i8* %filename, metadata !3968, metadata !DIExpression()), !dbg !3969
  call void @llvm.dbg.declare(metadata !4, metadata !3970, metadata !DIExpression()), !dbg !3971
  call void @llvm.dbg.declare(metadata !4, metadata !3972, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.declare(metadata !4, metadata !3974, metadata !DIExpression()), !dbg !3975
  call void @llvm.dbg.declare(metadata !4, metadata !3976, metadata !DIExpression()), !dbg !3977
  call void @llvm.dbg.declare(metadata !4, metadata !3978, metadata !DIExpression()), !dbg !3979
  call void @llvm.dbg.declare(metadata !4, metadata !3980, metadata !DIExpression()), !dbg !3981
  call void @llvm.dbg.declare(metadata !4, metadata !3982, metadata !DIExpression()), !dbg !3983
  call void @llvm.dbg.declare(metadata !4, metadata !3984, metadata !DIExpression()), !dbg !3985
  call void @llvm.dbg.declare(metadata !4, metadata !3986, metadata !DIExpression()), !dbg !3987
  call void @llvm.dbg.declare(metadata !4, metadata !3988, metadata !DIExpression()), !dbg !3989
  call void @llvm.dbg.declare(metadata !4, metadata !3990, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.declare(metadata !4, metadata !3992, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.declare(metadata !4, metadata !3994, metadata !DIExpression()), !dbg !3995
  call void @llvm.dbg.declare(metadata !4, metadata !3996, metadata !DIExpression()), !dbg !3997
  call void @llvm.dbg.declare(metadata !4, metadata !3998, metadata !DIExpression()), !dbg !3999
  call void @llvm.dbg.declare(metadata !4, metadata !4000, metadata !DIExpression()), !dbg !4001
  call void @llvm.dbg.declare(metadata !4, metadata !4002, metadata !DIExpression()), !dbg !4003
  call void @llvm.dbg.declare(metadata !4, metadata !4004, metadata !DIExpression()), !dbg !4005
  call void @llvm.dbg.declare(metadata !4, metadata !4006, metadata !DIExpression()), !dbg !4007
  call void @llvm.dbg.declare(metadata !4, metadata !4008, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.declare(metadata !4, metadata !4010, metadata !DIExpression()), !dbg !4011
  call void @llvm.dbg.declare(metadata !4, metadata !4012, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.declare(metadata !4, metadata !4014, metadata !DIExpression()), !dbg !4015
  call void @llvm.dbg.declare(metadata !4, metadata !4016, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.declare(metadata !4, metadata !4018, metadata !DIExpression()), !dbg !4019
  call void @llvm.dbg.declare(metadata !4, metadata !4020, metadata !DIExpression()), !dbg !4021
  call void @llvm.dbg.declare(metadata !4, metadata !4022, metadata !DIExpression()), !dbg !4023
  call void @llvm.dbg.declare(metadata !4, metadata !4024, metadata !DIExpression()), !dbg !4025
  call void @llvm.dbg.declare(metadata !4, metadata !4026, metadata !DIExpression()), !dbg !4027
  call void @llvm.dbg.declare(metadata !4, metadata !4028, metadata !DIExpression()), !dbg !4029
  call void @llvm.dbg.declare(metadata !4, metadata !4030, metadata !DIExpression()), !dbg !4031
  call void @llvm.dbg.declare(metadata !4, metadata !4032, metadata !DIExpression()), !dbg !4033
  call void @llvm.dbg.declare(metadata !4, metadata !4034, metadata !DIExpression()), !dbg !4035
  call void @llvm.dbg.declare(metadata !4, metadata !4036, metadata !DIExpression()), !dbg !4037
  call void @llvm.dbg.declare(metadata !4, metadata !4038, metadata !DIExpression()), !dbg !4039
  call void @llvm.dbg.declare(metadata !4, metadata !4040, metadata !DIExpression()), !dbg !4041
  call void @llvm.dbg.declare(metadata !4, metadata !4042, metadata !DIExpression()), !dbg !4043
  call void @llvm.dbg.declare(metadata !4, metadata !4044, metadata !DIExpression()), !dbg !4045
  call void @llvm.dbg.declare(metadata !4, metadata !4046, metadata !DIExpression()), !dbg !4047
  call void @llvm.dbg.declare(metadata !4, metadata !4048, metadata !DIExpression()), !dbg !4049
  call void @llvm.dbg.declare(metadata !4, metadata !4050, metadata !DIExpression()), !dbg !4051
  call void @llvm.dbg.declare(metadata !4, metadata !4052, metadata !DIExpression()), !dbg !4053
  call void @llvm.dbg.declare(metadata !4, metadata !4054, metadata !DIExpression()), !dbg !4055
  call void @llvm.dbg.declare(metadata !4, metadata !4056, metadata !DIExpression()), !dbg !4057
  call void @llvm.dbg.declare(metadata !4, metadata !4058, metadata !DIExpression()), !dbg !4059
  call void @llvm.dbg.declare(metadata !4, metadata !4060, metadata !DIExpression()), !dbg !4061
  call void @llvm.dbg.declare(metadata !4, metadata !4062, metadata !DIExpression()), !dbg !4063
  call void @llvm.dbg.declare(metadata !4, metadata !4064, metadata !DIExpression()), !dbg !4065
  call void @llvm.dbg.declare(metadata !4, metadata !4066, metadata !DIExpression()), !dbg !4067
  call void @llvm.dbg.declare(metadata !4, metadata !4068, metadata !DIExpression()), !dbg !4069
  call void @llvm.dbg.declare(metadata !4, metadata !4070, metadata !DIExpression()), !dbg !4071
  call void @llvm.dbg.declare(metadata !4, metadata !4072, metadata !DIExpression()), !dbg !4073
  call void @llvm.dbg.declare(metadata !4, metadata !4074, metadata !DIExpression()), !dbg !4075
  call void @llvm.dbg.declare(metadata !4, metadata !4076, metadata !DIExpression()), !dbg !4077
  call void @llvm.dbg.declare(metadata !4, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.declare(metadata !4, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @llvm.dbg.declare(metadata !4, metadata !4082, metadata !DIExpression()), !dbg !4083
  call void @llvm.dbg.declare(metadata !4, metadata !4084, metadata !DIExpression()), !dbg !4085
  call void @llvm.dbg.declare(metadata !4, metadata !4086, metadata !DIExpression()), !dbg !4087
  call void @llvm.dbg.declare(metadata !4, metadata !4088, metadata !DIExpression()), !dbg !4089
  call void @llvm.dbg.declare(metadata !4, metadata !4090, metadata !DIExpression()), !dbg !4091
  call void @llvm.dbg.declare(metadata !4, metadata !4092, metadata !DIExpression()), !dbg !4093
  call void @llvm.dbg.declare(metadata !4, metadata !4094, metadata !DIExpression()), !dbg !4095
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)), !dbg !4096
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.62, i32 0, i32 0), i32 1), !dbg !4100
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.63, i32 0, i32 0), i32 0), !dbg !4102
  %MPV_1 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 5, !dbg !4104
  %0 = load i16, i16* %MPV_1, align 4, !dbg !4104
  %conv = sext i16 %0 to i32, !dbg !4106
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i32 %conv), !dbg !4107
  %MPV_2 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 6, !dbg !4108
  %1 = load i16, i16* %MPV_2, align 2, !dbg !4108
  %conv4 = sext i16 %1 to i32, !dbg !4110
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.65, i32 0, i32 0), i32 %conv4), !dbg !4111
  %MPV_25 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 7, !dbg !4112
  %2 = load i16, i16* %MPV_25, align 8, !dbg !4112
  %conv6 = sext i16 %2 to i32, !dbg !4114
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i32 %conv6), !dbg !4115
  %MPV_RESERVED = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 8, !dbg !4116
  %3 = load i16, i16* %MPV_RESERVED, align 2, !dbg !4116
  %conv8 = sext i16 %3 to i32, !dbg !4118
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.67, i32 0, i32 0), i32 %conv8), !dbg !4119
  %L1 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 9, !dbg !4120
  %4 = load i16, i16* %L1, align 4, !dbg !4120
  %conv10 = sext i16 %4 to i32, !dbg !4122
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.68, i32 0, i32 0), i32 %conv10), !dbg !4123
  %L2 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 10, !dbg !4124
  %5 = load i16, i16* %L2, align 2, !dbg !4124
  %conv12 = sext i16 %5 to i32, !dbg !4126
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.69, i32 0, i32 0), i32 %conv12), !dbg !4127
  %L3 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 11, !dbg !4128
  %6 = load i16, i16* %L3, align 8, !dbg !4128
  %conv14 = sext i16 %6 to i32, !dbg !4130
  %call15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.70, i32 0, i32 0), i32 %conv14), !dbg !4131
  %L_RESERVED = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 12, !dbg !4132
  %7 = load i16, i16* %L_RESERVED, align 2, !dbg !4132
  %conv16 = sext i16 %7 to i32, !dbg !4134
  %call17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.71, i32 0, i32 0), i32 %conv16), !dbg !4135
  %PROT_BIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 13, !dbg !4136
  %8 = load i16, i16* %PROT_BIT, align 4, !dbg !4136
  %conv18 = sext i16 %8 to i32, !dbg !4138
  %call19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.72, i32 0, i32 0), i32 %conv18), !dbg !4139
  %BIT_RATE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 2, !dbg !4140
  %9 = load i32, i32* %BIT_RATE, align 8, !dbg !4140
  %call20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.73, i32 0, i32 0), i32 %9), !dbg !4142
  %SAMPLE_FREQ = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 3, !dbg !4143
  %10 = load i32, i32* %SAMPLE_FREQ, align 4, !dbg !4143
  %call21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i32 0, i32 0), i32 %10), !dbg !4145
  %SAMPLES_PER_FRAME = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 4, !dbg !4146
  %11 = load i32, i32* %SAMPLES_PER_FRAME, align 8, !dbg !4146
  %call22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.75, i32 0, i32 0), i32 %11), !dbg !4148
  %PAD_BIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 14, !dbg !4149
  %12 = load i16, i16* %PAD_BIT, align 2, !dbg !4149
  %conv23 = sext i16 %12 to i32, !dbg !4151
  %call24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.76, i32 0, i32 0), i32 %conv23), !dbg !4152
  %PRIV_BIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 15, !dbg !4153
  %13 = load i16, i16* %PRIV_BIT, align 8, !dbg !4153
  %conv25 = sext i16 %13 to i32, !dbg !4155
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.77, i32 0, i32 0), i32 %conv25), !dbg !4156
  %STEREO = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 16, !dbg !4157
  %14 = load i16, i16* %STEREO, align 2, !dbg !4157
  %conv27 = sext i16 %14 to i32, !dbg !4159
  %call28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.78, i32 0, i32 0), i32 %conv27), !dbg !4160
  %JOINT_STEREO = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 17, !dbg !4161
  %15 = load i16, i16* %JOINT_STEREO, align 4, !dbg !4161
  %conv29 = sext i16 %15 to i32, !dbg !4163
  %call30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.79, i32 0, i32 0), i32 %conv29), !dbg !4164
  %DUAL_STEREO = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 18, !dbg !4165
  %16 = load i16, i16* %DUAL_STEREO, align 2, !dbg !4165
  %conv31 = sext i16 %16 to i32, !dbg !4167
  %call32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.80, i32 0, i32 0), i32 %conv31), !dbg !4168
  %SINGLE_CHANNEL = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 19, !dbg !4169
  %17 = load i16, i16* %SINGLE_CHANNEL, align 8, !dbg !4169
  %conv33 = sext i16 %17 to i32, !dbg !4171
  %call34 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.81, i32 0, i32 0), i32 %conv33), !dbg !4172
  %MODE_EXTENSION = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 20, !dbg !4173
  %18 = load i16, i16* %MODE_EXTENSION, align 2, !dbg !4173
  %conv35 = sext i16 %18 to i32, !dbg !4175
  %call36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.82, i32 0, i32 0), i32 %conv35), !dbg !4176
  %ID3V2 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 21, !dbg !4177
  %19 = load i16, i16* %ID3V2, align 4, !dbg !4177
  %conv37 = sext i16 %19 to i32, !dbg !4179
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i32 %conv37), !dbg !4180
  %FRAME_LENGTH = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 0, !dbg !4181
  %20 = load i32, i32* %FRAME_LENGTH, align 8, !dbg !4181
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.84, i32 0, i32 0), i32 %20), !dbg !4183
  %COPYRIGHT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 22, !dbg !4184
  %21 = load i16, i16* %COPYRIGHT, align 2, !dbg !4184
  %conv40 = sext i16 %21 to i32, !dbg !4186
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.85, i32 0, i32 0), i32 %conv40), !dbg !4187
  %ORIGINAL = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 23, !dbg !4188
  %22 = load i16, i16* %ORIGINAL, align 8, !dbg !4188
  %conv42 = sext i16 %22 to i32, !dbg !4190
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.86, i32 0, i32 0), i32 %conv42), !dbg !4191
  %EMPH_NONE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 24, !dbg !4192
  %23 = load i16, i16* %EMPH_NONE, align 2, !dbg !4192
  %conv44 = sext i16 %23 to i32, !dbg !4194
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.87, i32 0, i32 0), i32 %conv44), !dbg !4195
  %EMPH_5015 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 25, !dbg !4196
  %24 = load i16, i16* %EMPH_5015, align 4, !dbg !4196
  %conv46 = sext i16 %24 to i32, !dbg !4198
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.88, i32 0, i32 0), i32 %conv46), !dbg !4199
  %EMPH_RESERV = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 26, !dbg !4200
  %25 = load i16, i16* %EMPH_RESERV, align 2, !dbg !4200
  %conv48 = sext i16 %25 to i32, !dbg !4202
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i32 0, i32 0), i32 %conv48), !dbg !4203
  %EMPH_CCIT = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 27, !dbg !4204
  %26 = load i16, i16* %EMPH_CCIT, align 8, !dbg !4204
  %conv50 = sext i16 %26 to i32, !dbg !4206
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.90, i32 0, i32 0), i32 %conv50), !dbg !4207
  %check_state = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 32, !dbg !4208
  %27 = load i16, i16* %check_state, align 4, !dbg !4208
  %conv52 = sext i16 %27 to i32, !dbg !4210
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0), i32 %conv52), !dbg !4211
  %BIN_STRING = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 28, !dbg !4212
  %arraydecay = getelementptr inbounds [33 x i8], [33 x i8]* %BIN_STRING, i32 0, i32 0, !dbg !4214
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.92, i32 0, i32 0), i8* %arraydecay), !dbg !4215
  ret void, !dbg !4216
}

; Function Attrs: nounwind
declare i32 @ferror(%struct._IO_FILE*) #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() #5

; Function Attrs: nounwind
declare i8* @strerror(i32) #2

; Function Attrs: nounwind
declare void @clearerr(%struct._IO_FILE*) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #7

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #4

declare i32 @fclose(%struct._IO_FILE*) #4

; Function Attrs: noinline nounwind ssp uwtable
define i32 @crc_check_frame(i8* %data_frame, %struct.__anonstruct_frame_info_32* %mp3_i) #0 !dbg !4217 {
entry:
  call void @llvm.dbg.value(metadata i8* %data_frame, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata %struct.__anonstruct_frame_info_32* %mp3_i, metadata !4222, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i32 0, metadata !4223, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i16 0, metadata !4224, metadata !DIExpression()), !dbg !4221
  %FRAME_DATA_LENGTH = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 1, !dbg !4225
  %0 = load i32, i32* %FRAME_DATA_LENGTH, align 4, !dbg !4225
  call void @llvm.dbg.value(metadata i32 %0, metadata !4227, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i32 0, metadata !4223, metadata !DIExpression()), !dbg !4221
  br label %while.body, !dbg !4228

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !4231
  %crc.0 = phi i16 [ 0, %entry ], [ %conv6, %if.end ], !dbg !4231
  %data_frame.addr.0 = phi i8* [ %data_frame, %entry ], [ %incdec.ptr, %if.end ]
  call void @llvm.dbg.value(metadata i8* %data_frame.addr.0, metadata !4220, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i16 %crc.0, metadata !4224, metadata !DIExpression()), !dbg !4221
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !4223, metadata !DIExpression()), !dbg !4221
  br label %while_continue___0, !dbg !4232

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !4232

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %0, !dbg !4233
  br i1 %cmp, label %if.end, label %if.then, !dbg !4236

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !4237

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* %data_frame.addr.0, metadata !4239, metadata !DIExpression()), !dbg !4221
  %incdec.ptr = getelementptr inbounds i8, i8* %data_frame.addr.0, i32 1, !dbg !4240
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !4220, metadata !DIExpression()), !dbg !4221
  %conv = sext i16 %crc.0 to i32, !dbg !4241
  %shr = ashr i32 %conv, 8, !dbg !4242
  %and = and i32 %shr, 255, !dbg !4243
  %conv1 = sext i16 %crc.0 to i32, !dbg !4244
  %1 = load i8, i8* %data_frame.addr.0, align 1, !dbg !4245
  %conv2 = sext i8 %1 to i32, !dbg !4246
  %xor = xor i32 %conv1, %conv2, !dbg !4247
  %and3 = and i32 %xor, 255, !dbg !4248
  %idxprom = sext i32 %and3 to i64, !dbg !4249
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @crc_table, i64 0, i64 %idxprom, !dbg !4249
  %2 = load i16, i16* %arrayidx, align 2, !dbg !4249
  %conv4 = sext i16 %2 to i32, !dbg !4250
  %xor5 = xor i32 %and, %conv4, !dbg !4251
  %conv6 = trunc i32 %xor5 to i16, !dbg !4252
  call void @llvm.dbg.value(metadata i16 %conv6, metadata !4224, metadata !DIExpression()), !dbg !4221
  %inc = add nsw i32 %i.0, 1, !dbg !4253
  call void @llvm.dbg.value(metadata i32 %inc, metadata !4223, metadata !DIExpression()), !dbg !4221
  br label %while.body, !dbg !4228, !llvm.loop !4254

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !4256

while_break:                                      ; preds = %while_break___0, %if.then
  %conv7 = sext i16 %crc.0 to i32, !dbg !4257
  %and8 = and i32 %conv7, 65535, !dbg !4258
  %conv9 = trunc i32 %and8 to i16, !dbg !4259
  %CORRECT_CRC16_VALUE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 31, !dbg !4260
  store i16 %conv9, i16* %CORRECT_CRC16_VALUE, align 2, !dbg !4261
  %CRC16_VALUE = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 30, !dbg !4262
  %3 = load i16, i16* %CRC16_VALUE, align 4, !dbg !4262
  %conv10 = sext i16 %3 to i32, !dbg !4264
  %CORRECT_CRC16_VALUE11 = getelementptr inbounds %struct.__anonstruct_frame_info_32, %struct.__anonstruct_frame_info_32* %mp3_i, i32 0, i32 31, !dbg !4265
  %4 = load i16, i16* %CORRECT_CRC16_VALUE11, align 2, !dbg !4265
  %conv12 = sext i16 %4 to i32, !dbg !4266
  %cmp13 = icmp eq i32 %conv10, %conv12, !dbg !4267
  br i1 %cmp13, label %if.then15, label %if.else, !dbg !4268

if.then15:                                        ; preds = %while_break
  br label %return, !dbg !4269

if.else:                                          ; preds = %while_break
  br label %return, !dbg !4271

return:                                           ; preds = %if.else, %if.then15
  %retval.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.else ], !dbg !4273
  ret i32 %retval.0, !dbg !4274
}

declare i32 @_IO_getc(%struct._IO_FILE*) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nounwind willreturn }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind readnone }

!llvm.module.flags = !{!142, !143, !144, !145, !146}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!147}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "bitrate_matrix", scope: !2, file: !126, line: 185, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !80, nameTableKind: GNU)
!3 = !DIFile(filename: "c/checkmp3-1.98.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !10, !12, !19, !75, !62, !76, !77, !67, !9, !8, !78, !69}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !14, line: 49, baseType: !15)
!14 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !16, line: 271, size: 1728, elements: !17)
!16 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!17 = !{!18, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !39, !40, !41, !42, !46, !48, !50, !54, !57, !61, !63, !64, !65, !66, !70, !71}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !16, line: 272, baseType: !19, size: 32)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !15, file: !16, line: 273, baseType: !8, size: 64, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !15, file: !16, line: 274, baseType: !8, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !15, file: !16, line: 275, baseType: !8, size: 64, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !15, file: !16, line: 276, baseType: !8, size: 64, offset: 256)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !15, file: !16, line: 277, baseType: !8, size: 64, offset: 320)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !15, file: !16, line: 278, baseType: !8, size: 64, offset: 384)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !15, file: !16, line: 279, baseType: !8, size: 64, offset: 448)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !15, file: !16, line: 280, baseType: !8, size: 64, offset: 512)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !15, file: !16, line: 281, baseType: !8, size: 64, offset: 576)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !15, file: !16, line: 282, baseType: !8, size: 64, offset: 640)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !15, file: !16, line: 283, baseType: !8, size: 64, offset: 704)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !15, file: !16, line: 284, baseType: !32, size: 64, offset: 768)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !16, line: 186, size: 192, elements: !34)
!34 = !{!35, !36, !38}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !33, file: !16, line: 187, baseType: !32, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !33, file: !16, line: 188, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !33, file: !16, line: 189, baseType: !19, size: 32, offset: 128)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !15, file: !16, line: 285, baseType: !37, size: 64, offset: 832)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !15, file: !16, line: 286, baseType: !19, size: 32, offset: 896)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !16, line: 287, baseType: !19, size: 32, offset: 928)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !15, file: !16, line: 288, baseType: !43, size: 64, offset: 960)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !44, line: 141, baseType: !45)
!44 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!45 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !15, file: !16, line: 289, baseType: !47, size: 16, offset: 1024)
!47 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !15, file: !16, line: 290, baseType: !49, size: 8, offset: 1040)
!49 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !15, file: !16, line: 291, baseType: !51, size: 8, offset: 1048)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !52)
!52 = !{!53}
!53 = !DISubrange(count: 1)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !16, line: 292, baseType: !55, size: 64, offset: 1088)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !16, line: 180, baseType: null)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !16, line: 293, baseType: !58, size: 64, offset: 1152)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !44, line: 142, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !44, line: 56, baseType: !60)
!60 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !15, file: !16, line: 294, baseType: !62, size: 64, offset: 1216)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !15, file: !16, line: 295, baseType: !62, size: 64, offset: 1280)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !15, file: !16, line: 296, baseType: !62, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !15, file: !16, line: 297, baseType: !62, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !15, file: !16, line: 298, baseType: !67, size: 32, offset: 1472)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !68, line: 211, baseType: !69)
!68 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!69 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !15, file: !16, line: 299, baseType: !19, size: 32, offset: 1504)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !15, file: !16, line: 300, baseType: !72, size: 192, offset: 1536)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 24)
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!77 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!80 = !{!81, !0, !124, !131, !133}
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "empty_frame", scope: !2, file: !83, line: 524, type: !84, isLocal: true, isDefinition: true)
!83 = !DIFile(filename: "/home/wslee/benchmarks/sound/checkmp3-1.98/mp3_check_misc.c", directory: "")
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "frame_info", file: !85, line: 104, baseType: !86)
!85 = !DIFile(filename: "/home/wslee/benchmarks/sound/checkmp3-1.98/mp3_check.h", directory: "")
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_frame_info_32", file: !85, line: 104, size: 896, elements: !87)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !120, !121, !122, !123}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "FRAME_LENGTH", scope: !86, file: !85, line: 105, baseType: !19, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "FRAME_DATA_LENGTH", scope: !86, file: !85, line: 106, baseType: !19, size: 32, offset: 32)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "BIT_RATE", scope: !86, file: !85, line: 107, baseType: !19, size: 32, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLE_FREQ", scope: !86, file: !85, line: 108, baseType: !19, size: 32, offset: 96)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "SAMPLES_PER_FRAME", scope: !86, file: !85, line: 109, baseType: !19, size: 32, offset: 128)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "MPV_1", scope: !86, file: !85, line: 110, baseType: !77, size: 16, offset: 160)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "MPV_2", scope: !86, file: !85, line: 111, baseType: !77, size: 16, offset: 176)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "MPV_25", scope: !86, file: !85, line: 112, baseType: !77, size: 16, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "MPV_RESERVED", scope: !86, file: !85, line: 113, baseType: !77, size: 16, offset: 208)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "L1", scope: !86, file: !85, line: 114, baseType: !77, size: 16, offset: 224)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "L2", scope: !86, file: !85, line: 115, baseType: !77, size: 16, offset: 240)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "L3", scope: !86, file: !85, line: 116, baseType: !77, size: 16, offset: 256)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "L_RESERVED", scope: !86, file: !85, line: 117, baseType: !77, size: 16, offset: 272)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "PROT_BIT", scope: !86, file: !85, line: 118, baseType: !77, size: 16, offset: 288)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "PAD_BIT", scope: !86, file: !85, line: 119, baseType: !77, size: 16, offset: 304)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "PRIV_BIT", scope: !86, file: !85, line: 120, baseType: !77, size: 16, offset: 320)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "STEREO", scope: !86, file: !85, line: 121, baseType: !77, size: 16, offset: 336)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "JOINT_STEREO", scope: !86, file: !85, line: 122, baseType: !77, size: 16, offset: 352)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "DUAL_STEREO", scope: !86, file: !85, line: 123, baseType: !77, size: 16, offset: 368)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "SINGLE_CHANNEL", scope: !86, file: !85, line: 124, baseType: !77, size: 16, offset: 384)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "MODE_EXTENSION", scope: !86, file: !85, line: 125, baseType: !77, size: 16, offset: 400)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "ID3V2", scope: !86, file: !85, line: 126, baseType: !77, size: 16, offset: 416)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "COPYRIGHT", scope: !86, file: !85, line: 127, baseType: !77, size: 16, offset: 432)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "ORIGINAL", scope: !86, file: !85, line: 128, baseType: !77, size: 16, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "EMPH_NONE", scope: !86, file: !85, line: 129, baseType: !77, size: 16, offset: 464)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "EMPH_5015", scope: !86, file: !85, line: 130, baseType: !77, size: 16, offset: 480)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "EMPH_RESERV", scope: !86, file: !85, line: 131, baseType: !77, size: 16, offset: 496)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "EMPH_CCIT", scope: !86, file: !85, line: 132, baseType: !77, size: 16, offset: 512)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "BIN_STRING", scope: !86, file: !85, line: 133, baseType: !117, size: 264, offset: 528)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 264, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 33)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "INT_HEADER", scope: !86, file: !85, line: 134, baseType: !19, size: 32, offset: 800)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "CRC16_VALUE", scope: !86, file: !85, line: 135, baseType: !77, size: 16, offset: 832)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "CORRECT_CRC16_VALUE", scope: !86, file: !85, line: 136, baseType: !77, size: 16, offset: 848)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "check_state", scope: !86, file: !85, line: 137, baseType: !77, size: 16, offset: 864)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(name: "sampling_rate_matrix", scope: !2, file: !126, line: 194, type: !127, isLocal: true, isDefinition: true)
!126 = !DIFile(filename: "/home/wslee/benchmarks/sound/checkmp3-1.98/support_functions.h", directory: "")
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 384, elements: !128)
!128 = !{!129, !130}
!129 = !DISubrange(count: 4)
!130 = !DISubrange(count: 3)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(name: "inited", scope: !2, file: !83, line: 525, type: !19, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "crc_table", scope: !2, file: !83, line: 810, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 4096, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 256)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 3072, elements: !139)
!139 = !{!140, !141}
!140 = !DISubrange(count: 6)
!141 = !DISubrange(count: 16)
!142 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!143 = !{i32 2, !"Dwarf Version", i32 4}
!144 = !{i32 2, !"Debug Info Version", i32 3}
!145 = !{i32 1, !"wchar_size", i32 4}
!146 = !{i32 7, !"PIC Level", i32 2}
!147 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!148 = distinct !DISubprogram(name: "main", scope: !149, file: !149, line: 74, type: !150, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!149 = !DIFile(filename: "/home/wslee/benchmarks/sound/checkmp3-1.98/mp3_check.c", directory: "")
!150 = !DISubroutineType(types: !151)
!151 = !{!19, !19, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!153 = !DILocalVariable(name: "argc", arg: 1, scope: !148, file: !149, line: 74, type: !19)
!154 = !DILocation(line: 0, scope: !148)
!155 = !DILocalVariable(name: "argv", arg: 2, scope: !148, file: !149, line: 74, type: !152)
!156 = !DILocalVariable(name: "flags", scope: !148, file: !149, line: 78, type: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "command_flags", file: !85, line: 82, baseType: !158)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_command_flags_30", file: !85, line: 82, size: 352, elements: !159)
!159 = !{!160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "aflag", scope: !158, file: !85, line: 83, baseType: !19, size: 32)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "bflag", scope: !158, file: !85, line: 84, baseType: !19, size: 32, offset: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "eflag", scope: !158, file: !85, line: 85, baseType: !19, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fflag", scope: !158, file: !85, line: 86, baseType: !19, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "iflag", scope: !158, file: !85, line: 87, baseType: !19, size: 32, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pflag", scope: !158, file: !85, line: 88, baseType: !19, size: 32, offset: 160)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "qflag", scope: !158, file: !85, line: 89, baseType: !19, size: 32, offset: 192)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "sflag", scope: !158, file: !85, line: 90, baseType: !19, size: 32, offset: 224)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ssflag", scope: !158, file: !85, line: 91, baseType: !19, size: 32, offset: 256)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "vflag", scope: !158, file: !85, line: 92, baseType: !19, size: 32, offset: 288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "vvflag", scope: !158, file: !85, line: 93, baseType: !19, size: 32, offset: 320)
!171 = !DILocation(line: 78, column: 17, scope: !148)
!172 = !DILocalVariable(name: "flag_options", scope: !148, file: !149, line: 79, type: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "meta_options", file: !85, line: 66, baseType: !174)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_meta_options_29", file: !85, line: 66, size: 64, elements: !175)
!175 = !{!176, !177}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "byte_limit", scope: !174, file: !85, line: 67, baseType: !19, size: 32)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "min_frame_seq", scope: !174, file: !85, line: 68, baseType: !19, size: 32, offset: 32)
!178 = !DILocation(line: 79, column: 16, scope: !148)
!179 = !DILocalVariable(name: "__cil_tmp9", scope: !148, file: !149, line: 82, type: !8)
!180 = !DILocation(line: 82, column: 9, scope: !148)
!181 = !DILocalVariable(name: "__cil_tmp10", scope: !148, file: !149, line: 83, type: !8)
!182 = !DILocation(line: 83, column: 9, scope: !148)
!183 = !DILocalVariable(name: "got_error", scope: !148, file: !149, line: 77, type: !19)
!184 = !DILocation(line: 85, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !149, line: 82, column: 3)
!186 = distinct !DILexicalBlock(scope: !187, file: !149, line: 86, column: 3)
!187 = distinct !DILexicalBlock(scope: !148, file: !149, line: 85, column: 3)
!188 = !DILocation(line: 87, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !190, file: !149, line: 89, column: 3)
!190 = distinct !DILexicalBlock(scope: !187, file: !149, line: 88, column: 3)
!191 = !DILocation(line: 87, column: 13, scope: !189)
!192 = !DILocation(line: 87, column: 10, scope: !193)
!193 = distinct !DILexicalBlock(scope: !194, file: !149, line: 91, column: 5)
!194 = distinct !DILexicalBlock(scope: !195, file: !149, line: 90, column: 5)
!195 = distinct !DILexicalBlock(scope: !189, file: !149, line: 87, column: 13)
!196 = !DILocalVariable(name: "ch", scope: !148, file: !149, line: 76, type: !19)
!197 = !DILocation(line: 87, column: 15, scope: !198)
!198 = distinct !DILexicalBlock(scope: !195, file: !149, line: 87, column: 9)
!199 = !DILocation(line: 87, column: 9, scope: !195)
!200 = !DILocation(line: 87, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !149, line: 87, column: 23)
!202 = !DILocation(line: 89, column: 12, scope: !203)
!203 = distinct !DILexicalBlock(scope: !204, file: !149, line: 89, column: 9)
!204 = distinct !DILexicalBlock(scope: !195, file: !149, line: 89, column: 5)
!205 = !DILocation(line: 89, column: 9, scope: !204)
!206 = !DILocation(line: 89, column: 7, scope: !207)
!207 = distinct !DILexicalBlock(scope: !203, file: !149, line: 89, column: 20)
!208 = !DILocation(line: 114, column: 12, scope: !209)
!209 = distinct !DILexicalBlock(scope: !204, file: !149, line: 114, column: 9)
!210 = !DILocation(line: 114, column: 9, scope: !204)
!211 = !DILocation(line: 114, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !209, file: !149, line: 114, column: 20)
!213 = !DILocation(line: 120, column: 12, scope: !214)
!214 = distinct !DILexicalBlock(scope: !204, file: !149, line: 120, column: 9)
!215 = !DILocation(line: 120, column: 9, scope: !204)
!216 = !DILocation(line: 120, column: 7, scope: !217)
!217 = distinct !DILexicalBlock(scope: !214, file: !149, line: 120, column: 20)
!218 = !DILocation(line: 126, column: 12, scope: !219)
!219 = distinct !DILexicalBlock(scope: !204, file: !149, line: 126, column: 9)
!220 = !DILocation(line: 126, column: 9, scope: !204)
!221 = !DILocation(line: 126, column: 7, scope: !222)
!222 = distinct !DILexicalBlock(scope: !219, file: !149, line: 126, column: 20)
!223 = !DILocation(line: 137, column: 12, scope: !224)
!224 = distinct !DILexicalBlock(scope: !204, file: !149, line: 137, column: 9)
!225 = !DILocation(line: 137, column: 9, scope: !204)
!226 = !DILocation(line: 137, column: 7, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !149, line: 137, column: 19)
!228 = !DILocation(line: 142, column: 12, scope: !229)
!229 = distinct !DILexicalBlock(scope: !204, file: !149, line: 142, column: 9)
!230 = !DILocation(line: 142, column: 9, scope: !204)
!231 = !DILocation(line: 142, column: 7, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !149, line: 142, column: 20)
!233 = !DILocation(line: 159, column: 12, scope: !234)
!234 = distinct !DILexicalBlock(scope: !204, file: !149, line: 159, column: 9)
!235 = !DILocation(line: 159, column: 9, scope: !204)
!236 = !DILocation(line: 159, column: 7, scope: !237)
!237 = distinct !DILexicalBlock(scope: !234, file: !149, line: 159, column: 20)
!238 = !DILocation(line: 165, column: 12, scope: !239)
!239 = distinct !DILexicalBlock(scope: !204, file: !149, line: 165, column: 9)
!240 = !DILocation(line: 165, column: 9, scope: !204)
!241 = !DILocation(line: 165, column: 7, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !149, line: 165, column: 19)
!243 = !DILocation(line: 173, column: 12, scope: !244)
!244 = distinct !DILexicalBlock(scope: !204, file: !149, line: 173, column: 9)
!245 = !DILocation(line: 173, column: 9, scope: !204)
!246 = !DILocation(line: 173, column: 7, scope: !247)
!247 = distinct !DILexicalBlock(scope: !244, file: !149, line: 173, column: 20)
!248 = !DILocation(line: 178, column: 5, scope: !204)
!249 = !DILocation(line: 103, column: 32, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !149, line: 181, column: 5)
!251 = distinct !DILexicalBlock(scope: !204, file: !149, line: 180, column: 5)
!252 = !DILocation(line: 103, column: 11, scope: !250)
!253 = !DILocalVariable(name: "tmp", scope: !148, file: !149, line: 80, type: !19)
!254 = !DILocation(line: 103, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !204, file: !149, line: 103, column: 9)
!256 = !DILocation(line: 103, column: 9, scope: !204)
!257 = !DILocation(line: 104, column: 57, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !149, line: 105, column: 7)
!259 = distinct !DILexicalBlock(scope: !260, file: !149, line: 104, column: 7)
!260 = distinct !DILexicalBlock(scope: !255, file: !149, line: 103, column: 18)
!261 = !DILocation(line: 104, column: 36, scope: !258)
!262 = !DILocation(line: 104, column: 20, scope: !258)
!263 = !DILocation(line: 104, column: 34, scope: !258)
!264 = !DILocation(line: 105, column: 13, scope: !259)
!265 = !DILocation(line: 105, column: 19, scope: !259)
!266 = !DILocation(line: 107, column: 5, scope: !260)
!267 = !DILocation(line: 108, column: 40, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !149, line: 109, column: 7)
!269 = distinct !DILexicalBlock(scope: !270, file: !149, line: 108, column: 7)
!270 = distinct !DILexicalBlock(scope: !255, file: !149, line: 107, column: 12)
!271 = !DILocation(line: 108, column: 7, scope: !268)
!272 = !DILocation(line: 110, column: 7, scope: !270)
!273 = !DILocation(line: 113, column: 5, scope: !204)
!274 = !DILocation(line: 117, column: 11, scope: !204)
!275 = !DILocation(line: 117, column: 17, scope: !204)
!276 = !DILocation(line: 119, column: 5, scope: !204)
!277 = !DILocation(line: 123, column: 11, scope: !204)
!278 = !DILocation(line: 123, column: 17, scope: !204)
!279 = !DILocation(line: 125, column: 5, scope: !204)
!280 = !DILocation(line: 128, column: 11, scope: !204)
!281 = !DILocation(line: 128, column: 17, scope: !204)
!282 = !DILocation(line: 132, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !204, file: !149, line: 132, column: 9)
!284 = !DILocation(line: 132, column: 9, scope: !204)
!285 = !DILocation(line: 132, column: 18, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !149, line: 132, column: 11)
!287 = distinct !DILexicalBlock(scope: !283, file: !149, line: 132, column: 17)
!288 = !DILocation(line: 132, column: 17, scope: !286)
!289 = !DILocation(line: 132, column: 11, scope: !286)
!290 = !DILocation(line: 132, column: 25, scope: !286)
!291 = !DILocation(line: 132, column: 11, scope: !287)
!292 = !DILocation(line: 133, column: 15, scope: !293)
!293 = distinct !DILexicalBlock(scope: !286, file: !149, line: 132, column: 33)
!294 = !DILocation(line: 133, column: 22, scope: !293)
!295 = !DILocation(line: 134, column: 7, scope: !293)
!296 = !DILocation(line: 135, column: 5, scope: !287)
!297 = !DILocation(line: 135, column: 5, scope: !204)
!298 = !DILocation(line: 139, column: 11, scope: !204)
!299 = !DILocation(line: 139, column: 17, scope: !204)
!300 = !DILocation(line: 140, column: 5, scope: !204)
!301 = !DILocation(line: 144, column: 11, scope: !204)
!302 = !DILocation(line: 144, column: 17, scope: !204)
!303 = !DILocation(line: 149, column: 9, scope: !304)
!304 = distinct !DILexicalBlock(scope: !204, file: !149, line: 149, column: 9)
!305 = !DILocation(line: 149, column: 9, scope: !204)
!306 = !DILocation(line: 149, column: 18, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !149, line: 149, column: 11)
!308 = distinct !DILexicalBlock(scope: !304, file: !149, line: 149, column: 17)
!309 = !DILocation(line: 149, column: 17, scope: !307)
!310 = !DILocation(line: 149, column: 11, scope: !307)
!311 = !DILocation(line: 149, column: 25, scope: !307)
!312 = !DILocation(line: 149, column: 11, scope: !308)
!313 = !DILocation(line: 150, column: 15, scope: !314)
!314 = distinct !DILexicalBlock(scope: !307, file: !149, line: 149, column: 33)
!315 = !DILocation(line: 150, column: 22, scope: !314)
!316 = !DILocation(line: 151, column: 7, scope: !314)
!317 = !DILocation(line: 152, column: 5, scope: !308)
!318 = !DILocation(line: 152, column: 9, scope: !319)
!319 = distinct !DILexicalBlock(scope: !204, file: !149, line: 152, column: 9)
!320 = !DILocation(line: 152, column: 9, scope: !204)
!321 = !DILocation(line: 152, column: 18, scope: !322)
!322 = distinct !DILexicalBlock(scope: !323, file: !149, line: 152, column: 11)
!323 = distinct !DILexicalBlock(scope: !319, file: !149, line: 152, column: 17)
!324 = !DILocation(line: 152, column: 17, scope: !322)
!325 = !DILocation(line: 152, column: 11, scope: !322)
!326 = !DILocation(line: 152, column: 25, scope: !322)
!327 = !DILocation(line: 152, column: 11, scope: !323)
!328 = !DILocation(line: 153, column: 15, scope: !329)
!329 = distinct !DILexicalBlock(scope: !322, file: !149, line: 152, column: 33)
!330 = !DILocation(line: 153, column: 21, scope: !329)
!331 = !DILocation(line: 154, column: 7, scope: !329)
!332 = !DILocation(line: 155, column: 5, scope: !323)
!333 = !DILocation(line: 157, column: 5, scope: !204)
!334 = !DILocation(line: 162, column: 11, scope: !204)
!335 = !DILocation(line: 162, column: 17, scope: !204)
!336 = !DILocation(line: 163, column: 5, scope: !204)
!337 = !DILocation(line: 167, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !204, file: !149, line: 167, column: 9)
!339 = !DILocation(line: 167, column: 9, scope: !204)
!340 = !DILocation(line: 168, column: 54, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !149, line: 169, column: 7)
!342 = distinct !DILexicalBlock(scope: !343, file: !149, line: 168, column: 7)
!343 = distinct !DILexicalBlock(scope: !338, file: !149, line: 167, column: 17)
!344 = !DILocation(line: 168, column: 33, scope: !341)
!345 = !DILocation(line: 168, column: 20, scope: !341)
!346 = !DILocation(line: 168, column: 31, scope: !341)
!347 = !DILocation(line: 171, column: 5, scope: !343)
!348 = !DILocation(line: 170, column: 11, scope: !204)
!349 = !DILocation(line: 170, column: 17, scope: !204)
!350 = !DILocation(line: 171, column: 5, scope: !204)
!351 = !DILocation(line: 175, column: 5, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !149, line: 174, column: 5)
!353 = distinct !DILexicalBlock(scope: !204, file: !149, line: 173, column: 5)
!354 = !DILocation(line: 176, column: 5, scope: !204)
!355 = !DILocation(line: 179, column: 5, scope: !356)
!356 = distinct !DILexicalBlock(scope: !357, file: !149, line: 179, column: 5)
!357 = distinct !DILexicalBlock(scope: !204, file: !149, line: 178, column: 5)
!358 = !DILocation(line: 180, column: 5, scope: !204)
!359 = distinct !{!359, !188, !360}
!360 = !DILocation(line: 183, column: 3, scope: !189)
!361 = !DILocation(line: 185, column: 3, scope: !189)
!362 = !DILocation(line: 183, column: 11, scope: !187)
!363 = !DILocation(line: 183, column: 8, scope: !187)
!364 = !DILocation(line: 188, column: 23, scope: !365)
!365 = distinct !DILexicalBlock(scope: !187, file: !149, line: 188, column: 7)
!366 = !DILocation(line: 188, column: 7, scope: !365)
!367 = !DILocation(line: 188, column: 29, scope: !365)
!368 = !DILocation(line: 188, column: 7, scope: !187)
!369 = !DILocation(line: 189, column: 5, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !149, line: 190, column: 5)
!371 = distinct !DILexicalBlock(scope: !372, file: !149, line: 189, column: 5)
!372 = distinct !DILexicalBlock(scope: !365, file: !149, line: 188, column: 61)
!373 = !DILocation(line: 192, column: 3, scope: !372)
!374 = !DILocation(line: 200, column: 15, scope: !375)
!375 = distinct !DILexicalBlock(scope: !187, file: !149, line: 200, column: 7)
!376 = !DILocation(line: 200, column: 9, scope: !375)
!377 = !DILocation(line: 200, column: 7, scope: !187)
!378 = !DILocation(line: 200, column: 17, scope: !379)
!379 = distinct !DILexicalBlock(scope: !380, file: !149, line: 200, column: 9)
!380 = distinct !DILexicalBlock(scope: !375, file: !149, line: 200, column: 22)
!381 = !DILocation(line: 200, column: 11, scope: !379)
!382 = !DILocation(line: 200, column: 9, scope: !380)
!383 = !DILocation(line: 200, column: 19, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !149, line: 200, column: 11)
!385 = distinct !DILexicalBlock(scope: !379, file: !149, line: 200, column: 24)
!386 = !DILocation(line: 200, column: 13, scope: !384)
!387 = !DILocation(line: 200, column: 11, scope: !385)
!388 = !DILocation(line: 201, column: 15, scope: !389)
!389 = distinct !DILexicalBlock(scope: !384, file: !149, line: 200, column: 26)
!390 = !DILocation(line: 201, column: 21, scope: !389)
!391 = !DILocation(line: 202, column: 7, scope: !389)
!392 = !DILocation(line: 203, column: 5, scope: !385)
!393 = !DILocation(line: 204, column: 3, scope: !380)
!394 = !DILocation(line: 203, column: 15, scope: !395)
!395 = distinct !DILexicalBlock(scope: !187, file: !149, line: 203, column: 7)
!396 = !DILocation(line: 203, column: 9, scope: !395)
!397 = !DILocation(line: 203, column: 7, scope: !187)
!398 = !DILocation(line: 204, column: 11, scope: !399)
!399 = distinct !DILexicalBlock(scope: !395, file: !149, line: 203, column: 22)
!400 = !DILocation(line: 204, column: 17, scope: !399)
!401 = !DILocation(line: 205, column: 3, scope: !399)
!402 = !DILocation(line: 209, column: 13, scope: !403)
!403 = distinct !DILexicalBlock(scope: !404, file: !149, line: 207, column: 3)
!404 = distinct !DILexicalBlock(scope: !187, file: !149, line: 206, column: 3)
!405 = !DILocalVariable(name: "tmp___0", scope: !148, file: !149, line: 81, type: !19)
!406 = !DILocation(line: 209, column: 9, scope: !407)
!407 = distinct !DILexicalBlock(scope: !187, file: !149, line: 209, column: 7)
!408 = !DILocation(line: 209, column: 7, scope: !187)
!409 = !DILocation(line: 210, column: 15, scope: !410)
!410 = distinct !DILexicalBlock(scope: !407, file: !149, line: 209, column: 18)
!411 = !DILocation(line: 211, column: 3, scope: !410)
!412 = !DILocation(line: 0, scope: !187)
!413 = !DILocation(line: 212, column: 15, scope: !414)
!414 = distinct !DILexicalBlock(scope: !187, file: !149, line: 212, column: 7)
!415 = !DILocation(line: 212, column: 9, scope: !414)
!416 = !DILocation(line: 212, column: 7, scope: !187)
!417 = !DILocation(line: 213, column: 5, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !149, line: 214, column: 5)
!419 = distinct !DILexicalBlock(scope: !420, file: !149, line: 213, column: 5)
!420 = distinct !DILexicalBlock(scope: !414, file: !149, line: 212, column: 22)
!421 = !DILocation(line: 216, column: 3, scope: !420)
!422 = !DILocation(line: 220, column: 17, scope: !423)
!423 = distinct !DILexicalBlock(scope: !187, file: !149, line: 220, column: 7)
!424 = !DILocation(line: 220, column: 7, scope: !187)
!425 = !DILocation(line: 221, column: 5, scope: !426)
!426 = distinct !DILexicalBlock(scope: !423, file: !149, line: 220, column: 22)
!427 = !DILocation(line: 223, column: 5, scope: !428)
!428 = distinct !DILexicalBlock(scope: !423, file: !149, line: 222, column: 10)
!429 = !DILocation(line: 226, column: 1, scope: !148)
!430 = distinct !DISubprogram(name: "init_command_flags_struct", scope: !83, file: !83, line: 464, type: !431, scopeLine: 465, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!431 = !DISubroutineType(types: !432)
!432 = !{null, !433}
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!434 = !DILocalVariable(name: "flags", arg: 1, scope: !430, file: !83, line: 464, type: !433)
!435 = !DILocation(line: 0, scope: !430)
!436 = !DILocation(line: 468, column: 10, scope: !437)
!437 = distinct !DILexicalBlock(scope: !430, file: !83, line: 468, column: 3)
!438 = !DILocation(line: 468, column: 16, scope: !437)
!439 = !DILocation(line: 469, column: 10, scope: !437)
!440 = !DILocation(line: 469, column: 16, scope: !437)
!441 = !DILocation(line: 470, column: 10, scope: !437)
!442 = !DILocation(line: 470, column: 16, scope: !437)
!443 = !DILocation(line: 471, column: 10, scope: !437)
!444 = !DILocation(line: 471, column: 16, scope: !437)
!445 = !DILocation(line: 472, column: 10, scope: !437)
!446 = !DILocation(line: 472, column: 16, scope: !437)
!447 = !DILocation(line: 473, column: 10, scope: !437)
!448 = !DILocation(line: 473, column: 16, scope: !437)
!449 = !DILocation(line: 474, column: 10, scope: !437)
!450 = !DILocation(line: 474, column: 16, scope: !437)
!451 = !DILocation(line: 475, column: 10, scope: !437)
!452 = !DILocation(line: 475, column: 16, scope: !437)
!453 = !DILocation(line: 476, column: 10, scope: !437)
!454 = !DILocation(line: 476, column: 17, scope: !437)
!455 = !DILocation(line: 477, column: 10, scope: !437)
!456 = !DILocation(line: 477, column: 16, scope: !437)
!457 = !DILocation(line: 478, column: 10, scope: !437)
!458 = !DILocation(line: 478, column: 17, scope: !437)
!459 = !DILocation(line: 479, column: 3, scope: !437)
!460 = distinct !DISubprogram(name: "print_usage", scope: !83, file: !83, line: 577, type: !461, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!461 = !DISubroutineType(types: !462)
!462 = !{null}
!463 = !DILocalVariable(name: "__cil_tmp1", scope: !460, file: !83, line: 579, type: !8)
!464 = !DILocation(line: 579, column: 9, scope: !460)
!465 = !DILocalVariable(name: "__cil_tmp2", scope: !460, file: !83, line: 580, type: !8)
!466 = !DILocation(line: 580, column: 9, scope: !460)
!467 = !DILocalVariable(name: "__cil_tmp3", scope: !460, file: !83, line: 581, type: !8)
!468 = !DILocation(line: 581, column: 9, scope: !460)
!469 = !DILocalVariable(name: "__cil_tmp4", scope: !460, file: !83, line: 582, type: !8)
!470 = !DILocation(line: 582, column: 9, scope: !460)
!471 = !DILocalVariable(name: "__cil_tmp5", scope: !460, file: !83, line: 583, type: !8)
!472 = !DILocation(line: 583, column: 9, scope: !460)
!473 = !DILocalVariable(name: "__cil_tmp6", scope: !460, file: !83, line: 584, type: !8)
!474 = !DILocation(line: 584, column: 9, scope: !460)
!475 = !DILocalVariable(name: "__cil_tmp7", scope: !460, file: !83, line: 585, type: !8)
!476 = !DILocation(line: 585, column: 9, scope: !460)
!477 = !DILocalVariable(name: "__cil_tmp8", scope: !460, file: !83, line: 586, type: !8)
!478 = !DILocation(line: 586, column: 9, scope: !460)
!479 = !DILocalVariable(name: "__cil_tmp9", scope: !460, file: !83, line: 587, type: !8)
!480 = !DILocation(line: 587, column: 9, scope: !460)
!481 = !DILocalVariable(name: "__cil_tmp10", scope: !460, file: !83, line: 588, type: !8)
!482 = !DILocation(line: 588, column: 9, scope: !460)
!483 = !DILocalVariable(name: "__cil_tmp11", scope: !460, file: !83, line: 589, type: !8)
!484 = !DILocation(line: 589, column: 9, scope: !460)
!485 = !DILocalVariable(name: "__cil_tmp12", scope: !460, file: !83, line: 590, type: !8)
!486 = !DILocation(line: 590, column: 9, scope: !460)
!487 = !DILocalVariable(name: "__cil_tmp13", scope: !460, file: !83, line: 591, type: !8)
!488 = !DILocation(line: 591, column: 9, scope: !460)
!489 = !DILocalVariable(name: "__cil_tmp14", scope: !460, file: !83, line: 592, type: !8)
!490 = !DILocation(line: 592, column: 9, scope: !460)
!491 = !DILocalVariable(name: "__cil_tmp15", scope: !460, file: !83, line: 593, type: !8)
!492 = !DILocation(line: 593, column: 9, scope: !460)
!493 = !DILocalVariable(name: "__cil_tmp16", scope: !460, file: !83, line: 594, type: !8)
!494 = !DILocation(line: 594, column: 9, scope: !460)
!495 = !DILocalVariable(name: "__cil_tmp17", scope: !460, file: !83, line: 595, type: !8)
!496 = !DILocation(line: 595, column: 9, scope: !460)
!497 = !DILocalVariable(name: "__cil_tmp18", scope: !460, file: !83, line: 596, type: !8)
!498 = !DILocation(line: 596, column: 9, scope: !460)
!499 = !DILocalVariable(name: "__cil_tmp19", scope: !460, file: !83, line: 597, type: !8)
!500 = !DILocation(line: 597, column: 9, scope: !460)
!501 = !DILocalVariable(name: "__cil_tmp20", scope: !460, file: !83, line: 598, type: !8)
!502 = !DILocation(line: 598, column: 9, scope: !460)
!503 = !DILocalVariable(name: "__cil_tmp21", scope: !460, file: !83, line: 599, type: !8)
!504 = !DILocation(line: 599, column: 9, scope: !460)
!505 = !DILocalVariable(name: "__cil_tmp22", scope: !460, file: !83, line: 600, type: !8)
!506 = !DILocation(line: 600, column: 9, scope: !460)
!507 = !DILocalVariable(name: "__cil_tmp23", scope: !460, file: !83, line: 601, type: !8)
!508 = !DILocation(line: 601, column: 9, scope: !460)
!509 = !DILocalVariable(name: "__cil_tmp24", scope: !460, file: !83, line: 602, type: !8)
!510 = !DILocation(line: 602, column: 9, scope: !460)
!511 = !DILocalVariable(name: "__cil_tmp25", scope: !460, file: !83, line: 603, type: !8)
!512 = !DILocation(line: 603, column: 9, scope: !460)
!513 = !DILocalVariable(name: "__cil_tmp26", scope: !460, file: !83, line: 604, type: !8)
!514 = !DILocation(line: 604, column: 9, scope: !460)
!515 = !DILocalVariable(name: "__cil_tmp27", scope: !460, file: !83, line: 605, type: !8)
!516 = !DILocation(line: 605, column: 9, scope: !460)
!517 = !DILocalVariable(name: "__cil_tmp28", scope: !460, file: !83, line: 606, type: !8)
!518 = !DILocation(line: 606, column: 9, scope: !460)
!519 = !DILocalVariable(name: "__cil_tmp29", scope: !460, file: !83, line: 607, type: !8)
!520 = !DILocation(line: 607, column: 9, scope: !460)
!521 = !DILocalVariable(name: "__cil_tmp30", scope: !460, file: !83, line: 608, type: !8)
!522 = !DILocation(line: 608, column: 9, scope: !460)
!523 = !DILocalVariable(name: "__cil_tmp31", scope: !460, file: !83, line: 609, type: !8)
!524 = !DILocation(line: 609, column: 9, scope: !460)
!525 = !DILocalVariable(name: "__cil_tmp32", scope: !460, file: !83, line: 610, type: !8)
!526 = !DILocation(line: 610, column: 9, scope: !460)
!527 = !DILocalVariable(name: "__cil_tmp33", scope: !460, file: !83, line: 611, type: !8)
!528 = !DILocation(line: 611, column: 9, scope: !460)
!529 = !DILocalVariable(name: "__cil_tmp34", scope: !460, file: !83, line: 612, type: !8)
!530 = !DILocation(line: 612, column: 9, scope: !460)
!531 = !DILocalVariable(name: "__cil_tmp35", scope: !460, file: !83, line: 613, type: !8)
!532 = !DILocation(line: 613, column: 9, scope: !460)
!533 = !DILocalVariable(name: "__cil_tmp36", scope: !460, file: !83, line: 614, type: !8)
!534 = !DILocation(line: 614, column: 9, scope: !460)
!535 = !DILocalVariable(name: "__cil_tmp37", scope: !460, file: !83, line: 615, type: !8)
!536 = !DILocation(line: 615, column: 9, scope: !460)
!537 = !DILocalVariable(name: "__cil_tmp38", scope: !460, file: !83, line: 616, type: !8)
!538 = !DILocation(line: 616, column: 9, scope: !460)
!539 = !DILocalVariable(name: "__cil_tmp39", scope: !460, file: !83, line: 617, type: !8)
!540 = !DILocation(line: 617, column: 9, scope: !460)
!541 = !DILocalVariable(name: "__cil_tmp40", scope: !460, file: !83, line: 618, type: !8)
!542 = !DILocation(line: 618, column: 9, scope: !460)
!543 = !DILocalVariable(name: "__cil_tmp41", scope: !460, file: !83, line: 619, type: !8)
!544 = !DILocation(line: 619, column: 9, scope: !460)
!545 = !DILocation(line: 580, column: 36, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !83, line: 623, column: 3)
!547 = distinct !DILexicalBlock(scope: !548, file: !83, line: 622, column: 3)
!548 = distinct !DILexicalBlock(scope: !460, file: !83, line: 621, column: 3)
!549 = !DILocation(line: 580, column: 3, scope: !546)
!550 = !DILocation(line: 581, column: 36, scope: !551)
!551 = distinct !DILexicalBlock(scope: !547, file: !83, line: 582, column: 3)
!552 = !DILocation(line: 581, column: 3, scope: !551)
!553 = !DILocation(line: 582, column: 36, scope: !554)
!554 = distinct !DILexicalBlock(scope: !547, file: !83, line: 583, column: 3)
!555 = !DILocation(line: 582, column: 3, scope: !554)
!556 = !DILocation(line: 583, column: 36, scope: !557)
!557 = distinct !DILexicalBlock(scope: !547, file: !83, line: 584, column: 3)
!558 = !DILocation(line: 583, column: 3, scope: !557)
!559 = !DILocation(line: 584, column: 36, scope: !560)
!560 = distinct !DILexicalBlock(scope: !547, file: !83, line: 585, column: 3)
!561 = !DILocation(line: 584, column: 3, scope: !560)
!562 = !DILocation(line: 585, column: 36, scope: !563)
!563 = distinct !DILexicalBlock(scope: !547, file: !83, line: 586, column: 3)
!564 = !DILocation(line: 585, column: 3, scope: !563)
!565 = !DILocation(line: 586, column: 36, scope: !566)
!566 = distinct !DILexicalBlock(scope: !547, file: !83, line: 587, column: 3)
!567 = !DILocation(line: 586, column: 3, scope: !566)
!568 = !DILocation(line: 587, column: 36, scope: !569)
!569 = distinct !DILexicalBlock(scope: !547, file: !83, line: 588, column: 3)
!570 = !DILocation(line: 587, column: 3, scope: !569)
!571 = !DILocation(line: 588, column: 36, scope: !572)
!572 = distinct !DILexicalBlock(scope: !547, file: !83, line: 589, column: 3)
!573 = !DILocation(line: 588, column: 3, scope: !572)
!574 = !DILocation(line: 589, column: 36, scope: !575)
!575 = distinct !DILexicalBlock(scope: !547, file: !83, line: 590, column: 3)
!576 = !DILocation(line: 589, column: 3, scope: !575)
!577 = !DILocation(line: 590, column: 36, scope: !578)
!578 = distinct !DILexicalBlock(scope: !547, file: !83, line: 591, column: 3)
!579 = !DILocation(line: 590, column: 3, scope: !578)
!580 = !DILocation(line: 591, column: 36, scope: !581)
!581 = distinct !DILexicalBlock(scope: !547, file: !83, line: 592, column: 3)
!582 = !DILocation(line: 591, column: 3, scope: !581)
!583 = !DILocation(line: 592, column: 36, scope: !584)
!584 = distinct !DILexicalBlock(scope: !547, file: !83, line: 593, column: 3)
!585 = !DILocation(line: 592, column: 3, scope: !584)
!586 = !DILocation(line: 593, column: 36, scope: !587)
!587 = distinct !DILexicalBlock(scope: !547, file: !83, line: 594, column: 3)
!588 = !DILocation(line: 593, column: 3, scope: !587)
!589 = !DILocation(line: 594, column: 36, scope: !590)
!590 = distinct !DILexicalBlock(scope: !547, file: !83, line: 595, column: 3)
!591 = !DILocation(line: 594, column: 3, scope: !590)
!592 = !DILocation(line: 595, column: 36, scope: !593)
!593 = distinct !DILexicalBlock(scope: !547, file: !83, line: 596, column: 3)
!594 = !DILocation(line: 595, column: 3, scope: !593)
!595 = !DILocation(line: 596, column: 36, scope: !596)
!596 = distinct !DILexicalBlock(scope: !547, file: !83, line: 597, column: 3)
!597 = !DILocation(line: 596, column: 3, scope: !596)
!598 = !DILocation(line: 597, column: 36, scope: !599)
!599 = distinct !DILexicalBlock(scope: !547, file: !83, line: 598, column: 3)
!600 = !DILocation(line: 597, column: 3, scope: !599)
!601 = !DILocation(line: 598, column: 36, scope: !602)
!602 = distinct !DILexicalBlock(scope: !547, file: !83, line: 599, column: 3)
!603 = !DILocation(line: 598, column: 3, scope: !602)
!604 = !DILocation(line: 599, column: 36, scope: !605)
!605 = distinct !DILexicalBlock(scope: !547, file: !83, line: 600, column: 3)
!606 = !DILocation(line: 599, column: 3, scope: !605)
!607 = !DILocation(line: 600, column: 36, scope: !608)
!608 = distinct !DILexicalBlock(scope: !547, file: !83, line: 601, column: 3)
!609 = !DILocation(line: 600, column: 3, scope: !608)
!610 = !DILocation(line: 601, column: 36, scope: !611)
!611 = distinct !DILexicalBlock(scope: !547, file: !83, line: 602, column: 3)
!612 = !DILocation(line: 601, column: 3, scope: !611)
!613 = !DILocation(line: 602, column: 36, scope: !614)
!614 = distinct !DILexicalBlock(scope: !547, file: !83, line: 603, column: 3)
!615 = !DILocation(line: 602, column: 3, scope: !614)
!616 = !DILocation(line: 603, column: 36, scope: !617)
!617 = distinct !DILexicalBlock(scope: !547, file: !83, line: 604, column: 3)
!618 = !DILocation(line: 603, column: 3, scope: !617)
!619 = !DILocation(line: 604, column: 36, scope: !620)
!620 = distinct !DILexicalBlock(scope: !547, file: !83, line: 605, column: 3)
!621 = !DILocation(line: 604, column: 3, scope: !620)
!622 = !DILocation(line: 605, column: 36, scope: !623)
!623 = distinct !DILexicalBlock(scope: !547, file: !83, line: 606, column: 3)
!624 = !DILocation(line: 605, column: 3, scope: !623)
!625 = !DILocation(line: 606, column: 36, scope: !626)
!626 = distinct !DILexicalBlock(scope: !547, file: !83, line: 607, column: 3)
!627 = !DILocation(line: 606, column: 3, scope: !626)
!628 = !DILocation(line: 607, column: 36, scope: !629)
!629 = distinct !DILexicalBlock(scope: !547, file: !83, line: 608, column: 3)
!630 = !DILocation(line: 607, column: 3, scope: !629)
!631 = !DILocation(line: 608, column: 36, scope: !632)
!632 = distinct !DILexicalBlock(scope: !547, file: !83, line: 609, column: 3)
!633 = !DILocation(line: 608, column: 3, scope: !632)
!634 = !DILocation(line: 609, column: 36, scope: !635)
!635 = distinct !DILexicalBlock(scope: !547, file: !83, line: 610, column: 3)
!636 = !DILocation(line: 609, column: 3, scope: !635)
!637 = !DILocation(line: 610, column: 36, scope: !638)
!638 = distinct !DILexicalBlock(scope: !547, file: !83, line: 611, column: 3)
!639 = !DILocation(line: 610, column: 3, scope: !638)
!640 = !DILocation(line: 611, column: 36, scope: !641)
!641 = distinct !DILexicalBlock(scope: !547, file: !83, line: 612, column: 3)
!642 = !DILocation(line: 611, column: 3, scope: !641)
!643 = !DILocation(line: 612, column: 36, scope: !644)
!644 = distinct !DILexicalBlock(scope: !547, file: !83, line: 613, column: 3)
!645 = !DILocation(line: 612, column: 3, scope: !644)
!646 = !DILocation(line: 613, column: 36, scope: !647)
!647 = distinct !DILexicalBlock(scope: !547, file: !83, line: 614, column: 3)
!648 = !DILocation(line: 613, column: 3, scope: !647)
!649 = !DILocation(line: 614, column: 36, scope: !650)
!650 = distinct !DILexicalBlock(scope: !547, file: !83, line: 615, column: 3)
!651 = !DILocation(line: 614, column: 3, scope: !650)
!652 = !DILocation(line: 615, column: 36, scope: !653)
!653 = distinct !DILexicalBlock(scope: !547, file: !83, line: 616, column: 3)
!654 = !DILocation(line: 615, column: 3, scope: !653)
!655 = !DILocation(line: 616, column: 36, scope: !656)
!656 = distinct !DILexicalBlock(scope: !547, file: !83, line: 618, column: 3)
!657 = !DILocation(line: 616, column: 3, scope: !656)
!658 = !DILocation(line: 617, column: 36, scope: !659)
!659 = distinct !DILexicalBlock(scope: !547, file: !83, line: 619, column: 3)
!660 = !DILocation(line: 617, column: 3, scope: !659)
!661 = !DILocation(line: 620, column: 3, scope: !662)
!662 = distinct !DILexicalBlock(scope: !547, file: !83, line: 620, column: 3)
!663 = !DILocation(line: 624, column: 1, scope: !460)
!664 = distinct !DISubprogram(name: "parse_args", scope: !83, file: !83, line: 623, type: !665, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!665 = !DISubroutineType(types: !666)
!666 = !{!19, !152, !667, !433}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!668 = !DILocalVariable(name: "argv", arg: 1, scope: !664, file: !83, line: 623, type: !152)
!669 = !DILocation(line: 0, scope: !664)
!670 = !DILocalVariable(name: "flag_options", arg: 2, scope: !664, file: !83, line: 623, type: !667)
!671 = !DILocalVariable(name: "flags", arg: 3, scope: !664, file: !83, line: 623, type: !433)
!672 = !DILocalVariable(name: "__cil_tmp13", scope: !664, file: !83, line: 634, type: !8)
!673 = !DILocation(line: 634, column: 9, scope: !664)
!674 = !DILocalVariable(name: "__cil_tmp14", scope: !664, file: !83, line: 635, type: !8)
!675 = !DILocation(line: 635, column: 9, scope: !664)
!676 = !DILocalVariable(name: "__cil_tmp15", scope: !664, file: !83, line: 636, type: !8)
!677 = !DILocation(line: 636, column: 9, scope: !664)
!678 = !DILocalVariable(name: "__cil_tmp16", scope: !664, file: !83, line: 637, type: !8)
!679 = !DILocation(line: 637, column: 9, scope: !664)
!680 = !DILocalVariable(name: "error_count", scope: !664, file: !83, line: 627, type: !19)
!681 = !DILocalVariable(name: "found_file", scope: !664, file: !83, line: 628, type: !19)
!682 = !DILocation(line: 635, column: 3, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !83, line: 634, column: 3)
!684 = distinct !DILexicalBlock(scope: !685, file: !83, line: 633, column: 3)
!685 = distinct !DILexicalBlock(scope: !664, file: !83, line: 639, column: 3)
!686 = !DILocation(line: 631, column: 15, scope: !685)
!687 = !DILocation(line: 0, scope: !685)
!688 = !DILocalVariable(name: "fp", scope: !664, file: !83, line: 625, type: !12)
!689 = !DILocalVariable(name: "filename", scope: !664, file: !83, line: 626, type: !8)
!690 = !DILocation(line: 635, column: 13, scope: !683)
!691 = !DILocation(line: 636, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !83, line: 636, column: 9)
!693 = distinct !DILexicalBlock(scope: !683, file: !83, line: 635, column: 13)
!694 = !DILocation(line: 636, column: 9, scope: !693)
!695 = !DILocation(line: 637, column: 40, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !83, line: 638, column: 7)
!697 = distinct !DILexicalBlock(scope: !698, file: !83, line: 637, column: 7)
!698 = distinct !DILexicalBlock(scope: !692, file: !83, line: 636, column: 16)
!699 = !DILocation(line: 637, column: 17, scope: !696)
!700 = !DILocalVariable(name: "tmp___2", scope: !664, file: !83, line: 632, type: !19)
!701 = !DILocation(line: 637, column: 19, scope: !702)
!702 = distinct !DILexicalBlock(scope: !698, file: !83, line: 637, column: 11)
!703 = !DILocation(line: 637, column: 11, scope: !698)
!704 = !DILocation(line: 640, column: 14, scope: !705)
!705 = distinct !DILexicalBlock(scope: !702, file: !83, line: 637, column: 25)
!706 = !DILocation(line: 641, column: 14, scope: !705)
!707 = !DILocation(line: 642, column: 7, scope: !705)
!708 = !DILocation(line: 643, column: 53, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !83, line: 644, column: 9)
!710 = distinct !DILexicalBlock(scope: !711, file: !83, line: 643, column: 9)
!711 = distinct !DILexicalBlock(scope: !702, file: !83, line: 642, column: 14)
!712 = !DILocation(line: 643, column: 14, scope: !709)
!713 = !DILocation(line: 643, column: 13, scope: !714)
!714 = distinct !DILexicalBlock(scope: !711, file: !83, line: 643, column: 13)
!715 = !DILocation(line: 643, column: 32, scope: !714)
!716 = !DILocation(line: 643, column: 13, scope: !711)
!717 = !DILocalVariable(name: "tmp", scope: !664, file: !83, line: 629, type: !152)
!718 = !DILocation(line: 645, column: 16, scope: !719)
!719 = distinct !DILexicalBlock(scope: !714, file: !83, line: 643, column: 64)
!720 = !DILocation(line: 645, column: 22, scope: !719)
!721 = !DILocation(line: 646, column: 9, scope: !719)
!722 = !DILocation(line: 648, column: 21, scope: !723)
!723 = distinct !DILexicalBlock(scope: !724, file: !83, line: 648, column: 11)
!724 = distinct !DILexicalBlock(scope: !725, file: !83, line: 647, column: 11)
!725 = distinct !DILexicalBlock(scope: !714, file: !83, line: 646, column: 16)
!726 = !DILocalVariable(name: "tmp___0", scope: !664, file: !83, line: 630, type: !727)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!728 = !DILocation(line: 648, column: 30, scope: !729)
!729 = distinct !DILexicalBlock(scope: !724, file: !83, line: 650, column: 11)
!730 = !DILocation(line: 648, column: 21, scope: !729)
!731 = !DILocalVariable(name: "tmp___1", scope: !664, file: !83, line: 631, type: !8)
!732 = !DILocation(line: 648, column: 44, scope: !733)
!733 = distinct !DILexicalBlock(scope: !724, file: !83, line: 650, column: 11)
!734 = !DILocation(line: 649, column: 19, scope: !733)
!735 = !DILocation(line: 648, column: 11, scope: !733)
!736 = !DILocation(line: 649, column: 16, scope: !724)
!737 = !DILocation(line: 650, column: 11, scope: !725)
!738 = !DILocation(line: 0, scope: !702)
!739 = !DILocation(line: 653, column: 5, scope: !698)
!740 = !DILocation(line: 655, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !693, file: !83, line: 655, column: 9)
!742 = !DILocation(line: 655, column: 9, scope: !693)
!743 = !DILocation(line: 656, column: 17, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !83, line: 657, column: 7)
!745 = distinct !DILexicalBlock(scope: !746, file: !83, line: 656, column: 7)
!746 = distinct !DILexicalBlock(scope: !741, file: !83, line: 655, column: 21)
!747 = !DILocalVariable(name: "tmp___3", scope: !664, file: !83, line: 633, type: !19)
!748 = !DILocation(line: 656, column: 13, scope: !749)
!749 = distinct !DILexicalBlock(scope: !746, file: !83, line: 656, column: 11)
!750 = !DILocation(line: 656, column: 11, scope: !746)
!751 = !DILocation(line: 657, column: 21, scope: !752)
!752 = distinct !DILexicalBlock(scope: !749, file: !83, line: 656, column: 22)
!753 = !DILocation(line: 658, column: 7, scope: !752)
!754 = !DILocation(line: 659, column: 11, scope: !755)
!755 = distinct !DILexicalBlock(scope: !746, file: !83, line: 659, column: 11)
!756 = !DILocation(line: 659, column: 49, scope: !755)
!757 = !DILocation(line: 659, column: 33, scope: !755)
!758 = !DILocation(line: 659, column: 30, scope: !755)
!759 = !DILocation(line: 659, column: 11, scope: !746)
!760 = !DILocation(line: 660, column: 9, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !83, line: 661, column: 9)
!762 = distinct !DILexicalBlock(scope: !763, file: !83, line: 660, column: 9)
!763 = distinct !DILexicalBlock(scope: !755, file: !83, line: 659, column: 56)
!764 = !DILocation(line: 663, column: 7, scope: !763)
!765 = !DILocation(line: 663, column: 5, scope: !746)
!766 = !DILocation(line: 0, scope: !693)
!767 = !DILocation(line: 635, column: 11, scope: !768)
!768 = distinct !DILexicalBlock(scope: !693, file: !83, line: 635, column: 9)
!769 = !DILocation(line: 635, column: 9, scope: !693)
!770 = !DILocation(line: 635, column: 7, scope: !771)
!771 = distinct !DILexicalBlock(scope: !768, file: !83, line: 635, column: 18)
!772 = distinct !{!772, !682, !773}
!773 = !DILocation(line: 637, column: 3, scope: !683)
!774 = !DILocation(line: 639, column: 3, scope: !683)
!775 = !DILocation(line: 667, column: 19, scope: !776)
!776 = distinct !DILexicalBlock(scope: !685, file: !83, line: 667, column: 7)
!777 = !DILocation(line: 667, column: 7, scope: !685)
!778 = !DILocation(line: 668, column: 5, scope: !779)
!779 = distinct !DILexicalBlock(scope: !776, file: !83, line: 667, column: 24)
!780 = !DILocation(line: 670, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !776, file: !83, line: 669, column: 10)
!782 = !DILocation(line: 0, scope: !776)
!783 = !DILocation(line: 673, column: 1, scope: !664)
!784 = distinct !DISubprogram(name: "print_sys_usage", scope: !126, file: !126, line: 484, type: !461, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!785 = !DILocalVariable(name: "process_usage", scope: !784, file: !126, line: 486, type: !786)
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rusage", file: !787, line: 178, size: 1152, elements: !788)
!787 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "")
!788 = !{!789, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !809, !810, !811}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "ru_utime", scope: !786, file: !787, line: 179, baseType: !790, size: 128)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !791, line: 69, size: 128, elements: !792)
!791 = !DIFile(filename: "/usr/include/bits/time.h", directory: "")
!792 = !{!793, !795}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !790, file: !791, line: 70, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !44, line: 149, baseType: !45)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !790, file: !791, line: 71, baseType: !796, size: 64, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !44, line: 151, baseType: !45)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "ru_stime", scope: !786, file: !787, line: 180, baseType: !790, size: 128, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "ru_maxrss", scope: !786, file: !787, line: 181, baseType: !45, size: 64, offset: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "ru_ixrss", scope: !786, file: !787, line: 182, baseType: !45, size: 64, offset: 320)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "ru_idrss", scope: !786, file: !787, line: 183, baseType: !45, size: 64, offset: 384)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "ru_isrss", scope: !786, file: !787, line: 184, baseType: !45, size: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ru_minflt", scope: !786, file: !787, line: 185, baseType: !45, size: 64, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ru_majflt", scope: !786, file: !787, line: 186, baseType: !45, size: 64, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nswap", scope: !786, file: !787, line: 187, baseType: !45, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ru_inblock", scope: !786, file: !787, line: 188, baseType: !45, size: 64, offset: 704)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ru_oublock", scope: !786, file: !787, line: 189, baseType: !45, size: 64, offset: 768)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgsnd", scope: !786, file: !787, line: 190, baseType: !45, size: 64, offset: 832)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "ru_msgrcv", scope: !786, file: !787, line: 191, baseType: !45, size: 64, offset: 896)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nsignals", scope: !786, file: !787, line: 192, baseType: !45, size: 64, offset: 960)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nvcsw", scope: !786, file: !787, line: 193, baseType: !45, size: 64, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "ru_nivcsw", scope: !786, file: !787, line: 194, baseType: !45, size: 64, offset: 1088)
!812 = !DILocation(line: 486, column: 17, scope: !784)
!813 = !DILocalVariable(name: "__cil_tmp3", scope: !784, file: !126, line: 488, type: !8)
!814 = !DILocation(line: 488, column: 9, scope: !784)
!815 = !DILocalVariable(name: "__cil_tmp4", scope: !784, file: !126, line: 489, type: !8)
!816 = !DILocation(line: 489, column: 9, scope: !784)
!817 = !DILocalVariable(name: "__cil_tmp5", scope: !784, file: !126, line: 490, type: !8)
!818 = !DILocation(line: 490, column: 9, scope: !784)
!819 = !DILocalVariable(name: "__cil_tmp6", scope: !784, file: !126, line: 491, type: !8)
!820 = !DILocation(line: 491, column: 9, scope: !784)
!821 = !DILocalVariable(name: "__cil_tmp7", scope: !784, file: !126, line: 492, type: !8)
!822 = !DILocation(line: 492, column: 9, scope: !784)
!823 = !DILocalVariable(name: "__cil_tmp8", scope: !784, file: !126, line: 493, type: !8)
!824 = !DILocation(line: 493, column: 9, scope: !784)
!825 = !DILocation(line: 489, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !126, line: 497, column: 3)
!827 = distinct !DILexicalBlock(scope: !828, file: !126, line: 496, column: 3)
!828 = distinct !DILexicalBlock(scope: !784, file: !126, line: 495, column: 3)
!829 = !DILocalVariable(name: "tmp", scope: !784, file: !126, line: 487, type: !19)
!830 = !DILocation(line: 0, scope: !784)
!831 = !DILocation(line: 489, column: 7, scope: !832)
!832 = distinct !DILexicalBlock(scope: !828, file: !126, line: 489, column: 7)
!833 = !DILocation(line: 489, column: 7, scope: !828)
!834 = !DILocation(line: 490, column: 38, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !126, line: 491, column: 5)
!836 = distinct !DILexicalBlock(scope: !837, file: !126, line: 490, column: 5)
!837 = distinct !DILexicalBlock(scope: !832, file: !126, line: 489, column: 12)
!838 = !DILocation(line: 490, column: 5, scope: !835)
!839 = !DILocation(line: 493, column: 3, scope: !837)
!840 = !DILocation(line: 492, column: 5, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !126, line: 495, column: 5)
!842 = distinct !DILexicalBlock(scope: !843, file: !126, line: 494, column: 5)
!843 = distinct !DILexicalBlock(scope: !832, file: !126, line: 493, column: 10)
!844 = !DILocation(line: 493, column: 94, scope: !845)
!845 = distinct !DILexicalBlock(scope: !842, file: !126, line: 494, column: 5)
!846 = !DILocation(line: 493, column: 103, scope: !845)
!847 = !DILocation(line: 494, column: 26, scope: !845)
!848 = !DILocation(line: 494, column: 35, scope: !845)
!849 = !DILocation(line: 494, column: 43, scope: !845)
!850 = !DILocation(line: 493, column: 5, scope: !845)
!851 = !DILocation(line: 494, column: 93, scope: !852)
!852 = distinct !DILexicalBlock(scope: !842, file: !126, line: 496, column: 5)
!853 = !DILocation(line: 494, column: 102, scope: !852)
!854 = !DILocation(line: 495, column: 26, scope: !852)
!855 = !DILocation(line: 495, column: 35, scope: !852)
!856 = !DILocation(line: 495, column: 43, scope: !852)
!857 = !DILocation(line: 494, column: 5, scope: !852)
!858 = !DILocation(line: 496, column: 3, scope: !828)
!859 = distinct !DISubprogram(name: "init_vbr_tag_struct", scope: !126, file: !126, line: 28, type: !860, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!860 = !DISubroutineType(types: !861)
!861 = !{null, !862}
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "vbr_data", file: !85, line: 45, baseType: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_vbr_data_28", file: !85, line: 45, size: 128, elements: !865)
!865 = !{!866, !867, !868, !869}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "high_rate", scope: !864, file: !85, line: 46, baseType: !19, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "low_rate", scope: !864, file: !85, line: 47, baseType: !19, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "sum_rate", scope: !864, file: !85, line: 48, baseType: !19, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "ave_rate", scope: !864, file: !85, line: 49, baseType: !19, size: 32, offset: 96)
!870 = !DILocalVariable(name: "vbr_info", arg: 1, scope: !859, file: !126, line: 28, type: !862)
!871 = !DILocation(line: 0, scope: !859)
!872 = !DILocation(line: 32, column: 13, scope: !873)
!873 = distinct !DILexicalBlock(scope: !859, file: !126, line: 32, column: 3)
!874 = !DILocation(line: 32, column: 23, scope: !873)
!875 = !DILocation(line: 33, column: 13, scope: !873)
!876 = !DILocation(line: 33, column: 22, scope: !873)
!877 = !DILocation(line: 34, column: 13, scope: !873)
!878 = !DILocation(line: 34, column: 22, scope: !873)
!879 = !DILocation(line: 35, column: 13, scope: !873)
!880 = !DILocation(line: 35, column: 22, scope: !873)
!881 = !DILocation(line: 36, column: 3, scope: !873)
!882 = distinct !DISubprogram(name: "init_gen_info_struct", scope: !126, file: !126, line: 38, type: !883, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!883 = !DISubroutineType(types: !884)
!884 = !{null, !885}
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "gen_info", file: !85, line: 19, baseType: !887)
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_gen_info_27", file: !85, line: 19, size: 256, elements: !888)
!888 = !{!889, !890, !891, !892, !893, !894, !895}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "file_pos", scope: !887, file: !85, line: 20, baseType: !19, size: 32)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "good_frame_count", scope: !887, file: !85, line: 21, baseType: !19, size: 32, offset: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "bad_frame_count", scope: !887, file: !85, line: 22, baseType: !19, size: 32, offset: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "frame_sequence_count", scope: !887, file: !85, line: 23, baseType: !19, size: 32, offset: 96)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "byte_count", scope: !887, file: !85, line: 24, baseType: !19, size: 32, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next_expected_frame", scope: !887, file: !85, line: 25, baseType: !19, size: 32, offset: 160)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "time_in_seconds", scope: !887, file: !85, line: 26, baseType: !76, size: 64, offset: 192)
!896 = !DILocalVariable(name: "file_info", arg: 1, scope: !882, file: !126, line: 38, type: !885)
!897 = !DILocation(line: 0, scope: !882)
!898 = !DILocation(line: 42, column: 14, scope: !899)
!899 = distinct !DILexicalBlock(scope: !882, file: !126, line: 42, column: 3)
!900 = !DILocation(line: 42, column: 23, scope: !899)
!901 = !DILocation(line: 43, column: 14, scope: !899)
!902 = !DILocation(line: 43, column: 31, scope: !899)
!903 = !DILocation(line: 44, column: 14, scope: !899)
!904 = !DILocation(line: 44, column: 30, scope: !899)
!905 = !DILocation(line: 45, column: 14, scope: !899)
!906 = !DILocation(line: 45, column: 35, scope: !899)
!907 = !DILocation(line: 46, column: 14, scope: !899)
!908 = !DILocation(line: 46, column: 25, scope: !899)
!909 = !DILocation(line: 47, column: 14, scope: !899)
!910 = !DILocation(line: 47, column: 34, scope: !899)
!911 = !DILocation(line: 48, column: 14, scope: !899)
!912 = !DILocation(line: 48, column: 30, scope: !899)
!913 = !DILocation(line: 49, column: 3, scope: !899)
!914 = distinct !DISubprogram(name: "init_mp3_time_struct", scope: !126, file: !126, line: 51, type: !915, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!915 = !DISubroutineType(types: !916)
!916 = !{null, !917}
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "mp3_time", file: !85, line: 56, baseType: !919)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_mp3_time_29", file: !85, line: 56, size: 96, elements: !920)
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "minutes", scope: !919, file: !85, line: 57, baseType: !19, size: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "seconds", scope: !919, file: !85, line: 58, baseType: !19, size: 32, offset: 32)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "frac_second", scope: !919, file: !85, line: 59, baseType: !19, size: 32, offset: 64)
!924 = !DILocalVariable(name: "song_time", arg: 1, scope: !914, file: !126, line: 51, type: !917)
!925 = !DILocation(line: 0, scope: !914)
!926 = !DILocation(line: 55, column: 14, scope: !927)
!927 = distinct !DILexicalBlock(scope: !914, file: !126, line: 55, column: 3)
!928 = !DILocation(line: 55, column: 22, scope: !927)
!929 = !DILocation(line: 56, column: 14, scope: !927)
!930 = !DILocation(line: 56, column: 22, scope: !927)
!931 = !DILocation(line: 57, column: 14, scope: !927)
!932 = !DILocation(line: 57, column: 26, scope: !927)
!933 = !DILocation(line: 58, column: 3, scope: !927)
!934 = distinct !DISubprogram(name: "copy_int_array_to_str", scope: !126, file: !126, line: 75, type: !935, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!935 = !DISubroutineType(types: !936)
!936 = !{!19, !8, !8, !19, !19, !19}
!937 = !DILocalVariable(name: "possible_mp3_tag", arg: 1, scope: !934, file: !126, line: 75, type: !8)
!938 = !DILocation(line: 0, scope: !934)
!939 = !DILocalVariable(name: "tag_field", arg: 2, scope: !934, file: !126, line: 75, type: !8)
!940 = !DILocalVariable(name: "offset", arg: 3, scope: !934, file: !126, line: 75, type: !19)
!941 = !DILocalVariable(name: "length", arg: 4, scope: !934, file: !126, line: 76, type: !19)
!942 = !DILocalVariable(name: "max_length", arg: 5, scope: !934, file: !126, line: 76, type: !19)
!943 = !DILocalVariable(name: "counter", scope: !934, file: !126, line: 78, type: !19)
!944 = !DILocalVariable(name: "position", scope: !934, file: !126, line: 79, type: !19)
!945 = !DILocation(line: 86, column: 27, scope: !946)
!946 = distinct !DILexicalBlock(scope: !947, file: !126, line: 86, column: 7)
!947 = distinct !DILexicalBlock(scope: !934, file: !126, line: 81, column: 3)
!948 = !DILocation(line: 86, column: 18, scope: !946)
!949 = !DILocation(line: 86, column: 7, scope: !947)
!950 = !DILocation(line: 87, column: 5, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !126, line: 86, column: 37)
!952 = !DILocation(line: 89, column: 3, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !126, line: 91, column: 3)
!954 = distinct !DILexicalBlock(scope: !947, file: !126, line: 90, column: 3)
!955 = !DILocation(line: 0, scope: !947)
!956 = !DILocation(line: 89, column: 13, scope: !953)
!957 = !DILocation(line: 89, column: 30, scope: !958)
!958 = distinct !DILexicalBlock(scope: !959, file: !126, line: 89, column: 9)
!959 = distinct !DILexicalBlock(scope: !953, file: !126, line: 89, column: 13)
!960 = !DILocation(line: 89, column: 21, scope: !958)
!961 = !DILocation(line: 89, column: 9, scope: !959)
!962 = !DILocation(line: 89, column: 7, scope: !963)
!963 = distinct !DILexicalBlock(scope: !958, file: !126, line: 89, column: 41)
!964 = !DILocation(line: 90, column: 49, scope: !959)
!965 = !DILocation(line: 90, column: 30, scope: !959)
!966 = !DILocation(line: 90, column: 17, scope: !959)
!967 = !DILocation(line: 90, column: 28, scope: !959)
!968 = !DILocation(line: 91, column: 13, scope: !959)
!969 = !DILocation(line: 89, column: 14, scope: !959)
!970 = distinct !{!970, !952, !971}
!971 = !DILocation(line: 90, column: 3, scope: !953)
!972 = !DILocation(line: 92, column: 3, scope: !953)
!973 = !DILocation(line: 94, column: 3, scope: !947)
!974 = !DILocation(line: 96, column: 1, scope: !934)
!975 = distinct !DISubprogram(name: "validate_id3_tag", scope: !126, file: !126, line: 97, type: !976, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!976 = !DISubroutineType(types: !977)
!977 = !{!19, !8, !978}
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "id3_tag_info", file: !85, line: 145, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_id3_tag_info_33", file: !85, line: 145, size: 1120, elements: !981)
!981 = !{!982, !983, !984, !988, !989, !990, !994, !995, !996, !997}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "TAG_PRESENT", scope: !980, file: !85, line: 146, baseType: !77, size: 16)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ID3_311_VERSION", scope: !980, file: !85, line: 147, baseType: !77, size: 16, offset: 16)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "TITLE", scope: !980, file: !85, line: 148, baseType: !985, size: 248, offset: 32)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 248, elements: !986)
!986 = !{!987}
!987 = !DISubrange(count: 31)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "ARTIST", scope: !980, file: !85, line: 149, baseType: !985, size: 248, offset: 280)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ALBUM", scope: !980, file: !85, line: 150, baseType: !985, size: 248, offset: 528)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "YEAR", scope: !980, file: !85, line: 151, baseType: !991, size: 40, offset: 776)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 40, elements: !992)
!992 = !{!993}
!993 = !DISubrange(count: 5)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "COMMENT", scope: !980, file: !85, line: 152, baseType: !985, size: 248, offset: 816)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "GENRE", scope: !980, file: !85, line: 153, baseType: !77, size: 16, offset: 1072)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "TRACK_NUMBER", scope: !980, file: !85, line: 154, baseType: !77, size: 16, offset: 1088)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "COMPLIANT_PAD_FIELDS", scope: !980, file: !85, line: 155, baseType: !77, size: 16, offset: 1104)
!998 = !DILocalVariable(name: "possible_mp3_tag", arg: 1, scope: !975, file: !126, line: 97, type: !8)
!999 = !DILocation(line: 0, scope: !975)
!1000 = !DILocalVariable(name: "id3_tag", arg: 2, scope: !975, file: !126, line: 97, type: !978)
!1001 = !DILocation(line: 109, column: 32, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !126, line: 109, column: 7)
!1003 = distinct !DILexicalBlock(scope: !975, file: !126, line: 101, column: 3)
!1004 = !DILocation(line: 109, column: 13, scope: !1002)
!1005 = !DILocation(line: 109, column: 7, scope: !1002)
!1006 = !DILocation(line: 109, column: 37, scope: !1002)
!1007 = !DILocation(line: 109, column: 7, scope: !1003)
!1008 = !DILocation(line: 109, column: 34, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !126, line: 109, column: 9)
!1010 = distinct !DILexicalBlock(scope: !1002, file: !126, line: 109, column: 44)
!1011 = !DILocation(line: 109, column: 15, scope: !1009)
!1012 = !DILocation(line: 109, column: 9, scope: !1009)
!1013 = !DILocation(line: 109, column: 39, scope: !1009)
!1014 = !DILocation(line: 109, column: 9, scope: !1010)
!1015 = !DILocation(line: 109, column: 36, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !126, line: 109, column: 11)
!1017 = distinct !DILexicalBlock(scope: !1009, file: !126, line: 109, column: 46)
!1018 = !DILocation(line: 109, column: 17, scope: !1016)
!1019 = !DILocation(line: 109, column: 11, scope: !1016)
!1020 = !DILocation(line: 109, column: 41, scope: !1016)
!1021 = !DILocation(line: 109, column: 11, scope: !1017)
!1022 = !DILocation(line: 110, column: 18, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1016, file: !126, line: 109, column: 48)
!1024 = !DILocation(line: 110, column: 30, scope: !1023)
!1025 = !DILocation(line: 112, column: 38, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1023, file: !126, line: 112, column: 13)
!1027 = !DILocation(line: 112, column: 19, scope: !1026)
!1028 = !DILocation(line: 112, column: 13, scope: !1026)
!1029 = !DILocation(line: 112, column: 45, scope: !1026)
!1030 = !DILocation(line: 112, column: 13, scope: !1023)
!1031 = !DILocation(line: 113, column: 62, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1026, file: !126, line: 112, column: 51)
!1033 = !DILocation(line: 113, column: 43, scope: !1032)
!1034 = !DILocation(line: 113, column: 35, scope: !1032)
!1035 = !DILocation(line: 113, column: 20, scope: !1032)
!1036 = !DILocation(line: 113, column: 33, scope: !1032)
!1037 = !DILocation(line: 114, column: 20, scope: !1032)
!1038 = !DILocation(line: 114, column: 36, scope: !1032)
!1039 = !DILocation(line: 115, column: 9, scope: !1032)
!1040 = !DILocation(line: 116, column: 20, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1026, file: !126, line: 115, column: 16)
!1042 = !DILocation(line: 116, column: 33, scope: !1041)
!1043 = !DILocation(line: 117, column: 20, scope: !1041)
!1044 = !DILocation(line: 117, column: 36, scope: !1041)
!1045 = !DILocation(line: 121, column: 53, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1023, file: !126, line: 119, column: 9)
!1047 = !DILocation(line: 121, column: 34, scope: !1046)
!1048 = !DILocation(line: 121, column: 26, scope: !1046)
!1049 = !DILocation(line: 121, column: 18, scope: !1046)
!1050 = !DILocation(line: 121, column: 24, scope: !1046)
!1051 = !DILocation(line: 123, column: 58, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1046, file: !126, line: 122, column: 9)
!1053 = !DILocation(line: 123, column: 49, scope: !1052)
!1054 = !DILocation(line: 123, column: 9, scope: !1052)
!1055 = !DILocation(line: 124, column: 58, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1046, file: !126, line: 125, column: 9)
!1057 = !DILocation(line: 124, column: 49, scope: !1056)
!1058 = !DILocation(line: 124, column: 9, scope: !1056)
!1059 = !DILocation(line: 125, column: 58, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1046, file: !126, line: 126, column: 9)
!1061 = !DILocation(line: 125, column: 49, scope: !1060)
!1062 = !DILocation(line: 125, column: 9, scope: !1060)
!1063 = !DILocation(line: 126, column: 58, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1046, file: !126, line: 127, column: 9)
!1065 = !DILocation(line: 126, column: 49, scope: !1064)
!1066 = !DILocation(line: 126, column: 9, scope: !1064)
!1067 = !DILocation(line: 127, column: 58, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1046, file: !126, line: 128, column: 9)
!1069 = !DILocation(line: 127, column: 49, scope: !1068)
!1070 = !DILocation(line: 127, column: 9, scope: !1068)
!1071 = !DILocation(line: 130, column: 7, scope: !1023)
!1072 = !DILocation(line: 141, column: 18, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1016, file: !126, line: 130, column: 14)
!1074 = !DILocation(line: 141, column: 30, scope: !1073)
!1075 = !DILocation(line: 142, column: 9, scope: !1073)
!1076 = !DILocation(line: 144, column: 5, scope: !1017)
!1077 = !DILocation(line: 141, column: 16, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1009, file: !126, line: 144, column: 12)
!1079 = !DILocation(line: 141, column: 28, scope: !1078)
!1080 = !DILocation(line: 142, column: 7, scope: !1078)
!1081 = !DILocation(line: 144, column: 3, scope: !1010)
!1082 = !DILocation(line: 141, column: 14, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1002, file: !126, line: 144, column: 10)
!1084 = !DILocation(line: 141, column: 26, scope: !1083)
!1085 = !DILocation(line: 142, column: 5, scope: !1083)
!1086 = !DILocation(line: 145, column: 3, scope: !1003)
!1087 = !DILocation(line: 0, scope: !1003)
!1088 = !DILocation(line: 147, column: 1, scope: !975)
!1089 = distinct !DISubprogram(name: "init_id3_tag_struct", scope: !126, file: !126, line: 148, type: !1090, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{null, !978}
!1092 = !DILocalVariable(name: "TAG", arg: 1, scope: !1089, file: !126, line: 148, type: !978)
!1093 = !DILocation(line: 0, scope: !1089)
!1094 = !DILocation(line: 152, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !126, line: 153, column: 3)
!1096 = distinct !DILexicalBlock(scope: !1089, file: !126, line: 152, column: 3)
!1097 = !DILocation(line: 152, column: 20, scope: !1095)
!1098 = !DILocation(line: 153, column: 8, scope: !1095)
!1099 = !DILocation(line: 153, column: 24, scope: !1095)
!1100 = !DILocation(line: 155, column: 24, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1095, file: !126, line: 154, column: 3)
!1102 = !DILocation(line: 155, column: 18, scope: !1101)
!1103 = !DILocation(line: 155, column: 3, scope: !1101)
!1104 = !DILocation(line: 156, column: 24, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1095, file: !126, line: 157, column: 3)
!1106 = !DILocation(line: 156, column: 18, scope: !1105)
!1107 = !DILocation(line: 156, column: 3, scope: !1105)
!1108 = !DILocation(line: 157, column: 24, scope: !1109)
!1109 = distinct !DILexicalBlock(scope: !1095, file: !126, line: 158, column: 3)
!1110 = !DILocation(line: 157, column: 18, scope: !1109)
!1111 = !DILocation(line: 157, column: 3, scope: !1109)
!1112 = !DILocation(line: 158, column: 24, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1095, file: !126, line: 159, column: 3)
!1114 = !DILocation(line: 158, column: 18, scope: !1113)
!1115 = !DILocation(line: 158, column: 3, scope: !1113)
!1116 = !DILocation(line: 159, column: 24, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1095, file: !126, line: 160, column: 3)
!1118 = !DILocation(line: 159, column: 18, scope: !1117)
!1119 = !DILocation(line: 159, column: 3, scope: !1117)
!1120 = !DILocation(line: 161, column: 8, scope: !1095)
!1121 = !DILocation(line: 161, column: 14, scope: !1095)
!1122 = !DILocation(line: 162, column: 8, scope: !1095)
!1123 = !DILocation(line: 162, column: 21, scope: !1095)
!1124 = !DILocation(line: 163, column: 8, scope: !1095)
!1125 = !DILocation(line: 163, column: 29, scope: !1095)
!1126 = !DILocation(line: 164, column: 3, scope: !1096)
!1127 = distinct !DISubprogram(name: "check_header_value", scope: !126, file: !126, line: 166, type: !1128, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1128 = !DISubroutineType(types: !1129)
!1129 = !{!19, !1130, !8, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1132 = !DILocalVariable(name: "header", arg: 1, scope: !1127, file: !126, line: 166, type: !1130)
!1133 = !DILocation(line: 0, scope: !1127)
!1134 = !DILocalVariable(name: "filename", arg: 2, scope: !1127, file: !126, line: 166, type: !8)
!1135 = !DILocalVariable(name: "FI", arg: 3, scope: !1127, file: !126, line: 166, type: !1131)
!1136 = !DILocalVariable(name: "bin_string", scope: !1127, file: !126, line: 168, type: !117)
!1137 = !DILocation(line: 168, column: 8, scope: !1127)
!1138 = !DILocalVariable(name: "__cil_tmp31", scope: !1127, file: !126, line: 195, type: !62)
!1139 = !DILocation(line: 195, column: 9, scope: !1127)
!1140 = !DILocalVariable(name: "__cil_tmp32", scope: !1127, file: !126, line: 196, type: !8)
!1141 = !DILocation(line: 196, column: 9, scope: !1127)
!1142 = !DILocalVariable(name: "__cil_tmp33", scope: !1127, file: !126, line: 197, type: !8)
!1143 = !DILocation(line: 197, column: 9, scope: !1127)
!1144 = !DILocalVariable(name: "__cil_tmp34", scope: !1127, file: !126, line: 198, type: !8)
!1145 = !DILocation(line: 198, column: 9, scope: !1127)
!1146 = !DILocalVariable(name: "__cil_tmp35", scope: !1127, file: !126, line: 199, type: !8)
!1147 = !DILocation(line: 199, column: 9, scope: !1127)
!1148 = !DILocalVariable(name: "__cil_tmp36", scope: !1127, file: !126, line: 200, type: !8)
!1149 = !DILocation(line: 200, column: 9, scope: !1127)
!1150 = !DILocalVariable(name: "__cil_tmp37", scope: !1127, file: !126, line: 201, type: !8)
!1151 = !DILocation(line: 201, column: 9, scope: !1127)
!1152 = !DILocalVariable(name: "__cil_tmp38", scope: !1127, file: !126, line: 202, type: !8)
!1153 = !DILocation(line: 202, column: 9, scope: !1127)
!1154 = !DILocalVariable(name: "__cil_tmp39", scope: !1127, file: !126, line: 203, type: !8)
!1155 = !DILocation(line: 203, column: 9, scope: !1127)
!1156 = !DILocalVariable(name: "__cil_tmp40", scope: !1127, file: !126, line: 204, type: !8)
!1157 = !DILocation(line: 204, column: 9, scope: !1127)
!1158 = !DILocalVariable(name: "__cil_tmp41", scope: !1127, file: !126, line: 205, type: !8)
!1159 = !DILocation(line: 205, column: 9, scope: !1127)
!1160 = !DILocalVariable(name: "__cil_tmp42", scope: !1127, file: !126, line: 206, type: !8)
!1161 = !DILocation(line: 206, column: 9, scope: !1127)
!1162 = !DILocalVariable(name: "__cil_tmp43", scope: !1127, file: !126, line: 207, type: !8)
!1163 = !DILocation(line: 207, column: 9, scope: !1127)
!1164 = !DILocalVariable(name: "__cil_tmp44", scope: !1127, file: !126, line: 208, type: !8)
!1165 = !DILocation(line: 208, column: 9, scope: !1127)
!1166 = !DILocalVariable(name: "__cil_tmp45", scope: !1127, file: !126, line: 209, type: !8)
!1167 = !DILocation(line: 209, column: 9, scope: !1127)
!1168 = !DILocalVariable(name: "__cil_tmp46", scope: !1127, file: !126, line: 210, type: !8)
!1169 = !DILocation(line: 210, column: 9, scope: !1127)
!1170 = !DILocalVariable(name: "__cil_tmp47", scope: !1127, file: !126, line: 211, type: !8)
!1171 = !DILocation(line: 211, column: 9, scope: !1127)
!1172 = !DILocalVariable(name: "__cil_tmp48", scope: !1127, file: !126, line: 212, type: !8)
!1173 = !DILocation(line: 212, column: 9, scope: !1127)
!1174 = !DILocalVariable(name: "__cil_tmp49", scope: !1127, file: !126, line: 213, type: !8)
!1175 = !DILocation(line: 213, column: 9, scope: !1127)
!1176 = !DILocalVariable(name: "__cil_tmp50", scope: !1127, file: !126, line: 214, type: !8)
!1177 = !DILocation(line: 214, column: 9, scope: !1127)
!1178 = !DILocalVariable(name: "__cil_tmp51", scope: !1127, file: !126, line: 215, type: !8)
!1179 = !DILocation(line: 215, column: 9, scope: !1127)
!1180 = !DILocalVariable(name: "__cil_tmp52", scope: !1127, file: !126, line: 216, type: !8)
!1181 = !DILocation(line: 216, column: 9, scope: !1127)
!1182 = !DILocalVariable(name: "__cil_tmp53", scope: !1127, file: !126, line: 217, type: !8)
!1183 = !DILocation(line: 217, column: 9, scope: !1127)
!1184 = !DILocation(line: 178, column: 3, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1127, file: !126, line: 219, column: 3)
!1186 = !DILocation(line: 178, column: 17, scope: !1185)
!1187 = !DILocalVariable(name: "tmp", scope: !1127, file: !126, line: 169, type: !69)
!1188 = !DILocation(line: 178, column: 3, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !126, line: 180, column: 3)
!1190 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 179, column: 3)
!1191 = !DILocation(line: 0, scope: !1185)
!1192 = !DILocation(line: 178, column: 13, scope: !1189)
!1193 = !DILocation(line: 178, column: 13, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !126, line: 178, column: 9)
!1195 = distinct !DILexicalBlock(scope: !1189, file: !126, line: 178, column: 13)
!1196 = !DILocation(line: 178, column: 9, scope: !1195)
!1197 = !DILocation(line: 178, column: 7, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1194, file: !126, line: 178, column: 21)
!1199 = !DILocation(line: 178, column: 5, scope: !1195)
!1200 = !DILocation(line: 178, column: 21, scope: !1195)
!1201 = distinct !{!1201, !1188, !1202}
!1202 = !DILocation(line: 179, column: 3, scope: !1189)
!1203 = !DILocation(line: 181, column: 3, scope: !1189)
!1204 = !DILocalVariable(name: "i", scope: !1127, file: !126, line: 170, type: !19)
!1205 = !DILocalVariable(name: "value_part", scope: !1127, file: !126, line: 171, type: !19)
!1206 = !DILocalVariable(name: "column_part", scope: !1127, file: !126, line: 172, type: !19)
!1207 = !DILocation(line: 208, column: 7, scope: !1185)
!1208 = !DILocation(line: 208, column: 19, scope: !1185)
!1209 = !DILocation(line: 210, column: 3, scope: !1185)
!1210 = !DILocation(line: 210, column: 18, scope: !1185)
!1211 = !DILocation(line: 212, column: 3, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !126, line: 214, column: 3)
!1213 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 213, column: 3)
!1214 = !DILocation(line: 212, column: 13, scope: !1212)
!1215 = !DILocation(line: 212, column: 14, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !126, line: 212, column: 9)
!1217 = distinct !DILexicalBlock(scope: !1212, file: !126, line: 212, column: 13)
!1218 = !DILocation(line: 212, column: 9, scope: !1217)
!1219 = !DILocation(line: 212, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1216, file: !126, line: 212, column: 21)
!1221 = !DILocation(line: 213, column: 5, scope: !1217)
!1222 = !DILocation(line: 213, column: 19, scope: !1217)
!1223 = !DILocation(line: 212, column: 7, scope: !1217)
!1224 = distinct !{!1224, !1211, !1225}
!1225 = !DILocation(line: 213, column: 3, scope: !1212)
!1226 = !DILocation(line: 215, column: 3, scope: !1212)
!1227 = !DILocation(line: 220, column: 3, scope: !1228)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !126, line: 222, column: 3)
!1229 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 221, column: 3)
!1230 = !DILocation(line: 220, column: 13, scope: !1228)
!1231 = !DILocation(line: 220, column: 14, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1233, file: !126, line: 220, column: 9)
!1233 = distinct !DILexicalBlock(scope: !1228, file: !126, line: 220, column: 13)
!1234 = !DILocation(line: 220, column: 9, scope: !1233)
!1235 = !DILocation(line: 220, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !126, line: 220, column: 21)
!1237 = !DILocation(line: 221, column: 11, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !126, line: 221, column: 9)
!1239 = !DILocation(line: 221, column: 19, scope: !1238)
!1240 = !DILocation(line: 221, column: 25, scope: !1238)
!1241 = !DILocation(line: 221, column: 31, scope: !1238)
!1242 = !DILocation(line: 221, column: 9, scope: !1233)
!1243 = !DILocation(line: 222, column: 21, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !126, line: 221, column: 38)
!1245 = !DILocation(line: 222, column: 7, scope: !1244)
!1246 = !DILocation(line: 222, column: 26, scope: !1244)
!1247 = !DILocation(line: 223, column: 5, scope: !1244)
!1248 = !DILocation(line: 220, column: 7, scope: !1233)
!1249 = distinct !{!1249, !1227, !1250}
!1250 = !DILocation(line: 221, column: 3, scope: !1228)
!1251 = !DILocation(line: 223, column: 3, scope: !1228)
!1252 = !DILocation(line: 229, column: 40, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !126, line: 227, column: 3)
!1254 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 226, column: 3)
!1255 = !DILocation(line: 229, column: 35, scope: !1253)
!1256 = !DILocation(line: 229, column: 86, scope: !1253)
!1257 = !DILocation(line: 229, column: 3, scope: !1253)
!1258 = !DILocation(line: 230, column: 26, scope: !1254)
!1259 = !DILocation(line: 230, column: 7, scope: !1254)
!1260 = !DILocation(line: 230, column: 18, scope: !1254)
!1261 = !DILocation(line: 238, column: 37, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1254, file: !126, line: 231, column: 3)
!1263 = !DILocation(line: 238, column: 13, scope: !1262)
!1264 = !DILocalVariable(name: "tmp___0", scope: !1127, file: !126, line: 173, type: !19)
!1265 = !DILocation(line: 238, column: 7, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 238, column: 7)
!1267 = !DILocation(line: 238, column: 7, scope: !1185)
!1268 = !DILocation(line: 239, column: 9, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1266, file: !126, line: 238, column: 16)
!1270 = !DILocation(line: 239, column: 21, scope: !1269)
!1271 = !DILocation(line: 240, column: 3, scope: !1269)
!1272 = !DILocation(line: 241, column: 23, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1266, file: !126, line: 240, column: 10)
!1274 = !DILocation(line: 241, column: 13, scope: !1273)
!1275 = !DILocation(line: 241, column: 5, scope: !1273)
!1276 = !DILocation(line: 247, column: 37, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !126, line: 244, column: 3)
!1278 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 243, column: 3)
!1279 = !DILocation(line: 247, column: 13, scope: !1277)
!1280 = !DILocalVariable(name: "tmp___4", scope: !1127, file: !126, line: 177, type: !19)
!1281 = !DILocation(line: 247, column: 7, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 247, column: 7)
!1283 = !DILocation(line: 247, column: 7, scope: !1185)
!1284 = !DILocation(line: 248, column: 9, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !126, line: 247, column: 16)
!1286 = !DILocation(line: 248, column: 16, scope: !1285)
!1287 = !DILocation(line: 249, column: 3, scope: !1285)
!1288 = !DILocation(line: 250, column: 39, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !126, line: 251, column: 5)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !126, line: 250, column: 5)
!1291 = distinct !DILexicalBlock(scope: !1282, file: !126, line: 249, column: 10)
!1292 = !DILocation(line: 250, column: 15, scope: !1289)
!1293 = !DILocalVariable(name: "tmp___3", scope: !1127, file: !126, line: 176, type: !19)
!1294 = !DILocation(line: 250, column: 9, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1291, file: !126, line: 250, column: 9)
!1296 = !DILocation(line: 250, column: 9, scope: !1291)
!1297 = !DILocation(line: 251, column: 11, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1295, file: !126, line: 250, column: 18)
!1299 = !DILocation(line: 251, column: 24, scope: !1298)
!1300 = !DILocation(line: 252, column: 5, scope: !1298)
!1301 = !DILocation(line: 253, column: 41, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !126, line: 254, column: 7)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !126, line: 253, column: 7)
!1304 = distinct !DILexicalBlock(scope: !1295, file: !126, line: 252, column: 12)
!1305 = !DILocation(line: 253, column: 17, scope: !1302)
!1306 = !DILocalVariable(name: "tmp___2", scope: !1127, file: !126, line: 175, type: !19)
!1307 = !DILocation(line: 253, column: 11, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1304, file: !126, line: 253, column: 11)
!1309 = !DILocation(line: 253, column: 11, scope: !1304)
!1310 = !DILocation(line: 254, column: 13, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !126, line: 253, column: 20)
!1312 = !DILocation(line: 254, column: 19, scope: !1311)
!1313 = !DILocation(line: 255, column: 7, scope: !1311)
!1314 = !DILocation(line: 256, column: 43, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !126, line: 257, column: 9)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !126, line: 256, column: 9)
!1317 = distinct !DILexicalBlock(scope: !1308, file: !126, line: 255, column: 14)
!1318 = !DILocation(line: 256, column: 19, scope: !1315)
!1319 = !DILocalVariable(name: "tmp___1", scope: !1127, file: !126, line: 174, type: !19)
!1320 = !DILocation(line: 256, column: 13, scope: !1321)
!1321 = distinct !DILexicalBlock(scope: !1317, file: !126, line: 256, column: 13)
!1322 = !DILocation(line: 256, column: 13, scope: !1317)
!1323 = !DILocation(line: 257, column: 15, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1321, file: !126, line: 256, column: 22)
!1325 = !DILocation(line: 257, column: 21, scope: !1324)
!1326 = !DILocation(line: 258, column: 9, scope: !1324)
!1327 = !DILocation(line: 263, column: 37, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !126, line: 263, column: 3)
!1329 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 262, column: 3)
!1330 = !DILocation(line: 263, column: 13, scope: !1328)
!1331 = !DILocalVariable(name: "tmp___8", scope: !1127, file: !126, line: 181, type: !19)
!1332 = !DILocation(line: 263, column: 7, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 263, column: 7)
!1334 = !DILocation(line: 263, column: 7, scope: !1185)
!1335 = !DILocation(line: 264, column: 9, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 263, column: 16)
!1337 = !DILocation(line: 264, column: 20, scope: !1336)
!1338 = !DILocation(line: 265, column: 9, scope: !1336)
!1339 = !DILocation(line: 265, column: 27, scope: !1336)
!1340 = !DILocation(line: 266, column: 3, scope: !1336)
!1341 = !DILocation(line: 267, column: 39, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !126, line: 268, column: 5)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !126, line: 267, column: 5)
!1344 = distinct !DILexicalBlock(scope: !1333, file: !126, line: 266, column: 10)
!1345 = !DILocation(line: 267, column: 15, scope: !1342)
!1346 = !DILocalVariable(name: "tmp___7", scope: !1127, file: !126, line: 180, type: !19)
!1347 = !DILocation(line: 267, column: 9, scope: !1348)
!1348 = distinct !DILexicalBlock(scope: !1344, file: !126, line: 267, column: 9)
!1349 = !DILocation(line: 267, column: 9, scope: !1344)
!1350 = !DILocation(line: 268, column: 11, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 267, column: 18)
!1352 = !DILocation(line: 268, column: 14, scope: !1351)
!1353 = !DILocation(line: 269, column: 11, scope: !1351)
!1354 = !DILocation(line: 269, column: 29, scope: !1351)
!1355 = !DILocation(line: 270, column: 5, scope: !1351)
!1356 = !DILocation(line: 271, column: 41, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1358, file: !126, line: 272, column: 7)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !126, line: 271, column: 7)
!1359 = distinct !DILexicalBlock(scope: !1348, file: !126, line: 270, column: 12)
!1360 = !DILocation(line: 271, column: 17, scope: !1357)
!1361 = !DILocalVariable(name: "tmp___6", scope: !1127, file: !126, line: 179, type: !19)
!1362 = !DILocation(line: 271, column: 11, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1359, file: !126, line: 271, column: 11)
!1364 = !DILocation(line: 271, column: 11, scope: !1359)
!1365 = !DILocation(line: 272, column: 13, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1363, file: !126, line: 271, column: 20)
!1367 = !DILocation(line: 272, column: 16, scope: !1366)
!1368 = !DILocation(line: 273, column: 13, scope: !1366)
!1369 = !DILocation(line: 273, column: 31, scope: !1366)
!1370 = !DILocation(line: 274, column: 7, scope: !1366)
!1371 = !DILocation(line: 275, column: 43, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1373, file: !126, line: 276, column: 9)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !126, line: 275, column: 9)
!1374 = distinct !DILexicalBlock(scope: !1363, file: !126, line: 274, column: 14)
!1375 = !DILocation(line: 275, column: 19, scope: !1372)
!1376 = !DILocalVariable(name: "tmp___5", scope: !1127, file: !126, line: 178, type: !19)
!1377 = !DILocation(line: 275, column: 13, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1374, file: !126, line: 275, column: 13)
!1379 = !DILocation(line: 275, column: 13, scope: !1374)
!1380 = !DILocation(line: 276, column: 15, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !126, line: 275, column: 22)
!1382 = !DILocation(line: 276, column: 18, scope: !1381)
!1383 = !DILocation(line: 277, column: 15, scope: !1381)
!1384 = !DILocation(line: 277, column: 33, scope: !1381)
!1385 = !DILocation(line: 278, column: 9, scope: !1381)
!1386 = !DILocation(line: 284, column: 37, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1388, file: !126, line: 283, column: 3)
!1388 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 282, column: 3)
!1389 = !DILocation(line: 284, column: 13, scope: !1387)
!1390 = !DILocalVariable(name: "tmp___9", scope: !1127, file: !126, line: 182, type: !19)
!1391 = !DILocation(line: 284, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 284, column: 7)
!1393 = !DILocation(line: 284, column: 7, scope: !1185)
!1394 = !DILocation(line: 285, column: 9, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1392, file: !126, line: 284, column: 16)
!1396 = !DILocation(line: 285, column: 18, scope: !1395)
!1397 = !DILocation(line: 286, column: 3, scope: !1395)
!1398 = !DILocation(line: 297, column: 24, scope: !1185)
!1399 = !DILocation(line: 297, column: 32, scope: !1185)
!1400 = !DILocation(line: 297, column: 39, scope: !1185)
!1401 = !DILocation(line: 300, column: 11, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 300, column: 7)
!1403 = !DILocation(line: 300, column: 7, scope: !1402)
!1404 = !DILocation(line: 300, column: 7, scope: !1185)
!1405 = !DILocation(line: 300, column: 13, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !126, line: 300, column: 9)
!1407 = distinct !DILexicalBlock(scope: !1402, file: !126, line: 300, column: 18)
!1408 = !DILocation(line: 300, column: 9, scope: !1406)
!1409 = !DILocation(line: 300, column: 9, scope: !1407)
!1410 = !DILocation(line: 302, column: 5, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1406, file: !126, line: 300, column: 17)
!1412 = !DILocation(line: 300, column: 7, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1406, file: !126, line: 302, column: 12)
!1414 = !DILocation(line: 302, column: 3, scope: !1407)
!1415 = !DILocation(line: 303, column: 11, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1402, file: !126, line: 303, column: 7)
!1417 = !DILocation(line: 303, column: 7, scope: !1416)
!1418 = !DILocation(line: 303, column: 7, scope: !1402)
!1419 = !DILocation(line: 303, column: 13, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !126, line: 303, column: 9)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !126, line: 303, column: 18)
!1422 = !DILocation(line: 303, column: 9, scope: !1420)
!1423 = !DILocation(line: 303, column: 9, scope: !1421)
!1424 = !DILocation(line: 305, column: 5, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !126, line: 303, column: 17)
!1426 = !DILocation(line: 303, column: 7, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1420, file: !126, line: 305, column: 12)
!1428 = !DILocation(line: 305, column: 3, scope: !1421)
!1429 = !DILocation(line: 306, column: 11, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1416, file: !126, line: 306, column: 7)
!1431 = !DILocation(line: 306, column: 7, scope: !1430)
!1432 = !DILocation(line: 306, column: 7, scope: !1416)
!1433 = !DILocation(line: 306, column: 13, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1435, file: !126, line: 306, column: 9)
!1435 = distinct !DILexicalBlock(scope: !1430, file: !126, line: 306, column: 18)
!1436 = !DILocation(line: 306, column: 9, scope: !1434)
!1437 = !DILocation(line: 306, column: 9, scope: !1435)
!1438 = !DILocation(line: 308, column: 5, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1434, file: !126, line: 306, column: 17)
!1440 = !DILocation(line: 306, column: 7, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1434, file: !126, line: 308, column: 12)
!1442 = !DILocation(line: 308, column: 3, scope: !1435)
!1443 = !DILocation(line: 309, column: 11, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1430, file: !126, line: 309, column: 7)
!1445 = !DILocation(line: 309, column: 7, scope: !1444)
!1446 = !DILocation(line: 309, column: 7, scope: !1430)
!1447 = !DILocation(line: 309, column: 5, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1444, file: !126, line: 309, column: 18)
!1449 = !DILocation(line: 309, column: 11, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1444, file: !126, line: 309, column: 7)
!1451 = !DILocation(line: 309, column: 7, scope: !1450)
!1452 = !DILocation(line: 309, column: 19, scope: !1450)
!1453 = !DILocation(line: 309, column: 13, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !126, line: 309, column: 9)
!1455 = distinct !DILexicalBlock(scope: !1450, file: !126, line: 309, column: 19)
!1456 = !DILocation(line: 309, column: 9, scope: !1454)
!1457 = !DILocation(line: 309, column: 9, scope: !1455)
!1458 = !DILocation(line: 311, column: 5, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1454, file: !126, line: 309, column: 17)
!1460 = !DILocation(line: 309, column: 7, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1454, file: !126, line: 311, column: 12)
!1462 = !DILocation(line: 311, column: 3, scope: !1455)
!1463 = !DILocation(line: 312, column: 11, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1450, file: !126, line: 312, column: 7)
!1465 = !DILocation(line: 312, column: 7, scope: !1464)
!1466 = !DILocation(line: 312, column: 7, scope: !1450)
!1467 = !DILocation(line: 312, column: 5, scope: !1468)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !126, line: 312, column: 18)
!1469 = !DILocation(line: 312, column: 11, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1464, file: !126, line: 312, column: 7)
!1471 = !DILocation(line: 312, column: 7, scope: !1470)
!1472 = !DILocation(line: 312, column: 19, scope: !1470)
!1473 = !DILocation(line: 312, column: 13, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1475, file: !126, line: 312, column: 9)
!1475 = distinct !DILexicalBlock(scope: !1470, file: !126, line: 312, column: 19)
!1476 = !DILocation(line: 312, column: 9, scope: !1474)
!1477 = !DILocation(line: 312, column: 9, scope: !1475)
!1478 = !DILocation(line: 314, column: 5, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1474, file: !126, line: 312, column: 17)
!1480 = !DILocation(line: 312, column: 13, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1474, file: !126, line: 312, column: 9)
!1482 = !DILocation(line: 312, column: 9, scope: !1481)
!1483 = !DILocation(line: 314, column: 5, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1481, file: !126, line: 312, column: 17)
!1485 = !DILocation(line: 0, scope: !1481)
!1486 = !DILocation(line: 0, scope: !1474)
!1487 = !DILocation(line: 318, column: 3, scope: !1475)
!1488 = !DILocation(line: 0, scope: !1470)
!1489 = !DILocation(line: 0, scope: !1450)
!1490 = !DILocation(line: 0, scope: !1430)
!1491 = !DILocation(line: 0, scope: !1416)
!1492 = !DILocation(line: 0, scope: !1402)
!1493 = !DILocation(line: 319, column: 18, scope: !1185)
!1494 = !DILocation(line: 319, column: 7, scope: !1185)
!1495 = !DILocation(line: 319, column: 16, scope: !1185)
!1496 = !DILocation(line: 328, column: 24, scope: !1185)
!1497 = !DILocation(line: 328, column: 32, scope: !1185)
!1498 = !DILocation(line: 328, column: 39, scope: !1185)
!1499 = !DILocation(line: 330, column: 11, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 330, column: 7)
!1501 = !DILocation(line: 330, column: 7, scope: !1500)
!1502 = !DILocation(line: 330, column: 7, scope: !1185)
!1503 = !DILocation(line: 331, column: 23, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !126, line: 330, column: 18)
!1505 = !DILocation(line: 331, column: 9, scope: !1504)
!1506 = !DILocation(line: 331, column: 21, scope: !1504)
!1507 = !DILocation(line: 332, column: 3, scope: !1504)
!1508 = !DILocation(line: 333, column: 11, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1500, file: !126, line: 333, column: 7)
!1510 = !DILocation(line: 333, column: 7, scope: !1509)
!1511 = !DILocation(line: 333, column: 7, scope: !1500)
!1512 = !DILocation(line: 334, column: 23, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1509, file: !126, line: 333, column: 18)
!1514 = !DILocation(line: 334, column: 9, scope: !1513)
!1515 = !DILocation(line: 334, column: 21, scope: !1513)
!1516 = !DILocation(line: 335, column: 3, scope: !1513)
!1517 = !DILocation(line: 336, column: 11, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1509, file: !126, line: 336, column: 7)
!1519 = !DILocation(line: 336, column: 7, scope: !1518)
!1520 = !DILocation(line: 336, column: 7, scope: !1509)
!1521 = !DILocation(line: 337, column: 23, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1518, file: !126, line: 336, column: 19)
!1523 = !DILocation(line: 337, column: 9, scope: !1522)
!1524 = !DILocation(line: 337, column: 21, scope: !1522)
!1525 = !DILocation(line: 338, column: 3, scope: !1522)
!1526 = !DILocation(line: 340, column: 9, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1518, file: !126, line: 338, column: 10)
!1528 = !DILocation(line: 340, column: 21, scope: !1527)
!1529 = !DILocation(line: 346, column: 38, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !126, line: 343, column: 3)
!1531 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 342, column: 3)
!1532 = !DILocation(line: 346, column: 14, scope: !1530)
!1533 = !DILocalVariable(name: "tmp___10", scope: !1127, file: !126, line: 183, type: !19)
!1534 = !DILocation(line: 346, column: 7, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 346, column: 7)
!1536 = !DILocation(line: 346, column: 7, scope: !1185)
!1537 = !DILocation(line: 347, column: 9, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1535, file: !126, line: 346, column: 17)
!1539 = !DILocation(line: 347, column: 17, scope: !1538)
!1540 = !DILocation(line: 348, column: 3, scope: !1538)
!1541 = !DILocation(line: 353, column: 38, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !126, line: 350, column: 3)
!1543 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 349, column: 3)
!1544 = !DILocation(line: 353, column: 14, scope: !1542)
!1545 = !DILocalVariable(name: "tmp___11", scope: !1127, file: !126, line: 184, type: !19)
!1546 = !DILocation(line: 353, column: 7, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 353, column: 7)
!1548 = !DILocation(line: 353, column: 7, scope: !1185)
!1549 = !DILocation(line: 354, column: 9, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1547, file: !126, line: 353, column: 17)
!1551 = !DILocation(line: 354, column: 18, scope: !1550)
!1552 = !DILocation(line: 355, column: 3, scope: !1550)
!1553 = !DILocation(line: 363, column: 38, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1555, file: !126, line: 357, column: 3)
!1555 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 356, column: 3)
!1556 = !DILocation(line: 363, column: 14, scope: !1554)
!1557 = !DILocalVariable(name: "tmp___15", scope: !1127, file: !126, line: 188, type: !19)
!1558 = !DILocation(line: 363, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 363, column: 7)
!1560 = !DILocation(line: 363, column: 7, scope: !1185)
!1561 = !DILocation(line: 364, column: 9, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1559, file: !126, line: 363, column: 17)
!1563 = !DILocation(line: 364, column: 16, scope: !1562)
!1564 = !DILocation(line: 365, column: 3, scope: !1562)
!1565 = !DILocation(line: 366, column: 40, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !126, line: 367, column: 5)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !126, line: 366, column: 5)
!1568 = distinct !DILexicalBlock(scope: !1559, file: !126, line: 365, column: 10)
!1569 = !DILocation(line: 366, column: 16, scope: !1566)
!1570 = !DILocalVariable(name: "tmp___14", scope: !1127, file: !126, line: 187, type: !19)
!1571 = !DILocation(line: 366, column: 9, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !126, line: 366, column: 9)
!1573 = !DILocation(line: 366, column: 9, scope: !1568)
!1574 = !DILocation(line: 368, column: 11, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1572, file: !126, line: 366, column: 19)
!1576 = !DILocation(line: 368, column: 24, scope: !1575)
!1577 = !DILocation(line: 369, column: 11, scope: !1575)
!1578 = !DILocation(line: 369, column: 26, scope: !1575)
!1579 = !DILocation(line: 370, column: 5, scope: !1575)
!1580 = !DILocation(line: 372, column: 42, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1582, file: !126, line: 372, column: 7)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !126, line: 371, column: 7)
!1583 = distinct !DILexicalBlock(scope: !1572, file: !126, line: 370, column: 12)
!1584 = !DILocation(line: 372, column: 18, scope: !1581)
!1585 = !DILocalVariable(name: "tmp___13", scope: !1127, file: !126, line: 186, type: !19)
!1586 = !DILocation(line: 372, column: 11, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1583, file: !126, line: 372, column: 11)
!1588 = !DILocation(line: 372, column: 11, scope: !1583)
!1589 = !DILocation(line: 373, column: 13, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1587, file: !126, line: 372, column: 21)
!1591 = !DILocation(line: 373, column: 25, scope: !1590)
!1592 = !DILocation(line: 374, column: 7, scope: !1590)
!1593 = !DILocation(line: 375, column: 44, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !126, line: 376, column: 9)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !126, line: 375, column: 9)
!1596 = distinct !DILexicalBlock(scope: !1587, file: !126, line: 374, column: 14)
!1597 = !DILocation(line: 375, column: 20, scope: !1594)
!1598 = !DILocalVariable(name: "tmp___12", scope: !1127, file: !126, line: 185, type: !19)
!1599 = !DILocation(line: 375, column: 13, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1596, file: !126, line: 375, column: 13)
!1601 = !DILocation(line: 375, column: 13, scope: !1596)
!1602 = !DILocation(line: 376, column: 15, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1600, file: !126, line: 375, column: 23)
!1604 = !DILocation(line: 376, column: 30, scope: !1603)
!1605 = !DILocation(line: 377, column: 9, scope: !1603)
!1606 = !DILocation(line: 382, column: 38, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1608, file: !126, line: 382, column: 3)
!1608 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 381, column: 3)
!1609 = !DILocation(line: 382, column: 14, scope: !1607)
!1610 = !DILocalVariable(name: "tmp___16", scope: !1127, file: !126, line: 189, type: !19)
!1611 = !DILocation(line: 382, column: 7, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 382, column: 7)
!1613 = !DILocation(line: 382, column: 7, scope: !1185)
!1614 = !DILocation(line: 383, column: 9, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !126, line: 382, column: 17)
!1616 = !DILocation(line: 383, column: 19, scope: !1615)
!1617 = !DILocation(line: 384, column: 3, scope: !1615)
!1618 = !DILocation(line: 389, column: 38, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !126, line: 386, column: 3)
!1620 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 385, column: 3)
!1621 = !DILocation(line: 389, column: 14, scope: !1619)
!1622 = !DILocalVariable(name: "tmp___17", scope: !1127, file: !126, line: 190, type: !19)
!1623 = !DILocation(line: 389, column: 7, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 389, column: 7)
!1625 = !DILocation(line: 389, column: 7, scope: !1185)
!1626 = !DILocation(line: 390, column: 9, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !126, line: 389, column: 17)
!1628 = !DILocation(line: 390, column: 18, scope: !1627)
!1629 = !DILocation(line: 391, column: 3, scope: !1627)
!1630 = !DILocation(line: 396, column: 38, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !126, line: 393, column: 3)
!1632 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 392, column: 3)
!1633 = !DILocation(line: 396, column: 14, scope: !1631)
!1634 = !DILocalVariable(name: "tmp___21", scope: !1127, file: !126, line: 194, type: !19)
!1635 = !DILocation(line: 396, column: 7, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 396, column: 7)
!1637 = !DILocation(line: 396, column: 7, scope: !1185)
!1638 = !DILocation(line: 397, column: 9, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1636, file: !126, line: 396, column: 17)
!1640 = !DILocation(line: 397, column: 19, scope: !1639)
!1641 = !DILocation(line: 398, column: 3, scope: !1639)
!1642 = !DILocation(line: 399, column: 40, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !126, line: 400, column: 5)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !126, line: 399, column: 5)
!1645 = distinct !DILexicalBlock(scope: !1636, file: !126, line: 398, column: 10)
!1646 = !DILocation(line: 399, column: 16, scope: !1643)
!1647 = !DILocalVariable(name: "tmp___20", scope: !1127, file: !126, line: 193, type: !19)
!1648 = !DILocation(line: 399, column: 9, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1645, file: !126, line: 399, column: 9)
!1650 = !DILocation(line: 399, column: 9, scope: !1645)
!1651 = !DILocation(line: 400, column: 11, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1649, file: !126, line: 399, column: 19)
!1653 = !DILocation(line: 400, column: 21, scope: !1652)
!1654 = !DILocation(line: 401, column: 5, scope: !1652)
!1655 = !DILocation(line: 402, column: 42, scope: !1656)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !126, line: 403, column: 7)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !126, line: 402, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !126, line: 401, column: 12)
!1659 = !DILocation(line: 402, column: 18, scope: !1656)
!1660 = !DILocalVariable(name: "tmp___19", scope: !1127, file: !126, line: 192, type: !19)
!1661 = !DILocation(line: 402, column: 11, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !126, line: 402, column: 11)
!1663 = !DILocation(line: 402, column: 11, scope: !1658)
!1664 = !DILocation(line: 403, column: 13, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1662, file: !126, line: 402, column: 21)
!1666 = !DILocation(line: 403, column: 25, scope: !1665)
!1667 = !DILocation(line: 404, column: 7, scope: !1665)
!1668 = !DILocation(line: 405, column: 44, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !126, line: 406, column: 9)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !126, line: 405, column: 9)
!1671 = distinct !DILexicalBlock(scope: !1662, file: !126, line: 404, column: 14)
!1672 = !DILocation(line: 405, column: 20, scope: !1669)
!1673 = !DILocalVariable(name: "tmp___18", scope: !1127, file: !126, line: 191, type: !19)
!1674 = !DILocation(line: 405, column: 13, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1671, file: !126, line: 405, column: 13)
!1676 = !DILocation(line: 405, column: 13, scope: !1671)
!1677 = !DILocation(line: 406, column: 15, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1675, file: !126, line: 405, column: 23)
!1679 = !DILocation(line: 406, column: 25, scope: !1678)
!1680 = !DILocation(line: 407, column: 9, scope: !1678)
!1681 = !DILocation(line: 412, column: 11, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 412, column: 7)
!1683 = !DILocation(line: 412, column: 23, scope: !1682)
!1684 = !DILocation(line: 412, column: 7, scope: !1185)
!1685 = !DILocation(line: 413, column: 13, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !126, line: 413, column: 9)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !126, line: 412, column: 28)
!1688 = !DILocation(line: 413, column: 9, scope: !1686)
!1689 = !DILocation(line: 413, column: 9, scope: !1687)
!1690 = !DILocation(line: 414, column: 15, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !126, line: 414, column: 11)
!1692 = distinct !DILexicalBlock(scope: !1686, file: !126, line: 413, column: 20)
!1693 = !DILocation(line: 414, column: 11, scope: !1691)
!1694 = !DILocation(line: 414, column: 11, scope: !1692)
!1695 = !DILocation(line: 414, column: 23, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !126, line: 414, column: 13)
!1697 = distinct !DILexicalBlock(scope: !1691, file: !126, line: 414, column: 19)
!1698 = !DILocation(line: 414, column: 13, scope: !1696)
!1699 = !DILocation(line: 414, column: 31, scope: !1696)
!1700 = !DILocation(line: 414, column: 13, scope: !1697)
!1701 = !DILocation(line: 415, column: 42, scope: !1702)
!1702 = distinct !DILexicalBlock(scope: !1696, file: !126, line: 414, column: 37)
!1703 = !DILocation(line: 415, column: 36, scope: !1702)
!1704 = !DILocation(line: 415, column: 52, scope: !1702)
!1705 = !DILocation(line: 415, column: 66, scope: !1702)
!1706 = !DILocation(line: 415, column: 60, scope: !1702)
!1707 = !DILocation(line: 415, column: 78, scope: !1702)
!1708 = !DILocation(line: 415, column: 83, scope: !1702)
!1709 = !DILocation(line: 415, column: 15, scope: !1702)
!1710 = !DILocation(line: 415, column: 28, scope: !1702)
!1711 = !DILocation(line: 416, column: 9, scope: !1702)
!1712 = !DILocation(line: 414, column: 11, scope: !1713)
!1713 = distinct !DILexicalBlock(scope: !1696, file: !126, line: 416, column: 16)
!1714 = !DILocation(line: 416, column: 7, scope: !1697)
!1715 = !DILocation(line: 417, column: 15, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1691, file: !126, line: 417, column: 11)
!1717 = !DILocation(line: 417, column: 11, scope: !1716)
!1718 = !DILocation(line: 417, column: 11, scope: !1691)
!1719 = !DILocation(line: 417, column: 23, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1721, file: !126, line: 417, column: 13)
!1721 = distinct !DILexicalBlock(scope: !1716, file: !126, line: 417, column: 19)
!1722 = !DILocation(line: 417, column: 13, scope: !1720)
!1723 = !DILocation(line: 417, column: 31, scope: !1720)
!1724 = !DILocation(line: 417, column: 13, scope: !1721)
!1725 = !DILocation(line: 418, column: 42, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1720, file: !126, line: 417, column: 37)
!1727 = !DILocation(line: 418, column: 36, scope: !1726)
!1728 = !DILocation(line: 418, column: 52, scope: !1726)
!1729 = !DILocation(line: 418, column: 66, scope: !1726)
!1730 = !DILocation(line: 418, column: 60, scope: !1726)
!1731 = !DILocation(line: 418, column: 79, scope: !1726)
!1732 = !DILocation(line: 418, column: 15, scope: !1726)
!1733 = !DILocation(line: 418, column: 28, scope: !1726)
!1734 = !DILocation(line: 419, column: 9, scope: !1726)
!1735 = !DILocation(line: 417, column: 11, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1720, file: !126, line: 419, column: 16)
!1737 = !DILocation(line: 419, column: 7, scope: !1721)
!1738 = !DILocation(line: 420, column: 15, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1716, file: !126, line: 420, column: 11)
!1740 = !DILocation(line: 420, column: 11, scope: !1739)
!1741 = !DILocation(line: 420, column: 11, scope: !1716)
!1742 = !DILocation(line: 420, column: 9, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1739, file: !126, line: 420, column: 19)
!1744 = !DILocation(line: 420, column: 15, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1739, file: !126, line: 420, column: 11)
!1746 = !DILocation(line: 420, column: 11, scope: !1745)
!1747 = !DILocation(line: 420, column: 19, scope: !1745)
!1748 = !DILocation(line: 420, column: 23, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !126, line: 420, column: 13)
!1750 = distinct !DILexicalBlock(scope: !1745, file: !126, line: 420, column: 19)
!1751 = !DILocation(line: 420, column: 13, scope: !1749)
!1752 = !DILocation(line: 420, column: 31, scope: !1749)
!1753 = !DILocation(line: 420, column: 13, scope: !1750)
!1754 = !DILocation(line: 421, column: 42, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1749, file: !126, line: 420, column: 37)
!1756 = !DILocation(line: 421, column: 36, scope: !1755)
!1757 = !DILocation(line: 421, column: 52, scope: !1755)
!1758 = !DILocation(line: 421, column: 66, scope: !1755)
!1759 = !DILocation(line: 421, column: 60, scope: !1755)
!1760 = !DILocation(line: 421, column: 78, scope: !1755)
!1761 = !DILocation(line: 421, column: 15, scope: !1755)
!1762 = !DILocation(line: 421, column: 28, scope: !1755)
!1763 = !DILocation(line: 422, column: 9, scope: !1755)
!1764 = !DILocation(line: 420, column: 11, scope: !1765)
!1765 = distinct !DILexicalBlock(scope: !1749, file: !126, line: 422, column: 16)
!1766 = !DILocation(line: 422, column: 7, scope: !1750)
!1767 = !DILocation(line: 423, column: 15, scope: !1768)
!1768 = distinct !DILexicalBlock(scope: !1745, file: !126, line: 423, column: 11)
!1769 = !DILocation(line: 423, column: 11, scope: !1768)
!1770 = !DILocation(line: 423, column: 11, scope: !1745)
!1771 = !DILocation(line: 423, column: 9, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1768, file: !126, line: 423, column: 19)
!1773 = !DILocation(line: 423, column: 15, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1768, file: !126, line: 423, column: 11)
!1775 = !DILocation(line: 423, column: 11, scope: !1774)
!1776 = !DILocation(line: 423, column: 19, scope: !1774)
!1777 = !DILocation(line: 423, column: 23, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1779, file: !126, line: 423, column: 13)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !126, line: 423, column: 19)
!1780 = !DILocation(line: 423, column: 13, scope: !1778)
!1781 = !DILocation(line: 423, column: 31, scope: !1778)
!1782 = !DILocation(line: 423, column: 13, scope: !1779)
!1783 = !DILocation(line: 424, column: 42, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1778, file: !126, line: 423, column: 37)
!1785 = !DILocation(line: 424, column: 36, scope: !1784)
!1786 = !DILocation(line: 424, column: 52, scope: !1784)
!1787 = !DILocation(line: 424, column: 66, scope: !1784)
!1788 = !DILocation(line: 424, column: 60, scope: !1784)
!1789 = !DILocation(line: 424, column: 15, scope: !1784)
!1790 = !DILocation(line: 424, column: 28, scope: !1784)
!1791 = !DILocation(line: 425, column: 9, scope: !1784)
!1792 = !DILocation(line: 426, column: 7, scope: !1779)
!1793 = !DILocation(line: 427, column: 5, scope: !1692)
!1794 = !DILocation(line: 426, column: 13, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1686, file: !126, line: 426, column: 9)
!1796 = !DILocation(line: 426, column: 9, scope: !1795)
!1797 = !DILocation(line: 426, column: 9, scope: !1686)
!1798 = !DILocation(line: 426, column: 7, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !126, line: 426, column: 20)
!1800 = !DILocation(line: 426, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1795, file: !126, line: 426, column: 9)
!1802 = !DILocation(line: 426, column: 9, scope: !1801)
!1803 = !DILocation(line: 426, column: 21, scope: !1801)
!1804 = !DILocation(line: 427, column: 15, scope: !1805)
!1805 = distinct !DILexicalBlock(scope: !1806, file: !126, line: 427, column: 11)
!1806 = distinct !DILexicalBlock(scope: !1801, file: !126, line: 426, column: 21)
!1807 = !DILocation(line: 427, column: 11, scope: !1805)
!1808 = !DILocation(line: 427, column: 11, scope: !1806)
!1809 = !DILocation(line: 427, column: 23, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1811, file: !126, line: 427, column: 13)
!1811 = distinct !DILexicalBlock(scope: !1805, file: !126, line: 427, column: 19)
!1812 = !DILocation(line: 427, column: 13, scope: !1810)
!1813 = !DILocation(line: 427, column: 31, scope: !1810)
!1814 = !DILocation(line: 427, column: 13, scope: !1811)
!1815 = !DILocation(line: 428, column: 43, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1810, file: !126, line: 427, column: 37)
!1817 = !DILocation(line: 428, column: 37, scope: !1816)
!1818 = !DILocation(line: 428, column: 53, scope: !1816)
!1819 = !DILocation(line: 428, column: 67, scope: !1816)
!1820 = !DILocation(line: 428, column: 61, scope: !1816)
!1821 = !DILocation(line: 428, column: 79, scope: !1816)
!1822 = !DILocation(line: 428, column: 84, scope: !1816)
!1823 = !DILocation(line: 428, column: 15, scope: !1816)
!1824 = !DILocation(line: 428, column: 28, scope: !1816)
!1825 = !DILocation(line: 429, column: 9, scope: !1816)
!1826 = !DILocation(line: 427, column: 11, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1810, file: !126, line: 429, column: 16)
!1828 = !DILocation(line: 429, column: 7, scope: !1811)
!1829 = !DILocation(line: 430, column: 15, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1805, file: !126, line: 430, column: 11)
!1831 = !DILocation(line: 430, column: 11, scope: !1830)
!1832 = !DILocation(line: 430, column: 11, scope: !1805)
!1833 = !DILocation(line: 430, column: 23, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !126, line: 430, column: 13)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !126, line: 430, column: 19)
!1836 = !DILocation(line: 430, column: 13, scope: !1834)
!1837 = !DILocation(line: 430, column: 31, scope: !1834)
!1838 = !DILocation(line: 430, column: 13, scope: !1835)
!1839 = !DILocation(line: 431, column: 43, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1834, file: !126, line: 430, column: 37)
!1841 = !DILocation(line: 431, column: 37, scope: !1840)
!1842 = !DILocation(line: 431, column: 53, scope: !1840)
!1843 = !DILocation(line: 431, column: 67, scope: !1840)
!1844 = !DILocation(line: 431, column: 61, scope: !1840)
!1845 = !DILocation(line: 431, column: 80, scope: !1840)
!1846 = !DILocation(line: 431, column: 15, scope: !1840)
!1847 = !DILocation(line: 431, column: 28, scope: !1840)
!1848 = !DILocation(line: 432, column: 9, scope: !1840)
!1849 = !DILocation(line: 430, column: 11, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1834, file: !126, line: 432, column: 16)
!1851 = !DILocation(line: 432, column: 7, scope: !1835)
!1852 = !DILocation(line: 433, column: 15, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1830, file: !126, line: 433, column: 11)
!1854 = !DILocation(line: 433, column: 11, scope: !1853)
!1855 = !DILocation(line: 433, column: 11, scope: !1830)
!1856 = !DILocation(line: 433, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1853, file: !126, line: 433, column: 19)
!1858 = !DILocation(line: 433, column: 15, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1853, file: !126, line: 433, column: 11)
!1860 = !DILocation(line: 433, column: 11, scope: !1859)
!1861 = !DILocation(line: 433, column: 19, scope: !1859)
!1862 = !DILocation(line: 433, column: 23, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !126, line: 433, column: 13)
!1864 = distinct !DILexicalBlock(scope: !1859, file: !126, line: 433, column: 19)
!1865 = !DILocation(line: 433, column: 13, scope: !1863)
!1866 = !DILocation(line: 433, column: 31, scope: !1863)
!1867 = !DILocation(line: 433, column: 13, scope: !1864)
!1868 = !DILocation(line: 434, column: 41, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1863, file: !126, line: 433, column: 37)
!1870 = !DILocation(line: 434, column: 35, scope: !1869)
!1871 = !DILocation(line: 434, column: 51, scope: !1869)
!1872 = !DILocation(line: 434, column: 65, scope: !1869)
!1873 = !DILocation(line: 434, column: 59, scope: !1869)
!1874 = !DILocation(line: 434, column: 77, scope: !1869)
!1875 = !DILocation(line: 434, column: 15, scope: !1869)
!1876 = !DILocation(line: 434, column: 28, scope: !1869)
!1877 = !DILocation(line: 435, column: 9, scope: !1869)
!1878 = !DILocation(line: 433, column: 11, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1863, file: !126, line: 435, column: 16)
!1880 = !DILocation(line: 435, column: 7, scope: !1864)
!1881 = !DILocation(line: 436, column: 15, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1859, file: !126, line: 436, column: 11)
!1883 = !DILocation(line: 436, column: 11, scope: !1882)
!1884 = !DILocation(line: 436, column: 11, scope: !1859)
!1885 = !DILocation(line: 436, column: 9, scope: !1886)
!1886 = distinct !DILexicalBlock(scope: !1882, file: !126, line: 436, column: 19)
!1887 = !DILocation(line: 436, column: 15, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1882, file: !126, line: 436, column: 11)
!1889 = !DILocation(line: 436, column: 11, scope: !1888)
!1890 = !DILocation(line: 436, column: 19, scope: !1888)
!1891 = !DILocation(line: 436, column: 23, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !126, line: 436, column: 13)
!1893 = distinct !DILexicalBlock(scope: !1888, file: !126, line: 436, column: 19)
!1894 = !DILocation(line: 436, column: 13, scope: !1892)
!1895 = !DILocation(line: 436, column: 31, scope: !1892)
!1896 = !DILocation(line: 436, column: 13, scope: !1893)
!1897 = !DILocation(line: 437, column: 41, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1892, file: !126, line: 436, column: 37)
!1899 = !DILocation(line: 437, column: 35, scope: !1898)
!1900 = !DILocation(line: 437, column: 51, scope: !1898)
!1901 = !DILocation(line: 437, column: 65, scope: !1898)
!1902 = !DILocation(line: 437, column: 59, scope: !1898)
!1903 = !DILocation(line: 437, column: 15, scope: !1898)
!1904 = !DILocation(line: 437, column: 28, scope: !1898)
!1905 = !DILocation(line: 438, column: 9, scope: !1898)
!1906 = !DILocation(line: 439, column: 7, scope: !1893)
!1907 = !DILocation(line: 440, column: 5, scope: !1806)
!1908 = !DILocation(line: 441, column: 3, scope: !1687)
!1909 = !DILocation(line: 441, column: 9, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1682, file: !126, line: 441, column: 10)
!1911 = !DILocation(line: 441, column: 22, scope: !1910)
!1912 = !DILocation(line: 450, column: 11, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1185, file: !126, line: 450, column: 7)
!1914 = !DILocation(line: 450, column: 7, scope: !1913)
!1915 = !DILocation(line: 450, column: 7, scope: !1185)
!1916 = !DILocation(line: 451, column: 9, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1913, file: !126, line: 450, column: 23)
!1918 = !DILocation(line: 451, column: 21, scope: !1917)
!1919 = !DILocation(line: 452, column: 3, scope: !1917)
!1920 = !DILocation(line: 450, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1913, file: !126, line: 450, column: 7)
!1922 = !DILocation(line: 450, column: 20, scope: !1921)
!1923 = !DILocation(line: 451, column: 9, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !126, line: 450, column: 26)
!1925 = !DILocation(line: 451, column: 21, scope: !1924)
!1926 = !DILocation(line: 452, column: 3, scope: !1924)
!1927 = !DILocation(line: 450, column: 11, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1921, file: !126, line: 450, column: 7)
!1929 = !DILocation(line: 450, column: 20, scope: !1928)
!1930 = !DILocation(line: 450, column: 7, scope: !1921)
!1931 = !DILocation(line: 451, column: 9, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !126, line: 450, column: 26)
!1933 = !DILocation(line: 451, column: 21, scope: !1932)
!1934 = !DILocation(line: 452, column: 3, scope: !1932)
!1935 = !DILocation(line: 450, column: 11, scope: !1936)
!1936 = distinct !DILexicalBlock(scope: !1928, file: !126, line: 450, column: 7)
!1937 = !DILocation(line: 450, column: 23, scope: !1936)
!1938 = !DILocation(line: 450, column: 7, scope: !1928)
!1939 = !DILocation(line: 451, column: 9, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1936, file: !126, line: 450, column: 29)
!1941 = !DILocation(line: 451, column: 21, scope: !1940)
!1942 = !DILocation(line: 452, column: 3, scope: !1940)
!1943 = !DILocation(line: 453, column: 11, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1936, file: !126, line: 453, column: 7)
!1945 = !DILocation(line: 453, column: 7, scope: !1944)
!1946 = !DILocation(line: 453, column: 7, scope: !1936)
!1947 = !DILocation(line: 453, column: 13, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1949, file: !126, line: 453, column: 9)
!1949 = distinct !DILexicalBlock(scope: !1944, file: !126, line: 453, column: 15)
!1950 = !DILocation(line: 453, column: 22, scope: !1948)
!1951 = !DILocation(line: 453, column: 9, scope: !1949)
!1952 = !DILocation(line: 453, column: 21, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1954, file: !126, line: 453, column: 11)
!1954 = distinct !DILexicalBlock(scope: !1948, file: !126, line: 453, column: 29)
!1955 = !DILocation(line: 453, column: 11, scope: !1953)
!1956 = !DILocation(line: 453, column: 36, scope: !1953)
!1957 = !DILocation(line: 453, column: 11, scope: !1954)
!1958 = !DILocation(line: 454, column: 13, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1953, file: !126, line: 453, column: 42)
!1960 = !DILocation(line: 454, column: 25, scope: !1959)
!1961 = !DILocation(line: 455, column: 7, scope: !1959)
!1962 = !DILocation(line: 453, column: 9, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1953, file: !126, line: 455, column: 14)
!1964 = !DILocation(line: 455, column: 5, scope: !1954)
!1965 = !DILocation(line: 453, column: 7, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1948, file: !126, line: 455, column: 12)
!1967 = !DILocation(line: 455, column: 3, scope: !1949)
!1968 = !DILocation(line: 456, column: 11, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1944, file: !126, line: 456, column: 7)
!1970 = !DILocation(line: 456, column: 7, scope: !1969)
!1971 = !DILocation(line: 456, column: 7, scope: !1944)
!1972 = !DILocation(line: 456, column: 13, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !126, line: 456, column: 9)
!1974 = distinct !DILexicalBlock(scope: !1969, file: !126, line: 456, column: 15)
!1975 = !DILocation(line: 456, column: 22, scope: !1973)
!1976 = !DILocation(line: 456, column: 9, scope: !1974)
!1977 = !DILocation(line: 456, column: 21, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !126, line: 456, column: 11)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !126, line: 456, column: 29)
!1980 = !DILocation(line: 456, column: 11, scope: !1978)
!1981 = !DILocation(line: 456, column: 36, scope: !1978)
!1982 = !DILocation(line: 456, column: 11, scope: !1979)
!1983 = !DILocation(line: 457, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !126, line: 456, column: 42)
!1985 = !DILocation(line: 457, column: 25, scope: !1984)
!1986 = !DILocation(line: 458, column: 7, scope: !1984)
!1987 = !DILocation(line: 456, column: 9, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1978, file: !126, line: 458, column: 14)
!1989 = !DILocation(line: 458, column: 5, scope: !1979)
!1990 = !DILocation(line: 456, column: 7, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1973, file: !126, line: 458, column: 12)
!1992 = !DILocation(line: 458, column: 3, scope: !1974)
!1993 = !DILocation(line: 459, column: 11, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1969, file: !126, line: 459, column: 7)
!1995 = !DILocation(line: 459, column: 7, scope: !1994)
!1996 = !DILocation(line: 459, column: 7, scope: !1969)
!1997 = !DILocation(line: 459, column: 13, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !126, line: 459, column: 9)
!1999 = distinct !DILexicalBlock(scope: !1994, file: !126, line: 459, column: 15)
!2000 = !DILocation(line: 459, column: 22, scope: !1998)
!2001 = !DILocation(line: 459, column: 9, scope: !1999)
!2002 = !DILocation(line: 459, column: 21, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !126, line: 459, column: 11)
!2004 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 459, column: 29)
!2005 = !DILocation(line: 459, column: 11, scope: !2003)
!2006 = !DILocation(line: 459, column: 36, scope: !2003)
!2007 = !DILocation(line: 459, column: 11, scope: !2004)
!2008 = !DILocation(line: 460, column: 13, scope: !2009)
!2009 = distinct !DILexicalBlock(scope: !2003, file: !126, line: 459, column: 42)
!2010 = !DILocation(line: 460, column: 25, scope: !2009)
!2011 = !DILocation(line: 461, column: 7, scope: !2009)
!2012 = !DILocation(line: 459, column: 9, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2003, file: !126, line: 461, column: 14)
!2014 = !DILocation(line: 461, column: 5, scope: !2004)
!2015 = !DILocation(line: 459, column: 7, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !1998, file: !126, line: 461, column: 12)
!2017 = !DILocation(line: 461, column: 3, scope: !1999)
!2018 = !DILocation(line: 462, column: 11, scope: !2019)
!2019 = distinct !DILexicalBlock(scope: !1994, file: !126, line: 462, column: 7)
!2020 = !DILocation(line: 462, column: 7, scope: !2019)
!2021 = !DILocation(line: 462, column: 7, scope: !1994)
!2022 = !DILocation(line: 462, column: 13, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !126, line: 462, column: 9)
!2024 = distinct !DILexicalBlock(scope: !2019, file: !126, line: 462, column: 15)
!2025 = !DILocation(line: 462, column: 22, scope: !2023)
!2026 = !DILocation(line: 462, column: 9, scope: !2024)
!2027 = !DILocation(line: 462, column: 21, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2029, file: !126, line: 462, column: 11)
!2029 = distinct !DILexicalBlock(scope: !2023, file: !126, line: 462, column: 29)
!2030 = !DILocation(line: 462, column: 11, scope: !2028)
!2031 = !DILocation(line: 462, column: 36, scope: !2028)
!2032 = !DILocation(line: 462, column: 11, scope: !2029)
!2033 = !DILocation(line: 463, column: 13, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2028, file: !126, line: 462, column: 42)
!2035 = !DILocation(line: 463, column: 25, scope: !2034)
!2036 = !DILocation(line: 464, column: 7, scope: !2034)
!2037 = !DILocation(line: 462, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2028, file: !126, line: 464, column: 14)
!2039 = !DILocation(line: 464, column: 5, scope: !2029)
!2040 = !DILocation(line: 462, column: 7, scope: !2041)
!2041 = distinct !DILexicalBlock(scope: !2023, file: !126, line: 464, column: 12)
!2042 = !DILocation(line: 464, column: 3, scope: !2024)
!2043 = !DILocation(line: 465, column: 11, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2019, file: !126, line: 465, column: 7)
!2045 = !DILocation(line: 465, column: 7, scope: !2044)
!2046 = !DILocation(line: 465, column: 7, scope: !2019)
!2047 = !DILocation(line: 465, column: 13, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2049, file: !126, line: 465, column: 9)
!2049 = distinct !DILexicalBlock(scope: !2044, file: !126, line: 465, column: 15)
!2050 = !DILocation(line: 465, column: 22, scope: !2048)
!2051 = !DILocation(line: 465, column: 9, scope: !2049)
!2052 = !DILocation(line: 465, column: 21, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2054, file: !126, line: 465, column: 11)
!2054 = distinct !DILexicalBlock(scope: !2048, file: !126, line: 465, column: 29)
!2055 = !DILocation(line: 465, column: 11, scope: !2053)
!2056 = !DILocation(line: 465, column: 36, scope: !2053)
!2057 = !DILocation(line: 465, column: 11, scope: !2054)
!2058 = !DILocation(line: 466, column: 13, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2053, file: !126, line: 465, column: 42)
!2060 = !DILocation(line: 466, column: 25, scope: !2059)
!2061 = !DILocation(line: 467, column: 7, scope: !2059)
!2062 = !DILocation(line: 465, column: 9, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2053, file: !126, line: 467, column: 14)
!2064 = !DILocation(line: 467, column: 5, scope: !2054)
!2065 = !DILocation(line: 465, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2048, file: !126, line: 467, column: 12)
!2067 = !DILocation(line: 467, column: 3, scope: !2049)
!2068 = !DILocation(line: 468, column: 11, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2044, file: !126, line: 468, column: 7)
!2070 = !DILocation(line: 468, column: 7, scope: !2069)
!2071 = !DILocation(line: 468, column: 7, scope: !2044)
!2072 = !DILocation(line: 468, column: 13, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !126, line: 468, column: 9)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !126, line: 468, column: 15)
!2075 = !DILocation(line: 468, column: 22, scope: !2073)
!2076 = !DILocation(line: 468, column: 9, scope: !2074)
!2077 = !DILocation(line: 468, column: 15, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2079, file: !126, line: 468, column: 11)
!2079 = distinct !DILexicalBlock(scope: !2073, file: !126, line: 468, column: 30)
!2080 = !DILocation(line: 468, column: 11, scope: !2078)
!2081 = !DILocation(line: 468, column: 11, scope: !2079)
!2082 = !DILocation(line: 468, column: 9, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2078, file: !126, line: 468, column: 23)
!2084 = !DILocation(line: 468, column: 15, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2078, file: !126, line: 468, column: 11)
!2086 = !DILocation(line: 468, column: 11, scope: !2085)
!2087 = !DILocation(line: 468, column: 9, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !126, line: 468, column: 28)
!2089 = !DILocation(line: 469, column: 13, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2085, file: !126, line: 469, column: 14)
!2091 = !DILocation(line: 469, column: 25, scope: !2090)
!2092 = !DILocation(line: 471, column: 5, scope: !2079)
!2093 = !DILocation(line: 468, column: 7, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2073, file: !126, line: 471, column: 12)
!2095 = !DILocation(line: 470, column: 3, scope: !2074)
!2096 = !DILocation(line: 471, column: 11, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2069, file: !126, line: 471, column: 7)
!2098 = !DILocation(line: 471, column: 7, scope: !2097)
!2099 = !DILocation(line: 471, column: 7, scope: !2069)
!2100 = !DILocation(line: 471, column: 13, scope: !2101)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !126, line: 471, column: 9)
!2102 = distinct !DILexicalBlock(scope: !2097, file: !126, line: 471, column: 15)
!2103 = !DILocation(line: 471, column: 22, scope: !2101)
!2104 = !DILocation(line: 471, column: 9, scope: !2102)
!2105 = !DILocation(line: 471, column: 15, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !126, line: 471, column: 11)
!2107 = distinct !DILexicalBlock(scope: !2101, file: !126, line: 471, column: 30)
!2108 = !DILocation(line: 471, column: 11, scope: !2106)
!2109 = !DILocation(line: 471, column: 11, scope: !2107)
!2110 = !DILocation(line: 471, column: 9, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2106, file: !126, line: 471, column: 23)
!2112 = !DILocation(line: 471, column: 15, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2106, file: !126, line: 471, column: 11)
!2114 = !DILocation(line: 471, column: 11, scope: !2113)
!2115 = !DILocation(line: 471, column: 9, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2113, file: !126, line: 471, column: 28)
!2117 = !DILocation(line: 472, column: 13, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2113, file: !126, line: 472, column: 14)
!2119 = !DILocation(line: 472, column: 25, scope: !2118)
!2120 = !DILocation(line: 474, column: 5, scope: !2107)
!2121 = !DILocation(line: 471, column: 7, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2101, file: !126, line: 474, column: 12)
!2123 = !DILocation(line: 473, column: 3, scope: !2102)
!2124 = !DILocation(line: 474, column: 11, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2097, file: !126, line: 474, column: 7)
!2126 = !DILocation(line: 474, column: 7, scope: !2125)
!2127 = !DILocation(line: 474, column: 7, scope: !2097)
!2128 = !DILocation(line: 474, column: 13, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !126, line: 474, column: 9)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !126, line: 474, column: 15)
!2131 = !DILocation(line: 474, column: 22, scope: !2129)
!2132 = !DILocation(line: 474, column: 9, scope: !2130)
!2133 = !DILocation(line: 474, column: 15, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2135, file: !126, line: 474, column: 11)
!2135 = distinct !DILexicalBlock(scope: !2129, file: !126, line: 474, column: 30)
!2136 = !DILocation(line: 474, column: 11, scope: !2134)
!2137 = !DILocation(line: 474, column: 11, scope: !2135)
!2138 = !DILocation(line: 474, column: 9, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2134, file: !126, line: 474, column: 23)
!2140 = !DILocation(line: 474, column: 15, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2134, file: !126, line: 474, column: 11)
!2142 = !DILocation(line: 474, column: 11, scope: !2141)
!2143 = !DILocation(line: 474, column: 9, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !126, line: 474, column: 28)
!2145 = !DILocation(line: 475, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2141, file: !126, line: 475, column: 14)
!2147 = !DILocation(line: 475, column: 25, scope: !2146)
!2148 = !DILocation(line: 477, column: 5, scope: !2135)
!2149 = !DILocation(line: 474, column: 7, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2129, file: !126, line: 477, column: 12)
!2151 = !DILocation(line: 476, column: 3, scope: !2130)
!2152 = !DILocation(line: 477, column: 11, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2125, file: !126, line: 477, column: 7)
!2154 = !DILocation(line: 477, column: 7, scope: !2153)
!2155 = !DILocation(line: 477, column: 7, scope: !2125)
!2156 = !DILocation(line: 477, column: 13, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !126, line: 477, column: 9)
!2158 = distinct !DILexicalBlock(scope: !2153, file: !126, line: 477, column: 15)
!2159 = !DILocation(line: 477, column: 22, scope: !2157)
!2160 = !DILocation(line: 477, column: 9, scope: !2158)
!2161 = !DILocation(line: 477, column: 17, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2163, file: !126, line: 477, column: 11)
!2163 = distinct !DILexicalBlock(scope: !2157, file: !126, line: 477, column: 30)
!2164 = !DILocation(line: 477, column: 13, scope: !2162)
!2165 = !DILocation(line: 477, column: 11, scope: !2163)
!2166 = !DILocation(line: 477, column: 19, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2168, file: !126, line: 477, column: 13)
!2168 = distinct !DILexicalBlock(scope: !2162, file: !126, line: 477, column: 25)
!2169 = !DILocation(line: 477, column: 15, scope: !2167)
!2170 = !DILocation(line: 477, column: 13, scope: !2168)
!2171 = !DILocation(line: 478, column: 15, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2167, file: !126, line: 477, column: 32)
!2173 = !DILocation(line: 478, column: 27, scope: !2172)
!2174 = !DILocation(line: 479, column: 9, scope: !2172)
!2175 = !DILocation(line: 480, column: 7, scope: !2168)
!2176 = !DILocation(line: 481, column: 5, scope: !2163)
!2177 = !DILocation(line: 482, column: 3, scope: !2158)
!2178 = !DILocation(line: 481, column: 21, scope: !1185)
!2179 = !DILocation(line: 481, column: 11, scope: !1185)
!2180 = !DILocation(line: 481, column: 3, scope: !1185)
!2181 = !DILocation(line: 483, column: 1, scope: !1127)
!2182 = distinct !DISubprogram(name: "rotate_char_array", scope: !126, file: !126, line: 498, type: !2183, scopeLine: 499, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!19, !8, !727, !885}
!2185 = !DILocalVariable(name: "byte_list", arg: 1, scope: !2182, file: !126, line: 498, type: !8)
!2186 = !DILocation(line: 0, scope: !2182)
!2187 = !DILocalVariable(name: "new_byte", arg: 2, scope: !2182, file: !126, line: 498, type: !727)
!2188 = !DILocalVariable(name: "file_info", arg: 3, scope: !2182, file: !126, line: 498, type: !885)
!2189 = !DILocalVariable(name: "place_holder", scope: !2182, file: !126, line: 500, type: !19)
!2190 = !DILocation(line: 507, column: 29, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2182, file: !126, line: 502, column: 3)
!2192 = !DILocation(line: 507, column: 40, scope: !2191)
!2193 = !DILocation(line: 509, column: 40, scope: !2191)
!2194 = !DILocation(line: 509, column: 33, scope: !2191)
!2195 = !DILocation(line: 509, column: 15, scope: !2191)
!2196 = !DILocation(line: 509, column: 31, scope: !2191)
!2197 = !DILocation(line: 511, column: 3, scope: !2191)
!2198 = distinct !DISubprogram(name: "transform_char_array", scope: !126, file: !126, line: 514, type: !2199, scopeLine: 515, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!19, !8, !885}
!2201 = !DILocalVariable(name: "byte_list", arg: 1, scope: !2198, file: !126, line: 514, type: !8)
!2202 = !DILocation(line: 0, scope: !2198)
!2203 = !DILocalVariable(name: "file_info", arg: 2, scope: !2198, file: !126, line: 514, type: !885)
!2204 = !DILocalVariable(name: "trans_list", scope: !2198, file: !126, line: 518, type: !2205)
!2205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 1024, elements: !2206)
!2206 = !{!2207}
!2207 = !DISubrange(count: 128)
!2208 = !DILocation(line: 518, column: 8, scope: !2198)
!2209 = !DILocalVariable(name: "__cil_tmp7", scope: !2198, file: !126, line: 520, type: !62)
!2210 = !DILocation(line: 520, column: 9, scope: !2198)
!2211 = !DILocalVariable(name: "place_holder", scope: !2198, file: !126, line: 516, type: !19)
!2212 = !DILocation(line: 521, column: 3, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2198, file: !126, line: 522, column: 3)
!2214 = !DILocation(line: 521, column: 17, scope: !2213)
!2215 = !DILocalVariable(name: "tmp", scope: !2198, file: !126, line: 519, type: !69)
!2216 = !DILocation(line: 521, column: 3, scope: !2217)
!2217 = distinct !DILexicalBlock(scope: !2218, file: !126, line: 523, column: 3)
!2218 = distinct !DILexicalBlock(scope: !2213, file: !126, line: 522, column: 3)
!2219 = !DILocation(line: 0, scope: !2213)
!2220 = !DILocation(line: 521, column: 13, scope: !2217)
!2221 = !DILocation(line: 521, column: 13, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !126, line: 521, column: 9)
!2223 = distinct !DILexicalBlock(scope: !2217, file: !126, line: 521, column: 13)
!2224 = !DILocation(line: 521, column: 9, scope: !2223)
!2225 = !DILocation(line: 521, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2222, file: !126, line: 521, column: 22)
!2227 = !DILocation(line: 521, column: 5, scope: !2223)
!2228 = !DILocation(line: 521, column: 21, scope: !2223)
!2229 = distinct !{!2229, !2216, !2230}
!2230 = !DILocation(line: 522, column: 3, scope: !2217)
!2231 = !DILocation(line: 524, column: 3, scope: !2217)
!2232 = !DILocation(line: 523, column: 29, scope: !2213)
!2233 = !DILocation(line: 523, column: 40, scope: !2213)
!2234 = !DILocation(line: 523, column: 46, scope: !2213)
!2235 = !DILocalVariable(name: "counter", scope: !2198, file: !126, line: 517, type: !19)
!2236 = !DILocation(line: 531, column: 3, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !126, line: 533, column: 3)
!2238 = distinct !DILexicalBlock(scope: !2213, file: !126, line: 532, column: 3)
!2239 = !DILocation(line: 531, column: 13, scope: !2237)
!2240 = !DILocation(line: 531, column: 20, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !126, line: 531, column: 9)
!2242 = distinct !DILexicalBlock(scope: !2237, file: !126, line: 531, column: 13)
!2243 = !DILocation(line: 531, column: 9, scope: !2242)
!2244 = !DILocation(line: 531, column: 7, scope: !2245)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !126, line: 531, column: 28)
!2246 = !DILocation(line: 532, column: 60, scope: !2242)
!2247 = !DILocation(line: 532, column: 48, scope: !2242)
!2248 = !DILocation(line: 532, column: 7, scope: !2242)
!2249 = !DILocation(line: 532, column: 29, scope: !2242)
!2250 = !DILocation(line: 532, column: 18, scope: !2242)
!2251 = !DILocation(line: 532, column: 46, scope: !2242)
!2252 = !DILocation(line: 531, column: 13, scope: !2242)
!2253 = distinct !{!2253, !2236, !2254}
!2254 = !DILocation(line: 532, column: 3, scope: !2237)
!2255 = !DILocation(line: 534, column: 3, scope: !2237)
!2256 = !DILocation(line: 535, column: 3, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !126, line: 537, column: 3)
!2258 = distinct !DILexicalBlock(scope: !2213, file: !126, line: 536, column: 3)
!2259 = !DILocation(line: 535, column: 13, scope: !2257)
!2260 = !DILocation(line: 535, column: 20, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !126, line: 535, column: 9)
!2262 = distinct !DILexicalBlock(scope: !2257, file: !126, line: 535, column: 13)
!2263 = !DILocation(line: 535, column: 9, scope: !2262)
!2264 = !DILocation(line: 535, column: 7, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !126, line: 535, column: 37)
!2266 = !DILocation(line: 536, column: 68, scope: !2262)
!2267 = !DILocation(line: 536, column: 56, scope: !2262)
!2268 = !DILocation(line: 536, column: 7, scope: !2262)
!2269 = !DILocation(line: 536, column: 26, scope: !2262)
!2270 = !DILocation(line: 536, column: 42, scope: !2262)
!2271 = !DILocation(line: 536, column: 18, scope: !2262)
!2272 = !DILocation(line: 536, column: 54, scope: !2262)
!2273 = !DILocation(line: 535, column: 13, scope: !2262)
!2274 = distinct !{!2274, !2256, !2275}
!2275 = !DILocation(line: 536, column: 3, scope: !2257)
!2276 = !DILocation(line: 538, column: 3, scope: !2257)
!2277 = !DILocation(line: 538, column: 79, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !126, line: 542, column: 3)
!2279 = distinct !DILexicalBlock(scope: !2213, file: !126, line: 541, column: 3)
!2280 = !DILocation(line: 538, column: 3, scope: !2278)
!2281 = !DILocation(line: 540, column: 3, scope: !2213)
!2282 = distinct !DISubprogram(name: "translate_time", scope: !126, file: !126, line: 543, type: !2283, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !885, !917}
!2285 = !DILocalVariable(name: "file_info", arg: 1, scope: !2282, file: !126, line: 543, type: !885)
!2286 = !DILocation(line: 0, scope: !2282)
!2287 = !DILocalVariable(name: "song_time", arg: 2, scope: !2282, file: !126, line: 543, type: !917)
!2288 = !DILocalVariable(name: "float_minute", scope: !2282, file: !126, line: 545, type: !76)
!2289 = !DILocalVariable(name: "float_second", scope: !2282, file: !126, line: 546, type: !76)
!2290 = !DILocation(line: 551, column: 29, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2282, file: !126, line: 548, column: 3)
!2292 = !DILocation(line: 551, column: 45, scope: !2291)
!2293 = !DILocation(line: 552, column: 51, scope: !2291)
!2294 = !DILocation(line: 552, column: 41, scope: !2291)
!2295 = !DILocation(line: 552, column: 39, scope: !2291)
!2296 = !DILocation(line: 552, column: 23, scope: !2291)
!2297 = !DILocation(line: 555, column: 69, scope: !2291)
!2298 = !DILocation(line: 555, column: 59, scope: !2291)
!2299 = !DILocation(line: 555, column: 57, scope: !2291)
!2300 = !DILocation(line: 555, column: 41, scope: !2291)
!2301 = !DILocation(line: 555, column: 28, scope: !2291)
!2302 = !DILocation(line: 555, column: 14, scope: !2291)
!2303 = !DILocation(line: 555, column: 26, scope: !2291)
!2304 = !DILocation(line: 556, column: 24, scope: !2291)
!2305 = !DILocation(line: 556, column: 14, scope: !2291)
!2306 = !DILocation(line: 556, column: 22, scope: !2291)
!2307 = !DILocation(line: 557, column: 24, scope: !2291)
!2308 = !DILocation(line: 557, column: 14, scope: !2291)
!2309 = !DILocation(line: 557, column: 22, scope: !2291)
!2310 = !DILocation(line: 558, column: 3, scope: !2291)
!2311 = distinct !DISubprogram(name: "dump_id3_tag", scope: !126, file: !126, line: 560, type: !2312, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!19, !978}
!2314 = !DILocalVariable(name: "id3_tag", arg: 1, scope: !2311, file: !126, line: 560, type: !978)
!2315 = !DILocation(line: 0, scope: !2311)
!2316 = !DILocalVariable(name: "title", scope: !2311, file: !126, line: 562, type: !2317)
!2317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 240, elements: !2318)
!2318 = !{!2319}
!2319 = !DISubrange(count: 30)
!2320 = !DILocation(line: 562, column: 8, scope: !2311)
!2321 = !DILocalVariable(name: "artist", scope: !2311, file: !126, line: 563, type: !2317)
!2322 = !DILocation(line: 563, column: 8, scope: !2311)
!2323 = !DILocalVariable(name: "album", scope: !2311, file: !126, line: 564, type: !2317)
!2324 = !DILocation(line: 564, column: 8, scope: !2311)
!2325 = !DILocalVariable(name: "year", scope: !2311, file: !126, line: 565, type: !2326)
!2326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32, elements: !2327)
!2327 = !{!129}
!2328 = !DILocation(line: 565, column: 8, scope: !2311)
!2329 = !DILocalVariable(name: "comment", scope: !2311, file: !126, line: 566, type: !2317)
!2330 = !DILocation(line: 566, column: 8, scope: !2311)
!2331 = !DILocalVariable(name: "__cil_tmp13", scope: !2311, file: !126, line: 573, type: !62)
!2332 = !DILocation(line: 573, column: 9, scope: !2311)
!2333 = !DILocalVariable(name: "__cil_tmp14", scope: !2311, file: !126, line: 574, type: !62)
!2334 = !DILocation(line: 574, column: 9, scope: !2311)
!2335 = !DILocalVariable(name: "__cil_tmp15", scope: !2311, file: !126, line: 575, type: !62)
!2336 = !DILocation(line: 575, column: 9, scope: !2311)
!2337 = !DILocalVariable(name: "__cil_tmp16", scope: !2311, file: !126, line: 576, type: !62)
!2338 = !DILocation(line: 576, column: 9, scope: !2311)
!2339 = !DILocalVariable(name: "__cil_tmp17", scope: !2311, file: !126, line: 577, type: !62)
!2340 = !DILocation(line: 577, column: 9, scope: !2311)
!2341 = !DILocalVariable(name: "__cil_tmp18", scope: !2311, file: !126, line: 578, type: !8)
!2342 = !DILocation(line: 578, column: 9, scope: !2311)
!2343 = !DILocalVariable(name: "i", scope: !2311, file: !126, line: 567, type: !19)
!2344 = !DILocation(line: 572, column: 18, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 570, column: 3)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 581, column: 3)
!2347 = distinct !DILexicalBlock(scope: !2311, file: !126, line: 580, column: 3)
!2348 = !DILocation(line: 572, column: 3, scope: !2345)
!2349 = !DILocation(line: 573, column: 18, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 574, column: 3)
!2351 = !DILocation(line: 573, column: 3, scope: !2350)
!2352 = !DILocation(line: 574, column: 18, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 575, column: 3)
!2354 = !DILocation(line: 574, column: 3, scope: !2353)
!2355 = !DILocation(line: 575, column: 18, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 576, column: 3)
!2357 = !DILocation(line: 575, column: 3, scope: !2356)
!2358 = !DILocation(line: 576, column: 18, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 577, column: 3)
!2360 = !DILocation(line: 576, column: 3, scope: !2359)
!2361 = !DILocation(line: 581, column: 39, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 578, column: 3)
!2363 = !DILocation(line: 581, column: 30, scope: !2362)
!2364 = !DILocation(line: 581, column: 9, scope: !2362)
!2365 = !DILocalVariable(name: "tmp", scope: !2311, file: !126, line: 568, type: !19)
!2366 = !DILocation(line: 581, column: 36, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 583, column: 3)
!2368 = !DILocation(line: 581, column: 88, scope: !2367)
!2369 = !DILocation(line: 581, column: 78, scope: !2367)
!2370 = !DILocation(line: 581, column: 3, scope: !2367)
!2371 = !DILocation(line: 582, column: 43, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 584, column: 3)
!2373 = !DILocation(line: 582, column: 34, scope: !2372)
!2374 = !DILocation(line: 582, column: 13, scope: !2372)
!2375 = !DILocalVariable(name: "tmp___0", scope: !2311, file: !126, line: 569, type: !19)
!2376 = !DILocation(line: 582, column: 36, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 584, column: 3)
!2378 = !DILocation(line: 582, column: 89, scope: !2377)
!2379 = !DILocation(line: 582, column: 79, scope: !2377)
!2380 = !DILocation(line: 582, column: 3, scope: !2377)
!2381 = !DILocation(line: 583, column: 43, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 585, column: 3)
!2383 = !DILocation(line: 583, column: 34, scope: !2382)
!2384 = !DILocation(line: 583, column: 13, scope: !2382)
!2385 = !DILocalVariable(name: "tmp___1", scope: !2311, file: !126, line: 570, type: !19)
!2386 = !DILocation(line: 583, column: 36, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 585, column: 3)
!2388 = !DILocation(line: 583, column: 88, scope: !2387)
!2389 = !DILocation(line: 583, column: 78, scope: !2387)
!2390 = !DILocation(line: 583, column: 3, scope: !2387)
!2391 = !DILocation(line: 584, column: 43, scope: !2392)
!2392 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 586, column: 3)
!2393 = !DILocation(line: 584, column: 34, scope: !2392)
!2394 = !DILocation(line: 584, column: 13, scope: !2392)
!2395 = !DILocalVariable(name: "tmp___2", scope: !2311, file: !126, line: 571, type: !19)
!2396 = !DILocation(line: 584, column: 36, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 586, column: 3)
!2398 = !DILocation(line: 584, column: 87, scope: !2397)
!2399 = !DILocation(line: 584, column: 77, scope: !2397)
!2400 = !DILocation(line: 584, column: 3, scope: !2397)
!2401 = !DILocation(line: 585, column: 43, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 587, column: 3)
!2403 = !DILocation(line: 585, column: 34, scope: !2402)
!2404 = !DILocation(line: 585, column: 13, scope: !2402)
!2405 = !DILocalVariable(name: "tmp___3", scope: !2311, file: !126, line: 572, type: !19)
!2406 = !DILocation(line: 585, column: 36, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 587, column: 3)
!2408 = !DILocation(line: 585, column: 90, scope: !2407)
!2409 = !DILocation(line: 585, column: 80, scope: !2407)
!2410 = !DILocation(line: 585, column: 3, scope: !2407)
!2411 = !DILocation(line: 596, column: 74, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2346, file: !126, line: 588, column: 3)
!2413 = !DILocation(line: 596, column: 3, scope: !2412)
!2414 = !DILocation(line: 598, column: 3, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !126, line: 601, column: 3)
!2416 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 600, column: 3)
!2417 = !DILocation(line: 0, scope: !2347)
!2418 = !DILocation(line: 598, column: 13, scope: !2415)
!2419 = !DILocation(line: 598, column: 14, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !126, line: 598, column: 9)
!2421 = distinct !DILexicalBlock(scope: !2415, file: !126, line: 598, column: 13)
!2422 = !DILocation(line: 598, column: 9, scope: !2421)
!2423 = !DILocation(line: 598, column: 7, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2420, file: !126, line: 598, column: 21)
!2425 = !DILocation(line: 599, column: 19, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2427, file: !126, line: 601, column: 5)
!2427 = distinct !DILexicalBlock(scope: !2421, file: !126, line: 600, column: 5)
!2428 = !DILocation(line: 599, column: 25, scope: !2426)
!2429 = !DILocation(line: 599, column: 17, scope: !2426)
!2430 = !DILocation(line: 599, column: 11, scope: !2426)
!2431 = !DILocation(line: 599, column: 31, scope: !2426)
!2432 = !DILocation(line: 599, column: 5, scope: !2426)
!2433 = !DILocation(line: 598, column: 7, scope: !2427)
!2434 = distinct !{!2434, !2414, !2435}
!2435 = !DILocation(line: 600, column: 3, scope: !2415)
!2436 = !DILocation(line: 602, column: 3, scope: !2415)
!2437 = !DILocation(line: 601, column: 3, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !126, line: 603, column: 3)
!2439 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 602, column: 3)
!2440 = !DILocation(line: 601, column: 13, scope: !2438)
!2441 = !DILocation(line: 601, column: 14, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2443, file: !126, line: 601, column: 9)
!2443 = distinct !DILexicalBlock(scope: !2438, file: !126, line: 601, column: 13)
!2444 = !DILocation(line: 601, column: 9, scope: !2443)
!2445 = !DILocation(line: 601, column: 7, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2442, file: !126, line: 601, column: 21)
!2447 = !DILocation(line: 602, column: 19, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2449, file: !126, line: 604, column: 5)
!2449 = distinct !DILexicalBlock(scope: !2443, file: !126, line: 603, column: 5)
!2450 = !DILocation(line: 602, column: 26, scope: !2448)
!2451 = !DILocation(line: 602, column: 17, scope: !2448)
!2452 = !DILocation(line: 602, column: 11, scope: !2448)
!2453 = !DILocation(line: 602, column: 32, scope: !2448)
!2454 = !DILocation(line: 602, column: 5, scope: !2448)
!2455 = !DILocation(line: 601, column: 7, scope: !2449)
!2456 = distinct !{!2456, !2437, !2457}
!2457 = !DILocation(line: 603, column: 3, scope: !2438)
!2458 = !DILocation(line: 605, column: 3, scope: !2438)
!2459 = !DILocation(line: 604, column: 3, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !126, line: 606, column: 3)
!2461 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 605, column: 3)
!2462 = !DILocation(line: 604, column: 13, scope: !2460)
!2463 = !DILocation(line: 604, column: 14, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !126, line: 604, column: 9)
!2465 = distinct !DILexicalBlock(scope: !2460, file: !126, line: 604, column: 13)
!2466 = !DILocation(line: 604, column: 9, scope: !2465)
!2467 = !DILocation(line: 604, column: 7, scope: !2468)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !126, line: 604, column: 21)
!2469 = !DILocation(line: 605, column: 19, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !126, line: 607, column: 5)
!2471 = distinct !DILexicalBlock(scope: !2465, file: !126, line: 606, column: 5)
!2472 = !DILocation(line: 605, column: 25, scope: !2470)
!2473 = !DILocation(line: 605, column: 17, scope: !2470)
!2474 = !DILocation(line: 605, column: 11, scope: !2470)
!2475 = !DILocation(line: 605, column: 31, scope: !2470)
!2476 = !DILocation(line: 605, column: 5, scope: !2470)
!2477 = !DILocation(line: 604, column: 7, scope: !2471)
!2478 = distinct !{!2478, !2459, !2479}
!2479 = !DILocation(line: 606, column: 3, scope: !2460)
!2480 = !DILocation(line: 608, column: 3, scope: !2460)
!2481 = !DILocation(line: 607, column: 3, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !126, line: 609, column: 3)
!2483 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 608, column: 3)
!2484 = !DILocation(line: 607, column: 13, scope: !2482)
!2485 = !DILocation(line: 607, column: 14, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2487, file: !126, line: 607, column: 9)
!2487 = distinct !DILexicalBlock(scope: !2482, file: !126, line: 607, column: 13)
!2488 = !DILocation(line: 607, column: 9, scope: !2487)
!2489 = !DILocation(line: 607, column: 7, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !126, line: 607, column: 20)
!2491 = !DILocation(line: 608, column: 19, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2493, file: !126, line: 610, column: 5)
!2493 = distinct !DILexicalBlock(scope: !2487, file: !126, line: 609, column: 5)
!2494 = !DILocation(line: 608, column: 24, scope: !2492)
!2495 = !DILocation(line: 608, column: 17, scope: !2492)
!2496 = !DILocation(line: 608, column: 11, scope: !2492)
!2497 = !DILocation(line: 608, column: 30, scope: !2492)
!2498 = !DILocation(line: 608, column: 5, scope: !2492)
!2499 = !DILocation(line: 607, column: 7, scope: !2493)
!2500 = distinct !{!2500, !2481, !2501}
!2501 = !DILocation(line: 609, column: 3, scope: !2482)
!2502 = !DILocation(line: 611, column: 3, scope: !2482)
!2503 = !DILocation(line: 614, column: 3, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !126, line: 616, column: 3)
!2505 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 615, column: 3)
!2506 = !DILocation(line: 614, column: 13, scope: !2504)
!2507 = !DILocation(line: 614, column: 14, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2509, file: !126, line: 614, column: 9)
!2509 = distinct !DILexicalBlock(scope: !2504, file: !126, line: 614, column: 13)
!2510 = !DILocation(line: 614, column: 9, scope: !2509)
!2511 = !DILocation(line: 614, column: 7, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2508, file: !126, line: 614, column: 21)
!2513 = !DILocation(line: 615, column: 19, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !126, line: 617, column: 5)
!2515 = distinct !DILexicalBlock(scope: !2509, file: !126, line: 616, column: 5)
!2516 = !DILocation(line: 615, column: 27, scope: !2514)
!2517 = !DILocation(line: 615, column: 17, scope: !2514)
!2518 = !DILocation(line: 615, column: 11, scope: !2514)
!2519 = !DILocation(line: 615, column: 33, scope: !2514)
!2520 = !DILocation(line: 615, column: 5, scope: !2514)
!2521 = !DILocation(line: 614, column: 7, scope: !2515)
!2522 = distinct !{!2522, !2503, !2523}
!2523 = !DILocation(line: 616, column: 3, scope: !2504)
!2524 = !DILocation(line: 618, column: 3, scope: !2504)
!2525 = !DILocation(line: 617, column: 22, scope: !2526)
!2526 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 617, column: 7)
!2527 = !DILocation(line: 617, column: 7, scope: !2526)
!2528 = !DILocation(line: 617, column: 35, scope: !2526)
!2529 = !DILocation(line: 617, column: 7, scope: !2347)
!2530 = !DILocation(line: 618, column: 26, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2532, file: !126, line: 619, column: 5)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !126, line: 618, column: 5)
!2533 = distinct !DILexicalBlock(scope: !2526, file: !126, line: 617, column: 41)
!2534 = !DILocation(line: 618, column: 11, scope: !2531)
!2535 = !DILocation(line: 618, column: 40, scope: !2531)
!2536 = !DILocation(line: 618, column: 5, scope: !2531)
!2537 = !DILocation(line: 621, column: 3, scope: !2533)
!2538 = !DILocation(line: 620, column: 19, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2540, file: !126, line: 623, column: 5)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !126, line: 622, column: 5)
!2541 = distinct !DILexicalBlock(scope: !2526, file: !126, line: 621, column: 10)
!2542 = !DILocation(line: 620, column: 27, scope: !2539)
!2543 = !DILocation(line: 620, column: 17, scope: !2539)
!2544 = !DILocation(line: 620, column: 11, scope: !2539)
!2545 = !DILocation(line: 620, column: 34, scope: !2539)
!2546 = !DILocation(line: 620, column: 5, scope: !2539)
!2547 = !DILocation(line: 623, column: 24, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2549, file: !126, line: 625, column: 3)
!2549 = distinct !DILexicalBlock(scope: !2347, file: !126, line: 624, column: 3)
!2550 = !DILocation(line: 623, column: 9, scope: !2548)
!2551 = !DILocation(line: 623, column: 31, scope: !2548)
!2552 = !DILocation(line: 623, column: 3, scope: !2548)
!2553 = !DILocation(line: 625, column: 3, scope: !2347)
!2554 = distinct !DISubprogram(name: "get_last_char_offset", scope: !126, file: !126, line: 628, type: !2555, scopeLine: 629, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2555 = !DISubroutineType(types: !2556)
!2556 = !{!19, !8}
!2557 = !DILocalVariable(name: "fat_string", arg: 1, scope: !2554, file: !126, line: 628, type: !8)
!2558 = !DILocation(line: 0, scope: !2554)
!2559 = !DILocalVariable(name: "i", scope: !2554, file: !126, line: 630, type: !19)
!2560 = !DILocation(line: 634, column: 9, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !126, line: 633, column: 3)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !126, line: 636, column: 3)
!2563 = distinct !DILexicalBlock(scope: !2554, file: !126, line: 635, column: 3)
!2564 = !DILocalVariable(name: "tmp", scope: !2554, file: !126, line: 631, type: !67)
!2565 = !DILocation(line: 634, column: 18, scope: !2562)
!2566 = !DILocation(line: 634, column: 3, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !126, line: 637, column: 3)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !126, line: 636, column: 3)
!2569 = !DILocation(line: 0, scope: !2563)
!2570 = !DILocation(line: 634, column: 13, scope: !2567)
!2571 = !DILocation(line: 634, column: 14, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2573, file: !126, line: 634, column: 9)
!2573 = distinct !DILexicalBlock(scope: !2567, file: !126, line: 634, column: 13)
!2574 = !DILocation(line: 634, column: 9, scope: !2573)
!2575 = !DILocation(line: 634, column: 7, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2572, file: !126, line: 634, column: 21)
!2577 = !DILocation(line: 635, column: 15, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !126, line: 637, column: 5)
!2579 = distinct !DILexicalBlock(scope: !2573, file: !126, line: 636, column: 5)
!2580 = !DILocalVariable(name: "tmp___0", scope: !2554, file: !126, line: 632, type: !2581)
!2581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2582, size: 64)
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!2584 = !DILocation(line: 635, column: 25, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2573, file: !126, line: 635, column: 9)
!2586 = !DILocation(line: 635, column: 55, scope: !2585)
!2587 = !DILocation(line: 635, column: 42, scope: !2585)
!2588 = !DILocation(line: 635, column: 36, scope: !2585)
!2589 = !DILocation(line: 635, column: 34, scope: !2585)
!2590 = !DILocation(line: 635, column: 23, scope: !2585)
!2591 = !DILocation(line: 635, column: 9, scope: !2585)
!2592 = !DILocation(line: 635, column: 61, scope: !2585)
!2593 = !DILocation(line: 635, column: 9, scope: !2573)
!2594 = !DILocation(line: 636, column: 17, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2585, file: !126, line: 635, column: 70)
!2596 = !DILocation(line: 636, column: 7, scope: !2595)
!2597 = !DILocation(line: 634, column: 7, scope: !2573)
!2598 = distinct !{!2598, !2566, !2599}
!2599 = !DILocation(line: 635, column: 3, scope: !2567)
!2600 = !DILocation(line: 637, column: 3, scope: !2567)
!2601 = !DILocation(line: 639, column: 13, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !126, line: 641, column: 3)
!2603 = distinct !DILexicalBlock(scope: !2563, file: !126, line: 640, column: 3)
!2604 = !DILocalVariable(name: "tmp___1", scope: !2554, file: !126, line: 633, type: !67)
!2605 = !DILocation(line: 639, column: 3, scope: !2563)
!2606 = !DILocation(line: 641, column: 1, scope: !2554)
!2607 = distinct !DISubprogram(name: "check_vbr_and_time", scope: !126, file: !126, line: 642, type: !2608, scopeLine: 643, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2608 = !DISubroutineType(types: !2609)
!2609 = !{!19, !1131, !862, !885}
!2610 = !DILocalVariable(name: "mp3_i", arg: 1, scope: !2607, file: !126, line: 642, type: !1131)
!2611 = !DILocation(line: 0, scope: !2607)
!2612 = !DILocalVariable(name: "vbr_info", arg: 2, scope: !2607, file: !126, line: 642, type: !862)
!2613 = !DILocalVariable(name: "file_info", arg: 3, scope: !2607, file: !126, line: 642, type: !885)
!2614 = !DILocation(line: 652, column: 50, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2607, file: !126, line: 646, column: 3)
!2616 = !DILocation(line: 652, column: 34, scope: !2615)
!2617 = !DILocation(line: 652, column: 68, scope: !2615)
!2618 = !DILocation(line: 652, column: 94, scope: !2615)
!2619 = !DILocation(line: 652, column: 78, scope: !2615)
!2620 = !DILocation(line: 652, column: 106, scope: !2615)
!2621 = !DILocation(line: 652, column: 75, scope: !2615)
!2622 = !DILocation(line: 652, column: 14, scope: !2615)
!2623 = !DILocation(line: 652, column: 30, scope: !2615)
!2624 = !DILocation(line: 657, column: 17, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2615, file: !126, line: 657, column: 7)
!2626 = !DILocation(line: 657, column: 36, scope: !2625)
!2627 = !DILocation(line: 657, column: 27, scope: !2625)
!2628 = !DILocation(line: 657, column: 7, scope: !2615)
!2629 = !DILocation(line: 658, column: 34, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2625, file: !126, line: 657, column: 46)
!2631 = !DILocation(line: 658, column: 15, scope: !2630)
!2632 = !DILocation(line: 658, column: 25, scope: !2630)
!2633 = !DILocation(line: 659, column: 3, scope: !2630)
!2634 = !DILocation(line: 660, column: 14, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2615, file: !126, line: 660, column: 7)
!2636 = !DILocation(line: 660, column: 35, scope: !2635)
!2637 = !DILocation(line: 660, column: 23, scope: !2635)
!2638 = !DILocation(line: 660, column: 7, scope: !2615)
!2639 = !DILocation(line: 661, column: 33, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !126, line: 660, column: 45)
!2641 = !DILocation(line: 661, column: 15, scope: !2640)
!2642 = !DILocation(line: 661, column: 24, scope: !2640)
!2643 = !DILocation(line: 662, column: 3, scope: !2640)
!2644 = !DILocation(line: 660, column: 17, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2635, file: !126, line: 660, column: 7)
!2646 = !DILocation(line: 660, column: 26, scope: !2645)
!2647 = !DILocation(line: 660, column: 7, scope: !2635)
!2648 = !DILocation(line: 661, column: 33, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2645, file: !126, line: 660, column: 32)
!2650 = !DILocation(line: 661, column: 15, scope: !2649)
!2651 = !DILocation(line: 661, column: 24, scope: !2649)
!2652 = !DILocation(line: 662, column: 3, scope: !2649)
!2653 = !DILocation(line: 665, column: 32, scope: !2615)
!2654 = !DILocation(line: 665, column: 13, scope: !2615)
!2655 = !DILocation(line: 665, column: 22, scope: !2615)
!2656 = !DILocation(line: 667, column: 3, scope: !2615)
!2657 = distinct !DISubprogram(name: "print_frame_info", scope: !126, file: !126, line: 670, type: !2658, scopeLine: 671, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!19, !1131, !885}
!2660 = !DILocalVariable(name: "mp3_i", arg: 1, scope: !2657, file: !126, line: 670, type: !1131)
!2661 = !DILocation(line: 0, scope: !2657)
!2662 = !DILocalVariable(name: "file_info", arg: 2, scope: !2657, file: !126, line: 670, type: !885)
!2663 = !DILocalVariable(name: "__cil_tmp4", scope: !2657, file: !126, line: 673, type: !8)
!2664 = !DILocation(line: 673, column: 9, scope: !2657)
!2665 = !DILocalVariable(name: "__cil_tmp5", scope: !2657, file: !126, line: 674, type: !8)
!2666 = !DILocation(line: 674, column: 9, scope: !2657)
!2667 = !DILocalVariable(name: "__cil_tmp6", scope: !2657, file: !126, line: 675, type: !8)
!2668 = !DILocation(line: 675, column: 9, scope: !2657)
!2669 = !DILocalVariable(name: "__cil_tmp7", scope: !2657, file: !126, line: 676, type: !8)
!2670 = !DILocation(line: 676, column: 9, scope: !2657)
!2671 = !DILocalVariable(name: "__cil_tmp8", scope: !2657, file: !126, line: 677, type: !8)
!2672 = !DILocation(line: 677, column: 9, scope: !2657)
!2673 = !DILocalVariable(name: "__cil_tmp9", scope: !2657, file: !126, line: 678, type: !8)
!2674 = !DILocation(line: 678, column: 9, scope: !2657)
!2675 = !DILocalVariable(name: "__cil_tmp10", scope: !2657, file: !126, line: 679, type: !8)
!2676 = !DILocation(line: 679, column: 9, scope: !2657)
!2677 = !DILocalVariable(name: "__cil_tmp11", scope: !2657, file: !126, line: 680, type: !8)
!2678 = !DILocation(line: 680, column: 9, scope: !2657)
!2679 = !DILocalVariable(name: "__cil_tmp12", scope: !2657, file: !126, line: 681, type: !8)
!2680 = !DILocation(line: 681, column: 9, scope: !2657)
!2681 = !DILocalVariable(name: "__cil_tmp13", scope: !2657, file: !126, line: 682, type: !8)
!2682 = !DILocation(line: 682, column: 9, scope: !2657)
!2683 = !DILocalVariable(name: "__cil_tmp14", scope: !2657, file: !126, line: 683, type: !8)
!2684 = !DILocation(line: 683, column: 9, scope: !2657)
!2685 = !DILocalVariable(name: "__cil_tmp15", scope: !2657, file: !126, line: 684, type: !8)
!2686 = !DILocation(line: 684, column: 9, scope: !2657)
!2687 = !DILocalVariable(name: "__cil_tmp16", scope: !2657, file: !126, line: 685, type: !8)
!2688 = !DILocation(line: 685, column: 9, scope: !2657)
!2689 = !DILocalVariable(name: "__cil_tmp17", scope: !2657, file: !126, line: 686, type: !8)
!2690 = !DILocation(line: 686, column: 9, scope: !2657)
!2691 = !DILocalVariable(name: "__cil_tmp18", scope: !2657, file: !126, line: 687, type: !8)
!2692 = !DILocation(line: 687, column: 9, scope: !2657)
!2693 = !DILocalVariable(name: "__cil_tmp19", scope: !2657, file: !126, line: 688, type: !8)
!2694 = !DILocation(line: 688, column: 9, scope: !2657)
!2695 = !DILocalVariable(name: "__cil_tmp20", scope: !2657, file: !126, line: 689, type: !8)
!2696 = !DILocation(line: 689, column: 9, scope: !2657)
!2697 = !DILocalVariable(name: "__cil_tmp21", scope: !2657, file: !126, line: 690, type: !8)
!2698 = !DILocation(line: 690, column: 9, scope: !2657)
!2699 = !DILocalVariable(name: "__cil_tmp22", scope: !2657, file: !126, line: 691, type: !8)
!2700 = !DILocation(line: 691, column: 9, scope: !2657)
!2701 = !DILocalVariable(name: "__cil_tmp23", scope: !2657, file: !126, line: 692, type: !8)
!2702 = !DILocation(line: 692, column: 9, scope: !2657)
!2703 = !DILocalVariable(name: "__cil_tmp24", scope: !2657, file: !126, line: 693, type: !8)
!2704 = !DILocation(line: 693, column: 9, scope: !2657)
!2705 = !DILocation(line: 675, column: 3, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 697, column: 3)
!2707 = distinct !DILexicalBlock(scope: !2708, file: !126, line: 696, column: 3)
!2708 = distinct !DILexicalBlock(scope: !2657, file: !126, line: 695, column: 3)
!2709 = !DILocation(line: 676, column: 76, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 677, column: 3)
!2711 = !DILocation(line: 676, column: 3, scope: !2710)
!2712 = !DILocation(line: 677, column: 82, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 678, column: 3)
!2714 = !DILocation(line: 677, column: 3, scope: !2713)
!2715 = !DILocation(line: 678, column: 78, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 679, column: 3)
!2717 = !DILocation(line: 678, column: 3, scope: !2716)
!2718 = !DILocation(line: 679, column: 82, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 680, column: 3)
!2720 = !DILocation(line: 679, column: 3, scope: !2719)
!2721 = !DILocation(line: 680, column: 74, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 681, column: 3)
!2723 = !DILocation(line: 680, column: 3, scope: !2722)
!2724 = !DILocation(line: 681, column: 75, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 682, column: 3)
!2726 = !DILocation(line: 681, column: 3, scope: !2725)
!2727 = !DILocation(line: 682, column: 76, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 683, column: 3)
!2729 = !DILocation(line: 682, column: 69, scope: !2728)
!2730 = !DILocation(line: 682, column: 3, scope: !2728)
!2731 = !DILocation(line: 683, column: 40, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 684, column: 3)
!2733 = !DILocation(line: 683, column: 32, scope: !2732)
!2734 = !DILocation(line: 683, column: 9, scope: !2732)
!2735 = !DILocalVariable(name: "tmp", scope: !2657, file: !126, line: 672, type: !67)
!2736 = !DILocation(line: 683, column: 67, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 685, column: 3)
!2738 = !DILocation(line: 683, column: 3, scope: !2737)
!2739 = !DILocation(line: 684, column: 76, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 685, column: 3)
!2741 = !DILocation(line: 684, column: 3, scope: !2740)
!2742 = !DILocation(line: 688, column: 81, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2707, file: !126, line: 686, column: 3)
!2744 = !DILocation(line: 688, column: 101, scope: !2743)
!2745 = !DILocation(line: 688, column: 92, scope: !2743)
!2746 = !DILocation(line: 688, column: 3, scope: !2743)
!2747 = !DILocation(line: 690, column: 3, scope: !2708)
!2748 = distinct !DISubprogram(name: "scan_file", scope: !83, file: !83, line: 40, type: !2749, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2749 = !DISubroutineType(types: !2750)
!2750 = !{!19, !12, !8, !667, !433}
!2751 = !DILocalVariable(name: "fp", arg: 1, scope: !2748, file: !83, line: 40, type: !12)
!2752 = !DILocation(line: 0, scope: !2748)
!2753 = !DILocalVariable(name: "filename", arg: 2, scope: !2748, file: !83, line: 40, type: !8)
!2754 = !DILocalVariable(name: "flag_options", arg: 3, scope: !2748, file: !83, line: 40, type: !667)
!2755 = !DILocalVariable(name: "flags", arg: 4, scope: !2748, file: !83, line: 40, type: !433)
!2756 = !DILocalVariable(name: "possible_mp3_tag", scope: !2748, file: !83, line: 45, type: !2205)
!2757 = !DILocation(line: 45, column: 8, scope: !2748)
!2758 = !DILocalVariable(name: "header_value", scope: !2748, file: !83, line: 46, type: !69)
!2759 = !DILocation(line: 46, column: 16, scope: !2748)
!2760 = !DILocalVariable(name: "mp3_i", scope: !2748, file: !83, line: 49, type: !84)
!2761 = !DILocation(line: 49, column: 14, scope: !2748)
!2762 = !DILocalVariable(name: "vbr_info", scope: !2748, file: !83, line: 50, type: !863)
!2763 = !DILocation(line: 50, column: 12, scope: !2748)
!2764 = !DILocalVariable(name: "song_time", scope: !2748, file: !83, line: 51, type: !918)
!2765 = !DILocation(line: 51, column: 12, scope: !2748)
!2766 = !DILocalVariable(name: "first_mp3_frame", scope: !2748, file: !83, line: 52, type: !84)
!2767 = !DILocation(line: 52, column: 14, scope: !2748)
!2768 = !DILocalVariable(name: "id3_tag", scope: !2748, file: !83, line: 53, type: !979)
!2769 = !DILocation(line: 53, column: 16, scope: !2748)
!2770 = !DILocalVariable(name: "file_info", scope: !2748, file: !83, line: 54, type: !886)
!2771 = !DILocation(line: 54, column: 12, scope: !2748)
!2772 = !DILocalVariable(name: "__cil_tmp33", scope: !2748, file: !83, line: 70, type: !62)
!2773 = !DILocation(line: 70, column: 9, scope: !2748)
!2774 = !DILocalVariable(name: "__cil_tmp34", scope: !2748, file: !83, line: 71, type: !8)
!2775 = !DILocation(line: 71, column: 9, scope: !2748)
!2776 = !DILocalVariable(name: "__cil_tmp35", scope: !2748, file: !83, line: 72, type: !8)
!2777 = !DILocation(line: 72, column: 9, scope: !2748)
!2778 = !DILocalVariable(name: "__cil_tmp36", scope: !2748, file: !83, line: 73, type: !8)
!2779 = !DILocation(line: 73, column: 9, scope: !2748)
!2780 = !DILocalVariable(name: "__cil_tmp37", scope: !2748, file: !83, line: 74, type: !8)
!2781 = !DILocation(line: 74, column: 9, scope: !2748)
!2782 = !DILocalVariable(name: "__cil_tmp38", scope: !2748, file: !83, line: 75, type: !8)
!2783 = !DILocation(line: 75, column: 9, scope: !2748)
!2784 = !DILocalVariable(name: "__cil_tmp39", scope: !2748, file: !83, line: 76, type: !8)
!2785 = !DILocation(line: 76, column: 9, scope: !2748)
!2786 = !DILocalVariable(name: "__cil_tmp40", scope: !2748, file: !83, line: 77, type: !8)
!2787 = !DILocation(line: 77, column: 9, scope: !2748)
!2788 = !DILocalVariable(name: "__cil_tmp41", scope: !2748, file: !83, line: 78, type: !8)
!2789 = !DILocation(line: 78, column: 9, scope: !2748)
!2790 = !DILocalVariable(name: "__cil_tmp42", scope: !2748, file: !83, line: 79, type: !8)
!2791 = !DILocation(line: 79, column: 9, scope: !2748)
!2792 = !DILocalVariable(name: "__cil_tmp43", scope: !2748, file: !83, line: 80, type: !8)
!2793 = !DILocation(line: 80, column: 9, scope: !2748)
!2794 = !DILocalVariable(name: "__cil_tmp44", scope: !2748, file: !83, line: 81, type: !8)
!2795 = !DILocation(line: 81, column: 9, scope: !2748)
!2796 = !DILocalVariable(name: "__cil_tmp45", scope: !2748, file: !83, line: 82, type: !8)
!2797 = !DILocation(line: 82, column: 9, scope: !2748)
!2798 = !DILocalVariable(name: "__cil_tmp46", scope: !2748, file: !83, line: 83, type: !8)
!2799 = !DILocation(line: 83, column: 9, scope: !2748)
!2800 = !DILocalVariable(name: "__cil_tmp47", scope: !2748, file: !83, line: 84, type: !8)
!2801 = !DILocation(line: 84, column: 9, scope: !2748)
!2802 = !DILocalVariable(name: "__cil_tmp48", scope: !2748, file: !83, line: 85, type: !8)
!2803 = !DILocation(line: 85, column: 9, scope: !2748)
!2804 = !DILocalVariable(name: "__cil_tmp49", scope: !2748, file: !83, line: 86, type: !8)
!2805 = !DILocation(line: 86, column: 9, scope: !2748)
!2806 = !DILocalVariable(name: "__cil_tmp50", scope: !2748, file: !83, line: 87, type: !8)
!2807 = !DILocation(line: 87, column: 9, scope: !2748)
!2808 = !DILocalVariable(name: "__cil_tmp51", scope: !2748, file: !83, line: 88, type: !8)
!2809 = !DILocation(line: 88, column: 9, scope: !2748)
!2810 = !DILocalVariable(name: "__cil_tmp52", scope: !2748, file: !83, line: 89, type: !8)
!2811 = !DILocation(line: 89, column: 9, scope: !2748)
!2812 = !DILocalVariable(name: "__cil_tmp53", scope: !2748, file: !83, line: 90, type: !8)
!2813 = !DILocation(line: 90, column: 9, scope: !2748)
!2814 = !DILocalVariable(name: "__cil_tmp54", scope: !2748, file: !83, line: 91, type: !8)
!2815 = !DILocation(line: 91, column: 9, scope: !2748)
!2816 = !DILocalVariable(name: "__cil_tmp55", scope: !2748, file: !83, line: 92, type: !8)
!2817 = !DILocation(line: 92, column: 9, scope: !2748)
!2818 = !DILocalVariable(name: "__cil_tmp56", scope: !2748, file: !83, line: 93, type: !8)
!2819 = !DILocation(line: 93, column: 9, scope: !2748)
!2820 = !DILocalVariable(name: "__cil_tmp57", scope: !2748, file: !83, line: 94, type: !8)
!2821 = !DILocation(line: 94, column: 9, scope: !2748)
!2822 = !DILocalVariable(name: "__cil_tmp58", scope: !2748, file: !83, line: 95, type: !8)
!2823 = !DILocation(line: 95, column: 9, scope: !2748)
!2824 = !DILocalVariable(name: "__cil_tmp59", scope: !2748, file: !83, line: 96, type: !8)
!2825 = !DILocation(line: 96, column: 9, scope: !2748)
!2826 = !DILocalVariable(name: "__cil_tmp60", scope: !2748, file: !83, line: 97, type: !8)
!2827 = !DILocation(line: 97, column: 9, scope: !2748)
!2828 = !DILocalVariable(name: "__cil_tmp61", scope: !2748, file: !83, line: 98, type: !8)
!2829 = !DILocation(line: 98, column: 9, scope: !2748)
!2830 = !DILocalVariable(name: "__cil_tmp62", scope: !2748, file: !83, line: 99, type: !8)
!2831 = !DILocation(line: 99, column: 9, scope: !2748)
!2832 = !DILocalVariable(name: "__cil_tmp63", scope: !2748, file: !83, line: 100, type: !8)
!2833 = !DILocation(line: 100, column: 9, scope: !2748)
!2834 = !DILocalVariable(name: "__cil_tmp64", scope: !2748, file: !83, line: 101, type: !8)
!2835 = !DILocation(line: 101, column: 9, scope: !2748)
!2836 = !DILocalVariable(name: "__cil_tmp65", scope: !2748, file: !83, line: 102, type: !8)
!2837 = !DILocation(line: 102, column: 9, scope: !2748)
!2838 = !DILocalVariable(name: "__cil_tmp66", scope: !2748, file: !83, line: 103, type: !8)
!2839 = !DILocation(line: 103, column: 9, scope: !2748)
!2840 = !DILocalVariable(name: "__cil_tmp67", scope: !2748, file: !83, line: 104, type: !8)
!2841 = !DILocation(line: 104, column: 9, scope: !2748)
!2842 = !DILocalVariable(name: "__cil_tmp68", scope: !2748, file: !83, line: 105, type: !8)
!2843 = !DILocation(line: 105, column: 9, scope: !2748)
!2844 = !DILocalVariable(name: "__cil_tmp69", scope: !2748, file: !83, line: 106, type: !8)
!2845 = !DILocation(line: 106, column: 9, scope: !2748)
!2846 = !DILocalVariable(name: "__cil_tmp70", scope: !2748, file: !83, line: 107, type: !8)
!2847 = !DILocation(line: 107, column: 9, scope: !2748)
!2848 = !DILocalVariable(name: "__cil_tmp71", scope: !2748, file: !83, line: 108, type: !8)
!2849 = !DILocation(line: 108, column: 9, scope: !2748)
!2850 = !DILocalVariable(name: "__cil_tmp72", scope: !2748, file: !83, line: 109, type: !8)
!2851 = !DILocation(line: 109, column: 9, scope: !2748)
!2852 = !DILocalVariable(name: "__cil_tmp73", scope: !2748, file: !83, line: 110, type: !8)
!2853 = !DILocation(line: 110, column: 9, scope: !2748)
!2854 = !DILocalVariable(name: "__cil_tmp74", scope: !2748, file: !83, line: 111, type: !8)
!2855 = !DILocation(line: 111, column: 9, scope: !2748)
!2856 = !DILocalVariable(name: "__cil_tmp75", scope: !2748, file: !83, line: 112, type: !8)
!2857 = !DILocation(line: 112, column: 9, scope: !2748)
!2858 = !DILocalVariable(name: "__cil_tmp76", scope: !2748, file: !83, line: 113, type: !8)
!2859 = !DILocation(line: 113, column: 9, scope: !2748)
!2860 = !DILocalVariable(name: "__cil_tmp77", scope: !2748, file: !83, line: 114, type: !8)
!2861 = !DILocation(line: 114, column: 9, scope: !2748)
!2862 = !DILocalVariable(name: "__cil_tmp78", scope: !2748, file: !83, line: 115, type: !8)
!2863 = !DILocation(line: 115, column: 9, scope: !2748)
!2864 = !DILocalVariable(name: "__cil_tmp79", scope: !2748, file: !83, line: 116, type: !8)
!2865 = !DILocation(line: 116, column: 9, scope: !2748)
!2866 = !DILocalVariable(name: "__cil_tmp80", scope: !2748, file: !83, line: 117, type: !8)
!2867 = !DILocation(line: 117, column: 9, scope: !2748)
!2868 = !DILocalVariable(name: "__cil_tmp81", scope: !2748, file: !83, line: 118, type: !8)
!2869 = !DILocation(line: 118, column: 9, scope: !2748)
!2870 = !DILocalVariable(name: "__cil_tmp82", scope: !2748, file: !83, line: 119, type: !8)
!2871 = !DILocation(line: 119, column: 9, scope: !2748)
!2872 = !DILocalVariable(name: "__cil_tmp83", scope: !2748, file: !83, line: 120, type: !8)
!2873 = !DILocation(line: 120, column: 9, scope: !2748)
!2874 = !DILocalVariable(name: "__cil_tmp84", scope: !2748, file: !83, line: 121, type: !8)
!2875 = !DILocation(line: 121, column: 9, scope: !2748)
!2876 = !DILocalVariable(name: "__cil_tmp85", scope: !2748, file: !83, line: 122, type: !8)
!2877 = !DILocation(line: 122, column: 9, scope: !2748)
!2878 = !DILocalVariable(name: "__cil_tmp86", scope: !2748, file: !83, line: 123, type: !8)
!2879 = !DILocation(line: 123, column: 9, scope: !2748)
!2880 = !DILocalVariable(name: "__cil_tmp87", scope: !2748, file: !83, line: 124, type: !8)
!2881 = !DILocation(line: 124, column: 9, scope: !2748)
!2882 = !DILocalVariable(name: "__cil_tmp88", scope: !2748, file: !83, line: 125, type: !8)
!2883 = !DILocation(line: 125, column: 9, scope: !2748)
!2884 = !DILocalVariable(name: "__cil_tmp89", scope: !2748, file: !83, line: 126, type: !8)
!2885 = !DILocation(line: 126, column: 9, scope: !2748)
!2886 = !DILocalVariable(name: "__cil_tmp90", scope: !2748, file: !83, line: 127, type: !8)
!2887 = !DILocation(line: 127, column: 9, scope: !2748)
!2888 = !DILocalVariable(name: "__cil_tmp91", scope: !2748, file: !83, line: 128, type: !8)
!2889 = !DILocation(line: 128, column: 9, scope: !2748)
!2890 = !DILocalVariable(name: "__cil_tmp92", scope: !2748, file: !83, line: 129, type: !8)
!2891 = !DILocation(line: 129, column: 9, scope: !2748)
!2892 = !DILocalVariable(name: "__cil_tmp93", scope: !2748, file: !83, line: 130, type: !8)
!2893 = !DILocation(line: 130, column: 9, scope: !2748)
!2894 = !DILocalVariable(name: "__cil_tmp94", scope: !2748, file: !83, line: 131, type: !8)
!2895 = !DILocation(line: 131, column: 9, scope: !2748)
!2896 = !DILocalVariable(name: "__cil_tmp95", scope: !2748, file: !83, line: 132, type: !8)
!2897 = !DILocation(line: 132, column: 9, scope: !2748)
!2898 = !DILocalVariable(name: "__cil_tmp96", scope: !2748, file: !83, line: 133, type: !8)
!2899 = !DILocation(line: 133, column: 9, scope: !2748)
!2900 = !DILocalVariable(name: "__cil_tmp97", scope: !2748, file: !83, line: 134, type: !8)
!2901 = !DILocation(line: 134, column: 9, scope: !2748)
!2902 = !DILocalVariable(name: "__cil_tmp98", scope: !2748, file: !83, line: 135, type: !8)
!2903 = !DILocation(line: 135, column: 9, scope: !2748)
!2904 = !DILocalVariable(name: "__cil_tmp99", scope: !2748, file: !83, line: 136, type: !8)
!2905 = !DILocation(line: 136, column: 9, scope: !2748)
!2906 = !DILocalVariable(name: "counter", scope: !2748, file: !83, line: 42, type: !19)
!2907 = !DILocalVariable(name: "END_OF_FILE", scope: !2748, file: !83, line: 43, type: !19)
!2908 = !DILocalVariable(name: "found_first_frame", scope: !2748, file: !83, line: 44, type: !19)
!2909 = !DILocation(line: 51, column: 16, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 139, column: 3)
!2911 = distinct !DILexicalBlock(scope: !2748, file: !83, line: 138, column: 3)
!2912 = !DILocalVariable(name: "found_valid_header", scope: !2748, file: !83, line: 47, type: !9)
!2913 = !DILocalVariable(name: "found_weak_header", scope: !2748, file: !83, line: 48, type: !9)
!2914 = !DILocation(line: 70, column: 3, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !83, line: 58, column: 3)
!2916 = !DILocation(line: 71, column: 3, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2910, file: !83, line: 72, column: 3)
!2918 = !DILocation(line: 72, column: 3, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2910, file: !83, line: 73, column: 3)
!2920 = !DILocation(line: 75, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !83, line: 76, column: 3)
!2922 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 75, column: 3)
!2923 = !DILocation(line: 0, scope: !2911)
!2924 = !DILocation(line: 75, column: 13, scope: !2921)
!2925 = !DILocation(line: 75, column: 14, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !83, line: 75, column: 9)
!2927 = distinct !DILexicalBlock(scope: !2921, file: !83, line: 75, column: 13)
!2928 = !DILocation(line: 75, column: 9, scope: !2927)
!2929 = !DILocation(line: 75, column: 7, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !83, line: 75, column: 28)
!2931 = !DILocation(line: 76, column: 16, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2927, file: !83, line: 76, column: 9)
!2933 = !DILocation(line: 76, column: 9, scope: !2932)
!2934 = !DILocation(line: 76, column: 9, scope: !2927)
!2935 = !DILocation(line: 76, column: 7, scope: !2936)
!2936 = distinct !DILexicalBlock(scope: !2932, file: !83, line: 76, column: 23)
!2937 = !DILocation(line: 76, column: 16, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2932, file: !83, line: 76, column: 9)
!2939 = !DILocation(line: 76, column: 9, scope: !2938)
!2940 = !DILocation(line: 76, column: 23, scope: !2938)
!2941 = !DILocation(line: 82, column: 18, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !83, line: 82, column: 11)
!2943 = distinct !DILexicalBlock(scope: !2938, file: !83, line: 76, column: 23)
!2944 = !DILocation(line: 82, column: 11, scope: !2942)
!2945 = !DILocation(line: 82, column: 11, scope: !2943)
!2946 = !DILocation(line: 82, column: 23, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2948, file: !83, line: 82, column: 13)
!2948 = distinct !DILexicalBlock(scope: !2942, file: !83, line: 82, column: 25)
!2949 = !DILocation(line: 82, column: 50, scope: !2947)
!2950 = !DILocation(line: 82, column: 34, scope: !2947)
!2951 = !DILocation(line: 82, column: 13, scope: !2948)
!2952 = !DILocation(line: 83, column: 11, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2947, file: !83, line: 82, column: 62)
!2954 = !DILocation(line: 85, column: 7, scope: !2948)
!2955 = !DILocation(line: 86, column: 5, scope: !2943)
!2956 = !DILocation(line: 95, column: 11, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2927, file: !83, line: 95, column: 9)
!2958 = !DILocation(line: 95, column: 9, scope: !2927)
!2959 = !DILocation(line: 103, column: 72, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !83, line: 97, column: 7)
!2961 = distinct !DILexicalBlock(scope: !2962, file: !83, line: 96, column: 7)
!2962 = distinct !DILexicalBlock(scope: !2957, file: !83, line: 95, column: 31)
!2963 = !DILocation(line: 103, column: 13, scope: !2960)
!2964 = !DILocalVariable(name: "tmp", scope: !2748, file: !83, line: 55, type: !19)
!2965 = !DILocation(line: 103, column: 11, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !83, line: 103, column: 11)
!2967 = !DILocation(line: 103, column: 11, scope: !2962)
!2968 = !DILocation(line: 104, column: 22, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2970, file: !83, line: 104, column: 13)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !83, line: 103, column: 16)
!2971 = !DILocation(line: 104, column: 15, scope: !2969)
!2972 = !DILocation(line: 104, column: 13, scope: !2970)
!2973 = !DILocation(line: 104, column: 22, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2975, file: !83, line: 104, column: 15)
!2975 = distinct !DILexicalBlock(scope: !2969, file: !83, line: 104, column: 30)
!2976 = !DILocation(line: 104, column: 15, scope: !2974)
!2977 = !DILocation(line: 104, column: 15, scope: !2975)
!2978 = !DILocation(line: 104, column: 26, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !83, line: 104, column: 17)
!2980 = distinct !DILexicalBlock(scope: !2974, file: !83, line: 104, column: 29)
!2981 = !DILocation(line: 104, column: 19, scope: !2979)
!2982 = !DILocation(line: 104, column: 17, scope: !2980)
!2983 = !DILocation(line: 105, column: 48, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2985, file: !83, line: 106, column: 15)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !83, line: 105, column: 15)
!2986 = distinct !DILexicalBlock(scope: !2979, file: !83, line: 104, column: 33)
!2987 = !DILocation(line: 106, column: 23, scope: !2984)
!2988 = !DILocation(line: 106, column: 36, scope: !2984)
!2989 = !DILocation(line: 105, column: 15, scope: !2984)
!2990 = !DILocation(line: 109, column: 13, scope: !2986)
!2991 = !DILocation(line: 110, column: 11, scope: !2980)
!2992 = !DILocation(line: 111, column: 9, scope: !2975)
!2993 = !DILocation(line: 112, column: 7, scope: !2970)
!2994 = !DILocation(line: 108, column: 9, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2966, file: !83, line: 112, column: 14)
!2996 = !DILocation(line: 110, column: 5, scope: !2962)
!2997 = !DILocation(line: 111, column: 20, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2957, file: !83, line: 110, column: 12)
!2999 = !DILocation(line: 115, column: 7, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !83, line: 117, column: 7)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !83, line: 116, column: 7)
!3002 = !DILocation(line: 0, scope: !2998)
!3003 = !DILocation(line: 115, column: 17, scope: !3000)
!3004 = !DILocation(line: 115, column: 24, scope: !3005)
!3005 = distinct !DILexicalBlock(scope: !3006, file: !83, line: 115, column: 13)
!3006 = distinct !DILexicalBlock(scope: !3000, file: !83, line: 115, column: 17)
!3007 = !DILocation(line: 115, column: 13, scope: !3006)
!3008 = !DILocation(line: 115, column: 11, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3005, file: !83, line: 115, column: 30)
!3010 = !DILocation(line: 116, column: 78, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3012, file: !83, line: 118, column: 9)
!3012 = distinct !DILexicalBlock(scope: !3006, file: !83, line: 117, column: 9)
!3013 = !DILocation(line: 116, column: 19, scope: !3011)
!3014 = !DILocalVariable(name: "tmp___0", scope: !2748, file: !83, line: 56, type: !19)
!3015 = !DILocation(line: 116, column: 13, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !3006, file: !83, line: 116, column: 13)
!3017 = !DILocation(line: 116, column: 13, scope: !3006)
!3018 = !DILocation(line: 117, column: 24, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3020, file: !83, line: 117, column: 15)
!3020 = distinct !DILexicalBlock(scope: !3016, file: !83, line: 116, column: 22)
!3021 = !DILocation(line: 117, column: 17, scope: !3019)
!3022 = !DILocation(line: 117, column: 15, scope: !3020)
!3023 = !DILocation(line: 117, column: 24, scope: !3024)
!3024 = distinct !DILexicalBlock(scope: !3025, file: !83, line: 117, column: 17)
!3025 = distinct !DILexicalBlock(scope: !3019, file: !83, line: 117, column: 32)
!3026 = !DILocation(line: 117, column: 17, scope: !3024)
!3027 = !DILocation(line: 117, column: 17, scope: !3025)
!3028 = !DILocation(line: 117, column: 28, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3030, file: !83, line: 117, column: 19)
!3030 = distinct !DILexicalBlock(scope: !3024, file: !83, line: 117, column: 31)
!3031 = !DILocation(line: 117, column: 21, scope: !3029)
!3032 = !DILocation(line: 117, column: 19, scope: !3030)
!3033 = !DILocation(line: 118, column: 50, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3035, file: !83, line: 119, column: 17)
!3035 = distinct !DILexicalBlock(scope: !3036, file: !83, line: 118, column: 17)
!3036 = distinct !DILexicalBlock(scope: !3029, file: !83, line: 117, column: 35)
!3037 = !DILocation(line: 119, column: 25, scope: !3034)
!3038 = !DILocation(line: 119, column: 38, scope: !3034)
!3039 = !DILocation(line: 118, column: 17, scope: !3034)
!3040 = !DILocation(line: 122, column: 15, scope: !3036)
!3041 = !DILocation(line: 123, column: 13, scope: !3030)
!3042 = !DILocation(line: 124, column: 11, scope: !3025)
!3043 = !DILocation(line: 125, column: 9, scope: !3020)
!3044 = !DILocation(line: 121, column: 11, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3016, file: !83, line: 125, column: 16)
!3046 = !DILocation(line: 115, column: 17, scope: !3006)
!3047 = distinct !{!3047, !2999, !3048}
!3048 = !DILocation(line: 116, column: 7, scope: !3000)
!3049 = !DILocation(line: 118, column: 7, scope: !3000)
!3050 = !DILocation(line: 129, column: 11, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2927, file: !83, line: 129, column: 9)
!3052 = !DILocation(line: 129, column: 24, scope: !3051)
!3053 = !DILocation(line: 129, column: 31, scope: !3051)
!3054 = !DILocation(line: 129, column: 40, scope: !3051)
!3055 = !DILocation(line: 129, column: 9, scope: !2927)
!3056 = !DILocation(line: 133, column: 7, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3058, file: !83, line: 132, column: 7)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !83, line: 130, column: 7)
!3059 = distinct !DILexicalBlock(scope: !3051, file: !83, line: 129, column: 50)
!3060 = !DILocation(line: 135, column: 17, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !83, line: 135, column: 7)
!3062 = !DILocalVariable(name: "tmp___3", scope: !2748, file: !83, line: 59, type: !19)
!3063 = !DILocation(line: 135, column: 11, scope: !3064)
!3064 = distinct !DILexicalBlock(scope: !3059, file: !83, line: 135, column: 11)
!3065 = !DILocation(line: 135, column: 11, scope: !3059)
!3066 = !DILocation(line: 144, column: 23, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 144, column: 13)
!3068 = distinct !DILexicalBlock(scope: !3064, file: !83, line: 135, column: 20)
!3069 = !DILocation(line: 144, column: 40, scope: !3067)
!3070 = !DILocation(line: 144, column: 13, scope: !3068)
!3071 = !DILocation(line: 144, column: 25, scope: !3072)
!3072 = distinct !DILexicalBlock(scope: !3073, file: !83, line: 144, column: 15)
!3073 = distinct !DILexicalBlock(scope: !3067, file: !83, line: 144, column: 45)
!3074 = !DILocation(line: 144, column: 58, scope: !3072)
!3075 = !DILocation(line: 144, column: 45, scope: !3072)
!3076 = !DILocation(line: 144, column: 15, scope: !3073)
!3077 = !DILocation(line: 145, column: 24, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !3079, file: !83, line: 145, column: 13)
!3079 = distinct !DILexicalBlock(scope: !3072, file: !83, line: 144, column: 70)
!3080 = !DILocation(line: 145, column: 41, scope: !3078)
!3081 = !DILocation(line: 152, column: 46, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3078, file: !83, line: 146, column: 13)
!3083 = !DILocation(line: 153, column: 31, scope: !3082)
!3084 = !DILocation(line: 153, column: 62, scope: !3082)
!3085 = !DILocation(line: 154, column: 31, scope: !3082)
!3086 = !DILocation(line: 154, column: 53, scope: !3082)
!3087 = !DILocation(line: 152, column: 13, scope: !3082)
!3088 = !DILocation(line: 158, column: 24, scope: !3089)
!3089 = distinct !DILexicalBlock(scope: !3079, file: !83, line: 158, column: 17)
!3090 = !DILocation(line: 158, column: 17, scope: !3089)
!3091 = !DILocation(line: 158, column: 17, scope: !3079)
!3092 = !DILocation(line: 158, column: 29, scope: !3093)
!3093 = distinct !DILexicalBlock(scope: !3094, file: !83, line: 158, column: 19)
!3094 = distinct !DILexicalBlock(scope: !3089, file: !83, line: 158, column: 31)
!3095 = !DILocation(line: 158, column: 50, scope: !3093)
!3096 = !DILocation(line: 158, column: 19, scope: !3094)
!3097 = !DILocation(line: 158, column: 35, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3099, file: !83, line: 158, column: 21)
!3099 = distinct !DILexicalBlock(scope: !3093, file: !83, line: 158, column: 55)
!3100 = !DILocation(line: 158, column: 61, scope: !3098)
!3101 = !DILocation(line: 158, column: 49, scope: !3098)
!3102 = !DILocation(line: 158, column: 21, scope: !3099)
!3103 = !DILocation(line: 159, column: 52, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3105, file: !83, line: 160, column: 19)
!3105 = distinct !DILexicalBlock(scope: !3106, file: !83, line: 159, column: 19)
!3106 = distinct !DILexicalBlock(scope: !3098, file: !83, line: 158, column: 83)
!3107 = !DILocation(line: 160, column: 37, scope: !3104)
!3108 = !DILocation(line: 160, column: 73, scope: !3104)
!3109 = !DILocation(line: 161, column: 37, scope: !3104)
!3110 = !DILocation(line: 161, column: 68, scope: !3104)
!3111 = !DILocation(line: 159, column: 19, scope: !3104)
!3112 = !DILocation(line: 162, column: 29, scope: !3105)
!3113 = !DILocation(line: 162, column: 50, scope: !3105)
!3114 = !DILocation(line: 164, column: 17, scope: !3106)
!3115 = !DILocation(line: 165, column: 15, scope: !3099)
!3116 = !DILocation(line: 166, column: 13, scope: !3094)
!3117 = !DILocation(line: 167, column: 11, scope: !3079)
!3118 = !DILocation(line: 144, column: 13, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3072, file: !83, line: 167, column: 18)
!3120 = !DILocation(line: 146, column: 9, scope: !3073)
!3121 = !DILocation(line: 165, column: 23, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3067, file: !83, line: 165, column: 13)
!3123 = !DILocation(line: 165, column: 56, scope: !3122)
!3124 = !DILocation(line: 165, column: 43, scope: !3122)
!3125 = !DILocation(line: 165, column: 13, scope: !3067)
!3126 = !DILocation(line: 166, column: 22, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3122, file: !83, line: 165, column: 68)
!3128 = !DILocation(line: 166, column: 40, scope: !3127)
!3129 = !DILocation(line: 167, column: 22, scope: !3127)
!3130 = !DILocation(line: 167, column: 44, scope: !3127)
!3131 = !DILocation(line: 168, column: 9, scope: !3127)
!3132 = !DILocation(line: 169, column: 44, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !83, line: 170, column: 11)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !83, line: 169, column: 11)
!3135 = distinct !DILexicalBlock(scope: !3122, file: !83, line: 168, column: 16)
!3136 = !DILocation(line: 170, column: 29, scope: !3133)
!3137 = !DILocation(line: 170, column: 51, scope: !3133)
!3138 = !DILocation(line: 169, column: 11, scope: !3133)
!3139 = !DILocation(line: 180, column: 22, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 180, column: 13)
!3141 = !DILocation(line: 180, column: 15, scope: !3140)
!3142 = !DILocation(line: 180, column: 13, scope: !3068)
!3143 = !DILocation(line: 180, column: 22, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !83, line: 180, column: 15)
!3145 = distinct !DILexicalBlock(scope: !3140, file: !83, line: 180, column: 30)
!3146 = !DILocation(line: 180, column: 15, scope: !3144)
!3147 = !DILocation(line: 180, column: 15, scope: !3145)
!3148 = !DILocation(line: 180, column: 24, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3150, file: !83, line: 180, column: 17)
!3150 = distinct !DILexicalBlock(scope: !3144, file: !83, line: 180, column: 29)
!3151 = !DILocation(line: 180, column: 17, scope: !3149)
!3152 = !DILocation(line: 180, column: 17, scope: !3150)
!3153 = !DILocation(line: 181, column: 48, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3155, file: !83, line: 182, column: 15)
!3155 = distinct !DILexicalBlock(scope: !3156, file: !83, line: 181, column: 15)
!3156 = distinct !DILexicalBlock(scope: !3149, file: !83, line: 180, column: 31)
!3157 = !DILocation(line: 182, column: 24, scope: !3154)
!3158 = !DILocation(line: 182, column: 37, scope: !3154)
!3159 = !DILocation(line: 182, column: 44, scope: !3154)
!3160 = !DILocation(line: 182, column: 53, scope: !3154)
!3161 = !DILocation(line: 182, column: 66, scope: !3154)
!3162 = !DILocation(line: 182, column: 73, scope: !3154)
!3163 = !DILocation(line: 182, column: 82, scope: !3154)
!3164 = !DILocation(line: 182, column: 95, scope: !3154)
!3165 = !DILocation(line: 182, column: 101, scope: !3154)
!3166 = !DILocation(line: 183, column: 23, scope: !3154)
!3167 = !DILocation(line: 183, column: 36, scope: !3154)
!3168 = !DILocation(line: 181, column: 15, scope: !3154)
!3169 = !DILocation(line: 186, column: 13, scope: !3156)
!3170 = !DILocation(line: 187, column: 11, scope: !3150)
!3171 = !DILocation(line: 188, column: 9, scope: !3145)
!3172 = !DILocation(line: 192, column: 19, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 192, column: 13)
!3174 = !DILocation(line: 192, column: 13, scope: !3173)
!3175 = !DILocation(line: 192, column: 13, scope: !3068)
!3176 = !DILocation(line: 194, column: 11, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3178, file: !83, line: 196, column: 11)
!3178 = distinct !DILexicalBlock(scope: !3179, file: !83, line: 195, column: 11)
!3179 = distinct !DILexicalBlock(scope: !3173, file: !83, line: 192, column: 29)
!3180 = !DILocation(line: 0, scope: !3179)
!3181 = !DILocation(line: 194, column: 21, scope: !3177)
!3182 = !DILocation(line: 194, column: 28, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3184, file: !83, line: 194, column: 17)
!3184 = distinct !DILexicalBlock(scope: !3177, file: !83, line: 194, column: 21)
!3185 = !DILocation(line: 194, column: 17, scope: !3184)
!3186 = !DILocation(line: 194, column: 15, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3183, file: !83, line: 194, column: 34)
!3188 = !DILocation(line: 195, column: 82, scope: !3189)
!3189 = distinct !DILexicalBlock(scope: !3190, file: !83, line: 197, column: 13)
!3190 = distinct !DILexicalBlock(scope: !3184, file: !83, line: 196, column: 13)
!3191 = !DILocation(line: 195, column: 23, scope: !3189)
!3192 = !DILocalVariable(name: "tmp___1", scope: !2748, file: !83, line: 57, type: !19)
!3193 = !DILocation(line: 195, column: 17, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3184, file: !83, line: 195, column: 17)
!3195 = !DILocation(line: 195, column: 17, scope: !3184)
!3196 = !DILocation(line: 196, column: 28, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !83, line: 196, column: 19)
!3198 = distinct !DILexicalBlock(scope: !3194, file: !83, line: 195, column: 26)
!3199 = !DILocation(line: 196, column: 21, scope: !3197)
!3200 = !DILocation(line: 196, column: 19, scope: !3198)
!3201 = !DILocation(line: 196, column: 28, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3203, file: !83, line: 196, column: 21)
!3203 = distinct !DILexicalBlock(scope: !3197, file: !83, line: 196, column: 36)
!3204 = !DILocation(line: 196, column: 21, scope: !3202)
!3205 = !DILocation(line: 196, column: 21, scope: !3203)
!3206 = !DILocation(line: 196, column: 32, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !83, line: 196, column: 23)
!3208 = distinct !DILexicalBlock(scope: !3202, file: !83, line: 196, column: 35)
!3209 = !DILocation(line: 196, column: 25, scope: !3207)
!3210 = !DILocation(line: 196, column: 23, scope: !3208)
!3211 = !DILocation(line: 197, column: 54, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3213, file: !83, line: 198, column: 21)
!3213 = distinct !DILexicalBlock(scope: !3214, file: !83, line: 197, column: 21)
!3214 = distinct !DILexicalBlock(scope: !3207, file: !83, line: 196, column: 39)
!3215 = !DILocation(line: 198, column: 29, scope: !3212)
!3216 = !DILocation(line: 198, column: 42, scope: !3212)
!3217 = !DILocation(line: 197, column: 21, scope: !3212)
!3218 = !DILocation(line: 201, column: 19, scope: !3214)
!3219 = !DILocation(line: 202, column: 17, scope: !3208)
!3220 = !DILocation(line: 203, column: 15, scope: !3203)
!3221 = !DILocation(line: 204, column: 13, scope: !3198)
!3222 = !DILocation(line: 200, column: 15, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3194, file: !83, line: 204, column: 20)
!3224 = !DILocation(line: 194, column: 21, scope: !3184)
!3225 = distinct !{!3225, !3176, !3226}
!3226 = !DILocation(line: 195, column: 11, scope: !3177)
!3227 = !DILocation(line: 197, column: 11, scope: !3177)
!3228 = !DILocation(line: 205, column: 40, scope: !3179)
!3229 = !DILocation(line: 205, column: 53, scope: !3179)
!3230 = !DILocation(line: 205, column: 31, scope: !3179)
!3231 = !DILocation(line: 205, column: 17, scope: !3179)
!3232 = !DILocation(line: 205, column: 29, scope: !3179)
!3233 = !DILocation(line: 215, column: 24, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3179, file: !83, line: 215, column: 15)
!3235 = !DILocation(line: 215, column: 17, scope: !3234)
!3236 = !DILocation(line: 215, column: 15, scope: !3179)
!3237 = !DILocation(line: 215, column: 24, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3239, file: !83, line: 215, column: 17)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !83, line: 215, column: 32)
!3240 = !DILocation(line: 215, column: 17, scope: !3238)
!3241 = !DILocation(line: 215, column: 17, scope: !3239)
!3242 = !DILocation(line: 215, column: 26, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !83, line: 215, column: 19)
!3244 = distinct !DILexicalBlock(scope: !3238, file: !83, line: 215, column: 31)
!3245 = !DILocation(line: 215, column: 19, scope: !3243)
!3246 = !DILocation(line: 215, column: 19, scope: !3244)
!3247 = !DILocation(line: 216, column: 50, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3249, file: !83, line: 217, column: 17)
!3249 = distinct !DILexicalBlock(scope: !3250, file: !83, line: 216, column: 17)
!3250 = distinct !DILexicalBlock(scope: !3243, file: !83, line: 215, column: 33)
!3251 = !DILocation(line: 217, column: 26, scope: !3248)
!3252 = !DILocation(line: 217, column: 39, scope: !3248)
!3253 = !DILocation(line: 217, column: 45, scope: !3248)
!3254 = !DILocation(line: 217, column: 53, scope: !3248)
!3255 = !DILocation(line: 217, column: 66, scope: !3248)
!3256 = !DILocation(line: 216, column: 17, scope: !3248)
!3257 = !DILocation(line: 220, column: 15, scope: !3250)
!3258 = !DILocation(line: 221, column: 13, scope: !3244)
!3259 = !DILocation(line: 222, column: 11, scope: !3239)
!3260 = !DILocation(line: 223, column: 9, scope: !3179)
!3261 = !DILocation(line: 228, column: 9, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3263, file: !83, line: 225, column: 9)
!3263 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 224, column: 9)
!3264 = !DILocation(line: 242, column: 23, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 242, column: 13)
!3266 = !DILocation(line: 242, column: 40, scope: !3265)
!3267 = !DILocation(line: 242, column: 13, scope: !3068)
!3268 = !DILocation(line: 243, column: 29, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3265, file: !83, line: 242, column: 45)
!3270 = !DILocation(line: 245, column: 9, scope: !3269)
!3271 = !DILocation(line: 249, column: 22, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 249, column: 13)
!3273 = !DILocation(line: 249, column: 15, scope: !3272)
!3274 = !DILocation(line: 249, column: 13, scope: !3068)
!3275 = !DILocation(line: 249, column: 22, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !83, line: 249, column: 15)
!3277 = distinct !DILexicalBlock(scope: !3272, file: !83, line: 249, column: 29)
!3278 = !DILocation(line: 249, column: 15, scope: !3276)
!3279 = !DILocation(line: 249, column: 15, scope: !3277)
!3280 = !DILocation(line: 249, column: 27, scope: !3281)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !83, line: 249, column: 17)
!3282 = distinct !DILexicalBlock(scope: !3276, file: !83, line: 249, column: 30)
!3283 = !DILocation(line: 249, column: 44, scope: !3281)
!3284 = !DILocation(line: 249, column: 17, scope: !3282)
!3285 = !DILocation(line: 250, column: 15, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !83, line: 251, column: 15)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !83, line: 250, column: 15)
!3288 = distinct !DILexicalBlock(scope: !3281, file: !83, line: 249, column: 49)
!3289 = !DILocation(line: 253, column: 13, scope: !3288)
!3290 = !DILocation(line: 254, column: 11, scope: !3282)
!3291 = !DILocation(line: 255, column: 9, scope: !3277)
!3292 = !DILocation(line: 257, column: 19, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 257, column: 13)
!3294 = !DILocation(line: 257, column: 13, scope: !3293)
!3295 = !DILocation(line: 257, column: 13, scope: !3068)
!3296 = !DILocation(line: 258, column: 54, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !83, line: 257, column: 29)
!3298 = !DILocation(line: 258, column: 73, scope: !3297)
!3299 = !DILocation(line: 258, column: 65, scope: !3297)
!3300 = !DILocation(line: 258, column: 87, scope: !3297)
!3301 = !DILocation(line: 258, column: 21, scope: !3297)
!3302 = !DILocation(line: 258, column: 41, scope: !3297)
!3303 = !DILocation(line: 259, column: 9, scope: !3297)
!3304 = !DILocation(line: 260, column: 53, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3293, file: !83, line: 259, column: 16)
!3306 = !DILocation(line: 260, column: 72, scope: !3305)
!3307 = !DILocation(line: 260, column: 64, scope: !3305)
!3308 = !DILocation(line: 260, column: 21, scope: !3305)
!3309 = !DILocation(line: 260, column: 41, scope: !3305)
!3310 = !DILocation(line: 265, column: 20, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3068, file: !83, line: 265, column: 13)
!3312 = !DILocation(line: 265, column: 13, scope: !3311)
!3313 = !DILocation(line: 265, column: 13, scope: !3068)
!3314 = !DILocation(line: 265, column: 11, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3311, file: !83, line: 265, column: 27)
!3316 = !DILocation(line: 265, column: 20, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3311, file: !83, line: 265, column: 13)
!3318 = !DILocation(line: 265, column: 13, scope: !3317)
!3319 = !DILocation(line: 265, column: 29, scope: !3320)
!3320 = distinct !DILexicalBlock(scope: !3321, file: !83, line: 265, column: 15)
!3321 = distinct !DILexicalBlock(scope: !3317, file: !83, line: 265, column: 27)
!3322 = !DILocation(line: 265, column: 40, scope: !3320)
!3323 = !DILocation(line: 265, column: 15, scope: !3321)
!3324 = !DILocation(line: 265, column: 45, scope: !3320)
!3325 = !DILocation(line: 266, column: 42, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3327, file: !83, line: 268, column: 13)
!3327 = distinct !DILexicalBlock(scope: !3328, file: !83, line: 267, column: 13)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !83, line: 265, column: 45)
!3329 = !DILocation(line: 266, column: 23, scope: !3326)
!3330 = !DILocalVariable(name: "tmp___2", scope: !2748, file: !83, line: 58, type: !19)
!3331 = !DILocation(line: 266, column: 19, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !83, line: 266, column: 17)
!3333 = !DILocation(line: 266, column: 17, scope: !3328)
!3334 = !DILocation(line: 267, column: 15, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3332, file: !83, line: 266, column: 28)
!3336 = !DILocation(line: 269, column: 11, scope: !3328)
!3337 = !DILocation(line: 270, column: 13, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3320, file: !83, line: 269, column: 18)
!3339 = !DILocation(line: 272, column: 9, scope: !3321)
!3340 = !DILocation(line: 270, column: 11, scope: !3341)
!3341 = distinct !DILexicalBlock(scope: !3317, file: !83, line: 272, column: 16)
!3342 = !DILocation(line: 272, column: 7, scope: !3068)
!3343 = !DILocation(line: 278, column: 20, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3064, file: !83, line: 272, column: 14)
!3345 = !DILocation(line: 278, column: 37, scope: !3344)
!3346 = !DILocation(line: 280, column: 20, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !83, line: 280, column: 13)
!3348 = !DILocation(line: 280, column: 13, scope: !3347)
!3349 = !DILocation(line: 280, column: 13, scope: !3344)
!3350 = !DILocation(line: 281, column: 44, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !83, line: 282, column: 11)
!3352 = distinct !DILexicalBlock(scope: !3353, file: !83, line: 281, column: 11)
!3353 = distinct !DILexicalBlock(scope: !3347, file: !83, line: 280, column: 27)
!3354 = !DILocation(line: 282, column: 19, scope: !3351)
!3355 = !DILocation(line: 282, column: 43, scope: !3351)
!3356 = !DILocation(line: 282, column: 65, scope: !3351)
!3357 = !DILocation(line: 281, column: 11, scope: !3351)
!3358 = !DILocation(line: 285, column: 9, scope: !3353)
!3359 = !DILocation(line: 285, column: 20, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3344, file: !83, line: 285, column: 13)
!3361 = !DILocation(line: 285, column: 13, scope: !3360)
!3362 = !DILocation(line: 285, column: 13, scope: !3344)
!3363 = !DILocation(line: 285, column: 25, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !83, line: 285, column: 15)
!3365 = distinct !DILexicalBlock(scope: !3360, file: !83, line: 285, column: 27)
!3366 = !DILocation(line: 285, column: 46, scope: !3364)
!3367 = !DILocation(line: 285, column: 15, scope: !3365)
!3368 = !DILocation(line: 285, column: 31, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !83, line: 285, column: 17)
!3370 = distinct !DILexicalBlock(scope: !3364, file: !83, line: 285, column: 51)
!3371 = !DILocation(line: 285, column: 57, scope: !3369)
!3372 = !DILocation(line: 285, column: 45, scope: !3369)
!3373 = !DILocation(line: 285, column: 17, scope: !3370)
!3374 = !DILocation(line: 286, column: 48, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !83, line: 287, column: 15)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !83, line: 286, column: 15)
!3377 = distinct !DILexicalBlock(scope: !3369, file: !83, line: 285, column: 79)
!3378 = !DILocation(line: 287, column: 33, scope: !3375)
!3379 = !DILocation(line: 287, column: 69, scope: !3375)
!3380 = !DILocation(line: 288, column: 33, scope: !3375)
!3381 = !DILocation(line: 288, column: 64, scope: !3375)
!3382 = !DILocation(line: 286, column: 15, scope: !3375)
!3383 = !DILocation(line: 289, column: 25, scope: !3376)
!3384 = !DILocation(line: 289, column: 46, scope: !3376)
!3385 = !DILocation(line: 291, column: 13, scope: !3377)
!3386 = !DILocation(line: 292, column: 11, scope: !3370)
!3387 = !DILocation(line: 293, column: 9, scope: !3365)
!3388 = !DILocation(line: 295, column: 5, scope: !3059)
!3389 = !DILocation(line: 293, column: 19, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3051, file: !83, line: 293, column: 9)
!3391 = !DILocation(line: 293, column: 28, scope: !3390)
!3392 = !DILocation(line: 293, column: 9, scope: !3051)
!3393 = !DILocation(line: 293, column: 12, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3395, file: !83, line: 293, column: 11)
!3395 = distinct !DILexicalBlock(scope: !3390, file: !83, line: 293, column: 34)
!3396 = !DILocation(line: 293, column: 25, scope: !3394)
!3397 = !DILocation(line: 293, column: 40, scope: !3394)
!3398 = !DILocation(line: 293, column: 11, scope: !3395)
!3399 = !DILocation(line: 297, column: 42, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3401, file: !83, line: 295, column: 9)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !83, line: 294, column: 9)
!3402 = distinct !DILexicalBlock(scope: !3394, file: !83, line: 293, column: 56)
!3403 = !DILocation(line: 297, column: 9, scope: !3400)
!3404 = !DILocation(line: 304, column: 15, scope: !3401)
!3405 = !DILocation(line: 304, column: 21, scope: !3401)
!3406 = !DILocation(line: 306, column: 20, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3402, file: !83, line: 306, column: 13)
!3408 = !DILocation(line: 306, column: 13, scope: !3407)
!3409 = !DILocation(line: 306, column: 13, scope: !3402)
!3410 = !DILocation(line: 307, column: 22, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !83, line: 307, column: 15)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !83, line: 306, column: 27)
!3413 = !DILocation(line: 307, column: 15, scope: !3411)
!3414 = !DILocation(line: 307, column: 15, scope: !3412)
!3415 = !DILocation(line: 307, column: 27, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3417, file: !83, line: 307, column: 17)
!3417 = distinct !DILexicalBlock(scope: !3411, file: !83, line: 307, column: 29)
!3418 = !DILocation(line: 307, column: 48, scope: !3416)
!3419 = !DILocation(line: 307, column: 17, scope: !3417)
!3420 = !DILocation(line: 307, column: 33, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !83, line: 307, column: 19)
!3422 = distinct !DILexicalBlock(scope: !3416, file: !83, line: 307, column: 53)
!3423 = !DILocation(line: 307, column: 59, scope: !3421)
!3424 = !DILocation(line: 307, column: 47, scope: !3421)
!3425 = !DILocation(line: 307, column: 19, scope: !3422)
!3426 = !DILocation(line: 308, column: 50, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3428, file: !83, line: 309, column: 17)
!3428 = distinct !DILexicalBlock(scope: !3429, file: !83, line: 308, column: 17)
!3429 = distinct !DILexicalBlock(scope: !3421, file: !83, line: 307, column: 81)
!3430 = !DILocation(line: 309, column: 35, scope: !3427)
!3431 = !DILocation(line: 309, column: 71, scope: !3427)
!3432 = !DILocation(line: 310, column: 35, scope: !3427)
!3433 = !DILocation(line: 310, column: 66, scope: !3427)
!3434 = !DILocation(line: 308, column: 17, scope: !3427)
!3435 = !DILocation(line: 311, column: 27, scope: !3428)
!3436 = !DILocation(line: 311, column: 48, scope: !3428)
!3437 = !DILocation(line: 313, column: 15, scope: !3429)
!3438 = !DILocation(line: 314, column: 13, scope: !3422)
!3439 = !DILocation(line: 315, column: 11, scope: !3417)
!3440 = !DILocation(line: 314, column: 22, scope: !3412)
!3441 = !DILocation(line: 314, column: 39, scope: !3412)
!3442 = !DILocation(line: 315, column: 9, scope: !3412)
!3443 = !DILocation(line: 322, column: 9, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3445, file: !83, line: 324, column: 9)
!3445 = distinct !DILexicalBlock(scope: !3402, file: !83, line: 323, column: 9)
!3446 = !DILocation(line: 0, scope: !3402)
!3447 = !DILocation(line: 322, column: 19, scope: !3444)
!3448 = !DILocation(line: 322, column: 26, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3450, file: !83, line: 322, column: 15)
!3450 = distinct !DILexicalBlock(scope: !3444, file: !83, line: 322, column: 19)
!3451 = !DILocation(line: 322, column: 15, scope: !3450)
!3452 = !DILocation(line: 322, column: 13, scope: !3453)
!3453 = distinct !DILexicalBlock(scope: !3449, file: !83, line: 322, column: 32)
!3454 = !DILocation(line: 323, column: 80, scope: !3455)
!3455 = distinct !DILexicalBlock(scope: !3456, file: !83, line: 325, column: 11)
!3456 = distinct !DILexicalBlock(scope: !3450, file: !83, line: 324, column: 11)
!3457 = !DILocation(line: 323, column: 21, scope: !3455)
!3458 = !DILocalVariable(name: "tmp___4", scope: !2748, file: !83, line: 60, type: !19)
!3459 = !DILocation(line: 323, column: 15, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3450, file: !83, line: 323, column: 15)
!3461 = !DILocation(line: 323, column: 15, scope: !3450)
!3462 = !DILocation(line: 324, column: 26, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !83, line: 324, column: 17)
!3464 = distinct !DILexicalBlock(scope: !3460, file: !83, line: 323, column: 24)
!3465 = !DILocation(line: 324, column: 19, scope: !3463)
!3466 = !DILocation(line: 324, column: 17, scope: !3464)
!3467 = !DILocation(line: 324, column: 26, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !83, line: 324, column: 19)
!3469 = distinct !DILexicalBlock(scope: !3463, file: !83, line: 324, column: 34)
!3470 = !DILocation(line: 324, column: 19, scope: !3468)
!3471 = !DILocation(line: 324, column: 19, scope: !3469)
!3472 = !DILocation(line: 324, column: 30, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !83, line: 324, column: 21)
!3474 = distinct !DILexicalBlock(scope: !3468, file: !83, line: 324, column: 33)
!3475 = !DILocation(line: 324, column: 23, scope: !3473)
!3476 = !DILocation(line: 324, column: 21, scope: !3474)
!3477 = !DILocation(line: 325, column: 52, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !83, line: 326, column: 19)
!3479 = distinct !DILexicalBlock(scope: !3480, file: !83, line: 325, column: 19)
!3480 = distinct !DILexicalBlock(scope: !3473, file: !83, line: 324, column: 37)
!3481 = !DILocation(line: 326, column: 27, scope: !3478)
!3482 = !DILocation(line: 326, column: 40, scope: !3478)
!3483 = !DILocation(line: 325, column: 19, scope: !3478)
!3484 = !DILocation(line: 329, column: 17, scope: !3480)
!3485 = !DILocation(line: 330, column: 15, scope: !3474)
!3486 = !DILocation(line: 331, column: 13, scope: !3469)
!3487 = !DILocation(line: 332, column: 11, scope: !3464)
!3488 = !DILocation(line: 328, column: 13, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3460, file: !83, line: 332, column: 18)
!3490 = !DILocation(line: 322, column: 19, scope: !3450)
!3491 = distinct !{!3491, !3443, !3492}
!3492 = !DILocation(line: 323, column: 9, scope: !3444)
!3493 = !DILocation(line: 325, column: 9, scope: !3444)
!3494 = !DILocation(line: 333, column: 30, scope: !3402)
!3495 = !DILocation(line: 333, column: 43, scope: !3402)
!3496 = !DILocation(line: 333, column: 49, scope: !3402)
!3497 = !DILocation(line: 333, column: 67, scope: !3402)
!3498 = !DILocation(line: 333, column: 80, scope: !3402)
!3499 = !DILocation(line: 333, column: 86, scope: !3402)
!3500 = !DILocation(line: 333, column: 63, scope: !3402)
!3501 = !DILocation(line: 333, column: 103, scope: !3402)
!3502 = !DILocation(line: 333, column: 116, scope: !3402)
!3503 = !DILocation(line: 333, column: 122, scope: !3402)
!3504 = !DILocation(line: 333, column: 99, scope: !3402)
!3505 = !DILocation(line: 333, column: 136, scope: !3402)
!3506 = !DILocation(line: 333, column: 149, scope: !3402)
!3507 = !DILocation(line: 333, column: 133, scope: !3402)
!3508 = !DILocation(line: 343, column: 49, scope: !3402)
!3509 = !DILocation(line: 343, column: 19, scope: !3402)
!3510 = !DILocation(line: 343, column: 39, scope: !3402)
!3511 = !DILocation(line: 346, column: 9, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3513, file: !83, line: 345, column: 9)
!3513 = distinct !DILexicalBlock(scope: !3402, file: !83, line: 344, column: 9)
!3514 = !DILocation(line: 346, column: 19, scope: !3512)
!3515 = !DILocalVariable(name: "tmp___6", scope: !2748, file: !83, line: 62, type: !19)
!3516 = !DILocation(line: 346, column: 19, scope: !3517)
!3517 = distinct !DILexicalBlock(scope: !3512, file: !83, line: 346, column: 19)
!3518 = !DILocation(line: 346, column: 26, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3517, file: !83, line: 346, column: 15)
!3520 = !DILocation(line: 346, column: 15, scope: !3517)
!3521 = !DILocation(line: 346, column: 13, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3519, file: !83, line: 346, column: 32)
!3523 = !DILocation(line: 347, column: 80, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3525, file: !83, line: 349, column: 11)
!3525 = distinct !DILexicalBlock(scope: !3517, file: !83, line: 348, column: 11)
!3526 = !DILocation(line: 347, column: 21, scope: !3524)
!3527 = !DILocalVariable(name: "tmp___5", scope: !2748, file: !83, line: 61, type: !19)
!3528 = !DILocation(line: 347, column: 15, scope: !3529)
!3529 = distinct !DILexicalBlock(scope: !3517, file: !83, line: 347, column: 15)
!3530 = !DILocation(line: 347, column: 15, scope: !3517)
!3531 = !DILocation(line: 348, column: 26, scope: !3532)
!3532 = distinct !DILexicalBlock(scope: !3533, file: !83, line: 348, column: 17)
!3533 = distinct !DILexicalBlock(scope: !3529, file: !83, line: 347, column: 24)
!3534 = !DILocation(line: 348, column: 19, scope: !3532)
!3535 = !DILocation(line: 348, column: 17, scope: !3533)
!3536 = !DILocation(line: 348, column: 26, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !83, line: 348, column: 19)
!3538 = distinct !DILexicalBlock(scope: !3532, file: !83, line: 348, column: 34)
!3539 = !DILocation(line: 348, column: 19, scope: !3537)
!3540 = !DILocation(line: 348, column: 19, scope: !3538)
!3541 = !DILocation(line: 348, column: 30, scope: !3542)
!3542 = distinct !DILexicalBlock(scope: !3543, file: !83, line: 348, column: 21)
!3543 = distinct !DILexicalBlock(scope: !3537, file: !83, line: 348, column: 33)
!3544 = !DILocation(line: 348, column: 23, scope: !3542)
!3545 = !DILocation(line: 348, column: 21, scope: !3543)
!3546 = !DILocation(line: 349, column: 52, scope: !3547)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !83, line: 350, column: 19)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !83, line: 349, column: 19)
!3549 = distinct !DILexicalBlock(scope: !3542, file: !83, line: 348, column: 37)
!3550 = !DILocation(line: 350, column: 27, scope: !3547)
!3551 = !DILocation(line: 350, column: 40, scope: !3547)
!3552 = !DILocation(line: 349, column: 19, scope: !3547)
!3553 = !DILocation(line: 353, column: 17, scope: !3549)
!3554 = !DILocation(line: 354, column: 15, scope: !3543)
!3555 = !DILocation(line: 355, column: 13, scope: !3538)
!3556 = !DILocation(line: 356, column: 11, scope: !3533)
!3557 = !DILocation(line: 352, column: 13, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3529, file: !83, line: 356, column: 18)
!3559 = distinct !{!3559, !3511, !3560}
!3560 = !DILocation(line: 354, column: 9, scope: !3512)
!3561 = !DILocation(line: 356, column: 9, scope: !3512)
!3562 = !DILocation(line: 359, column: 7, scope: !3402)
!3563 = !DILocation(line: 0, scope: !3394)
!3564 = !DILocation(line: 366, column: 5, scope: !3395)
!3565 = !DILocation(line: 0, scope: !3390)
!3566 = !DILocation(line: 0, scope: !3051)
!3567 = distinct !{!3567, !2920, !3568}
!3568 = !DILocation(line: 366, column: 3, scope: !2921)
!3569 = !DILocation(line: 368, column: 3, scope: !2921)
!3570 = !DILocation(line: 369, column: 16, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 369, column: 7)
!3572 = !DILocation(line: 369, column: 9, scope: !3571)
!3573 = !DILocation(line: 369, column: 7, scope: !2911)
!3574 = !DILocation(line: 370, column: 16, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3576, file: !83, line: 370, column: 9)
!3576 = distinct !DILexicalBlock(scope: !3571, file: !83, line: 369, column: 23)
!3577 = !DILocation(line: 370, column: 9, scope: !3575)
!3578 = !DILocation(line: 370, column: 9, scope: !3576)
!3579 = !DILocation(line: 372, column: 49, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3581, file: !83, line: 372, column: 7)
!3581 = distinct !DILexicalBlock(scope: !3582, file: !83, line: 371, column: 7)
!3582 = distinct !DILexicalBlock(scope: !3575, file: !83, line: 370, column: 23)
!3583 = !DILocation(line: 372, column: 91, scope: !3580)
!3584 = !DILocation(line: 373, column: 45, scope: !3580)
!3585 = !DILocation(line: 371, column: 7, scope: !3580)
!3586 = !DILocation(line: 376, column: 5, scope: !3582)
!3587 = !DILocation(line: 373, column: 7, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !83, line: 378, column: 7)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !83, line: 377, column: 7)
!3590 = distinct !DILexicalBlock(scope: !3575, file: !83, line: 376, column: 12)
!3591 = !DILocation(line: 374, column: 7, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !83, line: 375, column: 7)
!3593 = !DILocation(line: 375, column: 85, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3589, file: !83, line: 376, column: 7)
!3595 = !DILocation(line: 375, column: 7, scope: !3594)
!3596 = !DILocation(line: 376, column: 84, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3589, file: !83, line: 377, column: 7)
!3598 = !DILocation(line: 376, column: 7, scope: !3597)
!3599 = !DILocation(line: 377, column: 89, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3589, file: !83, line: 378, column: 7)
!3601 = !DILocation(line: 377, column: 7, scope: !3600)
!3602 = !DILocation(line: 380, column: 18, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3576, file: !83, line: 380, column: 9)
!3604 = !DILocation(line: 380, column: 40, scope: !3603)
!3605 = !DILocation(line: 380, column: 28, scope: !3603)
!3606 = !DILocation(line: 380, column: 9, scope: !3576)
!3607 = !DILocation(line: 380, column: 21, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3609, file: !83, line: 380, column: 11)
!3609 = distinct !DILexicalBlock(scope: !3603, file: !83, line: 380, column: 50)
!3610 = !DILocation(line: 380, column: 38, scope: !3608)
!3611 = !DILocation(line: 380, column: 11, scope: !3609)
!3612 = !DILocation(line: 383, column: 38, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3608, file: !83, line: 380, column: 43)
!3614 = !DILocation(line: 383, column: 59, scope: !3613)
!3615 = !DILocation(line: 383, column: 47, scope: !3613)
!3616 = !DILocation(line: 383, column: 18, scope: !3613)
!3617 = !DILocation(line: 383, column: 27, scope: !3613)
!3618 = !DILocation(line: 385, column: 20, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3613, file: !83, line: 385, column: 13)
!3620 = !DILocation(line: 385, column: 13, scope: !3619)
!3621 = !DILocation(line: 385, column: 13, scope: !3613)
!3622 = !DILocation(line: 390, column: 27, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3624, file: !83, line: 387, column: 11)
!3624 = distinct !DILexicalBlock(scope: !3625, file: !83, line: 386, column: 11)
!3625 = distinct !DILexicalBlock(scope: !3619, file: !83, line: 385, column: 27)
!3626 = !DILocation(line: 390, column: 58, scope: !3623)
!3627 = !DILocation(line: 391, column: 27, scope: !3623)
!3628 = !DILocation(line: 389, column: 11, scope: !3623)
!3629 = !DILocation(line: 394, column: 9, scope: !3625)
!3630 = !DILocation(line: 391, column: 11, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3632, file: !83, line: 396, column: 11)
!3632 = distinct !DILexicalBlock(scope: !3633, file: !83, line: 395, column: 11)
!3633 = distinct !DILexicalBlock(scope: !3619, file: !83, line: 394, column: 16)
!3634 = !DILocation(line: 392, column: 85, scope: !3635)
!3635 = distinct !DILexicalBlock(scope: !3632, file: !83, line: 393, column: 11)
!3636 = !DILocation(line: 392, column: 11, scope: !3635)
!3637 = !DILocation(line: 393, column: 84, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3632, file: !83, line: 394, column: 11)
!3639 = !DILocation(line: 393, column: 11, scope: !3638)
!3640 = !DILocation(line: 394, column: 86, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3632, file: !83, line: 395, column: 11)
!3642 = !DILocation(line: 394, column: 11, scope: !3641)
!3643 = !DILocation(line: 398, column: 7, scope: !3613)
!3644 = !DILocation(line: 399, column: 5, scope: !3609)
!3645 = !DILocation(line: 398, column: 9, scope: !3646)
!3646 = distinct !DILexicalBlock(scope: !3576, file: !83, line: 398, column: 9)
!3647 = !DILocation(line: 398, column: 9, scope: !3576)
!3648 = !DILocation(line: 399, column: 18, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3650, file: !83, line: 399, column: 11)
!3650 = distinct !DILexicalBlock(scope: !3646, file: !83, line: 398, column: 28)
!3651 = !DILocation(line: 399, column: 11, scope: !3649)
!3652 = !DILocation(line: 399, column: 11, scope: !3650)
!3653 = !DILocation(line: 399, column: 22, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !83, line: 399, column: 13)
!3655 = distinct !DILexicalBlock(scope: !3649, file: !83, line: 399, column: 25)
!3656 = !DILocation(line: 399, column: 15, scope: !3654)
!3657 = !DILocation(line: 399, column: 13, scope: !3655)
!3658 = !DILocation(line: 400, column: 11, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3660, file: !83, line: 401, column: 11)
!3660 = distinct !DILexicalBlock(scope: !3661, file: !83, line: 400, column: 11)
!3661 = distinct !DILexicalBlock(scope: !3654, file: !83, line: 399, column: 29)
!3662 = !DILocation(line: 403, column: 9, scope: !3661)
!3663 = !DILocation(line: 404, column: 7, scope: !3655)
!3664 = !DILocation(line: 403, column: 7, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !83, line: 406, column: 7)
!3666 = distinct !DILexicalBlock(scope: !3650, file: !83, line: 405, column: 7)
!3667 = !DILocation(line: 405, column: 18, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3650, file: !83, line: 405, column: 11)
!3669 = !DILocation(line: 405, column: 11, scope: !3668)
!3670 = !DILocation(line: 405, column: 11, scope: !3650)
!3671 = !DILocation(line: 407, column: 26, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3673, file: !83, line: 407, column: 9)
!3673 = distinct !DILexicalBlock(scope: !3674, file: !83, line: 406, column: 9)
!3674 = distinct !DILexicalBlock(scope: !3668, file: !83, line: 405, column: 25)
!3675 = !DILocation(line: 407, column: 45, scope: !3672)
!3676 = !DILocation(line: 407, column: 64, scope: !3672)
!3677 = !DILocation(line: 406, column: 9, scope: !3672)
!3678 = !DILocation(line: 410, column: 7, scope: !3674)
!3679 = !DILocation(line: 409, column: 26, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3681, file: !83, line: 412, column: 9)
!3681 = distinct !DILexicalBlock(scope: !3682, file: !83, line: 411, column: 9)
!3682 = distinct !DILexicalBlock(scope: !3668, file: !83, line: 410, column: 14)
!3683 = !DILocation(line: 409, column: 45, scope: !3680)
!3684 = !DILocation(line: 409, column: 64, scope: !3680)
!3685 = !DILocation(line: 408, column: 9, scope: !3680)
!3686 = !DILocation(line: 413, column: 5, scope: !3650)
!3687 = !DILocation(line: 413, column: 7, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3689, file: !83, line: 415, column: 7)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !83, line: 414, column: 7)
!3690 = distinct !DILexicalBlock(scope: !3646, file: !83, line: 413, column: 12)
!3691 = !DILocation(line: 417, column: 3, scope: !3576)
!3692 = !DILocation(line: 418, column: 3, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3694, file: !83, line: 419, column: 3)
!3694 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 418, column: 3)
!3695 = !DILocation(line: 419, column: 24, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3694, file: !83, line: 420, column: 3)
!3697 = !DILocation(line: 419, column: 3, scope: !3696)
!3698 = !DILocation(line: 422, column: 14, scope: !3699)
!3699 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 422, column: 7)
!3700 = !DILocation(line: 422, column: 7, scope: !3699)
!3701 = !DILocation(line: 422, column: 7, scope: !2911)
!3702 = !DILocation(line: 422, column: 32, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !83, line: 424, column: 5)
!3704 = distinct !DILexicalBlock(scope: !3705, file: !83, line: 423, column: 5)
!3705 = distinct !DILexicalBlock(scope: !3699, file: !83, line: 422, column: 21)
!3706 = !DILocation(line: 422, column: 15, scope: !3703)
!3707 = !DILocalVariable(name: "tmp___7", scope: !2748, file: !83, line: 63, type: !19)
!3708 = !DILocation(line: 422, column: 9, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3705, file: !83, line: 422, column: 9)
!3710 = !DILocation(line: 422, column: 9, scope: !3705)
!3711 = !DILocation(line: 423, column: 18, scope: !3712)
!3712 = distinct !DILexicalBlock(scope: !3713, file: !83, line: 423, column: 11)
!3713 = distinct !DILexicalBlock(scope: !3709, file: !83, line: 422, column: 18)
!3714 = !DILocation(line: 423, column: 11, scope: !3712)
!3715 = !DILocation(line: 423, column: 11, scope: !3713)
!3716 = !DILocation(line: 423, column: 20, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3718, file: !83, line: 423, column: 13)
!3718 = distinct !DILexicalBlock(scope: !3712, file: !83, line: 423, column: 25)
!3719 = !DILocation(line: 423, column: 13, scope: !3717)
!3720 = !DILocation(line: 423, column: 13, scope: !3718)
!3721 = !DILocation(line: 423, column: 22, scope: !3722)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !83, line: 423, column: 15)
!3723 = distinct !DILexicalBlock(scope: !3717, file: !83, line: 423, column: 27)
!3724 = !DILocation(line: 423, column: 15, scope: !3722)
!3725 = !DILocation(line: 423, column: 15, scope: !3723)
!3726 = !DILocation(line: 424, column: 13, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3728, file: !83, line: 425, column: 13)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !83, line: 424, column: 13)
!3729 = distinct !DILexicalBlock(scope: !3722, file: !83, line: 423, column: 29)
!3730 = !DILocation(line: 427, column: 11, scope: !3729)
!3731 = !DILocation(line: 428, column: 9, scope: !3723)
!3732 = !DILocation(line: 429, column: 7, scope: !3718)
!3733 = !DILocation(line: 426, column: 20, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3713, file: !83, line: 426, column: 11)
!3735 = !DILocation(line: 426, column: 13, scope: !3734)
!3736 = !DILocation(line: 426, column: 11, scope: !3713)
!3737 = !DILocation(line: 426, column: 20, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !83, line: 426, column: 13)
!3739 = distinct !DILexicalBlock(scope: !3734, file: !83, line: 426, column: 27)
!3740 = !DILocation(line: 426, column: 13, scope: !3738)
!3741 = !DILocation(line: 426, column: 13, scope: !3739)
!3742 = !DILocation(line: 427, column: 11, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 428, column: 11)
!3744 = distinct !DILexicalBlock(scope: !3745, file: !83, line: 427, column: 11)
!3745 = distinct !DILexicalBlock(scope: !3738, file: !83, line: 426, column: 27)
!3746 = !DILocation(line: 429, column: 81, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 429, column: 11)
!3748 = !DILocation(line: 429, column: 73, scope: !3747)
!3749 = !DILocation(line: 429, column: 11, scope: !3747)
!3750 = !DILocation(line: 430, column: 82, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 431, column: 11)
!3752 = !DILocation(line: 430, column: 74, scope: !3751)
!3753 = !DILocation(line: 430, column: 11, scope: !3751)
!3754 = !DILocation(line: 431, column: 81, scope: !3755)
!3755 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 432, column: 11)
!3756 = !DILocation(line: 431, column: 73, scope: !3755)
!3757 = !DILocation(line: 431, column: 11, scope: !3755)
!3758 = !DILocation(line: 432, column: 80, scope: !3759)
!3759 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 433, column: 11)
!3760 = !DILocation(line: 432, column: 72, scope: !3759)
!3761 = !DILocation(line: 432, column: 11, scope: !3759)
!3762 = !DILocation(line: 433, column: 83, scope: !3763)
!3763 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 434, column: 11)
!3764 = !DILocation(line: 433, column: 75, scope: !3763)
!3765 = !DILocation(line: 433, column: 11, scope: !3763)
!3766 = !DILocation(line: 434, column: 87, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 435, column: 11)
!3768 = !DILocation(line: 434, column: 73, scope: !3767)
!3769 = !DILocation(line: 434, column: 11, scope: !3767)
!3770 = !DILocation(line: 435, column: 87, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 436, column: 11)
!3772 = !DILocation(line: 435, column: 73, scope: !3771)
!3773 = !DILocation(line: 435, column: 11, scope: !3771)
!3774 = !DILocation(line: 436, column: 88, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3744, file: !83, line: 437, column: 11)
!3776 = !DILocation(line: 436, column: 74, scope: !3775)
!3777 = !DILocation(line: 436, column: 11, scope: !3775)
!3778 = !DILocation(line: 439, column: 9, scope: !3745)
!3779 = !DILocation(line: 440, column: 7, scope: !3739)
!3780 = !DILocation(line: 441, column: 5, scope: !3713)
!3781 = !DILocation(line: 422, column: 7, scope: !3782)
!3782 = distinct !DILexicalBlock(scope: !3709, file: !83, line: 441, column: 12)
!3783 = !DILocation(line: 424, column: 3, scope: !3705)
!3784 = !DILocation(line: 438, column: 16, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3699, file: !83, line: 438, column: 7)
!3786 = !DILocation(line: 438, column: 9, scope: !3785)
!3787 = !DILocation(line: 438, column: 7, scope: !3699)
!3788 = !DILocation(line: 438, column: 16, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3790, file: !83, line: 438, column: 9)
!3790 = distinct !DILexicalBlock(scope: !3785, file: !83, line: 438, column: 23)
!3791 = !DILocation(line: 438, column: 9, scope: !3789)
!3792 = !DILocation(line: 438, column: 9, scope: !3790)
!3793 = !DILocation(line: 439, column: 7, scope: !3794)
!3794 = distinct !DILexicalBlock(scope: !3795, file: !83, line: 440, column: 7)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !83, line: 439, column: 7)
!3796 = distinct !DILexicalBlock(scope: !3789, file: !83, line: 438, column: 23)
!3797 = !DILocation(line: 442, column: 5, scope: !3796)
!3798 = !DILocation(line: 443, column: 3, scope: !3790)
!3799 = !DILocation(line: 442, column: 14, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3801, file: !83, line: 445, column: 3)
!3801 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 444, column: 3)
!3802 = !DILocalVariable(name: "tmp___10", scope: !2748, file: !83, line: 66, type: !19)
!3803 = !DILocation(line: 442, column: 7, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 442, column: 7)
!3805 = !DILocation(line: 442, column: 7, scope: !2911)
!3806 = !DILocation(line: 443, column: 15, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 444, column: 5)
!3808 = distinct !DILexicalBlock(scope: !3809, file: !83, line: 443, column: 5)
!3809 = distinct !DILexicalBlock(scope: !3804, file: !83, line: 442, column: 17)
!3810 = !DILocalVariable(name: "tmp___8", scope: !2748, file: !83, line: 64, type: !727)
!3811 = !DILocation(line: 443, column: 24, scope: !3812)
!3812 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 445, column: 5)
!3813 = !DILocation(line: 443, column: 15, scope: !3812)
!3814 = !DILocalVariable(name: "tmp___9", scope: !2748, file: !83, line: 65, type: !8)
!3815 = !DILocation(line: 443, column: 38, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 445, column: 5)
!3817 = !DILocation(line: 443, column: 5, scope: !3816)
!3818 = !DILocation(line: 444, column: 5, scope: !3819)
!3819 = distinct !DILexicalBlock(scope: !3808, file: !83, line: 446, column: 5)
!3820 = !DILocation(line: 447, column: 3, scope: !3809)
!3821 = !DILocation(line: 447, column: 21, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3823, file: !83, line: 449, column: 3)
!3823 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 448, column: 3)
!3824 = !DILocation(line: 447, column: 14, scope: !3822)
!3825 = !DILocalVariable(name: "tmp___13", scope: !2748, file: !83, line: 69, type: !19)
!3826 = !DILocation(line: 447, column: 7, scope: !3827)
!3827 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 447, column: 7)
!3828 = !DILocation(line: 447, column: 7, scope: !2911)
!3829 = !DILocation(line: 448, column: 16, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3831, file: !83, line: 449, column: 5)
!3831 = distinct !DILexicalBlock(scope: !3832, file: !83, line: 448, column: 5)
!3832 = distinct !DILexicalBlock(scope: !3827, file: !83, line: 447, column: 17)
!3833 = !DILocalVariable(name: "tmp___11", scope: !2748, file: !83, line: 67, type: !727)
!3834 = !DILocation(line: 448, column: 25, scope: !3835)
!3835 = distinct !DILexicalBlock(scope: !3831, file: !83, line: 450, column: 5)
!3836 = !DILocation(line: 448, column: 16, scope: !3835)
!3837 = !DILocalVariable(name: "tmp___12", scope: !2748, file: !83, line: 68, type: !8)
!3838 = !DILocation(line: 448, column: 38, scope: !3839)
!3839 = distinct !DILexicalBlock(scope: !3831, file: !83, line: 450, column: 5)
!3840 = !DILocation(line: 448, column: 5, scope: !3839)
!3841 = !DILocation(line: 449, column: 5, scope: !3842)
!3842 = distinct !DILexicalBlock(scope: !3831, file: !83, line: 451, column: 5)
!3843 = !DILocation(line: 457, column: 17, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !2911, file: !83, line: 457, column: 7)
!3845 = !DILocation(line: 457, column: 33, scope: !3844)
!3846 = !DILocation(line: 457, column: 7, scope: !2911)
!3847 = !DILocation(line: 458, column: 5, scope: !3848)
!3848 = distinct !DILexicalBlock(scope: !3844, file: !83, line: 457, column: 38)
!3849 = !DILocation(line: 460, column: 5, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3844, file: !83, line: 459, column: 10)
!3851 = !DILocation(line: 0, scope: !3844)
!3852 = !DILocation(line: 463, column: 1, scope: !2748)
!3853 = distinct !DISubprogram(name: "init_frame_struct", scope: !83, file: !83, line: 520, type: !3854, scopeLine: 521, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3854 = !DISubroutineType(types: !3855)
!3855 = !{null, !1131}
!3856 = !DILocalVariable(name: "FI", arg: 1, scope: !3853, file: !83, line: 520, type: !1131)
!3857 = !DILocation(line: 0, scope: !3853)
!3858 = !DILocation(line: 527, column: 9, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3860, file: !83, line: 527, column: 7)
!3860 = distinct !DILexicalBlock(scope: !3853, file: !83, line: 524, column: 3)
!3861 = !DILocation(line: 527, column: 7, scope: !3860)
!3862 = !DILocalVariable(name: "i", scope: !3853, file: !83, line: 522, type: !19)
!3863 = !DILocation(line: 530, column: 12, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !83, line: 527, column: 17)
!3865 = !DILocation(line: 532, column: 30, scope: !3864)
!3866 = !DILocation(line: 533, column: 35, scope: !3864)
!3867 = !DILocation(line: 534, column: 29, scope: !3864)
!3868 = !DILocation(line: 535, column: 37, scope: !3864)
!3869 = !DILocation(line: 536, column: 26, scope: !3864)
!3870 = !DILocation(line: 537, column: 29, scope: !3864)
!3871 = !DILocation(line: 538, column: 35, scope: !3864)
!3872 = !DILocation(line: 539, column: 23, scope: !3864)
!3873 = !DILocation(line: 540, column: 23, scope: !3864)
!3874 = !DILocation(line: 541, column: 24, scope: !3864)
!3875 = !DILocation(line: 542, column: 30, scope: !3864)
!3876 = !DILocation(line: 543, column: 20, scope: !3864)
!3877 = !DILocation(line: 544, column: 20, scope: !3864)
!3878 = !DILocation(line: 545, column: 20, scope: !3864)
!3879 = !DILocation(line: 546, column: 28, scope: !3864)
!3880 = !DILocation(line: 547, column: 26, scope: !3864)
!3881 = !DILocation(line: 548, column: 25, scope: !3864)
!3882 = !DILocation(line: 549, column: 26, scope: !3864)
!3883 = !DILocation(line: 550, column: 24, scope: !3864)
!3884 = !DILocation(line: 551, column: 30, scope: !3864)
!3885 = !DILocation(line: 552, column: 29, scope: !3864)
!3886 = !DILocation(line: 553, column: 32, scope: !3864)
!3887 = !DILocation(line: 554, column: 32, scope: !3864)
!3888 = !DILocation(line: 555, column: 23, scope: !3864)
!3889 = !DILocation(line: 556, column: 27, scope: !3864)
!3890 = !DILocation(line: 557, column: 26, scope: !3864)
!3891 = !DILocation(line: 558, column: 27, scope: !3864)
!3892 = !DILocation(line: 559, column: 27, scope: !3864)
!3893 = !DILocation(line: 560, column: 29, scope: !3864)
!3894 = !DILocation(line: 561, column: 27, scope: !3864)
!3895 = !DILocation(line: 563, column: 5, scope: !3896)
!3896 = distinct !DILexicalBlock(scope: !3897, file: !83, line: 565, column: 5)
!3897 = distinct !DILexicalBlock(scope: !3864, file: !83, line: 564, column: 5)
!3898 = !DILocation(line: 0, scope: !3864)
!3899 = !DILocation(line: 563, column: 15, scope: !3896)
!3900 = !DILocation(line: 563, column: 16, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3902, file: !83, line: 563, column: 11)
!3902 = distinct !DILexicalBlock(scope: !3896, file: !83, line: 563, column: 15)
!3903 = !DILocation(line: 563, column: 11, scope: !3902)
!3904 = !DILocation(line: 563, column: 9, scope: !3905)
!3905 = distinct !DILexicalBlock(scope: !3901, file: !83, line: 563, column: 23)
!3906 = !DILocation(line: 564, column: 7, scope: !3902)
!3907 = !DILocation(line: 564, column: 33, scope: !3902)
!3908 = !DILocation(line: 563, column: 9, scope: !3902)
!3909 = distinct !{!3909, !3895, !3910}
!3910 = !DILocation(line: 564, column: 5, scope: !3896)
!3911 = !DILocation(line: 566, column: 5, scope: !3896)
!3912 = !DILocation(line: 566, column: 32, scope: !3864)
!3913 = !DILocation(line: 568, column: 28, scope: !3864)
!3914 = !DILocation(line: 570, column: 29, scope: !3864)
!3915 = !DILocation(line: 571, column: 3, scope: !3864)
!3916 = !DILocation(line: 574, column: 9, scope: !3860)
!3917 = !DILocation(line: 575, column: 3, scope: !3860)
!3918 = distinct !DISubprogram(name: "get_char_from_file", scope: !83, file: !83, line: 865, type: !3919, scopeLine: 867, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3919 = !DISubroutineType(types: !3920)
!3920 = !{!19, !12, !1130, !885, !433, !8}
!3921 = !DILocalVariable(name: "fp", arg: 1, scope: !3918, file: !83, line: 865, type: !12)
!3922 = !DILocation(line: 0, scope: !3918)
!3923 = !DILocalVariable(name: "header_value", arg: 2, scope: !3918, file: !83, line: 865, type: !1130)
!3924 = !DILocalVariable(name: "file_info", arg: 3, scope: !3918, file: !83, line: 865, type: !885)
!3925 = !DILocalVariable(name: "flags", arg: 4, scope: !3918, file: !83, line: 866, type: !433)
!3926 = !DILocalVariable(name: "possible_mp3_tag", arg: 5, scope: !3918, file: !83, line: 866, type: !8)
!3927 = !DILocalVariable(name: "step_char", scope: !3918, file: !83, line: 868, type: !19)
!3928 = !DILocation(line: 868, column: 7, scope: !3918)
!3929 = !DILocation(line: 873, column: 13, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !83, line: 871, column: 3)
!3931 = distinct !DILexicalBlock(scope: !3918, file: !83, line: 870, column: 3)
!3932 = !DILocation(line: 875, column: 15, scope: !3933)
!3933 = distinct !DILexicalBlock(scope: !3930, file: !83, line: 874, column: 3)
!3934 = !DILocation(line: 875, column: 13, scope: !3933)
!3935 = !DILocation(line: 875, column: 7, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3931, file: !83, line: 875, column: 7)
!3937 = !DILocation(line: 875, column: 17, scope: !3936)
!3938 = !DILocation(line: 875, column: 7, scope: !3931)
!3939 = !DILocation(line: 879, column: 22, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !83, line: 875, column: 24)
!3941 = !DILocation(line: 879, column: 36, scope: !3940)
!3942 = !DILocation(line: 879, column: 59, scope: !3940)
!3943 = !DILocation(line: 879, column: 42, scope: !3940)
!3944 = !DILocation(line: 879, column: 19, scope: !3940)
!3945 = !DILocation(line: 881, column: 17, scope: !3940)
!3946 = !DILocation(line: 881, column: 27, scope: !3940)
!3947 = !DILocation(line: 882, column: 17, scope: !3940)
!3948 = !DILocation(line: 882, column: 29, scope: !3940)
!3949 = !DILocation(line: 886, column: 16, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3940, file: !83, line: 886, column: 9)
!3951 = !DILocation(line: 886, column: 9, scope: !3950)
!3952 = !DILocation(line: 886, column: 9, scope: !3940)
!3953 = !DILocation(line: 887, column: 7, scope: !3954)
!3954 = distinct !DILexicalBlock(scope: !3955, file: !83, line: 888, column: 7)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !83, line: 887, column: 7)
!3956 = distinct !DILexicalBlock(scope: !3950, file: !83, line: 886, column: 23)
!3957 = !DILocation(line: 890, column: 5, scope: !3956)
!3958 = !DILocation(line: 889, column: 5, scope: !3940)
!3959 = !DILocation(line: 891, column: 5, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3936, file: !83, line: 890, column: 10)
!3961 = !DILocation(line: 0, scope: !3936)
!3962 = !DILocation(line: 894, column: 1, scope: !3918)
!3963 = distinct !DISubprogram(name: "print_summary", scope: !83, file: !83, line: 481, type: !3964, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!3964 = !DISubroutineType(types: !3965)
!3965 = !{null, !84, !8}
!3966 = !DILocalVariable(name: "mp3_i", arg: 1, scope: !3963, file: !83, line: 481, type: !84)
!3967 = !DILocation(line: 481, column: 31, scope: !3963)
!3968 = !DILocalVariable(name: "filename", arg: 2, scope: !3963, file: !83, line: 481, type: !8)
!3969 = !DILocation(line: 0, scope: !3963)
!3970 = !DILocalVariable(name: "__cil_tmp3", scope: !3963, file: !83, line: 483, type: !8)
!3971 = !DILocation(line: 483, column: 9, scope: !3963)
!3972 = !DILocalVariable(name: "__cil_tmp4", scope: !3963, file: !83, line: 484, type: !8)
!3973 = !DILocation(line: 484, column: 9, scope: !3963)
!3974 = !DILocalVariable(name: "__cil_tmp5", scope: !3963, file: !83, line: 485, type: !8)
!3975 = !DILocation(line: 485, column: 9, scope: !3963)
!3976 = !DILocalVariable(name: "__cil_tmp6", scope: !3963, file: !83, line: 486, type: !8)
!3977 = !DILocation(line: 486, column: 9, scope: !3963)
!3978 = !DILocalVariable(name: "__cil_tmp7", scope: !3963, file: !83, line: 487, type: !8)
!3979 = !DILocation(line: 487, column: 9, scope: !3963)
!3980 = !DILocalVariable(name: "__cil_tmp8", scope: !3963, file: !83, line: 488, type: !8)
!3981 = !DILocation(line: 488, column: 9, scope: !3963)
!3982 = !DILocalVariable(name: "__cil_tmp9", scope: !3963, file: !83, line: 489, type: !8)
!3983 = !DILocation(line: 489, column: 9, scope: !3963)
!3984 = !DILocalVariable(name: "__cil_tmp10", scope: !3963, file: !83, line: 490, type: !8)
!3985 = !DILocation(line: 490, column: 9, scope: !3963)
!3986 = !DILocalVariable(name: "__cil_tmp11", scope: !3963, file: !83, line: 491, type: !8)
!3987 = !DILocation(line: 491, column: 9, scope: !3963)
!3988 = !DILocalVariable(name: "__cil_tmp12", scope: !3963, file: !83, line: 492, type: !8)
!3989 = !DILocation(line: 492, column: 9, scope: !3963)
!3990 = !DILocalVariable(name: "__cil_tmp13", scope: !3963, file: !83, line: 493, type: !8)
!3991 = !DILocation(line: 493, column: 9, scope: !3963)
!3992 = !DILocalVariable(name: "__cil_tmp14", scope: !3963, file: !83, line: 494, type: !8)
!3993 = !DILocation(line: 494, column: 9, scope: !3963)
!3994 = !DILocalVariable(name: "__cil_tmp15", scope: !3963, file: !83, line: 495, type: !8)
!3995 = !DILocation(line: 495, column: 9, scope: !3963)
!3996 = !DILocalVariable(name: "__cil_tmp16", scope: !3963, file: !83, line: 496, type: !8)
!3997 = !DILocation(line: 496, column: 9, scope: !3963)
!3998 = !DILocalVariable(name: "__cil_tmp17", scope: !3963, file: !83, line: 497, type: !8)
!3999 = !DILocation(line: 497, column: 9, scope: !3963)
!4000 = !DILocalVariable(name: "__cil_tmp18", scope: !3963, file: !83, line: 498, type: !8)
!4001 = !DILocation(line: 498, column: 9, scope: !3963)
!4002 = !DILocalVariable(name: "__cil_tmp19", scope: !3963, file: !83, line: 499, type: !8)
!4003 = !DILocation(line: 499, column: 9, scope: !3963)
!4004 = !DILocalVariable(name: "__cil_tmp20", scope: !3963, file: !83, line: 500, type: !8)
!4005 = !DILocation(line: 500, column: 9, scope: !3963)
!4006 = !DILocalVariable(name: "__cil_tmp21", scope: !3963, file: !83, line: 501, type: !8)
!4007 = !DILocation(line: 501, column: 9, scope: !3963)
!4008 = !DILocalVariable(name: "__cil_tmp22", scope: !3963, file: !83, line: 502, type: !8)
!4009 = !DILocation(line: 502, column: 9, scope: !3963)
!4010 = !DILocalVariable(name: "__cil_tmp23", scope: !3963, file: !83, line: 503, type: !8)
!4011 = !DILocation(line: 503, column: 9, scope: !3963)
!4012 = !DILocalVariable(name: "__cil_tmp24", scope: !3963, file: !83, line: 504, type: !8)
!4013 = !DILocation(line: 504, column: 9, scope: !3963)
!4014 = !DILocalVariable(name: "__cil_tmp25", scope: !3963, file: !83, line: 505, type: !8)
!4015 = !DILocation(line: 505, column: 9, scope: !3963)
!4016 = !DILocalVariable(name: "__cil_tmp26", scope: !3963, file: !83, line: 506, type: !8)
!4017 = !DILocation(line: 506, column: 9, scope: !3963)
!4018 = !DILocalVariable(name: "__cil_tmp27", scope: !3963, file: !83, line: 507, type: !8)
!4019 = !DILocation(line: 507, column: 9, scope: !3963)
!4020 = !DILocalVariable(name: "__cil_tmp28", scope: !3963, file: !83, line: 508, type: !8)
!4021 = !DILocation(line: 508, column: 9, scope: !3963)
!4022 = !DILocalVariable(name: "__cil_tmp29", scope: !3963, file: !83, line: 509, type: !8)
!4023 = !DILocation(line: 509, column: 9, scope: !3963)
!4024 = !DILocalVariable(name: "__cil_tmp30", scope: !3963, file: !83, line: 510, type: !8)
!4025 = !DILocation(line: 510, column: 9, scope: !3963)
!4026 = !DILocalVariable(name: "__cil_tmp31", scope: !3963, file: !83, line: 511, type: !8)
!4027 = !DILocation(line: 511, column: 9, scope: !3963)
!4028 = !DILocalVariable(name: "__cil_tmp32", scope: !3963, file: !83, line: 512, type: !8)
!4029 = !DILocation(line: 512, column: 9, scope: !3963)
!4030 = !DILocalVariable(name: "__cil_tmp33", scope: !3963, file: !83, line: 513, type: !8)
!4031 = !DILocation(line: 513, column: 9, scope: !3963)
!4032 = !DILocalVariable(name: "__cil_tmp34", scope: !3963, file: !83, line: 514, type: !8)
!4033 = !DILocation(line: 514, column: 9, scope: !3963)
!4034 = !DILocalVariable(name: "__cil_tmp35", scope: !3963, file: !83, line: 515, type: !8)
!4035 = !DILocation(line: 515, column: 9, scope: !3963)
!4036 = !DILocalVariable(name: "__cil_tmp36", scope: !3963, file: !83, line: 516, type: !8)
!4037 = !DILocation(line: 516, column: 9, scope: !3963)
!4038 = !DILocalVariable(name: "__cil_tmp37", scope: !3963, file: !83, line: 517, type: !8)
!4039 = !DILocation(line: 517, column: 9, scope: !3963)
!4040 = !DILocalVariable(name: "__cil_tmp38", scope: !3963, file: !83, line: 518, type: !8)
!4041 = !DILocation(line: 518, column: 9, scope: !3963)
!4042 = !DILocalVariable(name: "__cil_tmp39", scope: !3963, file: !83, line: 519, type: !8)
!4043 = !DILocation(line: 519, column: 9, scope: !3963)
!4044 = !DILocalVariable(name: "__cil_tmp40", scope: !3963, file: !83, line: 520, type: !8)
!4045 = !DILocation(line: 520, column: 9, scope: !3963)
!4046 = !DILocalVariable(name: "__cil_tmp41", scope: !3963, file: !83, line: 521, type: !8)
!4047 = !DILocation(line: 521, column: 9, scope: !3963)
!4048 = !DILocalVariable(name: "__cil_tmp42", scope: !3963, file: !83, line: 522, type: !8)
!4049 = !DILocation(line: 522, column: 9, scope: !3963)
!4050 = !DILocalVariable(name: "__cil_tmp43", scope: !3963, file: !83, line: 523, type: !8)
!4051 = !DILocation(line: 523, column: 9, scope: !3963)
!4052 = !DILocalVariable(name: "__cil_tmp44", scope: !3963, file: !83, line: 524, type: !8)
!4053 = !DILocation(line: 524, column: 9, scope: !3963)
!4054 = !DILocalVariable(name: "__cil_tmp45", scope: !3963, file: !83, line: 525, type: !8)
!4055 = !DILocation(line: 525, column: 9, scope: !3963)
!4056 = !DILocalVariable(name: "__cil_tmp46", scope: !3963, file: !83, line: 526, type: !8)
!4057 = !DILocation(line: 526, column: 9, scope: !3963)
!4058 = !DILocalVariable(name: "__cil_tmp47", scope: !3963, file: !83, line: 527, type: !8)
!4059 = !DILocation(line: 527, column: 9, scope: !3963)
!4060 = !DILocalVariable(name: "__cil_tmp48", scope: !3963, file: !83, line: 528, type: !8)
!4061 = !DILocation(line: 528, column: 9, scope: !3963)
!4062 = !DILocalVariable(name: "__cil_tmp49", scope: !3963, file: !83, line: 529, type: !8)
!4063 = !DILocation(line: 529, column: 9, scope: !3963)
!4064 = !DILocalVariable(name: "__cil_tmp50", scope: !3963, file: !83, line: 530, type: !8)
!4065 = !DILocation(line: 530, column: 9, scope: !3963)
!4066 = !DILocalVariable(name: "__cil_tmp51", scope: !3963, file: !83, line: 531, type: !8)
!4067 = !DILocation(line: 531, column: 9, scope: !3963)
!4068 = !DILocalVariable(name: "__cil_tmp52", scope: !3963, file: !83, line: 532, type: !8)
!4069 = !DILocation(line: 532, column: 9, scope: !3963)
!4070 = !DILocalVariable(name: "__cil_tmp53", scope: !3963, file: !83, line: 533, type: !8)
!4071 = !DILocation(line: 533, column: 9, scope: !3963)
!4072 = !DILocalVariable(name: "__cil_tmp54", scope: !3963, file: !83, line: 534, type: !8)
!4073 = !DILocation(line: 534, column: 9, scope: !3963)
!4074 = !DILocalVariable(name: "__cil_tmp55", scope: !3963, file: !83, line: 535, type: !8)
!4075 = !DILocation(line: 535, column: 9, scope: !3963)
!4076 = !DILocalVariable(name: "__cil_tmp56", scope: !3963, file: !83, line: 536, type: !8)
!4077 = !DILocation(line: 536, column: 9, scope: !3963)
!4078 = !DILocalVariable(name: "__cil_tmp57", scope: !3963, file: !83, line: 537, type: !8)
!4079 = !DILocation(line: 537, column: 9, scope: !3963)
!4080 = !DILocalVariable(name: "__cil_tmp58", scope: !3963, file: !83, line: 538, type: !8)
!4081 = !DILocation(line: 538, column: 9, scope: !3963)
!4082 = !DILocalVariable(name: "__cil_tmp59", scope: !3963, file: !83, line: 539, type: !8)
!4083 = !DILocation(line: 539, column: 9, scope: !3963)
!4084 = !DILocalVariable(name: "__cil_tmp60", scope: !3963, file: !83, line: 540, type: !8)
!4085 = !DILocation(line: 540, column: 9, scope: !3963)
!4086 = !DILocalVariable(name: "__cil_tmp61", scope: !3963, file: !83, line: 541, type: !8)
!4087 = !DILocation(line: 541, column: 9, scope: !3963)
!4088 = !DILocalVariable(name: "__cil_tmp62", scope: !3963, file: !83, line: 542, type: !8)
!4089 = !DILocation(line: 542, column: 9, scope: !3963)
!4090 = !DILocalVariable(name: "__cil_tmp63", scope: !3963, file: !83, line: 543, type: !8)
!4091 = !DILocation(line: 543, column: 9, scope: !3963)
!4092 = !DILocalVariable(name: "__cil_tmp64", scope: !3963, file: !83, line: 544, type: !8)
!4093 = !DILocation(line: 544, column: 9, scope: !3963)
!4094 = !DILocalVariable(name: "__cil_tmp65", scope: !3963, file: !83, line: 545, type: !8)
!4095 = !DILocation(line: 545, column: 9, scope: !3963)
!4096 = !DILocation(line: 486, column: 3, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 549, column: 3)
!4098 = distinct !DILexicalBlock(scope: !4099, file: !83, line: 548, column: 3)
!4099 = distinct !DILexicalBlock(scope: !3963, file: !83, line: 547, column: 3)
!4100 = !DILocation(line: 487, column: 3, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 488, column: 3)
!4102 = !DILocation(line: 488, column: 3, scope: !4103)
!4103 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 489, column: 3)
!4104 = !DILocation(line: 489, column: 77, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 490, column: 3)
!4106 = !DILocation(line: 489, column: 65, scope: !4105)
!4107 = !DILocation(line: 489, column: 3, scope: !4105)
!4108 = !DILocation(line: 490, column: 77, scope: !4109)
!4109 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 491, column: 3)
!4110 = !DILocation(line: 490, column: 65, scope: !4109)
!4111 = !DILocation(line: 490, column: 3, scope: !4109)
!4112 = !DILocation(line: 491, column: 78, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 492, column: 3)
!4114 = !DILocation(line: 491, column: 66, scope: !4113)
!4115 = !DILocation(line: 491, column: 3, scope: !4113)
!4116 = !DILocation(line: 492, column: 84, scope: !4117)
!4117 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 493, column: 3)
!4118 = !DILocation(line: 492, column: 72, scope: !4117)
!4119 = !DILocation(line: 492, column: 3, scope: !4117)
!4120 = !DILocation(line: 493, column: 74, scope: !4121)
!4121 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 494, column: 3)
!4122 = !DILocation(line: 493, column: 62, scope: !4121)
!4123 = !DILocation(line: 493, column: 3, scope: !4121)
!4124 = !DILocation(line: 494, column: 74, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 495, column: 3)
!4126 = !DILocation(line: 494, column: 62, scope: !4125)
!4127 = !DILocation(line: 494, column: 3, scope: !4125)
!4128 = !DILocation(line: 495, column: 74, scope: !4129)
!4129 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 496, column: 3)
!4130 = !DILocation(line: 495, column: 62, scope: !4129)
!4131 = !DILocation(line: 495, column: 3, scope: !4129)
!4132 = !DILocation(line: 496, column: 82, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 497, column: 3)
!4134 = !DILocation(line: 496, column: 70, scope: !4133)
!4135 = !DILocation(line: 496, column: 3, scope: !4133)
!4136 = !DILocation(line: 497, column: 80, scope: !4137)
!4137 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 498, column: 3)
!4138 = !DILocation(line: 497, column: 68, scope: !4137)
!4139 = !DILocation(line: 497, column: 3, scope: !4137)
!4140 = !DILocation(line: 498, column: 74, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 499, column: 3)
!4142 = !DILocation(line: 498, column: 3, scope: !4141)
!4143 = !DILocation(line: 499, column: 77, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 500, column: 3)
!4145 = !DILocation(line: 499, column: 3, scope: !4144)
!4146 = !DILocation(line: 500, column: 83, scope: !4147)
!4147 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 501, column: 3)
!4148 = !DILocation(line: 500, column: 3, scope: !4147)
!4149 = !DILocation(line: 501, column: 79, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 502, column: 3)
!4151 = !DILocation(line: 501, column: 67, scope: !4150)
!4152 = !DILocation(line: 501, column: 3, scope: !4150)
!4153 = !DILocation(line: 502, column: 80, scope: !4154)
!4154 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 503, column: 3)
!4155 = !DILocation(line: 502, column: 68, scope: !4154)
!4156 = !DILocation(line: 502, column: 3, scope: !4154)
!4157 = !DILocation(line: 503, column: 78, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 504, column: 3)
!4159 = !DILocation(line: 503, column: 66, scope: !4158)
!4160 = !DILocation(line: 503, column: 3, scope: !4158)
!4161 = !DILocation(line: 504, column: 84, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 505, column: 3)
!4163 = !DILocation(line: 504, column: 72, scope: !4162)
!4164 = !DILocation(line: 504, column: 3, scope: !4162)
!4165 = !DILocation(line: 505, column: 83, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 506, column: 3)
!4167 = !DILocation(line: 505, column: 71, scope: !4166)
!4168 = !DILocation(line: 505, column: 3, scope: !4166)
!4169 = !DILocation(line: 506, column: 86, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 507, column: 3)
!4171 = !DILocation(line: 506, column: 74, scope: !4170)
!4172 = !DILocation(line: 506, column: 3, scope: !4170)
!4173 = !DILocation(line: 507, column: 86, scope: !4174)
!4174 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 508, column: 3)
!4175 = !DILocation(line: 507, column: 74, scope: !4174)
!4176 = !DILocation(line: 507, column: 3, scope: !4174)
!4177 = !DILocation(line: 508, column: 77, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 509, column: 3)
!4179 = !DILocation(line: 508, column: 65, scope: !4178)
!4180 = !DILocation(line: 508, column: 3, scope: !4178)
!4181 = !DILocation(line: 509, column: 78, scope: !4182)
!4182 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 510, column: 3)
!4183 = !DILocation(line: 509, column: 3, scope: !4182)
!4184 = !DILocation(line: 510, column: 81, scope: !4185)
!4185 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 511, column: 3)
!4186 = !DILocation(line: 510, column: 69, scope: !4185)
!4187 = !DILocation(line: 510, column: 3, scope: !4185)
!4188 = !DILocation(line: 511, column: 80, scope: !4189)
!4189 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 512, column: 3)
!4190 = !DILocation(line: 511, column: 68, scope: !4189)
!4191 = !DILocation(line: 511, column: 3, scope: !4189)
!4192 = !DILocation(line: 512, column: 81, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 513, column: 3)
!4194 = !DILocation(line: 512, column: 69, scope: !4193)
!4195 = !DILocation(line: 512, column: 3, scope: !4193)
!4196 = !DILocation(line: 513, column: 81, scope: !4197)
!4197 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 514, column: 3)
!4198 = !DILocation(line: 513, column: 69, scope: !4197)
!4199 = !DILocation(line: 513, column: 3, scope: !4197)
!4200 = !DILocation(line: 514, column: 83, scope: !4201)
!4201 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 515, column: 3)
!4202 = !DILocation(line: 514, column: 71, scope: !4201)
!4203 = !DILocation(line: 514, column: 3, scope: !4201)
!4204 = !DILocation(line: 515, column: 81, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 516, column: 3)
!4206 = !DILocation(line: 515, column: 69, scope: !4205)
!4207 = !DILocation(line: 515, column: 3, scope: !4205)
!4208 = !DILocation(line: 516, column: 83, scope: !4209)
!4209 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 517, column: 3)
!4210 = !DILocation(line: 516, column: 71, scope: !4209)
!4211 = !DILocation(line: 516, column: 3, scope: !4209)
!4212 = !DILocation(line: 517, column: 76, scope: !4213)
!4213 = distinct !DILexicalBlock(scope: !4098, file: !83, line: 518, column: 3)
!4214 = !DILocation(line: 517, column: 70, scope: !4213)
!4215 = !DILocation(line: 517, column: 3, scope: !4213)
!4216 = !DILocation(line: 518, column: 3, scope: !4099)
!4217 = distinct !DISubprogram(name: "crc_check_frame", scope: !83, file: !83, line: 800, type: !4218, scopeLine: 801, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!4218 = !DISubroutineType(types: !4219)
!4219 = !{!19, !8, !1131}
!4220 = !DILocalVariable(name: "data_frame", arg: 1, scope: !4217, file: !83, line: 800, type: !8)
!4221 = !DILocation(line: 0, scope: !4217)
!4222 = !DILocalVariable(name: "mp3_i", arg: 2, scope: !4217, file: !83, line: 800, type: !1131)
!4223 = !DILocalVariable(name: "i", scope: !4217, file: !83, line: 802, type: !19)
!4224 = !DILocalVariable(name: "crc", scope: !4217, file: !83, line: 803, type: !77)
!4225 = !DILocation(line: 847, column: 25, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4217, file: !83, line: 807, column: 3)
!4227 = !DILocalVariable(name: "size_of_data", scope: !4217, file: !83, line: 804, type: !19)
!4228 = !DILocation(line: 852, column: 3, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !83, line: 854, column: 3)
!4230 = distinct !DILexicalBlock(scope: !4226, file: !83, line: 853, column: 3)
!4231 = !DILocation(line: 0, scope: !4226)
!4232 = !DILocation(line: 852, column: 13, scope: !4229)
!4233 = !DILocation(line: 852, column: 14, scope: !4234)
!4234 = distinct !DILexicalBlock(scope: !4235, file: !83, line: 852, column: 9)
!4235 = distinct !DILexicalBlock(scope: !4229, file: !83, line: 852, column: 13)
!4236 = !DILocation(line: 852, column: 9, scope: !4235)
!4237 = !DILocation(line: 852, column: 7, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4234, file: !83, line: 852, column: 31)
!4239 = !DILocalVariable(name: "tmp", scope: !4217, file: !83, line: 805, type: !8)
!4240 = !DILocation(line: 853, column: 16, scope: !4235)
!4241 = !DILocation(line: 853, column: 22, scope: !4235)
!4242 = !DILocation(line: 853, column: 32, scope: !4235)
!4243 = !DILocation(line: 853, column: 38, scope: !4235)
!4244 = !DILocation(line: 853, column: 64, scope: !4235)
!4245 = !DILocation(line: 853, column: 82, scope: !4235)
!4246 = !DILocation(line: 853, column: 76, scope: !4235)
!4247 = !DILocation(line: 853, column: 74, scope: !4235)
!4248 = !DILocation(line: 853, column: 88, scope: !4235)
!4249 = !DILocation(line: 853, column: 53, scope: !4235)
!4250 = !DILocation(line: 853, column: 47, scope: !4235)
!4251 = !DILocation(line: 853, column: 45, scope: !4235)
!4252 = !DILocation(line: 853, column: 11, scope: !4235)
!4253 = !DILocation(line: 852, column: 7, scope: !4235)
!4254 = distinct !{!4254, !4228, !4255}
!4255 = !DILocation(line: 853, column: 3, scope: !4229)
!4256 = !DILocation(line: 855, column: 3, scope: !4229)
!4257 = !DILocation(line: 856, column: 41, scope: !4226)
!4258 = !DILocation(line: 856, column: 51, scope: !4226)
!4259 = !DILocation(line: 856, column: 32, scope: !4226)
!4260 = !DILocation(line: 856, column: 10, scope: !4226)
!4261 = !DILocation(line: 856, column: 30, scope: !4226)
!4262 = !DILocation(line: 859, column: 20, scope: !4263)
!4263 = distinct !DILexicalBlock(scope: !4226, file: !83, line: 859, column: 7)
!4264 = !DILocation(line: 859, column: 7, scope: !4263)
!4265 = !DILocation(line: 859, column: 48, scope: !4263)
!4266 = !DILocation(line: 859, column: 35, scope: !4263)
!4267 = !DILocation(line: 859, column: 32, scope: !4263)
!4268 = !DILocation(line: 859, column: 7, scope: !4226)
!4269 = !DILocation(line: 860, column: 5, scope: !4270)
!4270 = distinct !DILexicalBlock(scope: !4263, file: !83, line: 859, column: 69)
!4271 = !DILocation(line: 862, column: 5, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4263, file: !83, line: 861, column: 10)
!4273 = !DILocation(line: 0, scope: !4263)
!4274 = !DILocation(line: 865, column: 1, scope: !4217)
