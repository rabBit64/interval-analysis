; ModuleID = '/tmp/tmp.ll'
source_filename = "c/mp3wrap-0.5.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.__dirstream = type opaque

@id3 = global <{ [442 x i8], [18 x i8] }> <{ [442 x i8] c"ID3\03\00\00\00\00\03BTRCK\00\00\00\03\00\00\0000TENC\00\00\00\11@\00\00Mp3Wrap  v.  0.0WXXX\00\00\00 \00\00\00\00http://mp3wrap.sourceforge.netTCOP\00\00\00\01\00\00\00TOPE\00\00\00\01\00\00\00TCOM\00\00\00\01\00\00\00COMM\00\00\00\A0\00\00\00\00e \00This file is wrapped with Mp3Wrap. Get mp3splt, the free tool to split original files at http://mp3splt.sourceforge.net. Please do not remove this comment.TCON\00\00\00\01\00\00\00TYER\00\00\00\01\00\00\00TALB\00\00\00\1F\00\00\00http://mp3splt.sourceforge.netTPE1\00\00\00\1A\00\00\00File wrapped with Mp3WrapTIT2\00\00\00&\00\00\00Use Mp3Splt to obtain original tracks", [18 x i8] zeroinitializer }>, align 16, !dbg !0
@.str = private unnamed_addr constant [69 x i8] c"Mp3Wrap Version 0.5 (2003/Jan/16). See README and COPYING for more!\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"Written and copyrights by Matteo Trotta - <matteo.trotta@lib.unimib.it>\0A\00", align 1
@.str.2 = private unnamed_addr constant [72 x i8] c"THIS SOFTWARE COMES WITH ABSOLUTELY NO WARRANTY! USE AT YOUR OWN RISK!\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"lav\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.4 = private unnamed_addr constant [78 x i8] c"Run without arguments to see HELP. Read man page for complete documentation.\0A\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"HELP INFORMATION - type \22man mp3wrap\22 to see complete documentation\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"USAGE\0A\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"\09mp3wrap [options] OUTPUTFILE MP3FILE1 MP3FILE2 [MP3FILE3]...\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"\0ADESCRIPTION\0A\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"\09Mp3Wrap joins two or more mp3 files in one large playable mp3\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"\09without losing filename and ID3 informations. You will obtain\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"\09a file named OUTPUTFILE_MP3WRAP.mp3. Do not remove the MP3WRAP\0A\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"\09string because it's useful to let split program to detect that\0A\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"\09file is wrapped with this utility.\0A\00", align 1
@.str.14 = private unnamed_addr constant [60 x i8] c"\09TO SPLIT FILE USE Mp3Splt: http://mp3splt.sourceforge.net\0A\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"\0AOPTIONS\0A\00", align 1
@.str.16 = private unnamed_addr constant [55 x i8] c"\09-a  Add the specified files to an existing wrap file\0A\00", align 1
@.str.17 = private unnamed_addr constant [65 x i8] c"\09-l  List files wrapped in OUTPUTFILE. (-lv for complete infos)\0A\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"\09-v  Verbose mode. Will display additional informations.\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"\0AEXAMPLES\0A\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"\09mp3wrap album.mp3 01.mp3 02.mp3 03.mp3 04.mp3\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"\09mp3wrap -a album_MP3WRAP.mp3 ACDC*.mp3\0A\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"%s/.mp3wrap\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c".mp3wrap\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"_MP3WRAP.mp3\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Reading configuration file...\0A\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"EXT=\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"MP3WRAP\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"mp3wrap\00", align 1
@.str.31 = private unnamed_addr constant [58 x i8] c"Warning: your extension does not contain MP3WRAP string!\0A\00", align 1
@.str.32 = private unnamed_addr constant [12 x i8] c"_MP3WRAP_%s\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"Using \22%s\22 as extension.\0A\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"mp3wrap: omitting %s directory\0A\00", align 1
@.str.35 = private unnamed_addr constant [32 x i8] c"Error: too many files to wrap!\0A\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.37 = private unnamed_addr constant [23 x i8] c"Error: file is empty!\0A\00", align 1
@.str.38 = private unnamed_addr constant [56 x i8] c"Warning: old index version. Updating to new version...\0A\00", align 1
@.str.39 = private unnamed_addr constant [116 x i8] c"Error: This version of mp3wrap is too old for this file.\0AGet the latest version at http://mp3wrap.sourceforge.net!\0A\00", align 1
@.str.40 = private unnamed_addr constant [59 x i8] c"Check for file integrity: calculating CRC, please wait... \00", align 1
@.str.41 = private unnamed_addr constant [66 x i8] c"\0AWARNING: Bad CRC. File might be damaged. Continue anyway? (y/n) \00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"OK\0A\00", align 1
@.str.43 = private unnamed_addr constant [44 x i8] c"Error: too many file to wrap in this file!\0A\00", align 1
@.str.44 = private unnamed_addr constant [5 x i8] c"WRAP\00", align 1
@.str.45 = private unnamed_addr constant [30 x i8] c"List of wrapped files in %s:\0A\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"  #    Size\09  Name\0A\00", align 1
@.str.47 = private unnamed_addr constant [24 x i8] c" --- --------\09--------\0A\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.49 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"%d) %lu\09\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.52 = private unnamed_addr constant [19 x i8] c"     %lu\09%d files\0A\00", align 1
@.str.53 = private unnamed_addr constant [42 x i8] c"Error: this is not a valid mp3wrap file!\0A\00", align 1
@.str.54 = private unnamed_addr constant [5 x i8] c".mp3\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"Warning: %s exists, overwrite ? (y/n) \00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"temp_MP3WRAP.mp3\00", align 1
@.str.57 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"0.5\00", align 1
@.str.59 = private unnamed_addr constant [38 x i8] c"Copying files from input file...  0%%\00", align 1
@stdout = external global %struct._IO_FILE*, align 8
@.str.60 = private unnamed_addr constant [2 x i8] c"\08\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"\08\08%ld%%\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"  %d %%\09-->\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c" Adding \00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c" Wrapping \00", align 1
@.str.66 = private unnamed_addr constant [7 x i8] c"%s ...\00", align 1
@.str.67 = private unnamed_addr constant [9 x i8] c" FAILED\0A\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c" OK\0A\00", align 1
@.str.69 = private unnamed_addr constant [36 x i8] c"\0A  Calculating CRC, please wait... \00", align 1
@.str.70 = private unnamed_addr constant [26 x i8] c"mv -f temp_MP3WRAP.mp3 %s\00", align 1
@.str.71 = private unnamed_addr constant [59 x i8] c"Error: could not rename temp_MP3WRAP.mp3! Do it manually.\0A\00", align 1
@.str.72 = private unnamed_addr constant [108 x i8] c"\0A%s has been created successfully!\0AUse mp3splt to dewrap file; download at http://mp3splt.sourceforge.net!\0A\00", align 1
@.str.73 = private unnamed_addr constant [27 x i8] c"Error: index build error!\0A\00", align 1
@.str.74 = private unnamed_addr constant [6 x i8] c"fseek\00", align 1
@crctab = internal constant [256 x i32] [i32 0, i32 1996959894, i32 -301047508, i32 -1727442502, i32 124634137, i32 1886057615, i32 -379345611, i32 -1637575261, i32 249268274, i32 2044508324, i32 -522852066, i32 -1747789432, i32 162941995, i32 2125561021, i32 -407360249, i32 -1866523247, i32 498536548, i32 1789927666, i32 -205950648, i32 -2067906082, i32 450548861, i32 1843258603, i32 -187386543, i32 -2083289657, i32 325883990, i32 1684777152, i32 -43845254, i32 -1973040660, i32 335633487, i32 1661365465, i32 -99664541, i32 -1928851979, i32 997073096, i32 1281953886, i32 -715111964, i32 -1570279054, i32 1006888145, i32 1258607687, i32 -770865667, i32 -1526024853, i32 901097722, i32 1119000684, i32 -608450090, i32 -1396901568, i32 853044451, i32 1172266101, i32 -589951537, i32 -1412350631, i32 651767980, i32 1373503546, i32 -925412992, i32 -1076862698, i32 565507253, i32 1454621731, i32 -809855591, i32 -1195530993, i32 671266974, i32 1594198024, i32 -972236366, i32 -1324619484, i32 795835527, i32 1483230225, i32 -1050600021, i32 -1234817731, i32 1994146192, i32 31158534, i32 -1731059524, i32 -271249366, i32 1907459465, i32 112637215, i32 -1614814043, i32 -390540237, i32 2013776290, i32 251722036, i32 -1777751922, i32 -519137256, i32 2137656763, i32 141376813, i32 -1855689577, i32 -429695999, i32 1802195444, i32 476864866, i32 -2056965928, i32 -228458418, i32 1812370925, i32 453092731, i32 -2113342271, i32 -183516073, i32 1706088902, i32 314042704, i32 -1950435094, i32 -54949764, i32 1658658271, i32 366619977, i32 -1932296973, i32 -69972891, i32 1303535960, i32 984961486, i32 -1547960204, i32 -725929758, i32 1256170817, i32 1037604311, i32 -1529756563, i32 -740887301, i32 1131014506, i32 879679996, i32 -1385723834, i32 -631195440, i32 1141124467, i32 855842277, i32 -1442165665, i32 -586318647, i32 1342533948, i32 654459306, i32 -1106571248, i32 -921952122, i32 1466479909, i32 544179635, i32 -1184443383, i32 -832445281, i32 1591671054, i32 702138776, i32 -1328506846, i32 -942167884, i32 1504918807, i32 783551873, i32 -1212326853, i32 -1061524307, i32 -306674912, i32 -1698712650, i32 62317068, i32 1957810842, i32 -355121351, i32 -1647151185, i32 81470997, i32 1943803523, i32 -480048366, i32 -1805370492, i32 225274430, i32 2053790376, i32 -468791541, i32 -1828061283, i32 167816743, i32 2097651377, i32 -267414716, i32 -2029476910, i32 503444072, i32 1762050814, i32 -144550051, i32 -2140837941, i32 426522225, i32 1852507879, i32 -19653770, i32 -1982649376, i32 282753626, i32 1742555852, i32 -105259153, i32 -1900089351, i32 397917763, i32 1622183637, i32 -690576408, i32 -1580100738, i32 953729732, i32 1340076626, i32 -776247311, i32 -1497606297, i32 1068828381, i32 1219638859, i32 -670225446, i32 -1358292148, i32 906185462, i32 1090812512, i32 -547295293, i32 -1469587627, i32 829329135, i32 1181335161, i32 -882789492, i32 -1134132454, i32 628085408, i32 1382605366, i32 -871598187, i32 -1156888829, i32 570562233, i32 1426400815, i32 -977650754, i32 -1296233688, i32 733239954, i32 1555261956, i32 -1026031705, i32 -1244606671, i32 752459403, i32 1541320221, i32 -1687895376, i32 -328994266, i32 1969922972, i32 40735498, i32 -1677130071, i32 -351390145, i32 1913087877, i32 83908371, i32 -1782625662, i32 -491226604, i32 2075208622, i32 213261112, i32 -1831694693, i32 -438977011, i32 2094854071, i32 198958881, i32 -2032938284, i32 -237706686, i32 1759359992, i32 534414190, i32 -2118248755, i32 -155638181, i32 1873836001, i32 414664567, i32 -2012718362, i32 -15766928, i32 1711684554, i32 285281116, i32 -1889165569, i32 -127750551, i32 1634467795, i32 376229701, i32 -1609899400, i32 -686959890, i32 1308918612, i32 956543938, i32 -1486412191, i32 -799009033, i32 1231636301, i32 1047427035, i32 -1362007478, i32 -640263460, i32 1088359270, i32 936918000, i32 -1447252397, i32 -558129467, i32 1202900863, i32 817233897, i32 -1111625188, i32 -893730166, i32 1404277552, i32 615818150, i32 -1160759803, i32 -841546093, i32 1423857449, i32 601450431, i32 -1285129682, i32 -1000256840, i32 1567103746, i32 711928724, i32 -1274298825, i32 -1022587231, i32 1510334235, i32 755167117], align 16, !dbg !80

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !99 {
entry:
  %splitpoints = alloca [256 x i64], align 16
  %filename = alloca [512 x i8], align 16
  %ext = alloca [512 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %argc, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i8** %argv, metadata !105, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata [256 x i64]* %splitpoints, metadata !106, metadata !DIExpression()), !dbg !108
  call void @llvm.dbg.declare(metadata [512 x i8]* %filename, metadata !109, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata [512 x i8]* %ext, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata !4, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata !4, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata !4, metadata !120, metadata !DIExpression()), !dbg !121
  call void @llvm.dbg.declare(metadata !4, metadata !122, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata !4, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata !4, metadata !126, metadata !DIExpression()), !dbg !127
  call void @llvm.dbg.declare(metadata !4, metadata !128, metadata !DIExpression()), !dbg !129
  call void @llvm.dbg.declare(metadata !4, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata !4, metadata !132, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.declare(metadata !4, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata !4, metadata !136, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata !4, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata !4, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata !4, metadata !142, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata !4, metadata !144, metadata !DIExpression()), !dbg !145
  call void @llvm.dbg.declare(metadata !4, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata !4, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata !4, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata !4, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata !4, metadata !154, metadata !DIExpression()), !dbg !155
  call void @llvm.dbg.declare(metadata !4, metadata !156, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.declare(metadata !4, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata !4, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata !4, metadata !162, metadata !DIExpression()), !dbg !163
  call void @llvm.dbg.declare(metadata !4, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata !4, metadata !166, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.declare(metadata !4, metadata !168, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata !4, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata !4, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata !4, metadata !174, metadata !DIExpression()), !dbg !175
  call void @llvm.dbg.declare(metadata !4, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata !4, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata !4, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata !4, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata !4, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata !4, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata !4, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata !4, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata !4, metadata !192, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.declare(metadata !4, metadata !194, metadata !DIExpression()), !dbg !195
  call void @llvm.dbg.declare(metadata !4, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata !4, metadata !198, metadata !DIExpression()), !dbg !199
  call void @llvm.dbg.declare(metadata !4, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata !4, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata !4, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata !4, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata !4, metadata !208, metadata !DIExpression()), !dbg !209
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
  call void @llvm.dbg.declare(metadata !4, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.declare(metadata !4, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata !4, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata !4, metadata !242, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.declare(metadata !4, metadata !244, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.declare(metadata !4, metadata !246, metadata !DIExpression()), !dbg !247
  call void @llvm.dbg.declare(metadata !4, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata !4, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata !4, metadata !252, metadata !DIExpression()), !dbg !253
  call void @llvm.dbg.declare(metadata !4, metadata !254, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.declare(metadata !4, metadata !256, metadata !DIExpression()), !dbg !257
  call void @llvm.dbg.declare(metadata !4, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata !4, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata !4, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata !4, metadata !264, metadata !DIExpression()), !dbg !265
  call void @llvm.dbg.declare(metadata !4, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata !4, metadata !268, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.declare(metadata !4, metadata !270, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata !4, metadata !272, metadata !DIExpression()), !dbg !273
  call void @llvm.dbg.declare(metadata !4, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata !4, metadata !276, metadata !DIExpression()), !dbg !277
  call void @llvm.dbg.declare(metadata !4, metadata !278, metadata !DIExpression()), !dbg !279
  call void @llvm.dbg.declare(metadata !4, metadata !280, metadata !DIExpression()), !dbg !281
  call void @llvm.dbg.declare(metadata !4, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata !4, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.declare(metadata !4, metadata !286, metadata !DIExpression()), !dbg !287
  call void @llvm.dbg.declare(metadata !4, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata !4, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.declare(metadata !4, metadata !292, metadata !DIExpression()), !dbg !293
  call void @llvm.dbg.declare(metadata !4, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata !4, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.value(metadata i64 0, metadata !298, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i64 0, metadata !299, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !301, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !302, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !303, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !304, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 0, metadata !305, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 0, metadata !306, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 0, metadata !307, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 0, metadata !308, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 0, metadata !309, metadata !DIExpression()), !dbg !104
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i32 0, i32 0)), !dbg !310
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i32 0, i32 0)), !dbg !314
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.2, i32 0, i32 0)), !dbg !316
  br label %while.body, !dbg !318

while.body:                                       ; preds = %switch_break, %entry
  %optoffset.0 = phi i16 [ 0, %entry ], [ %optoffset.4, %switch_break ], !dbg !321
  %addoption.0 = phi i16 [ 0, %entry ], [ %addoption.1, %switch_break ], !dbg !321
  %listoption.0 = phi i16 [ 0, %entry ], [ %listoption.1, %switch_break ], !dbg !321
  %verboption.0 = phi i16 [ 0, %entry ], [ %verboption.1, %switch_break ], !dbg !322
  call void @llvm.dbg.value(metadata i16 %verboption.0, metadata !308, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 %listoption.0, metadata !307, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 %addoption.0, metadata !306, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 %optoffset.0, metadata !305, metadata !DIExpression()), !dbg !104
  br label %while_continue___12, !dbg !323

while_continue___12:                              ; preds = %while.body
  br label %while_continue, !dbg !323

while_continue:                                   ; preds = %while_continue___12
  %call3 = call i32 @getopt(i32 %argc, i8** %argv, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)) #6, !dbg !324
  call void @llvm.dbg.value(metadata i32 %call3, metadata !328, metadata !DIExpression()), !dbg !104
  %cmp = icmp ne i32 %call3, -1, !dbg !329
  br i1 %cmp, label %if.end, label %if.then, !dbg !331

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !332

if.end:                                           ; preds = %while_continue
  %cmp4 = icmp eq i32 %call3, 108, !dbg !334
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !337

if.then5:                                         ; preds = %if.end
  br label %case_108, !dbg !338

if.end6:                                          ; preds = %if.end
  %cmp7 = icmp eq i32 %call3, 97, !dbg !340
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !342

if.then8:                                         ; preds = %if.end6
  br label %case_97, !dbg !343

if.end9:                                          ; preds = %if.end6
  %cmp10 = icmp eq i32 %call3, 118, !dbg !345
  br i1 %cmp10, label %if.then11, label %if.end12, !dbg !347

if.then11:                                        ; preds = %if.end9
  br label %case_118, !dbg !348

if.end12:                                         ; preds = %if.end9
  br label %switch_default, !dbg !350

case_108:                                         ; preds = %if.then5
  %conv = sext i16 %optoffset.0 to i32, !dbg !351
  %cmp13 = icmp eq i32 %conv, 0, !dbg !353
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !337

if.then15:                                        ; preds = %case_108
  call void @llvm.dbg.value(metadata i16 1, metadata !305, metadata !DIExpression()), !dbg !104
  br label %if.end16, !dbg !354

if.end16:                                         ; preds = %if.then15, %case_108
  %optoffset.1 = phi i16 [ 1, %if.then15 ], [ %optoffset.0, %case_108 ], !dbg !321
  call void @llvm.dbg.value(metadata i16 %optoffset.1, metadata !305, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 1, metadata !307, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 0, metadata !306, metadata !DIExpression()), !dbg !104
  br label %switch_break, !dbg !356

case_97:                                          ; preds = %if.then8
  %conv17 = sext i16 %optoffset.0 to i32, !dbg !357
  %cmp18 = icmp eq i32 %conv17, 0, !dbg !359
  br i1 %cmp18, label %if.then20, label %if.end21, !dbg !342

if.then20:                                        ; preds = %case_97
  call void @llvm.dbg.value(metadata i16 1, metadata !305, metadata !DIExpression()), !dbg !104
  br label %if.end21, !dbg !360

if.end21:                                         ; preds = %if.then20, %case_97
  %optoffset.2 = phi i16 [ 1, %if.then20 ], [ %optoffset.0, %case_97 ], !dbg !321
  call void @llvm.dbg.value(metadata i16 %optoffset.2, metadata !305, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 1, metadata !306, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 0, metadata !307, metadata !DIExpression()), !dbg !104
  br label %switch_break, !dbg !362

case_118:                                         ; preds = %if.then11
  %conv22 = sext i16 %optoffset.0 to i32, !dbg !363
  %cmp23 = icmp eq i32 %conv22, 0, !dbg !365
  br i1 %cmp23, label %if.then25, label %if.end26, !dbg !347

if.then25:                                        ; preds = %case_118
  call void @llvm.dbg.value(metadata i16 1, metadata !305, metadata !DIExpression()), !dbg !104
  br label %if.end26, !dbg !366

if.end26:                                         ; preds = %if.then25, %case_118
  %optoffset.3 = phi i16 [ 1, %if.then25 ], [ %optoffset.0, %case_118 ], !dbg !321
  call void @llvm.dbg.value(metadata i16 %optoffset.3, metadata !305, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 1, metadata !308, metadata !DIExpression()), !dbg !104
  br label %switch_break, !dbg !368

switch_default:                                   ; preds = %if.end12
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !369
  %call27 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i32 0, i32 0)), !dbg !372
  call void @exit(i32 -1) #7, !dbg !373
  unreachable, !dbg !373

switch_break:                                     ; preds = %if.end26, %if.end21, %if.end16
  %optoffset.4 = phi i16 [ %optoffset.1, %if.end16 ], [ %optoffset.2, %if.end21 ], [ %optoffset.3, %if.end26 ], !dbg !375
  %addoption.1 = phi i16 [ 0, %if.end16 ], [ 1, %if.end21 ], [ %addoption.0, %if.end26 ], !dbg !321
  %listoption.1 = phi i16 [ 1, %if.end16 ], [ 0, %if.end21 ], [ %listoption.0, %if.end26 ], !dbg !321
  %verboption.1 = phi i16 [ %verboption.0, %if.end16 ], [ %verboption.0, %if.end21 ], [ 1, %if.end26 ], !dbg !321
  call void @llvm.dbg.value(metadata i16 %verboption.1, metadata !308, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 %listoption.1, metadata !307, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 %addoption.1, metadata !306, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i16 %optoffset.4, metadata !305, metadata !DIExpression()), !dbg !104
  br label %while.body, !dbg !318, !llvm.loop !376

while_break___12:                                 ; No predecessors!
  br label %while_break, !dbg !378

while_break:                                      ; preds = %while_break___12, %if.then
  %tobool = icmp ne i16 %listoption.0, 0, !dbg !379
  br i1 %tobool, label %if.else32, label %if.then28, !dbg !381

if.then28:                                        ; preds = %while_break
  %cmp29 = icmp slt i32 %argc, 4, !dbg !382
  br i1 %cmp29, label %if.then31, label %if.else, !dbg !385

if.then31:                                        ; preds = %if.then28
  br label %_L, !dbg !386

if.else:                                          ; preds = %if.then28
  br label %_L___0, !dbg !388

if.else32:                                        ; preds = %while_break
  br label %_L___0, !dbg !390

_L___0:                                           ; preds = %if.else32, %if.else
  %tobool33 = icmp ne i16 %listoption.0, 0, !dbg !391
  br i1 %tobool33, label %if.then34, label %if.end56, !dbg !393

if.then34:                                        ; preds = %_L___0
  %cmp35 = icmp slt i32 %argc, 3, !dbg !394
  br i1 %cmp35, label %if.then37, label %if.end55, !dbg !397

if.then37:                                        ; preds = %if.then34
  br label %_L, !dbg !398

_L:                                               ; preds = %if.then37, %if.then31
  %call38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i32 0, i32 0)), !dbg !399
  %call39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0)), !dbg !403
  %call40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i32 0, i32 0)), !dbg !405
  %call41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0)), !dbg !407
  %call42 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i32 0, i32 0)), !dbg !409
  %call43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.10, i32 0, i32 0)), !dbg !411
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i32 0, i32 0)), !dbg !413
  %call45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i32 0, i32 0)), !dbg !415
  %call46 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i32 0, i32 0)), !dbg !417
  %call47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.14, i32 0, i32 0)), !dbg !419
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0)), !dbg !421
  %call49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.16, i32 0, i32 0)), !dbg !423
  %call50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.17, i32 0, i32 0)), !dbg !425
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i32 0, i32 0)), !dbg !427
  %call52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0)), !dbg !429
  %call53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i32 0, i32 0)), !dbg !431
  %call54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i32 0, i32 0)), !dbg !433
  call void @exit(i32 -1) #7, !dbg !435
  unreachable, !dbg !435

if.end55:                                         ; preds = %if.then34
  br label %if.end56, !dbg !437

if.end56:                                         ; preds = %if.end55, %_L___0
  br label %if.end57

if.end57:                                         ; preds = %if.end56
  %arraydecay = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !438
  %call58 = call i8* @memset(i8* %arraydecay, i32 0, i32 512) #6, !dbg !441
  %call59 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.22, i32 0, i32 0)) #6, !dbg !442
  call void @llvm.dbg.value(metadata i8* %call59, metadata !444, metadata !DIExpression()), !dbg !104
  %1 = ptrtoint i8* %call59 to i64, !dbg !445
  %cmp60 = icmp ne i64 %1, 0, !dbg !447
  br i1 %cmp60, label %if.then62, label %if.else65, !dbg !448

if.then62:                                        ; preds = %if.end57
  %arraydecay63 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !449
  %call64 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.23, i32 0, i32 0), i8* %call59) #6, !dbg !453
  br label %if.end69, !dbg !454

if.else65:                                        ; preds = %if.end57
  %call66 = call i32 @strlen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !455
  call void @llvm.dbg.value(metadata i32 %call66, metadata !459, metadata !DIExpression()), !dbg !104
  %arraydecay67 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !460
  %call68 = call i8* @strncpy(i8* %arraydecay67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i32 %call66) #6, !dbg !462
  br label %if.end69

if.end69:                                         ; preds = %if.else65, %if.then62
  %arraydecay70 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !463
  %call71 = call i8* @strncpy(i8* %arraydecay70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i32 0, i32 0), i32 511) #6, !dbg !466
  %call72 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !467
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call72, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool73 = icmp ne %struct._IO_FILE* %call72, null, !dbg !470
  br i1 %tobool73, label %if.then74, label %if.else75, !dbg !472

if.then74:                                        ; preds = %if.end69
  br label %_L___1, !dbg !473

if.else75:                                        ; preds = %if.end69
  %arraydecay76 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !475
  %call77 = call %struct._IO_FILE* @fopen(i8* %arraydecay76, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !479
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call77, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool78 = icmp ne %struct._IO_FILE* %call77, null, !dbg !480
  br i1 %tobool78, label %if.then79, label %if.end158, !dbg !482

if.then79:                                        ; preds = %if.else75
  br label %_L___1, !dbg !483

_L___1:                                           ; preds = %if.then79, %if.then74
  %file_input.0 = phi %struct._IO_FILE* [ %call72, %if.then74 ], [ %call77, %if.then79 ], !dbg !321
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file_input.0, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool80 = icmp ne i16 %verboption.0, 0, !dbg !484
  br i1 %tobool80, label %if.then81, label %if.end83, !dbg !487

if.then81:                                        ; preds = %_L___1
  %call82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i32 0, i32 0)), !dbg !488
  br label %if.end83, !dbg !492

if.end83:                                         ; preds = %if.then81, %_L___1
  br label %while.body84, !dbg !493

while.body84:                                     ; preds = %if.end156, %if.end83
  br label %while_continue___13, !dbg !496

while_continue___13:                              ; preds = %while.body84
  br label %while_continue___0, !dbg !496

while_continue___0:                               ; preds = %while_continue___13
  %arraydecay85 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !497
  %call86 = call i8* @fgets(i8* %arraydecay85, i32 511, %struct._IO_FILE* %file_input.0), !dbg !501
  call void @llvm.dbg.value(metadata i8* %call86, metadata !502, metadata !DIExpression()), !dbg !104
  %2 = ptrtoint i8* %call86 to i64, !dbg !503
  %cmp87 = icmp ne i64 %2, 0, !dbg !505
  br i1 %cmp87, label %if.end90, label %if.then89, !dbg !506

if.then89:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !507

if.end90:                                         ; preds = %while_continue___0
  %arraydecay91 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !509
  %call92 = call i8* @strstr(i8* %arraydecay91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i32 0, i32 0)) #8, !dbg !512
  call void @llvm.dbg.value(metadata i8* %call92, metadata !444, metadata !DIExpression()), !dbg !104
  %3 = ptrtoint i8* %call92 to i64, !dbg !513
  %cmp93 = icmp ne i64 %3, 0, !dbg !515
  br i1 %cmp93, label %if.then95, label %if.end156, !dbg !516

if.then95:                                        ; preds = %if.end90
  %arraydecay96 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !517
  %call97 = call i32 @strlen(i8* %arraydecay96) #8, !dbg !521
  call void @llvm.dbg.value(metadata i32 %call97, metadata !522, metadata !DIExpression()), !dbg !104
  %cmp98 = icmp ugt i32 %call97, 1, !dbg !523
  br i1 %cmp98, label %if.then100, label %if.end155, !dbg !525

if.then100:                                       ; preds = %if.then95
  %arraydecay101 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !526
  %call102 = call i32 @strlen(i8* %arraydecay101) #8, !dbg !530
  call void @llvm.dbg.value(metadata i32 %call102, metadata !531, metadata !DIExpression()), !dbg !104
  %sub = sub i32 %call102, 1, !dbg !532
  %idxprom = zext i32 %sub to i64, !dbg !534
  %arrayidx = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 %idxprom, !dbg !534
  %4 = load i8, i8* %arrayidx, align 1, !dbg !534
  %conv103 = zext i8 %4 to i32, !dbg !535
  %cmp104 = icmp eq i32 %conv103, 10, !dbg !536
  br i1 %cmp104, label %if.then106, label %if.end112, !dbg !537

if.then106:                                       ; preds = %if.then100
  %arraydecay107 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !538
  %call108 = call i32 @strlen(i8* %arraydecay107) #8, !dbg !542
  call void @llvm.dbg.value(metadata i32 %call108, metadata !543, metadata !DIExpression()), !dbg !104
  %sub109 = sub i32 %call108, 1, !dbg !544
  %idxprom110 = zext i32 %sub109 to i64, !dbg !545
  %arrayidx111 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 %idxprom110, !dbg !545
  store i8 0, i8* %arrayidx111, align 1, !dbg !546
  br label %if.end112, !dbg !547

if.end112:                                        ; preds = %if.then106, %if.then100
  %arraydecay113 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !548
  %call114 = call i32 @strlen(i8* %arraydecay113) #8, !dbg !551
  call void @llvm.dbg.value(metadata i32 %call114, metadata !552, metadata !DIExpression()), !dbg !104
  %sub115 = sub i32 %call114, 1, !dbg !553
  %idxprom116 = zext i32 %sub115 to i64, !dbg !555
  %arrayidx117 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 %idxprom116, !dbg !555
  %5 = load i8, i8* %arrayidx117, align 1, !dbg !555
  %conv118 = zext i8 %5 to i32, !dbg !556
  %cmp119 = icmp eq i32 %conv118, 13, !dbg !557
  br i1 %cmp119, label %if.then121, label %if.end127, !dbg !558

if.then121:                                       ; preds = %if.end112
  %arraydecay122 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !559
  %call123 = call i32 @strlen(i8* %arraydecay122) #8, !dbg !563
  call void @llvm.dbg.value(metadata i32 %call123, metadata !564, metadata !DIExpression()), !dbg !104
  %sub124 = sub i32 %call123, 1, !dbg !565
  %idxprom125 = zext i32 %sub124 to i64, !dbg !566
  %arrayidx126 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 %idxprom125, !dbg !566
  store i8 0, i8* %arrayidx126, align 1, !dbg !567
  br label %if.end127, !dbg !568

if.end127:                                        ; preds = %if.then121, %if.end112
  %add.ptr = getelementptr inbounds i8, i8* %call92, i64 4, !dbg !569
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !444, metadata !DIExpression()), !dbg !104
  %call128 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0)) #8, !dbg !571
  call void @llvm.dbg.value(metadata i8* %call128, metadata !573, metadata !DIExpression()), !dbg !104
  %6 = ptrtoint i8* %call128 to i64, !dbg !574
  %cmp129 = icmp eq i64 %6, 0, !dbg !576
  br i1 %cmp129, label %if.then131, label %if.else146, !dbg !577

if.then131:                                       ; preds = %if.end127
  %call132 = call i8* @strstr(i8* %add.ptr, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0)) #8, !dbg !578
  call void @llvm.dbg.value(metadata i8* %call132, metadata !582, metadata !DIExpression()), !dbg !104
  %7 = ptrtoint i8* %call132 to i64, !dbg !583
  %cmp133 = icmp eq i64 %7, 0, !dbg !585
  br i1 %cmp133, label %if.then135, label %if.else142, !dbg !586

if.then135:                                       ; preds = %if.then131
  %tobool136 = icmp ne i16 %verboption.0, 0, !dbg !587
  br i1 %tobool136, label %if.then137, label %if.end139, !dbg !590

if.then137:                                       ; preds = %if.then135
  %call138 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.31, i32 0, i32 0)), !dbg !591
  br label %if.end139, !dbg !595

if.end139:                                        ; preds = %if.then137, %if.then135
  %arraydecay140 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !596
  %call141 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay140, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i32 0, i32 0), i8* %add.ptr) #6, !dbg !599
  br label %if.end145, !dbg !600

if.else142:                                       ; preds = %if.then131
  %arraydecay143 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !601
  %call144 = call i8* @strncpy(i8* %arraydecay143, i8* %add.ptr, i32 511) #6, !dbg !605
  br label %if.end145

if.end145:                                        ; preds = %if.else142, %if.end139
  br label %if.end149, !dbg !606

if.else146:                                       ; preds = %if.end127
  %arraydecay147 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !607
  %call148 = call i8* @strncpy(i8* %arraydecay147, i8* %add.ptr, i32 511) #6, !dbg !611
  br label %if.end149

if.end149:                                        ; preds = %if.else146, %if.end145
  %tobool150 = icmp ne i16 %verboption.0, 0, !dbg !612
  br i1 %tobool150, label %if.then151, label %if.end154, !dbg !614

if.then151:                                       ; preds = %if.end149
  %arraydecay152 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !615
  %call153 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i32 0, i32 0), i8* %arraydecay152), !dbg !619
  br label %if.end154, !dbg !620

if.end154:                                        ; preds = %if.then151, %if.end149
  br label %while_break___0, !dbg !621

if.end155:                                        ; preds = %if.then95
  br label %if.end156, !dbg !622

if.end156:                                        ; preds = %if.end155, %if.end90
  br label %while.body84, !dbg !493, !llvm.loop !623

while_break___13:                                 ; No predecessors!
  br label %while_break___0, !dbg !625

while_break___0:                                  ; preds = %while_break___13, %if.end154, %if.then89
  %call157 = call i32 @fclose(%struct._IO_FILE* %file_input.0), !dbg !626
  br label %if.end158, !dbg !629

if.end158:                                        ; preds = %while_break___0, %if.else75
  br label %if.end159

if.end159:                                        ; preds = %if.end158
  %sub160 = sub nsw i32 %argc, 2, !dbg !630
  %conv161 = sext i16 %optoffset.0 to i32, !dbg !631
  %sub162 = sub nsw i32 %sub160, %conv161, !dbg !632
  call void @llvm.dbg.value(metadata i32 %sub162, metadata !633, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body163, !dbg !634

while.body163:                                    ; preds = %if.end188, %if.end159
  %files.0 = phi i32 [ %sub162, %if.end159 ], [ %files.1, %if.end188 ], !dbg !321
  %i.0 = phi i32 [ 0, %if.end159 ], [ %inc, %if.end188 ], !dbg !321
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !300, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %files.0, metadata !633, metadata !DIExpression()), !dbg !104
  br label %while_continue___14, !dbg !637

while_continue___14:                              ; preds = %while.body163
  br label %while_continue___1, !dbg !637

while_continue___1:                               ; preds = %while_continue___14
  %cmp164 = icmp slt i32 %i.0, %files.0, !dbg !638
  br i1 %cmp164, label %if.end167, label %if.then166, !dbg !641

if.then166:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !642

if.end167:                                        ; preds = %while_continue___1
  %add = add nsw i32 %i.0, 2, !dbg !644
  %conv168 = sext i16 %optoffset.0 to i32, !dbg !647
  %add169 = add nsw i32 %add, %conv168, !dbg !648
  %idx.ext = sext i32 %add169 to i64, !dbg !649
  %add.ptr170 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !649
  %8 = load i8*, i8** %add.ptr170, align 8, !dbg !650
  %call171 = call %struct.__dirstream* @opendir(i8* %8), !dbg !651
  call void @llvm.dbg.value(metadata %struct.__dirstream* %call171, metadata !652, metadata !DIExpression()), !dbg !104
  %tobool172 = icmp ne %struct.__dirstream* %call171, null, !dbg !657
  br i1 %tobool172, label %if.then173, label %if.end188, !dbg !659

if.then173:                                       ; preds = %if.end167
  %add174 = add nsw i32 %i.0, 2, !dbg !660
  %conv175 = sext i16 %optoffset.0 to i32, !dbg !664
  %add176 = add nsw i32 %add174, %conv175, !dbg !665
  %idx.ext177 = sext i32 %add176 to i64, !dbg !666
  %add.ptr178 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext177, !dbg !666
  %9 = load i8*, i8** %add.ptr178, align 8, !dbg !667
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.34, i32 0, i32 0), i8* %9), !dbg !668
  %add180 = add nsw i32 %i.0, 2, !dbg !669
  %conv181 = sext i16 %optoffset.0 to i32, !dbg !671
  %add182 = add nsw i32 %add180, %conv181, !dbg !672
  %add183 = add nsw i32 %files.0, 2, !dbg !673
  %conv184 = sext i16 %optoffset.0 to i32, !dbg !674
  %add185 = add nsw i32 %add183, %conv184, !dbg !675
  %call186 = call i8** @exchange(i8** %argv, i32 %add182, i32 %add185), !dbg !676
  %dec = add nsw i32 %files.0, -1, !dbg !677
  call void @llvm.dbg.value(metadata i32 %dec, metadata !633, metadata !DIExpression()), !dbg !104
  %dec187 = add nsw i32 %i.0, -1, !dbg !678
  call void @llvm.dbg.value(metadata i32 %dec187, metadata !300, metadata !DIExpression()), !dbg !104
  br label %if.end188, !dbg !679

if.end188:                                        ; preds = %if.then173, %if.end167
  %files.1 = phi i32 [ %dec, %if.then173 ], [ %files.0, %if.end167 ], !dbg !321
  %i.1 = phi i32 [ %dec187, %if.then173 ], [ %i.0, %if.end167 ], !dbg !321
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !300, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %files.1, metadata !633, metadata !DIExpression()), !dbg !104
  %inc = add nsw i32 %i.1, 1, !dbg !680
  call void @llvm.dbg.value(metadata i32 %inc, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body163, !dbg !634, !llvm.loop !681

while_break___14:                                 ; No predecessors!
  br label %while_break___1, !dbg !683

while_break___1:                                  ; preds = %while_break___14, %if.then166
  %cmp189 = icmp sgt i32 %files.0, 255, !dbg !684
  br i1 %cmp189, label %if.then191, label %if.end193, !dbg !686

if.then191:                                       ; preds = %while_break___1
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !687
  %call192 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.35, i32 0, i32 0)), !dbg !691
  call void @exit(i32 -1) #7, !dbg !692
  unreachable, !dbg !692

if.end193:                                        ; preds = %while_break___1
  %call194 = call i32 @cindexsize(i32 %files.0, i8** %argv, i16 signext %optoffset.0), !dbg !694
  call void @llvm.dbg.value(metadata i32 %call194, metadata !303, metadata !DIExpression()), !dbg !104
  %call195 = call noalias i8* @malloc(i32 %call194) #6, !dbg !697
  call void @llvm.dbg.value(metadata i8* %call195, metadata !699, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i8* %call195, metadata !700, metadata !DIExpression()), !dbg !104
  %11 = ptrtoint i8* %call195 to i64, !dbg !701
  %cmp196 = icmp eq i64 %11, 0, !dbg !703
  br i1 %cmp196, label %if.then198, label %if.end199, !dbg !704

if.then198:                                       ; preds = %if.end193
  call void @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)), !dbg !705
  call void @exit(i32 -1) #7, !dbg !709
  unreachable, !dbg !709

if.end199:                                        ; preds = %if.end193
  %call200 = call i8* @memset(i8* %call195, i32 0, i32 %call194) #6, !dbg !711
  %arraydecay201 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !714
  %call202 = call i8* @memset(i8* %arraydecay201, i32 0, i32 512) #6, !dbg !716
  %tobool203 = icmp ne i16 %addoption.0, 0, !dbg !717
  br i1 %tobool203, label %if.then204, label %if.else205, !dbg !719

if.then204:                                       ; preds = %if.end199
  br label %_L___3, !dbg !720

if.else205:                                       ; preds = %if.end199
  %tobool206 = icmp ne i16 %listoption.0, 0, !dbg !722
  br i1 %tobool206, label %if.then207, label %if.end418, !dbg !717

if.then207:                                       ; preds = %if.else205
  br label %_L___3, !dbg !724

_L___3:                                           ; preds = %if.then207, %if.then204
  %add.ptr208 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !725
  %12 = load i8*, i8** %add.ptr208, align 8, !dbg !729
  %call209 = call %struct._IO_FILE* @fopen(i8* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !730
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call209, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool210 = icmp ne %struct._IO_FILE* %call209, null, !dbg !731
  br i1 %tobool210, label %if.end213, label %if.then211, !dbg !733

if.then211:                                       ; preds = %_L___3
  %add.ptr212 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !734
  %13 = load i8*, i8** %add.ptr212, align 8, !dbg !738
  call void @perror(i8* %13), !dbg !739
  call void @exit(i32 -1) #7, !dbg !740
  unreachable, !dbg !740

if.end213:                                        ; preds = %_L___3
  %call214 = call i64 @flength(%struct._IO_FILE* %call209), !dbg !742
  call void @llvm.dbg.value(metadata i64 %call214, metadata !299, metadata !DIExpression()), !dbg !104
  %cmp215 = icmp eq i64 %call214, 0, !dbg !745
  br i1 %cmp215, label %if.then217, label %if.end220, !dbg !747

if.then217:                                       ; preds = %if.end213
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !748
  %call218 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.37, i32 0, i32 0)), !dbg !752
  %call219 = call i32 @fclose(%struct._IO_FILE* %call209), !dbg !753
  call void @exit(i32 -1) #7, !dbg !755
  unreachable, !dbg !755

if.end220:                                        ; preds = %if.end213
  %call221 = call i64 @getid3v2(%struct._IO_FILE* %call209, i64 0), !dbg !757
  call void @llvm.dbg.value(metadata i64 %call221, metadata !760, metadata !DIExpression()), !dbg !104
  %conv222 = trunc i64 %call221 to i32, !dbg !761
  call void @llvm.dbg.value(metadata i32 %conv222, metadata !304, metadata !DIExpression()), !dbg !104
  %conv223 = sext i32 %conv222 to i64, !dbg !762
  %call224 = call i32 @fseek(%struct._IO_FILE* %call209, i64 %conv223, i32 0), !dbg !764
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body225, !dbg !765

while.body225:                                    ; preds = %if.end251, %if.end220
  %i.2 = phi i32 [ 0, %if.end220 ], [ %inc252, %if.end251 ], !dbg !768
  %id3offset.0 = phi i32 [ %conv222, %if.end220 ], [ %conv231, %if.end251 ], !dbg !768
  call void @llvm.dbg.value(metadata i32 %id3offset.0, metadata !304, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while_continue___15, !dbg !769

while_continue___15:                              ; preds = %while.body225
  br label %while_continue___2, !dbg !769

while_continue___2:                               ; preds = %while_continue___15
  %cmp226 = icmp slt i32 %i.2, 16384, !dbg !770
  br i1 %cmp226, label %if.end229, label %if.then228, !dbg !773

if.then228:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !774

if.end229:                                        ; preds = %while_continue___2
  %call230 = call i64 @ftell(%struct._IO_FILE* %call209), !dbg !776
  call void @llvm.dbg.value(metadata i64 %call230, metadata !779, metadata !DIExpression()), !dbg !104
  %conv231 = trunc i64 %call230 to i32, !dbg !780
  call void @llvm.dbg.value(metadata i32 %conv231, metadata !304, metadata !DIExpression()), !dbg !104
  %call232 = call i32 @fgetc(%struct._IO_FILE* %call209), !dbg !781
  call void @llvm.dbg.value(metadata i32 %call232, metadata !783, metadata !DIExpression()), !dbg !104
  %cmp233 = icmp eq i32 %call232, 87, !dbg !784
  br i1 %cmp233, label %if.then235, label %if.end251, !dbg !786

if.then235:                                       ; preds = %if.end229
  %call236 = call i32 @fgetc(%struct._IO_FILE* %call209), !dbg !787
  call void @llvm.dbg.value(metadata i32 %call236, metadata !791, metadata !DIExpression()), !dbg !104
  %cmp237 = icmp eq i32 %call236, 82, !dbg !792
  br i1 %cmp237, label %if.then239, label %if.end250, !dbg !794

if.then239:                                       ; preds = %if.then235
  %call240 = call i32 @fgetc(%struct._IO_FILE* %call209), !dbg !795
  call void @llvm.dbg.value(metadata i32 %call240, metadata !799, metadata !DIExpression()), !dbg !104
  %cmp241 = icmp eq i32 %call240, 65, !dbg !800
  br i1 %cmp241, label %if.then243, label %if.end249, !dbg !802

if.then243:                                       ; preds = %if.then239
  %call244 = call i32 @fgetc(%struct._IO_FILE* %call209), !dbg !803
  call void @llvm.dbg.value(metadata i32 %call244, metadata !807, metadata !DIExpression()), !dbg !104
  %cmp245 = icmp eq i32 %call244, 80, !dbg !808
  br i1 %cmp245, label %if.then247, label %if.end248, !dbg !810

if.then247:                                       ; preds = %if.then243
  call void @llvm.dbg.value(metadata i16 1, metadata !309, metadata !DIExpression()), !dbg !104
  br label %while_break___2, !dbg !811

if.end248:                                        ; preds = %if.then243
  br label %if.end249, !dbg !813

if.end249:                                        ; preds = %if.end248, %if.then239
  br label %if.end250, !dbg !814

if.end250:                                        ; preds = %if.end249, %if.then235
  br label %if.end251, !dbg !815

if.end251:                                        ; preds = %if.end250, %if.end229
  %inc252 = add nsw i32 %i.2, 1, !dbg !816
  call void @llvm.dbg.value(metadata i32 %inc252, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body225, !dbg !765, !llvm.loop !817

while_break___15:                                 ; No predecessors!
  br label %while_break___2, !dbg !819

while_break___2:                                  ; preds = %while_break___15, %if.then247, %if.then228
  %id3offset.1 = phi i32 [ %conv231, %if.then247 ], [ %id3offset.0, %if.then228 ], [ undef, %while_break___15 ], !dbg !768
  %ismp3wrap.0 = phi i16 [ 1, %if.then247 ], [ 0, %if.then228 ], [ undef, %while_break___15 ], !dbg !321
  call void @llvm.dbg.value(metadata i16 %ismp3wrap.0, metadata !309, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %id3offset.1, metadata !304, metadata !DIExpression()), !dbg !104
  %tobool253 = icmp ne i16 %ismp3wrap.0, 0, !dbg !820
  br i1 %tobool253, label %if.then254, label %if.else415, !dbg !822

if.then254:                                       ; preds = %while_break___2
  %call255 = call i32 @fseek(%struct._IO_FILE* %call209, i64 2, i32 1), !dbg !823
  %call256 = call i32 @fgetc(%struct._IO_FILE* %call209), !dbg !827
  call void @llvm.dbg.value(metadata i32 %call256, metadata !829, metadata !DIExpression()), !dbg !104
  %conv257 = trunc i32 %call256 to i8, !dbg !830
  call void @llvm.dbg.value(metadata i8 %conv257, metadata !831, metadata !DIExpression()), !dbg !104
  %conv258 = zext i8 %conv257 to i32, !dbg !832
  %cmp259 = icmp slt i32 %conv258, 1, !dbg !834
  br i1 %cmp259, label %if.then261, label %if.else267, !dbg !835

if.then261:                                       ; preds = %if.then254
  %tobool262 = icmp ne i16 %addoption.0, 0, !dbg !836
  br i1 %tobool262, label %if.then263, label %if.else265, !dbg !839

if.then263:                                       ; preds = %if.then261
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !840
  %call264 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.38, i32 0, i32 0)), !dbg !844
  br label %if.end266, !dbg !845

if.else265:                                       ; preds = %if.then261
  br label %_L___2, !dbg !846

if.end266:                                        ; preds = %if.then263
  br label %if.end275, !dbg !848

if.else267:                                       ; preds = %if.then254
  br label %_L___2, !dbg !848

_L___2:                                           ; preds = %if.else267, %if.else265
  %conv268 = zext i8 %conv257 to i32, !dbg !849
  %cmp269 = icmp sgt i32 %conv268, 1, !dbg !851
  br i1 %cmp269, label %if.then271, label %if.end274, !dbg !852

if.then271:                                       ; preds = %_L___2
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !853
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.39, i32 0, i32 0)), !dbg !857
  %call273 = call i32 @fclose(%struct._IO_FILE* %call209), !dbg !858
  call void @exit(i32 -1) #7, !dbg !860
  unreachable, !dbg !860

if.end274:                                        ; preds = %_L___2
  br label %if.end275

if.end275:                                        ; preds = %if.end274, %if.end266
  %call276 = call i32 @fgetc(%struct._IO_FILE* %call209), !dbg !862
  call void @llvm.dbg.value(metadata i32 %call276, metadata !302, metadata !DIExpression()), !dbg !104
  %conv277 = zext i8 %conv257 to i32, !dbg !865
  %cmp278 = icmp sgt i32 %conv277, 0, !dbg !867
  br i1 %cmp278, label %if.then280, label %if.end302, !dbg !868

if.then280:                                       ; preds = %if.end275
  %call281 = call i64 @getword(%struct._IO_FILE* %call209, i64 0, i32 1), !dbg !869
  call void @llvm.dbg.value(metadata i64 %call281, metadata !873, metadata !DIExpression()), !dbg !104
  %call282 = call i64 @ftell(%struct._IO_FILE* %call209), !dbg !874
  call void @llvm.dbg.value(metadata i64 %call282, metadata !876, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i64 %call282, metadata !298, metadata !DIExpression()), !dbg !104
  %call283 = call i32 @getid3v1(%struct._IO_FILE* %call209), !dbg !877
  call void @llvm.dbg.value(metadata i32 %call283, metadata !879, metadata !DIExpression()), !dbg !104
  %conv284 = sext i32 %call283 to i64, !dbg !880
  %call285 = call i32 @fseek(%struct._IO_FILE* %call209, i64 %conv284, i32 2), !dbg !882
  %call286 = call i64 @ftell(%struct._IO_FILE* %call209), !dbg !883
  call void @llvm.dbg.value(metadata i64 %call286, metadata !885, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i64 %call286, metadata !886, metadata !DIExpression()), !dbg !104
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !887
  %call287 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %17, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.40, i32 0, i32 0)), !dbg !889
  %call288 = call i64 @c_crc(%struct._IO_FILE* %call209, i64 %call282, i64 %call286), !dbg !890
  call void @llvm.dbg.value(metadata i64 %call288, metadata !892, metadata !DIExpression()), !dbg !104
  %cmp289 = icmp ne i64 %call288, %call281, !dbg !893
  br i1 %cmp289, label %if.then291, label %if.else298, !dbg !895

if.then291:                                       ; preds = %if.then280
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !896
  %call292 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %18, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.41, i32 0, i32 0)), !dbg !900
  %call293 = call i32 @getchar(), !dbg !901
  call void @llvm.dbg.value(metadata i32 %call293, metadata !903, metadata !DIExpression()), !dbg !104
  %cmp294 = icmp ne i32 %call293, 121, !dbg !904
  br i1 %cmp294, label %if.then296, label %if.end297, !dbg !906

if.then296:                                       ; preds = %if.then291
  call void @exit(i32 1) #7, !dbg !907
  unreachable, !dbg !907

if.end297:                                        ; preds = %if.then291
  br label %if.end300, !dbg !911

if.else298:                                       ; preds = %if.then280
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !912
  %call299 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0)), !dbg !916
  br label %if.end300

if.end300:                                        ; preds = %if.else298, %if.end297
  %call301 = call i32 @fseek(%struct._IO_FILE* %call209, i64 %call282, i32 0), !dbg !917
  br label %if.end302, !dbg !920

if.end302:                                        ; preds = %if.end300, %if.end275
  %call303 = call i64 @getword(%struct._IO_FILE* %call209, i64 0, i32 1), !dbg !921
  call void @llvm.dbg.value(metadata i64 %call303, metadata !298, metadata !DIExpression()), !dbg !104
  %arrayidx304 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 0, !dbg !924
  store i64 %call303, i64* %arrayidx304, align 16, !dbg !925
  %tobool305 = icmp ne i16 %addoption.0, 0, !dbg !926
  br i1 %tobool305, label %if.then306, label %if.else329, !dbg !928

if.then306:                                       ; preds = %if.end302
  %add307 = add nsw i32 %files.0, %call276, !dbg !929
  %cmp308 = icmp sgt i32 %add307, 255, !dbg !932
  br i1 %cmp308, label %if.then310, label %if.end312, !dbg !933

if.then310:                                       ; preds = %if.then306
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !934
  %call311 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.43, i32 0, i32 0)), !dbg !938
  call void @exit(i32 -1) #7, !dbg !939
  unreachable, !dbg !939

if.end312:                                        ; preds = %if.then306
  %call313 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !941
  call void @llvm.dbg.value(metadata i32 %call313, metadata !944, metadata !DIExpression()), !dbg !104
  %conv314 = sext i32 %call194 to i64, !dbg !945
  %add315 = add i64 %conv314, %call303, !dbg !946
  %sub316 = sub i64 %add315, 4, !dbg !947
  %add317 = add i32 %call313, 8, !dbg !948
  %conv318 = zext i32 %add317 to i64, !dbg !949
  %sub319 = sub i64 %sub316, %conv318, !dbg !950
  %conv320 = trunc i64 %sub319 to i32, !dbg !951
  call void @llvm.dbg.value(metadata i32 %conv320, metadata !303, metadata !DIExpression()), !dbg !104
  %conv321 = zext i8 %conv257 to i32, !dbg !952
  %cmp322 = icmp sgt i32 %conv321, 0, !dbg !954
  br i1 %cmp322, label %if.then324, label %if.end326, !dbg !955

if.then324:                                       ; preds = %if.end312
  %sub325 = sub nsw i32 %conv320, 4, !dbg !956
  call void @llvm.dbg.value(metadata i32 %sub325, metadata !303, metadata !DIExpression()), !dbg !104
  br label %if.end326, !dbg !958

if.end326:                                        ; preds = %if.then324, %if.end312
  %indexsize.0 = phi i32 [ %sub325, %if.then324 ], [ %conv320, %if.end312 ], !dbg !959
  call void @llvm.dbg.value(metadata i32 %indexsize.0, metadata !303, metadata !DIExpression()), !dbg !104
  %call327 = call i8* @realloc(i8* %call195, i32 %indexsize.0) #6, !dbg !960
  call void @llvm.dbg.value(metadata i8* %call327, metadata !963, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i8* %call327, metadata !700, metadata !DIExpression()), !dbg !104
  %call328 = call i8* @memset(i8* %call327, i32 0, i32 %indexsize.0) #6, !dbg !964
  call void @llvm.dbg.value(metadata i32 12, metadata !301, metadata !DIExpression()), !dbg !104
  br label %if.end339, !dbg !966

if.else329:                                       ; preds = %if.end302
  %add.ptr330 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !967
  %21 = load i8*, i8** %add.ptr330, align 8, !dbg !971
  %call331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.45, i32 0, i32 0), i8* %21), !dbg !972
  %tobool332 = icmp ne i16 %verboption.0, 0, !dbg !973
  br i1 %tobool332, label %if.then333, label %if.else336, !dbg !975

if.then333:                                       ; preds = %if.else329
  %call334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.46, i32 0, i32 0)), !dbg !976
  %call335 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0)), !dbg !980
  br label %if.end338, !dbg !982

if.else336:                                       ; preds = %if.else329
  %call337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)), !dbg !983
  br label %if.end338

if.end338:                                        ; preds = %if.else336, %if.then333
  br label %if.end339

if.end339:                                        ; preds = %if.end338, %if.end326
  %indexsize.1 = phi i32 [ %indexsize.0, %if.end326 ], [ %call194, %if.end338 ], !dbg !321
  %j.0 = phi i32 [ 12, %if.end326 ], [ 0, %if.end338 ], !dbg !321
  %wrapindex.0 = phi i8* [ %call327, %if.end326 ], [ %call195, %if.end338 ], !dbg !321
  call void @llvm.dbg.value(metadata i8* %wrapindex.0, metadata !700, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !301, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %indexsize.1, metadata !303, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 1, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body340, !dbg !987

while.body340:                                    ; preds = %if.end399, %if.end339
  %j.1 = phi i32 [ %j.0, %if.end339 ], [ %j.4, %if.end399 ], !dbg !990
  %i.3 = phi i32 [ 1, %if.end339 ], [ %inc400, %if.end399 ], !dbg !990
  call void @llvm.dbg.value(metadata i32 %i.3, metadata !300, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !301, metadata !DIExpression()), !dbg !104
  br label %while_continue___16, !dbg !991

while_continue___16:                              ; preds = %while.body340
  br label %while_continue___3, !dbg !991

while_continue___3:                               ; preds = %while_continue___16
  %cmp341 = icmp sle i32 %i.3, %call276, !dbg !992
  br i1 %cmp341, label %if.end344, label %if.then343, !dbg !995

if.then343:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !996

if.end344:                                        ; preds = %while_continue___3
  %tobool345 = icmp ne i16 %addoption.0, 0, !dbg !998
  br i1 %tobool345, label %if.then346, label %if.else348, !dbg !1000

if.then346:                                       ; preds = %if.end344
  %add347 = add nsw i32 %j.1, 4, !dbg !1001
  call void @llvm.dbg.value(metadata i32 %add347, metadata !301, metadata !DIExpression()), !dbg !104
  br label %if.end362, !dbg !1003

if.else348:                                       ; preds = %if.end344
  call void @llvm.dbg.value(metadata i32 0, metadata !301, metadata !DIExpression()), !dbg !104
  %tobool349 = icmp ne i16 %verboption.0, 0, !dbg !1004
  br i1 %tobool349, label %if.then350, label %if.end361, !dbg !1007

if.then350:                                       ; preds = %if.else348
  %cmp351 = icmp slt i32 %i.3, 100, !dbg !1008
  br i1 %cmp351, label %if.then353, label %if.end355, !dbg !1011

if.then353:                                       ; preds = %if.then350
  %call354 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0)), !dbg !1012
  br label %if.end355, !dbg !1016

if.end355:                                        ; preds = %if.then353, %if.then350
  %cmp356 = icmp slt i32 %i.3, 10, !dbg !1017
  br i1 %cmp356, label %if.then358, label %if.end360, !dbg !1019

if.then358:                                       ; preds = %if.end355
  %call359 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.49, i32 0, i32 0)), !dbg !1020
  br label %if.end360, !dbg !1024

if.end360:                                        ; preds = %if.then358, %if.end355
  br label %if.end361, !dbg !1025

if.end361:                                        ; preds = %if.end360, %if.else348
  br label %if.end362

if.end362:                                        ; preds = %if.end361, %if.then346
  %j.2 = phi i32 [ %add347, %if.then346 ], [ 0, %if.end361 ], !dbg !1026
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !301, metadata !DIExpression()), !dbg !104
  br label %while.body364, !dbg !1027

while.body364:                                    ; preds = %if.end381, %if.end362
  %j.3 = phi i32 [ %j.2, %if.end362 ], [ %j.4, %if.end381 ], !dbg !1030
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !301, metadata !DIExpression()), !dbg !104
  br label %while_continue___17, !dbg !1031

while_continue___17:                              ; preds = %while.body364
  br label %while_continue___4, !dbg !1031

while_continue___4:                               ; preds = %while_continue___17
  %call365 = call i32 @fgetc(%struct._IO_FILE* %call209), !dbg !1032
  call void @llvm.dbg.value(metadata i32 %call365, metadata !1036, metadata !DIExpression()), !dbg !104
  %conv366 = trunc i32 %call365 to i8, !dbg !1037
  call void @llvm.dbg.value(metadata i8 %conv366, metadata !831, metadata !DIExpression()), !dbg !104
  %tobool367 = icmp ne i16 %addoption.0, 0, !dbg !1038
  br i1 %tobool367, label %if.then368, label %if.else372, !dbg !1040

if.then368:                                       ; preds = %while_continue___4
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !1041, metadata !DIExpression()), !dbg !104
  %inc369 = add nsw i32 %j.3, 1, !dbg !1042
  call void @llvm.dbg.value(metadata i32 %inc369, metadata !301, metadata !DIExpression()), !dbg !104
  %idx.ext370 = sext i32 %j.3 to i64, !dbg !1044
  %add.ptr371 = getelementptr inbounds i8, i8* %wrapindex.0, i64 %idx.ext370, !dbg !1044
  store i8 %conv366, i8* %add.ptr371, align 1, !dbg !1045
  br label %if.end376, !dbg !1046

if.else372:                                       ; preds = %while_continue___4
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !1047, metadata !DIExpression()), !dbg !104
  %inc373 = add nsw i32 %j.3, 1, !dbg !1048
  call void @llvm.dbg.value(metadata i32 %inc373, metadata !301, metadata !DIExpression()), !dbg !104
  %idxprom374 = sext i32 %j.3 to i64, !dbg !1050
  %arrayidx375 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 %idxprom374, !dbg !1050
  store i8 %conv366, i8* %arrayidx375, align 1, !dbg !1051
  br label %if.end376

if.end376:                                        ; preds = %if.else372, %if.then368
  %j.4 = phi i32 [ %inc369, %if.then368 ], [ %inc373, %if.else372 ], !dbg !1052
  call void @llvm.dbg.value(metadata i32 %j.4, metadata !301, metadata !DIExpression()), !dbg !104
  %conv377 = zext i8 %conv366 to i32, !dbg !1053
  %cmp378 = icmp ne i32 %conv377, 0, !dbg !1055
  br i1 %cmp378, label %if.end381, label %if.then380, !dbg !1056

if.then380:                                       ; preds = %if.end376
  br label %while_break___4, !dbg !1057

if.end381:                                        ; preds = %if.end376
  br label %while.body364, !dbg !1027, !llvm.loop !1059

while_break___17:                                 ; No predecessors!
  br label %while_break___4, !dbg !1061

while_break___4:                                  ; preds = %while_break___17, %if.then380
  %call382 = call i64 @getword(%struct._IO_FILE* %call209, i64 0, i32 1), !dbg !1062
  %idxprom383 = sext i32 %i.3 to i64, !dbg !1065
  %arrayidx384 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom383, !dbg !1065
  store i64 %call382, i64* %arrayidx384, align 8, !dbg !1066
  %tobool385 = icmp ne i16 %listoption.0, 0, !dbg !1067
  br i1 %tobool385, label %if.then386, label %if.end399, !dbg !1069

if.then386:                                       ; preds = %while_break___4
  %tobool387 = icmp ne i16 %verboption.0, 0, !dbg !1070
  br i1 %tobool387, label %if.then388, label %if.end396, !dbg !1073

if.then388:                                       ; preds = %if.then386
  %idxprom389 = sext i32 %i.3 to i64, !dbg !1074
  %arrayidx390 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom389, !dbg !1074
  %22 = load i64, i64* %arrayidx390, align 8, !dbg !1074
  %sub391 = sub nsw i32 %i.3, 1, !dbg !1078
  %idxprom392 = sext i32 %sub391 to i64, !dbg !1079
  %arrayidx393 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom392, !dbg !1079
  %23 = load i64, i64* %arrayidx393, align 8, !dbg !1079
  %sub394 = sub i64 %22, %23, !dbg !1080
  %call395 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0), i32 %i.3, i64 %sub394), !dbg !1081
  br label %if.end396, !dbg !1082

if.end396:                                        ; preds = %if.then388, %if.then386
  %arraydecay397 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1083
  %call398 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.51, i32 0, i32 0), i8* %arraydecay397), !dbg !1086
  br label %if.end399, !dbg !1087

if.end399:                                        ; preds = %if.end396, %while_break___4
  %inc400 = add nsw i32 %i.3, 1, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %inc400, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body340, !dbg !987, !llvm.loop !1089

while_break___16:                                 ; No predecessors!
  br label %while_break___3, !dbg !1091

while_break___3:                                  ; preds = %while_break___16, %if.then343
  %call401 = call i32 @fclose(%struct._IO_FILE* %call209), !dbg !1092
  %tobool402 = icmp ne i16 %listoption.0, 0, !dbg !1095
  br i1 %tobool402, label %if.then403, label %if.end414, !dbg !1097

if.then403:                                       ; preds = %while_break___3
  %tobool404 = icmp ne i16 %verboption.0, 0, !dbg !1098
  br i1 %tobool404, label %if.then405, label %if.else411, !dbg !1101

if.then405:                                       ; preds = %if.then403
  %call406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.47, i32 0, i32 0)), !dbg !1102
  %sub407 = sub nsw i32 %i.3, 1, !dbg !1106
  %idxprom408 = sext i32 %sub407 to i64, !dbg !1108
  %arrayidx409 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom408, !dbg !1108
  %24 = load i64, i64* %arrayidx409, align 8, !dbg !1108
  %call410 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.52, i32 0, i32 0), i64 %24, i32 %call276), !dbg !1109
  br label %if.end413, !dbg !1110

if.else411:                                       ; preds = %if.then403
  %call412 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)), !dbg !1111
  br label %if.end413

if.end413:                                        ; preds = %if.else411, %if.then405
  call void @exit(i32 0) #7, !dbg !1115
  unreachable, !dbg !1115

if.end414:                                        ; preds = %while_break___3
  br label %if.end417, !dbg !1118

if.else415:                                       ; preds = %while_break___2
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1119
  %call416 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.53, i32 0, i32 0)), !dbg !1123
  call void @exit(i32 -1) #7, !dbg !1124
  unreachable, !dbg !1124

if.end417:                                        ; preds = %if.end414
  br label %if.end418, !dbg !1126

if.end418:                                        ; preds = %if.end417, %if.else205
  %indexsize.2 = phi i32 [ %indexsize.1, %if.end417 ], [ %call194, %if.else205 ], !dbg !321
  %oldfiles.0 = phi i32 [ %call276, %if.end417 ], [ 0, %if.else205 ], !dbg !321
  %id3offset.2 = phi i32 [ %id3offset.1, %if.end417 ], [ 0, %if.else205 ], !dbg !321
  %wrapindex.1 = phi i8* [ %wrapindex.0, %if.end417 ], [ %call195, %if.else205 ], !dbg !321
  %len.0 = phi i64 [ %call214, %if.end417 ], [ 0, %if.else205 ], !dbg !321
  %begin.0 = phi i64 [ %call303, %if.end417 ], [ 0, %if.else205 ], !dbg !321
  call void @llvm.dbg.value(metadata i64 %begin.0, metadata !298, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i64 %len.0, metadata !299, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i8* %wrapindex.1, metadata !700, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %id3offset.2, metadata !304, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %oldfiles.0, metadata !302, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 %indexsize.2, metadata !303, metadata !DIExpression()), !dbg !104
  br label %if.end419

if.end419:                                        ; preds = %if.end418
  %tobool420 = icmp ne i16 %addoption.0, 0, !dbg !1127
  br i1 %tobool420, label %if.then421, label %if.end434, !dbg !1129

if.then421:                                       ; preds = %if.end419
  %conv422 = sext i32 %indexsize.2 to i64, !dbg !1130
  %arrayidx423 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 0, !dbg !1132
  %26 = load i64, i64* %arrayidx423, align 16, !dbg !1132
  %sub424 = sub i64 %conv422, %26, !dbg !1133
  call void @llvm.dbg.value(metadata i64 %sub424, metadata !886, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body425, !dbg !1134

while.body425:                                    ; preds = %if.end429, %if.then421
  %i.4 = phi i32 [ 0, %if.then421 ], [ %inc433, %if.end429 ], !dbg !1137
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while_continue___18, !dbg !1138

while_continue___18:                              ; preds = %while.body425
  br label %while_continue___5, !dbg !1138

while_continue___5:                               ; preds = %while_continue___18
  %cmp426 = icmp sle i32 %i.4, %oldfiles.0, !dbg !1139
  br i1 %cmp426, label %if.end429, label %if.then428, !dbg !1142

if.then428:                                       ; preds = %while_continue___5
  br label %while_break___5, !dbg !1143

if.end429:                                        ; preds = %while_continue___5
  %idxprom430 = sext i32 %i.4 to i64, !dbg !1145
  %arrayidx431 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom430, !dbg !1145
  %27 = load i64, i64* %arrayidx431, align 8, !dbg !1146
  %add432 = add i64 %27, %sub424, !dbg !1146
  store i64 %add432, i64* %arrayidx431, align 8, !dbg !1146
  %inc433 = add nsw i32 %i.4, 1, !dbg !1147
  call void @llvm.dbg.value(metadata i32 %inc433, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body425, !dbg !1134, !llvm.loop !1148

while_break___18:                                 ; No predecessors!
  br label %while_break___5, !dbg !1150

while_break___5:                                  ; preds = %while_break___18, %if.then428
  br label %if.end434, !dbg !1151

if.end434:                                        ; preds = %while_break___5, %if.end419
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body435, !dbg !1152

while.body435:                                    ; preds = %if.end463, %if.end434
  %i.5 = phi i32 [ 0, %if.end434 ], [ %inc474, %if.end463 ], !dbg !321
  call void @llvm.dbg.value(metadata i32 %i.5, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while_continue___19, !dbg !1155

while_continue___19:                              ; preds = %while.body435
  br label %while_continue___6, !dbg !1155

while_continue___6:                               ; preds = %while_continue___19
  %cmp436 = icmp slt i32 %i.5, %files.0, !dbg !1156
  br i1 %cmp436, label %if.end439, label %if.then438, !dbg !1159

if.then438:                                       ; preds = %while_continue___6
  br label %while_break___6, !dbg !1160

if.end439:                                        ; preds = %while_continue___6
  %add440 = add nsw i32 %i.5, 2, !dbg !1162
  %conv441 = sext i16 %optoffset.0 to i32, !dbg !1165
  %add442 = add nsw i32 %add440, %conv441, !dbg !1166
  %idx.ext443 = sext i32 %add442 to i64, !dbg !1167
  %add.ptr444 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext443, !dbg !1167
  %28 = load i8*, i8** %add.ptr444, align 8, !dbg !1168
  %call445 = call %struct._IO_FILE* @fopen(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1169
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call445, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool446 = icmp ne %struct._IO_FILE* %call445, null, !dbg !1170
  br i1 %tobool446, label %if.end453, label %if.then447, !dbg !1172

if.then447:                                       ; preds = %if.end439
  %add448 = add nsw i32 %i.5, 2, !dbg !1173
  %conv449 = sext i16 %optoffset.0 to i32, !dbg !1177
  %add450 = add nsw i32 %add448, %conv449, !dbg !1178
  %idx.ext451 = sext i32 %add450 to i64, !dbg !1179
  %add.ptr452 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext451, !dbg !1179
  %29 = load i8*, i8** %add.ptr452, align 8, !dbg !1180
  call void @perror(i8* %29), !dbg !1181
  call void @exit(i32 -1) #7, !dbg !1182
  unreachable, !dbg !1182

if.end453:                                        ; preds = %if.end439
  %tobool454 = icmp ne i16 %addoption.0, 0, !dbg !1184
  br i1 %tobool454, label %if.end463, label %if.then455, !dbg !1186

if.then455:                                       ; preds = %if.end453
  %cmp456 = icmp eq i32 %i.5, 0, !dbg !1187
  br i1 %cmp456, label %if.then458, label %if.end462, !dbg !1190

if.then458:                                       ; preds = %if.then455
  %conv459 = sext i32 %indexsize.2 to i64, !dbg !1191
  %idxprom460 = sext i32 %i.5 to i64, !dbg !1193
  %arrayidx461 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom460, !dbg !1193
  store i64 %conv459, i64* %arrayidx461, align 8, !dbg !1194
  br label %if.end462, !dbg !1195

if.end462:                                        ; preds = %if.then458, %if.then455
  br label %if.end463, !dbg !1196

if.end463:                                        ; preds = %if.end462, %if.end453
  %call464 = call i64 @flength(%struct._IO_FILE* %call445), !dbg !1197
  call void @llvm.dbg.value(metadata i64 %call464, metadata !1200, metadata !DIExpression()), !dbg !104
  %add465 = add nsw i32 %i.5, %oldfiles.0, !dbg !1201
  %idxprom466 = sext i32 %add465 to i64, !dbg !1202
  %arrayidx467 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom466, !dbg !1202
  %30 = load i64, i64* %arrayidx467, align 8, !dbg !1202
  %add468 = add i64 %call464, %30, !dbg !1203
  %add469 = add nsw i32 %i.5, 1, !dbg !1204
  %add470 = add nsw i32 %add469, %oldfiles.0, !dbg !1205
  %idxprom471 = sext i32 %add470 to i64, !dbg !1206
  %arrayidx472 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i64 0, i64 %idxprom471, !dbg !1206
  store i64 %add468, i64* %arrayidx472, align 8, !dbg !1207
  %call473 = call i32 @fclose(%struct._IO_FILE* %call445), !dbg !1208
  %inc474 = add nsw i32 %i.5, 1, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %inc474, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body435, !dbg !1152, !llvm.loop !1211

while_break___19:                                 ; No predecessors!
  br label %while_break___6, !dbg !1213

while_break___6:                                  ; preds = %while_break___19, %if.then438
  %arraydecay475 = getelementptr inbounds [256 x i64], [256 x i64]* %splitpoints, i32 0, i32 0, !dbg !1214
  %call476 = call i8* @buildindex(i8* %wrapindex.1, i32 %indexsize.2, i32 %files.0, i8** %argv, i16 signext %optoffset.0, i64* %arraydecay475, i16 signext %addoption.0, i32 %oldfiles.0), !dbg !1217
  call void @llvm.dbg.value(metadata i8* %call476, metadata !1218, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i8* %call476, metadata !700, metadata !DIExpression()), !dbg !104
  %tobool477 = icmp ne i16 %addoption.0, 0, !dbg !1219
  br i1 %tobool477, label %if.else532, label %if.then478, !dbg !1221

if.then478:                                       ; preds = %while_break___6
  %conv479 = sext i16 %optoffset.0 to i32, !dbg !1222
  %add480 = add nsw i32 1, %conv479, !dbg !1226
  %idx.ext481 = sext i32 %add480 to i64, !dbg !1227
  %add.ptr482 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext481, !dbg !1227
  %31 = load i8*, i8** %add.ptr482, align 8, !dbg !1228
  %call483 = call i32 @strlen(i8* %31) #8, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %call483, metadata !1230, metadata !DIExpression()), !dbg !104
  %arraydecay484 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1231
  %conv485 = sext i16 %optoffset.0 to i32, !dbg !1233
  %add486 = add nsw i32 1, %conv485, !dbg !1234
  %idx.ext487 = sext i32 %add486 to i64, !dbg !1235
  %add.ptr488 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext487, !dbg !1235
  %32 = load i8*, i8** %add.ptr488, align 8, !dbg !1236
  %call489 = call i8* @strncpy(i8* %arraydecay484, i8* %32, i32 %call483) #6, !dbg !1237
  %arraydecay490 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1238
  %arraydecay491 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !1240
  %call492 = call i8* @strstr(i8* %arraydecay490, i8* %arraydecay491) #8, !dbg !1241
  call void @llvm.dbg.value(metadata i8* %call492, metadata !1242, metadata !DIExpression()), !dbg !104
  %33 = ptrtoint i8* %call492 to i64, !dbg !1243
  %cmp493 = icmp eq i64 %33, 0, !dbg !1245
  br i1 %cmp493, label %if.then495, label %if.end518, !dbg !1246

if.then495:                                       ; preds = %if.then478
  %arraydecay496 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1247
  %call497 = call i32 @strlen(i8* %arraydecay496) #8, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %call497, metadata !1252, metadata !DIExpression()), !dbg !104
  %cmp498 = icmp ugt i32 %call497, 4, !dbg !1253
  br i1 %cmp498, label %if.then500, label %if.end512, !dbg !1255

if.then500:                                       ; preds = %if.then495
  %arraydecay501 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1256
  %call502 = call i8* @strstr(i8* %arraydecay501, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !1260
  call void @llvm.dbg.value(metadata i8* %call502, metadata !1261, metadata !DIExpression()), !dbg !104
  %34 = ptrtoint i8* %call502 to i64, !dbg !1262
  %cmp503 = icmp ne i64 %34, 0, !dbg !1264
  br i1 %cmp503, label %if.then505, label %if.end511, !dbg !1265

if.then505:                                       ; preds = %if.then500
  %arraydecay506 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1266
  %call507 = call i32 @strlen(i8* %arraydecay506) #8, !dbg !1270
  call void @llvm.dbg.value(metadata i32 %call507, metadata !1271, metadata !DIExpression()), !dbg !104
  %sub508 = sub i32 %call507, 4, !dbg !1272
  %idxprom509 = zext i32 %sub508 to i64, !dbg !1273
  %arrayidx510 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i64 0, i64 %idxprom509, !dbg !1273
  store i8 0, i8* %arrayidx510, align 1, !dbg !1274
  br label %if.end511, !dbg !1275

if.end511:                                        ; preds = %if.then505, %if.then500
  br label %if.end512, !dbg !1276

if.end512:                                        ; preds = %if.end511, %if.then495
  %arraydecay513 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !1277
  %call514 = call i32 @strlen(i8* %arraydecay513) #8, !dbg !1280
  call void @llvm.dbg.value(metadata i32 %call514, metadata !1281, metadata !DIExpression()), !dbg !104
  %arraydecay515 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1282
  %arraydecay516 = getelementptr inbounds [512 x i8], [512 x i8]* %ext, i32 0, i32 0, !dbg !1284
  %call517 = call i8* @strncat(i8* %arraydecay515, i8* %arraydecay516, i32 %call514) #6, !dbg !1285
  br label %if.end518, !dbg !1286

if.end518:                                        ; preds = %if.end512, %if.then478
  %arraydecay519 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1287
  %call520 = call %struct._IO_FILE* @fopen(i8* %arraydecay519, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1290
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call520, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool521 = icmp ne %struct._IO_FILE* %call520, null, !dbg !1291
  br i1 %tobool521, label %if.then522, label %if.end531, !dbg !1293

if.then522:                                       ; preds = %if.end518
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1294
  %arraydecay523 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1298
  %call524 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.55, i32 0, i32 0), i8* %arraydecay523), !dbg !1299
  %call525 = call i32 @fclose(%struct._IO_FILE* %call520), !dbg !1300
  %call526 = call i32 @getchar(), !dbg !1302
  call void @llvm.dbg.value(metadata i32 %call526, metadata !1304, metadata !DIExpression()), !dbg !104
  %cmp527 = icmp ne i32 %call526, 121, !dbg !1305
  br i1 %cmp527, label %if.then529, label %if.end530, !dbg !1307

if.then529:                                       ; preds = %if.then522
  call void @exit(i32 -1) #7, !dbg !1308
  unreachable, !dbg !1308

if.end530:                                        ; preds = %if.then522
  br label %if.end531, !dbg !1312

if.end531:                                        ; preds = %if.end530, %if.end518
  br label %if.end536, !dbg !1313

if.else532:                                       ; preds = %while_break___6
  %call533 = call i32 @strlen(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0)) #8, !dbg !1314
  call void @llvm.dbg.value(metadata i32 %call533, metadata !1318, metadata !DIExpression()), !dbg !104
  %arraydecay534 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1319
  %call535 = call i8* @strncpy(i8* %arraydecay534, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.56, i32 0, i32 0), i32 %call533) #6, !dbg !1321
  br label %if.end536

if.end536:                                        ; preds = %if.else532, %if.end531
  %arraydecay537 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1322
  %call538 = call %struct._IO_FILE* @fopen(i8* %arraydecay537, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.57, i32 0, i32 0)), !dbg !1325
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call538, metadata !1326, metadata !DIExpression()), !dbg !104
  %tobool539 = icmp ne %struct._IO_FILE* %call538, null, !dbg !1327
  br i1 %tobool539, label %if.end545, label %if.then540, !dbg !1329

if.then540:                                       ; preds = %if.end536
  %conv541 = sext i16 %optoffset.0 to i32, !dbg !1330
  %add542 = add nsw i32 1, %conv541, !dbg !1334
  %idx.ext543 = sext i32 %add542 to i64, !dbg !1335
  %add.ptr544 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext543, !dbg !1335
  %36 = load i8*, i8** %add.ptr544, align 8, !dbg !1336
  call void @perror(i8* %36), !dbg !1337
  call void @exit(i32 -1) #7, !dbg !1338
  unreachable, !dbg !1338

if.end545:                                        ; preds = %if.end536
  %add546 = add nsw i32 %files.0, %oldfiles.0, !dbg !1340
  %cmp547 = icmp sgt i32 %add546, 9, !dbg !1342
  br i1 %cmp547, label %if.then549, label %if.end552, !dbg !1343

if.then549:                                       ; preds = %if.end545
  %add550 = add nsw i32 %files.0, %oldfiles.0, !dbg !1344
  %div = sdiv i32 %add550, 10, !dbg !1346
  %rem = srem i32 %div, 10, !dbg !1347
  %or = or i32 %rem, 48, !dbg !1348
  %conv551 = trunc i32 %or to i8, !dbg !1349
  store i8 %conv551, i8* getelementptr inbounds ([460 x i8], [460 x i8]* bitcast (<{ [442 x i8], [18 x i8] }>* @id3 to [460 x i8]*), i64 0, i64 21), align 1, !dbg !1350
  br label %if.end552, !dbg !1351

if.end552:                                        ; preds = %if.then549, %if.end545
  %add553 = add nsw i32 %files.0, %oldfiles.0, !dbg !1352
  %rem554 = srem i32 %add553, 10, !dbg !1354
  %or555 = or i32 %rem554, 48, !dbg !1355
  %conv556 = trunc i32 %or555 to i8, !dbg !1356
  store i8 %conv556, i8* getelementptr inbounds ([460 x i8], [460 x i8]* bitcast (<{ [442 x i8], [18 x i8] }>* @id3 to [460 x i8]*), i64 0, i64 22), align 2, !dbg !1357
  %call557 = call zeroext i8 @charat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 0), !dbg !1358
  store i8 %call557, i8* getelementptr inbounds ([460 x i8], [460 x i8]* bitcast (<{ [442 x i8], [18 x i8] }>* @id3 to [460 x i8]*), i64 0, i64 47), align 1, !dbg !1360
  %call558 = call zeroext i8 @charat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 2), !dbg !1361
  store i8 %call558, i8* getelementptr inbounds ([460 x i8], [460 x i8]* bitcast (<{ [442 x i8], [18 x i8] }>* @id3 to [460 x i8]*), i64 0, i64 49), align 1, !dbg !1363
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body559, !dbg !1364

while.body559:                                    ; preds = %if.end563, %if.end552
  %i.6 = phi i32 [ 0, %if.end552 ], [ %inc568, %if.end563 ], !dbg !321
  call void @llvm.dbg.value(metadata i32 %i.6, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while_continue___20, !dbg !1367

while_continue___20:                              ; preds = %while.body559
  br label %while_continue___7, !dbg !1367

while_continue___7:                               ; preds = %while_continue___20
  %cmp560 = icmp slt i32 %i.6, 460, !dbg !1368
  br i1 %cmp560, label %if.end563, label %if.then562, !dbg !1371

if.then562:                                       ; preds = %while_continue___7
  br label %while_break___7, !dbg !1372

if.end563:                                        ; preds = %while_continue___7
  %idxprom564 = sext i32 %i.6 to i64, !dbg !1374
  %arrayidx565 = getelementptr inbounds [460 x i8], [460 x i8]* bitcast (<{ [442 x i8], [18 x i8] }>* @id3 to [460 x i8]*), i64 0, i64 %idxprom564, !dbg !1374
  %37 = load i8, i8* %arrayidx565, align 1, !dbg !1374
  %conv566 = zext i8 %37 to i32, !dbg !1377
  %call567 = call i32 @fputc(i32 %conv566, %struct._IO_FILE* %call538), !dbg !1378
  %inc568 = add nsw i32 %i.6, 1, !dbg !1379
  call void @llvm.dbg.value(metadata i32 %inc568, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body559, !dbg !1364, !llvm.loop !1380

while_break___20:                                 ; No predecessors!
  br label %while_break___7, !dbg !1382

while_break___7:                                  ; preds = %while_break___20, %if.then562
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body569, !dbg !1383

while.body569:                                    ; preds = %if.end573, %while_break___7
  %i.7 = phi i32 [ 0, %while_break___7 ], [ %inc578, %if.end573 ], !dbg !321
  call void @llvm.dbg.value(metadata i32 %i.7, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while_continue___21, !dbg !1386

while_continue___21:                              ; preds = %while.body569
  br label %while_continue___8, !dbg !1386

while_continue___8:                               ; preds = %while_continue___21
  %cmp570 = icmp slt i32 %i.7, %indexsize.2, !dbg !1387
  br i1 %cmp570, label %if.end573, label %if.then572, !dbg !1390

if.then572:                                       ; preds = %while_continue___8
  br label %while_break___8, !dbg !1391

if.end573:                                        ; preds = %while_continue___8
  %idx.ext574 = sext i32 %i.7 to i64, !dbg !1393
  %add.ptr575 = getelementptr inbounds i8, i8* %call476, i64 %idx.ext574, !dbg !1393
  %38 = load i8, i8* %add.ptr575, align 1, !dbg !1396
  %conv576 = zext i8 %38 to i32, !dbg !1397
  %call577 = call i32 @fputc(i32 %conv576, %struct._IO_FILE* %call538), !dbg !1398
  %inc578 = add nsw i32 %i.7, 1, !dbg !1399
  call void @llvm.dbg.value(metadata i32 %inc578, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body569, !dbg !1383, !llvm.loop !1400

while_break___21:                                 ; No predecessors!
  br label %while_break___8, !dbg !1402

while_break___8:                                  ; preds = %while_break___21, %if.then572
  %call579 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.48, i32 0, i32 0)), !dbg !1403
  %tobool580 = icmp ne i16 %addoption.0, 0, !dbg !1406
  br i1 %tobool580, label %if.then581, label %if.end623, !dbg !1408

if.then581:                                       ; preds = %while_break___8
  %add.ptr582 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !1409
  %39 = load i8*, i8** %add.ptr582, align 8, !dbg !1413
  %call583 = call %struct._IO_FILE* @fopen(i8* %39, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1414
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call583, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool584 = icmp ne %struct._IO_FILE* %call583, null, !dbg !1415
  br i1 %tobool584, label %if.end587, label %if.then585, !dbg !1417

if.then585:                                       ; preds = %if.then581
  %add.ptr586 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !1418
  %40 = load i8*, i8** %add.ptr586, align 8, !dbg !1422
  call void @perror(i8* %40), !dbg !1423
  call void @exit(i32 -1) #7, !dbg !1424
  unreachable, !dbg !1424

if.end587:                                        ; preds = %if.then581
  %conv588 = sext i32 %id3offset.2 to i64, !dbg !1426
  %add589 = add i64 %conv588, %begin.0, !dbg !1429
  %call590 = call i32 @fseek(%struct._IO_FILE* %call583, i64 %add589, i32 0), !dbg !1430
  %call591 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.59, i32 0, i32 0)), !dbg !1431
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1433
  %call592 = call i32 @fflush(%struct._IO_FILE* %41), !dbg !1435
  %conv593 = sext i32 %id3offset.2 to i64, !dbg !1436
  %add594 = add i64 %begin.0, %conv593, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %add594, metadata !298, metadata !DIExpression()), !dbg !104
  br label %while.body595, !dbg !1438

while.body595:                                    ; preds = %if.end617, %if.end587
  %begin.1 = phi i64 [ %add594, %if.end587 ], [ %inc620, %if.end617 ], !dbg !1441
  call void @llvm.dbg.value(metadata i64 %begin.1, metadata !298, metadata !DIExpression()), !dbg !104
  br label %while_continue___22, !dbg !1442

while_continue___22:                              ; preds = %while.body595
  br label %while_continue___9, !dbg !1442

while_continue___9:                               ; preds = %while_continue___22
  %sub596 = sub i64 %len.0, 1, !dbg !1443
  %cmp597 = icmp ult i64 %begin.1, %sub596, !dbg !1446
  br i1 %cmp597, label %if.end600, label %if.then599, !dbg !1447

if.then599:                                       ; preds = %while_continue___9
  br label %while_break___9, !dbg !1448

if.end600:                                        ; preds = %while_continue___9
  %div601 = udiv i64 %len.0, 100, !dbg !1450
  %rem602 = urem i64 %begin.1, %div601, !dbg !1452
  %cmp603 = icmp eq i64 %rem602, 0, !dbg !1453
  br i1 %cmp603, label %if.then605, label %if.end617, !dbg !1454

if.then605:                                       ; preds = %if.end600
  %div606 = udiv i64 %len.0, 100, !dbg !1455
  %div607 = udiv i64 %begin.1, %div606, !dbg !1458
  %cmp608 = icmp ugt i64 %div607, 9, !dbg !1459
  br i1 %cmp608, label %if.then610, label %if.end612, !dbg !1460

if.then610:                                       ; preds = %if.then605
  %call611 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.60, i32 0, i32 0)), !dbg !1461
  br label %if.end612, !dbg !1465

if.end612:                                        ; preds = %if.then610, %if.then605
  %div613 = udiv i64 %len.0, 100, !dbg !1466
  %div614 = udiv i64 %begin.1, %div613, !dbg !1469
  %call615 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.61, i32 0, i32 0), i64 %div614), !dbg !1470
  %42 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1471
  %call616 = call i32 @fflush(%struct._IO_FILE* %42), !dbg !1473
  br label %if.end617, !dbg !1474

if.end617:                                        ; preds = %if.end612, %if.end600
  %call618 = call i32 @fgetc(%struct._IO_FILE* %call583), !dbg !1475
  call void @llvm.dbg.value(metadata i32 %call618, metadata !1478, metadata !DIExpression()), !dbg !104
  %call619 = call i32 @fputc(i32 %call618, %struct._IO_FILE* %call538), !dbg !1479
  %inc620 = add i64 %begin.1, 1, !dbg !1481
  call void @llvm.dbg.value(metadata i64 %inc620, metadata !298, metadata !DIExpression()), !dbg !104
  br label %while.body595, !dbg !1438, !llvm.loop !1482

while_break___22:                                 ; No predecessors!
  br label %while_break___9, !dbg !1484

while_break___9:                                  ; preds = %while_break___22, %if.then599
  %call621 = call i32 @fclose(%struct._IO_FILE* %call583), !dbg !1485
  %call622 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0)), !dbg !1488
  br label %if.end623, !dbg !1490

if.end623:                                        ; preds = %while_break___9, %while_break___8
  call void @llvm.dbg.value(metadata i32 0, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body624, !dbg !1491

while.body624:                                    ; preds = %while_break___11, %if.end623
  %i.8 = phi i32 [ 0, %if.end623 ], [ %inc673, %while_break___11 ], !dbg !321
  call void @llvm.dbg.value(metadata i32 %i.8, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while_continue___23, !dbg !1494

while_continue___23:                              ; preds = %while.body624
  br label %while_continue___10, !dbg !1494

while_continue___10:                              ; preds = %while_continue___23
  %cmp625 = icmp slt i32 %i.8, %files.0, !dbg !1495
  br i1 %cmp625, label %if.end628, label %if.then627, !dbg !1498

if.then627:                                       ; preds = %while_continue___10
  br label %while_break___10, !dbg !1499

if.end628:                                        ; preds = %while_continue___10
  %add629 = add nsw i32 %i.8, 1, !dbg !1501
  %mul = mul nsw i32 %add629, 100, !dbg !1504
  %div630 = sdiv i32 %mul, %files.0, !dbg !1505
  %call631 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i32 %div630), !dbg !1506
  %tobool632 = icmp ne i16 %addoption.0, 0, !dbg !1507
  br i1 %tobool632, label %if.then633, label %if.else635, !dbg !1509

if.then633:                                       ; preds = %if.end628
  %call634 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.64, i32 0, i32 0)), !dbg !1510
  br label %if.end637, !dbg !1514

if.else635:                                       ; preds = %if.end628
  %call636 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.65, i32 0, i32 0)), !dbg !1515
  br label %if.end637

if.end637:                                        ; preds = %if.else635, %if.then633
  %add638 = add nsw i32 %i.8, 2, !dbg !1519
  %conv639 = sext i16 %optoffset.0 to i32, !dbg !1522
  %add640 = add nsw i32 %add638, %conv639, !dbg !1523
  %idx.ext641 = sext i32 %add640 to i64, !dbg !1524
  %add.ptr642 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext641, !dbg !1524
  %43 = load i8*, i8** %add.ptr642, align 8, !dbg !1525
  %call643 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.66, i32 0, i32 0), i8* %43), !dbg !1526
  %44 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1527
  %call644 = call i32 @fflush(%struct._IO_FILE* %44), !dbg !1529
  %add645 = add nsw i32 %i.8, 2, !dbg !1530
  %conv646 = sext i16 %optoffset.0 to i32, !dbg !1532
  %add647 = add nsw i32 %add645, %conv646, !dbg !1533
  %idx.ext648 = sext i32 %add647 to i64, !dbg !1534
  %add.ptr649 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext648, !dbg !1534
  %45 = load i8*, i8** %add.ptr649, align 8, !dbg !1535
  %call650 = call %struct._IO_FILE* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0)), !dbg !1536
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call650, metadata !469, metadata !DIExpression()), !dbg !104
  %tobool651 = icmp ne %struct._IO_FILE* %call650, null, !dbg !1537
  br i1 %tobool651, label %if.end659, label %if.then652, !dbg !1539

if.then652:                                       ; preds = %if.end637
  %46 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1540
  %call653 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %46, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.67, i32 0, i32 0)), !dbg !1544
  %add654 = add nsw i32 %i.8, 2, !dbg !1545
  %conv655 = sext i16 %optoffset.0 to i32, !dbg !1547
  %add656 = add nsw i32 %add654, %conv655, !dbg !1548
  %idx.ext657 = sext i32 %add656 to i64, !dbg !1549
  %add.ptr658 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext657, !dbg !1549
  %47 = load i8*, i8** %add.ptr658, align 8, !dbg !1550
  call void @perror(i8* %47), !dbg !1551
  call void @exit(i32 -1) #7, !dbg !1552
  unreachable, !dbg !1552

if.end659:                                        ; preds = %if.end637
  call void @llvm.dbg.value(metadata i64 0, metadata !298, metadata !DIExpression()), !dbg !104
  %call660 = call i64 @flength(%struct._IO_FILE* %call650), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %call660, metadata !886, metadata !DIExpression()), !dbg !104
  %call661 = call i32 @fseek(%struct._IO_FILE* %call650, i64 0, i32 0), !dbg !1557
  br label %while.body663, !dbg !1559

while.body663:                                    ; preds = %if.end668, %if.end659
  %begin.2 = phi i64 [ 0, %if.end659 ], [ %inc664, %if.end668 ], !dbg !1562
  call void @llvm.dbg.value(metadata i64 %begin.2, metadata !298, metadata !DIExpression()), !dbg !104
  br label %while_continue___24, !dbg !1563

while_continue___24:                              ; preds = %while.body663
  br label %while_continue___11, !dbg !1563

while_continue___11:                              ; preds = %while_continue___24
  call void @llvm.dbg.value(metadata i64 %begin.2, metadata !1564, metadata !DIExpression()), !dbg !104
  %inc664 = add i64 %begin.2, 1, !dbg !1565
  call void @llvm.dbg.value(metadata i64 %inc664, metadata !298, metadata !DIExpression()), !dbg !104
  %cmp665 = icmp ult i64 %begin.2, %call660, !dbg !1567
  br i1 %cmp665, label %if.end668, label %if.then667, !dbg !1569

if.then667:                                       ; preds = %while_continue___11
  br label %while_break___11, !dbg !1570

if.end668:                                        ; preds = %while_continue___11
  %call669 = call i32 @fgetc(%struct._IO_FILE* %call650), !dbg !1572
  call void @llvm.dbg.value(metadata i32 %call669, metadata !1575, metadata !DIExpression()), !dbg !104
  %call670 = call i32 @fputc(i32 %call669, %struct._IO_FILE* %call538), !dbg !1576
  br label %while.body663, !dbg !1559, !llvm.loop !1578

while_break___24:                                 ; No predecessors!
  br label %while_break___11, !dbg !1580

while_break___11:                                 ; preds = %while_break___24, %if.then667
  %call671 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0)), !dbg !1581
  %call672 = call i32 @fclose(%struct._IO_FILE* %call650), !dbg !1584
  %inc673 = add nsw i32 %i.8, 1, !dbg !1586
  call void @llvm.dbg.value(metadata i32 %inc673, metadata !300, metadata !DIExpression()), !dbg !104
  br label %while.body624, !dbg !1491, !llvm.loop !1587

while_break___23:                                 ; No predecessors!
  br label %while_break___10, !dbg !1589

while_break___10:                                 ; preds = %while_break___23, %if.then627
  %call674 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.69, i32 0, i32 0)), !dbg !1590
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1593
  %call675 = call i32 @fflush(%struct._IO_FILE* %48), !dbg !1595
  %call676 = call i32 @fputc(i32 0, %struct._IO_FILE* %call538), !dbg !1596
  %call677 = call i64 @ftell(%struct._IO_FILE* %call538), !dbg !1598
  call void @llvm.dbg.value(metadata i64 %call677, metadata !1600, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.value(metadata i64 %call677, metadata !299, metadata !DIExpression()), !dbg !104
  %call678 = call i64 @c_crc(%struct._IO_FILE* %call538, i64 472, i64 %call677), !dbg !1601
  call void @llvm.dbg.value(metadata i64 %call678, metadata !892, metadata !DIExpression()), !dbg !104
  %call679 = call i32 @fseek(%struct._IO_FILE* %call538, i64 468, i32 0), !dbg !1603
  %shr = lshr i64 %call678, 24, !dbg !1605
  %and = and i64 %shr, 255, !dbg !1607
  %conv680 = trunc i64 %and to i32, !dbg !1608
  %call681 = call i32 @fputc(i32 %conv680, %struct._IO_FILE* %call538), !dbg !1609
  %shr682 = lshr i64 %call678, 16, !dbg !1610
  %and683 = and i64 %shr682, 255, !dbg !1612
  %conv684 = trunc i64 %and683 to i32, !dbg !1613
  %call685 = call i32 @fputc(i32 %conv684, %struct._IO_FILE* %call538), !dbg !1614
  %shr686 = lshr i64 %call678, 8, !dbg !1615
  %and687 = and i64 %shr686, 255, !dbg !1617
  %conv688 = trunc i64 %and687 to i32, !dbg !1618
  %call689 = call i32 @fputc(i32 %conv688, %struct._IO_FILE* %call538), !dbg !1619
  %and690 = and i64 %call678, 255, !dbg !1620
  %conv691 = trunc i64 %and690 to i32, !dbg !1622
  %call692 = call i32 @fputc(i32 %conv691, %struct._IO_FILE* %call538), !dbg !1623
  %call693 = call i32 @fclose(%struct._IO_FILE* %call538), !dbg !1624
  %call694 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.42, i32 0, i32 0)), !dbg !1626
  %tobool695 = icmp ne i16 %addoption.0, 0, !dbg !1628
  br i1 %tobool695, label %if.then696, label %if.end712, !dbg !1630

if.then696:                                       ; preds = %while_break___10
  %call697 = call i8* @memset(i8* %call476, i32 0, i32 %indexsize.2) #6, !dbg !1631
  %add.ptr698 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !1635
  %49 = load i8*, i8** %add.ptr698, align 8, !dbg !1637
  %call699 = call i32 (i8*, i8*, ...) @sprintf(i8* %call476, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.70, i32 0, i32 0), i8* %49) #6, !dbg !1638
  %call700 = call i32 @system(i8* %call476), !dbg !1639
  call void @llvm.dbg.value(metadata i32 %call700, metadata !1641, metadata !DIExpression()), !dbg !104
  %cmp701 = icmp eq i32 %call700, -1, !dbg !1642
  br i1 %cmp701, label %if.then703, label %if.end705, !dbg !1644

if.then703:                                       ; preds = %if.then696
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1645
  %call704 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %50, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.71, i32 0, i32 0)), !dbg !1649
  br label %if.end705, !dbg !1650

if.end705:                                        ; preds = %if.then703, %if.then696
  %add.ptr706 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !1651
  %51 = load i8*, i8** %add.ptr706, align 8, !dbg !1654
  %call707 = call i32 @strlen(i8* %51) #8, !dbg !1655
  call void @llvm.dbg.value(metadata i32 %call707, metadata !1656, metadata !DIExpression()), !dbg !104
  %arraydecay708 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1657
  %add.ptr709 = getelementptr inbounds i8*, i8** %argv, i64 2, !dbg !1659
  %52 = load i8*, i8** %add.ptr709, align 8, !dbg !1660
  %add710 = add i32 %call707, 1, !dbg !1661
  %call711 = call i8* @strncpy(i8* %arraydecay708, i8* %52, i32 %add710) #6, !dbg !1662
  br label %if.end712, !dbg !1663

if.end712:                                        ; preds = %if.end705, %while_break___10
  %arraydecay713 = getelementptr inbounds [512 x i8], [512 x i8]* %filename, i32 0, i32 0, !dbg !1664
  %call714 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str.72, i32 0, i32 0), i8* %arraydecay713), !dbg !1667
  call void @free(i8* %call476) #6, !dbg !1668
  ret i32 0, !dbg !1670
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare i32 @getopt(i32, i8**, i8*) #3

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i32) #3

; Function Attrs: nounwind
declare i8* @getenv(i8*) #3

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

declare i32 @fclose(%struct._IO_FILE*) #2

declare %struct.__dirstream* @opendir(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i8** @exchange(i8** %argv, i32 %offset, i32 %tot) #0 !dbg !1671 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1675, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %offset, metadata !1677, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %tot, metadata !1678, metadata !DIExpression()), !dbg !1676
  %idx.ext = sext i32 %offset to i64, !dbg !1679
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !1679
  call void @llvm.dbg.value(metadata i8** %add.ptr, metadata !1681, metadata !DIExpression()), !dbg !1676
  br label %while.body, !dbg !1682

while.body:                                       ; preds = %if.end, %entry
  %offset.addr.0 = phi i32 [ %offset, %entry ], [ %inc, %if.end ]
  %first.0 = phi i8** [ %add.ptr, %entry ], [ %incdec.ptr, %if.end ], !dbg !1685
  call void @llvm.dbg.value(metadata i8** %first.0, metadata !1681, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i32 %offset.addr.0, metadata !1677, metadata !DIExpression()), !dbg !1676
  br label %while_continue___0, !dbg !1686

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1686

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %offset.addr.0, %tot, !dbg !1687
  br i1 %cmp, label %if.end, label %if.then, !dbg !1690

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1691

if.end:                                           ; preds = %while_continue
  %add = add nsw i32 %offset.addr.0, 1, !dbg !1693
  %idx.ext1 = sext i32 %add to i64, !dbg !1694
  %add.ptr2 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext1, !dbg !1694
  %0 = load i8*, i8** %add.ptr2, align 8, !dbg !1695
  store i8* %0, i8** %first.0, align 8, !dbg !1696
  %incdec.ptr = getelementptr inbounds i8*, i8** %first.0, i32 1, !dbg !1697
  call void @llvm.dbg.value(metadata i8** %incdec.ptr, metadata !1681, metadata !DIExpression()), !dbg !1676
  %inc = add nsw i32 %offset.addr.0, 1, !dbg !1698
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1677, metadata !DIExpression()), !dbg !1676
  br label %while.body, !dbg !1682, !llvm.loop !1699

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1701

while_break:                                      ; preds = %while_break___0, %if.then
  ret i8** %argv, !dbg !1702
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @cindexsize(i32 %files, i8** %argv, i16 signext %optoffset) #0 !dbg !1703 {
entry:
  call void @llvm.dbg.value(metadata i32 %files, metadata !1706, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1708, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i16 %optoffset, metadata !1709, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.declare(metadata !4, metadata !1710, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i32 0, metadata !1712, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 0, metadata !1713, metadata !DIExpression()), !dbg !1707
  br label %while.body, !dbg !1714

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1718
  %size.0 = phi i32 [ 0, %entry ], [ %add3, %if.end ], !dbg !1718
  call void @llvm.dbg.value(metadata i32 %size.0, metadata !1712, metadata !DIExpression()), !dbg !1707
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1713, metadata !DIExpression()), !dbg !1707
  br label %while_continue___0, !dbg !1719

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1719

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, %files, !dbg !1720
  br i1 %cmp, label %if.end, label %if.then, !dbg !1723

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1724

if.end:                                           ; preds = %while_continue
  %add = add nsw i32 %i.0, 2, !dbg !1726
  %conv = sext i16 %optoffset to i32, !dbg !1729
  %add1 = add nsw i32 %add, %conv, !dbg !1730
  %idx.ext = sext i32 %add1 to i64, !dbg !1731
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !1731
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !1732
  %call = call i32 @strlen(i8* %0) #8, !dbg !1733
  call void @llvm.dbg.value(metadata i32 %call, metadata !1734, metadata !DIExpression()), !dbg !1707
  %add2 = add nsw i32 %call, 1, !dbg !1735
  %add3 = add nsw i32 %size.0, %add2, !dbg !1736
  call void @llvm.dbg.value(metadata i32 %add3, metadata !1712, metadata !DIExpression()), !dbg !1707
  %inc = add nsw i32 %i.0, 1, !dbg !1737
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1713, metadata !DIExpression()), !dbg !1707
  br label %while.body, !dbg !1714, !llvm.loop !1738

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1740

while_break:                                      ; preds = %while_break___0, %if.then
  %call4 = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !1741
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1744, metadata !DIExpression()), !dbg !1707
  %add5 = add nsw i32 %size.0, %call4, !dbg !1745
  %add6 = add nsw i32 %files, 2, !dbg !1746
  %mul = mul nsw i32 %add6, 4, !dbg !1747
  %add7 = add nsw i32 %add5, %mul, !dbg !1748
  %add8 = add nsw i32 %add7, 4, !dbg !1749
  %add9 = add nsw i32 %add8, 4, !dbg !1750
  ret i32 %add9, !dbg !1751
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #3

declare void @perror(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @flength(%struct._IO_FILE* %in) #0 !dbg !1752 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %in, metadata !1755, metadata !DIExpression()), !dbg !1756
  %call = call i32 @fseek(%struct._IO_FILE* %in, i64 0, i32 2), !dbg !1757
  %call1 = call i64 @ftell(%struct._IO_FILE* %in), !dbg !1761
  call void @llvm.dbg.value(metadata i64 %call1, metadata !1763, metadata !DIExpression()), !dbg !1756
  ret i64 %call1, !dbg !1764
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @getid3v2(%struct._IO_FILE* %in, i64 %start) #0 !dbg !1765 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %in, metadata !1768, metadata !DIExpression()), !dbg !1769
  call void @llvm.dbg.value(metadata i64 %start, metadata !1770, metadata !DIExpression()), !dbg !1769
  %call = call i32 @fseek(%struct._IO_FILE* %in, i64 %start, i32 0), !dbg !1771
  %call1 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1775
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1777, metadata !DIExpression()), !dbg !1769
  %cmp = icmp eq i32 %call1, 73, !dbg !1778
  br i1 %cmp, label %if.then, label %if.end26, !dbg !1780

if.then:                                          ; preds = %entry
  %call2 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1781
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1785, metadata !DIExpression()), !dbg !1769
  %cmp3 = icmp eq i32 %call2, 68, !dbg !1786
  br i1 %cmp3, label %if.then4, label %if.end25, !dbg !1788

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1789
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1793, metadata !DIExpression()), !dbg !1769
  %cmp6 = icmp eq i32 %call5, 51, !dbg !1794
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !1796

if.then7:                                         ; preds = %if.then4
  %call8 = call i32 @fseek(%struct._IO_FILE* %in, i64 3, i32 1), !dbg !1797
  %call9 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1801
  call void @llvm.dbg.value(metadata i32 %call9, metadata !1803, metadata !DIExpression()), !dbg !1769
  %conv = trunc i32 %call9 to i8, !dbg !1804
  call void @llvm.dbg.value(metadata i8 %conv, metadata !1805, metadata !DIExpression()), !dbg !1769
  %call10 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1806
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1808, metadata !DIExpression()), !dbg !1769
  %conv11 = trunc i32 %call10 to i8, !dbg !1809
  call void @llvm.dbg.value(metadata i8 %conv11, metadata !1810, metadata !DIExpression()), !dbg !1769
  %call12 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1811
  call void @llvm.dbg.value(metadata i32 %call12, metadata !1813, metadata !DIExpression()), !dbg !1769
  %conv13 = trunc i32 %call12 to i8, !dbg !1814
  call void @llvm.dbg.value(metadata i8 %conv13, metadata !1815, metadata !DIExpression()), !dbg !1769
  %call14 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1816
  call void @llvm.dbg.value(metadata i32 %call14, metadata !1818, metadata !DIExpression()), !dbg !1769
  %conv15 = trunc i32 %call14 to i8, !dbg !1819
  call void @llvm.dbg.value(metadata i8 %conv15, metadata !1820, metadata !DIExpression()), !dbg !1769
  %conv16 = sext i8 %conv to i32, !dbg !1821
  %mul = mul nsw i32 %conv16, 2097151, !dbg !1822
  %conv17 = sext i8 %conv11 to i32, !dbg !1823
  %mul18 = mul nsw i32 %conv17, 16384, !dbg !1824
  %add = add nsw i32 %mul, %mul18, !dbg !1825
  %conv19 = sext i8 %conv13 to i32, !dbg !1826
  %mul20 = mul nsw i32 %conv19, 128, !dbg !1827
  %add21 = add nsw i32 %add, %mul20, !dbg !1828
  %conv22 = sext i8 %conv15 to i32, !dbg !1829
  %add23 = add nsw i32 %add21, %conv22, !dbg !1830
  %conv24 = sext i32 %add23 to i64, !dbg !1831
  br label %return, !dbg !1832

if.end:                                           ; preds = %if.then4
  br label %if.end25, !dbg !1833

if.end25:                                         ; preds = %if.end, %if.then
  br label %if.end26, !dbg !1834

if.end26:                                         ; preds = %if.end25, %entry
  br label %return, !dbg !1835

return:                                           ; preds = %if.end26, %if.then7
  %retval.0 = phi i64 [ %conv24, %if.then7 ], [ 0, %if.end26 ], !dbg !1836
  ret i64 %retval.0, !dbg !1837
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i64 @ftell(%struct._IO_FILE*) #2

declare i32 @fgetc(%struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i64 @getword(%struct._IO_FILE* %in, i64 %offset, i32 %mode) #0 !dbg !1838 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %in, metadata !1841, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 %offset, metadata !1843, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %mode, metadata !1844, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i64 0, metadata !1845, metadata !DIExpression()), !dbg !1842
  %call = call i32 @fseek(%struct._IO_FILE* %in, i64 %offset, i32 %mode), !dbg !1846
  call void @llvm.dbg.value(metadata i32 0, metadata !1850, metadata !DIExpression()), !dbg !1842
  br label %while.body, !dbg !1851

while.body:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !1854
  %head.0 = phi i64 [ 0, %entry ], [ %or, %if.end ], !dbg !1854
  call void @llvm.dbg.value(metadata i64 %head.0, metadata !1845, metadata !DIExpression()), !dbg !1842
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1850, metadata !DIExpression()), !dbg !1842
  br label %while_continue___0, !dbg !1855

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1855

while_continue:                                   ; preds = %while_continue___0
  %cmp = icmp slt i32 %i.0, 4, !dbg !1856
  br i1 %cmp, label %if.end, label %if.then, !dbg !1859

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1860

if.end:                                           ; preds = %while_continue
  %shl = shl i64 %head.0, 8, !dbg !1862
  call void @llvm.dbg.value(metadata i64 %shl, metadata !1845, metadata !DIExpression()), !dbg !1842
  %call1 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1866, metadata !DIExpression()), !dbg !1842
  %conv = sext i32 %call1 to i64, !dbg !1867
  %or = or i64 %shl, %conv, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %or, metadata !1845, metadata !DIExpression()), !dbg !1842
  %inc = add nsw i32 %i.0, 1, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1850, metadata !DIExpression()), !dbg !1842
  br label %while.body, !dbg !1851, !llvm.loop !1870

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1872

while_break:                                      ; preds = %while_break___0, %if.then
  ret i64 %head.0, !dbg !1873
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @getid3v1(%struct._IO_FILE* %file_input) #0 !dbg !1874 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file_input, metadata !1877, metadata !DIExpression()), !dbg !1878
  %call = call i32 @fseek(%struct._IO_FILE* %file_input, i64 -128, i32 2), !dbg !1879
  %call1 = call i32 @fgetc(%struct._IO_FILE* %file_input), !dbg !1883
  call void @llvm.dbg.value(metadata i32 %call1, metadata !1885, metadata !DIExpression()), !dbg !1878
  %cmp = icmp eq i32 %call1, 84, !dbg !1886
  br i1 %cmp, label %if.then, label %if.end9, !dbg !1888

if.then:                                          ; preds = %entry
  %call2 = call i32 @fgetc(%struct._IO_FILE* %file_input), !dbg !1889
  call void @llvm.dbg.value(metadata i32 %call2, metadata !1893, metadata !DIExpression()), !dbg !1878
  %cmp3 = icmp eq i32 %call2, 65, !dbg !1894
  br i1 %cmp3, label %if.then4, label %if.end8, !dbg !1896

if.then4:                                         ; preds = %if.then
  %call5 = call i32 @fgetc(%struct._IO_FILE* %file_input), !dbg !1897
  call void @llvm.dbg.value(metadata i32 %call5, metadata !1901, metadata !DIExpression()), !dbg !1878
  %cmp6 = icmp eq i32 %call5, 71, !dbg !1902
  br i1 %cmp6, label %if.then7, label %if.end, !dbg !1904

if.then7:                                         ; preds = %if.then4
  br label %return, !dbg !1905

if.end:                                           ; preds = %if.then4
  br label %if.end8, !dbg !1907

if.end8:                                          ; preds = %if.end, %if.then
  br label %if.end9, !dbg !1908

if.end9:                                          ; preds = %if.end8, %entry
  br label %return, !dbg !1909

return:                                           ; preds = %if.end9, %if.then7
  %retval.0 = phi i32 [ -128, %if.then7 ], [ 0, %if.end9 ], !dbg !1910
  ret i32 %retval.0, !dbg !1911
}

; Function Attrs: noinline nounwind ssp uwtable
define i64 @c_crc(%struct._IO_FILE* %in, i64 %begin, i64 %end) #0 !dbg !1912 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %in, metadata !1915, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %begin, metadata !1917, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %end, metadata !1918, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.declare(metadata !4, metadata !1919, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i64 4294967295, metadata !1921, metadata !DIExpression()), !dbg !1916
  %call = call i32 @fseek(%struct._IO_FILE* %in, i64 %begin, i32 0), !dbg !1922
  call void @llvm.dbg.value(metadata i32 %call, metadata !1926, metadata !DIExpression()), !dbg !1916
  %cmp = icmp eq i32 %call, -1, !dbg !1927
  br i1 %cmp, label %if.then, label %if.end, !dbg !1929

if.then:                                          ; preds = %entry
  call void @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.74, i32 0, i32 0)), !dbg !1930
  call void @exit(i32 0) #7, !dbg !1934
  unreachable, !dbg !1934

if.end:                                           ; preds = %entry
  br label %while.body, !dbg !1936

while.body:                                       ; preds = %if.end3, %if.end
  %begin.addr.0 = phi i64 [ %begin, %if.end ], [ %inc, %if.end3 ]
  %crc.0 = phi i64 [ 4294967295, %if.end ], [ %xor7, %if.end3 ], !dbg !1939
  call void @llvm.dbg.value(metadata i64 %crc.0, metadata !1921, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %begin.addr.0, metadata !1917, metadata !DIExpression()), !dbg !1916
  br label %while_continue___0, !dbg !1940

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !1940

while_continue:                                   ; preds = %while_continue___0
  call void @llvm.dbg.value(metadata i64 %begin.addr.0, metadata !1941, metadata !DIExpression()), !dbg !1916
  %inc = add i64 %begin.addr.0, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i64 %inc, metadata !1917, metadata !DIExpression()), !dbg !1916
  %cmp1 = icmp ult i64 %begin.addr.0, %end, !dbg !1944
  br i1 %cmp1, label %if.end3, label %if.then2, !dbg !1946

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !1947

if.end3:                                          ; preds = %while_continue
  %call4 = call i32 @fgetc(%struct._IO_FILE* %in), !dbg !1949
  call void @llvm.dbg.value(metadata i32 %call4, metadata !1952, metadata !DIExpression()), !dbg !1916
  %shr = lshr i64 %crc.0, 8, !dbg !1953
  %and = and i64 %shr, 16777215, !dbg !1954
  %conv = sext i32 %call4 to i64, !dbg !1955
  %xor = xor i64 %crc.0, %conv, !dbg !1956
  %and5 = and i64 %xor, 255, !dbg !1957
  %arrayidx = getelementptr inbounds [256 x i32], [256 x i32]* @crctab, i64 0, i64 %and5, !dbg !1958
  %0 = load i32, i32* %arrayidx, align 4, !dbg !1958
  %conv6 = zext i32 %0 to i64, !dbg !1959
  %xor7 = xor i64 %and, %conv6, !dbg !1960
  call void @llvm.dbg.value(metadata i64 %xor7, metadata !1921, metadata !DIExpression()), !dbg !1916
  br label %while.body, !dbg !1936, !llvm.loop !1961

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !1963

while_break:                                      ; preds = %while_break___0, %if.then2
  %xor8 = xor i64 %crc.0, 4294967295, !dbg !1964
  ret i64 %xor8, !dbg !1965
}

declare i32 @getchar() #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i8* @buildindex(i8* %wrapindex, i32 %indexsize, i32 %files, i8** %argv, i16 signext %optoffset, i64* %splitpoints, i16 signext %addoption, i32 %oldfiles) #0 !dbg !1966 {
entry:
  call void @llvm.dbg.value(metadata i8* %wrapindex, metadata !1970, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %indexsize, metadata !1972, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %files, metadata !1973, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i8** %argv, metadata !1974, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i16 %optoffset, metadata !1975, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i64* %splitpoints, metadata !1976, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i16 %addoption, metadata !1977, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %oldfiles, metadata !1978, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.declare(metadata !4, metadata !1979, metadata !DIExpression()), !dbg !1980
  call void @llvm.dbg.declare(metadata !4, metadata !1981, metadata !DIExpression()), !dbg !1982
  call void @llvm.dbg.declare(metadata !4, metadata !1983, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.declare(metadata !4, metadata !1985, metadata !DIExpression()), !dbg !1986
  call void @llvm.dbg.declare(metadata !4, metadata !1987, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata i32 12, metadata !1989, metadata !DIExpression()), !dbg !1971
  %call = call i32 @strlen(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0)) #8, !dbg !1990
  call void @llvm.dbg.value(metadata i32 %call, metadata !1994, metadata !DIExpression()), !dbg !1971
  %call1 = call i8* @strncpy(i8* %wrapindex, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.44, i32 0, i32 0), i32 %call) #6, !dbg !1995
  %call2 = call zeroext i8 @charat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 0), !dbg !1997
  call void @llvm.dbg.value(metadata i8 %call2, metadata !1999, metadata !DIExpression()), !dbg !1971
  %add.ptr = getelementptr inbounds i8, i8* %wrapindex, i64 4, !dbg !2000
  store i8 %call2, i8* %add.ptr, align 1, !dbg !2001
  %call3 = call zeroext i8 @charat(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.58, i32 0, i32 0), i32 2), !dbg !2002
  call void @llvm.dbg.value(metadata i8 %call3, metadata !2004, metadata !DIExpression()), !dbg !1971
  %add.ptr4 = getelementptr inbounds i8, i8* %wrapindex, i64 5, !dbg !2005
  store i8 %call3, i8* %add.ptr4, align 1, !dbg !2006
  %add.ptr5 = getelementptr inbounds i8, i8* %wrapindex, i64 6, !dbg !2007
  store i8 1, i8* %add.ptr5, align 1, !dbg !2008
  %add = add nsw i32 %files, %oldfiles, !dbg !2009
  %conv = trunc i32 %add to i8, !dbg !2010
  %add.ptr6 = getelementptr inbounds i8, i8* %wrapindex, i64 7, !dbg !2011
  store i8 %conv, i8* %add.ptr6, align 1, !dbg !2012
  %add7 = add nsw i32 %files, %oldfiles, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %add7, metadata !1973, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 0, metadata !2014, metadata !DIExpression()), !dbg !1971
  br label %while.body, !dbg !2015

while.body:                                       ; preds = %if.end74, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc75, %if.end74 ], !dbg !2018
  %j.0 = phi i32 [ 12, %entry ], [ %j.4, %if.end74 ], !dbg !2018
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !1989, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2014, metadata !DIExpression()), !dbg !1971
  br label %while_continue___2, !dbg !2019

while_continue___2:                               ; preds = %while.body
  br label %while_continue, !dbg !2019

while_continue:                                   ; preds = %while_continue___2
  %cmp = icmp sle i32 %i.0, %add7, !dbg !2020
  br i1 %cmp, label %if.end, label %if.then, !dbg !2023

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2024

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i32 %j.0, metadata !2026, metadata !DIExpression()), !dbg !1971
  %inc = add nsw i32 %j.0, 1, !dbg !2027
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1989, metadata !DIExpression()), !dbg !1971
  %idx.ext = sext i32 %i.0 to i64, !dbg !2028
  %add.ptr9 = getelementptr inbounds i64, i64* %splitpoints, i64 %idx.ext, !dbg !2028
  %0 = load i64, i64* %add.ptr9, align 8, !dbg !2029
  %shr = lshr i64 %0, 24, !dbg !2030
  %and = and i64 %shr, 255, !dbg !2031
  %conv10 = trunc i64 %and to i8, !dbg !2032
  %idx.ext11 = sext i32 %j.0 to i64, !dbg !2033
  %add.ptr12 = getelementptr inbounds i8, i8* %wrapindex, i64 %idx.ext11, !dbg !2033
  store i8 %conv10, i8* %add.ptr12, align 1, !dbg !2034
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2035, metadata !DIExpression()), !dbg !1971
  %inc13 = add nsw i32 %inc, 1, !dbg !2036
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !1989, metadata !DIExpression()), !dbg !1971
  %idx.ext14 = sext i32 %i.0 to i64, !dbg !2037
  %add.ptr15 = getelementptr inbounds i64, i64* %splitpoints, i64 %idx.ext14, !dbg !2037
  %1 = load i64, i64* %add.ptr15, align 8, !dbg !2038
  %shr16 = lshr i64 %1, 16, !dbg !2039
  %and17 = and i64 %shr16, 255, !dbg !2040
  %conv18 = trunc i64 %and17 to i8, !dbg !2041
  %idx.ext19 = sext i32 %inc to i64, !dbg !2042
  %add.ptr20 = getelementptr inbounds i8, i8* %wrapindex, i64 %idx.ext19, !dbg !2042
  store i8 %conv18, i8* %add.ptr20, align 1, !dbg !2043
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !2044, metadata !DIExpression()), !dbg !1971
  %inc21 = add nsw i32 %inc13, 1, !dbg !2045
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !1989, metadata !DIExpression()), !dbg !1971
  %idx.ext22 = sext i32 %i.0 to i64, !dbg !2046
  %add.ptr23 = getelementptr inbounds i64, i64* %splitpoints, i64 %idx.ext22, !dbg !2046
  %2 = load i64, i64* %add.ptr23, align 8, !dbg !2047
  %shr24 = lshr i64 %2, 8, !dbg !2048
  %and25 = and i64 %shr24, 255, !dbg !2049
  %conv26 = trunc i64 %and25 to i8, !dbg !2050
  %idx.ext27 = sext i32 %inc13 to i64, !dbg !2051
  %add.ptr28 = getelementptr inbounds i8, i8* %wrapindex, i64 %idx.ext27, !dbg !2051
  store i8 %conv26, i8* %add.ptr28, align 1, !dbg !2052
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !2053, metadata !DIExpression()), !dbg !1971
  %inc29 = add nsw i32 %inc21, 1, !dbg !2054
  call void @llvm.dbg.value(metadata i32 %inc29, metadata !1989, metadata !DIExpression()), !dbg !1971
  %idx.ext30 = sext i32 %i.0 to i64, !dbg !2055
  %add.ptr31 = getelementptr inbounds i64, i64* %splitpoints, i64 %idx.ext30, !dbg !2055
  %3 = load i64, i64* %add.ptr31, align 8, !dbg !2056
  %and32 = and i64 %3, 255, !dbg !2057
  %conv33 = trunc i64 %and32 to i8, !dbg !2058
  %idx.ext34 = sext i32 %inc21 to i64, !dbg !2059
  %add.ptr35 = getelementptr inbounds i8, i8* %wrapindex, i64 %idx.ext34, !dbg !2059
  store i8 %conv33, i8* %add.ptr35, align 1, !dbg !2060
  %cmp36 = icmp slt i32 %i.0, %add7, !dbg !2061
  br i1 %cmp36, label %if.then38, label %if.end74, !dbg !2063

if.then38:                                        ; preds = %if.end
  call void @llvm.dbg.value(metadata i32 0, metadata !2064, metadata !DIExpression()), !dbg !1971
  %tobool = icmp ne i16 %addoption, 0, !dbg !2065
  br i1 %tobool, label %if.then39, label %if.else54, !dbg !2068

if.then39:                                        ; preds = %if.then38
  %cmp40 = icmp slt i32 %i.0, %oldfiles, !dbg !2069
  br i1 %cmp40, label %if.then42, label %if.else, !dbg !2072

if.then42:                                        ; preds = %if.then39
  br label %while.body44, !dbg !2073

while.body44:                                     ; preds = %if.end52, %if.then42
  %j.1 = phi i32 [ %inc29, %if.then42 ], [ %inc45, %if.end52 ], !dbg !2077
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !1989, metadata !DIExpression()), !dbg !1971
  br label %while_continue___3, !dbg !2078

while_continue___3:                               ; preds = %while.body44
  br label %while_continue___0, !dbg !2078

while_continue___0:                               ; preds = %while_continue___3
  call void @llvm.dbg.value(metadata i32 %j.1, metadata !2079, metadata !DIExpression()), !dbg !1971
  %inc45 = add nsw i32 %j.1, 1, !dbg !2080
  call void @llvm.dbg.value(metadata i32 %inc45, metadata !1989, metadata !DIExpression()), !dbg !1971
  %idx.ext46 = sext i32 %j.1 to i64, !dbg !2082
  %add.ptr47 = getelementptr inbounds i8, i8* %wrapindex, i64 %idx.ext46, !dbg !2082
  %4 = load i8, i8* %add.ptr47, align 1, !dbg !2084
  %conv48 = sext i8 %4 to i32, !dbg !2085
  %cmp49 = icmp ne i32 %conv48, 0, !dbg !2086
  br i1 %cmp49, label %if.end52, label %if.then51, !dbg !2087

if.then51:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2088

if.end52:                                         ; preds = %while_continue___0
  br label %while.body44, !dbg !2073, !llvm.loop !2090

while_break___3:                                  ; No predecessors!
  br label %while_break___0, !dbg !2092

while_break___0:                                  ; preds = %while_break___3, %if.then51
  br label %if.end53, !dbg !2093

if.else:                                          ; preds = %if.then39
  br label %_L, !dbg !2094

if.end53:                                         ; preds = %while_break___0
  br label %if.end73, !dbg !2096

if.else54:                                        ; preds = %if.then38
  br label %_L, !dbg !2097

_L:                                               ; preds = %if.else54, %if.else
  br label %while.body56, !dbg !2098

while.body56:                                     ; preds = %if.end72, %_L
  %j.2 = phi i32 [ %inc29, %_L ], [ %inc65, %if.end72 ], !dbg !2077
  %k.0 = phi i32 [ 0, %_L ], [ %inc57, %if.end72 ], !dbg !2102
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !2064, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !1989, metadata !DIExpression()), !dbg !1971
  br label %while_continue___4, !dbg !2103

while_continue___4:                               ; preds = %while.body56
  br label %while_continue___1, !dbg !2103

while_continue___1:                               ; preds = %while_continue___4
  call void @llvm.dbg.value(metadata i32 %k.0, metadata !2104, metadata !DIExpression()), !dbg !1971
  %inc57 = add nsw i32 %k.0, 1, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %inc57, metadata !2064, metadata !DIExpression()), !dbg !1971
  %add58 = add nsw i32 %i.0, 2, !dbg !2107
  %conv59 = sext i16 %optoffset to i32, !dbg !2108
  %add60 = add nsw i32 %add58, %conv59, !dbg !2109
  %sub = sub nsw i32 %add60, %oldfiles, !dbg !2110
  %idx.ext61 = sext i32 %sub to i64, !dbg !2111
  %add.ptr62 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext61, !dbg !2111
  %5 = load i8*, i8** %add.ptr62, align 8, !dbg !2112
  %idx.ext63 = sext i32 %k.0 to i64, !dbg !2113
  %add.ptr64 = getelementptr inbounds i8, i8* %5, i64 %idx.ext63, !dbg !2113
  %6 = load i8, i8* %add.ptr64, align 1, !dbg !2114
  call void @llvm.dbg.value(metadata i8 %6, metadata !2115, metadata !DIExpression()), !dbg !1971
  call void @llvm.dbg.value(metadata i32 %j.2, metadata !2116, metadata !DIExpression()), !dbg !1971
  %inc65 = add nsw i32 %j.2, 1, !dbg !2117
  call void @llvm.dbg.value(metadata i32 %inc65, metadata !1989, metadata !DIExpression()), !dbg !1971
  %idx.ext66 = sext i32 %j.2 to i64, !dbg !2118
  %add.ptr67 = getelementptr inbounds i8, i8* %wrapindex, i64 %idx.ext66, !dbg !2118
  store i8 %6, i8* %add.ptr67, align 1, !dbg !2119
  %conv68 = sext i8 %6 to i32, !dbg !2120
  %cmp69 = icmp ne i32 %conv68, 0, !dbg !2122
  br i1 %cmp69, label %if.end72, label %if.then71, !dbg !2123

if.then71:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !2124

if.end72:                                         ; preds = %while_continue___1
  br label %while.body56, !dbg !2098, !llvm.loop !2126

while_break___4:                                  ; No predecessors!
  br label %while_break___1, !dbg !2128

while_break___1:                                  ; preds = %while_break___4, %if.then71
  br label %if.end73

if.end73:                                         ; preds = %while_break___1, %if.end53
  %j.3 = phi i32 [ %inc45, %if.end53 ], [ %inc65, %while_break___1 ], !dbg !2129
  call void @llvm.dbg.value(metadata i32 %j.3, metadata !1989, metadata !DIExpression()), !dbg !1971
  br label %if.end74, !dbg !2130

if.end74:                                         ; preds = %if.end73, %if.end
  %j.4 = phi i32 [ %j.3, %if.end73 ], [ %inc29, %if.end ], !dbg !2077
  call void @llvm.dbg.value(metadata i32 %j.4, metadata !1989, metadata !DIExpression()), !dbg !1971
  %inc75 = add nsw i32 %i.0, 1, !dbg !2131
  call void @llvm.dbg.value(metadata i32 %inc75, metadata !2014, metadata !DIExpression()), !dbg !1971
  br label %while.body, !dbg !2015, !llvm.loop !2132

while_break___2:                                  ; No predecessors!
  br label %while_break, !dbg !2134

while_break:                                      ; preds = %while_break___2, %if.then
  %sub76 = sub nsw i32 %indexsize, 4, !dbg !2135
  %cmp77 = icmp ne i32 %j.0, %sub76, !dbg !2137
  br i1 %cmp77, label %if.then79, label %if.end81, !dbg !2138

if.then79:                                        ; preds = %while_break
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2139
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.73, i32 0, i32 0)), !dbg !2143
  call void @exit(i32 -1) #7, !dbg !2144
  unreachable, !dbg !2144

if.end81:                                         ; preds = %while_break
  ret i8* %wrapindex, !dbg !2146
}

; Function Attrs: nounwind
declare i8* @strncat(i8*, i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define zeroext i8 @charat(i8* %s, i32 %pos) #0 !dbg !2147 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !2150, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %pos, metadata !2152, metadata !DIExpression()), !dbg !2151
  %call = call i32 @strlen(i8* %s) #8, !dbg !2153
  call void @llvm.dbg.value(metadata i32 %call, metadata !2157, metadata !DIExpression()), !dbg !2151
  %cmp = icmp slt i32 %pos, %call, !dbg !2158
  br i1 %cmp, label %if.then, label %if.else, !dbg !2160

if.then:                                          ; preds = %entry
  %idx.ext = sext i32 %pos to i64, !dbg !2161
  %add.ptr = getelementptr inbounds i8, i8* %s, i64 %idx.ext, !dbg !2161
  %0 = load i8, i8* %add.ptr, align 1, !dbg !2163
  br label %return, !dbg !2164

if.else:                                          ; preds = %entry
  br label %return, !dbg !2165

return:                                           ; preds = %if.else, %if.then
  %retval.0 = phi i8 [ %0, %if.then ], [ -1, %if.else ], !dbg !2167
  ret i8 %retval.0, !dbg !2168
}

declare i32 @fputc(i32, %struct._IO_FILE*) #2

declare i32 @fflush(%struct._IO_FILE*) #2

declare i32 @system(i8*) #2

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!93, !94, !95, !96, !97}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!98}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "id3", scope: !2, file: !89, line: 36, type: !90, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !79, nameTableKind: GNU)
!3 = !DIFile(filename: "c/mp3wrap-0.5.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !7, !10, !13, !14, !63, !68, !76, !12, !77, !78, !46, !9}
!6 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !16, line: 49, baseType: !17)
!16 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !18, line: 271, size: 1728, elements: !19)
!18 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !40, !41, !42, !43, !47, !49, !51, !55, !58, !62, !64, !65, !66, !67, !71, !72}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !17, file: !18, line: 272, baseType: !13, size: 32)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !17, file: !18, line: 273, baseType: !12, size: 64, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !17, file: !18, line: 274, baseType: !12, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !17, file: !18, line: 275, baseType: !12, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !17, file: !18, line: 276, baseType: !12, size: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !17, file: !18, line: 277, baseType: !12, size: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !17, file: !18, line: 278, baseType: !12, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !17, file: !18, line: 279, baseType: !12, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !17, file: !18, line: 280, baseType: !12, size: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !17, file: !18, line: 281, baseType: !12, size: 64, offset: 576)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !17, file: !18, line: 282, baseType: !12, size: 64, offset: 640)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !17, file: !18, line: 283, baseType: !12, size: 64, offset: 704)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !17, file: !18, line: 284, baseType: !33, size: 64, offset: 768)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !18, line: 186, size: 192, elements: !35)
!35 = !{!36, !37, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !34, file: !18, line: 187, baseType: !33, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !34, file: !18, line: 188, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !34, file: !18, line: 189, baseType: !13, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !17, file: !18, line: 285, baseType: !38, size: 64, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !17, file: !18, line: 286, baseType: !13, size: 32, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !17, file: !18, line: 287, baseType: !13, size: 32, offset: 928)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !17, file: !18, line: 288, baseType: !44, size: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !45, line: 141, baseType: !46)
!45 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !17, file: !18, line: 289, baseType: !48, size: 16, offset: 1024)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !17, file: !18, line: 290, baseType: !50, size: 8, offset: 1040)
!50 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !17, file: !18, line: 291, baseType: !52, size: 8, offset: 1048)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 1)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !17, file: !18, line: 292, baseType: !56, size: 64, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !18, line: 180, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !17, file: !18, line: 293, baseType: !59, size: 64, offset: 1152)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !45, line: 142, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !45, line: 56, baseType: !61)
!61 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !17, file: !18, line: 294, baseType: !63, size: 64, offset: 1216)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !17, file: !18, line: 295, baseType: !63, size: 64, offset: 1280)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !17, file: !18, line: 296, baseType: !63, size: 64, offset: 1344)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !17, file: !18, line: 297, baseType: !63, size: 64, offset: 1408)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !17, file: !18, line: 298, baseType: !68, size: 32, offset: 1472)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !69, line: 211, baseType: !70)
!69 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !17, file: !18, line: 299, baseType: !13, size: 32, offset: 1504)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !17, file: !18, line: 300, baseType: !73, size: 192, offset: 1536)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 192, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 24)
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!79 = !{!0, !80}
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(name: "crctab", scope: !2, file: !82, line: 31, type: !83, isLocal: true, isDefinition: true)
!82 = !DIFile(filename: "/home/wslee/benchmarks/sound/mp3wrap-0.5/crc.c", directory: "")
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 8192, elements: !87)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_int32_t", file: !86, line: 203, baseType: !70)
!86 = !DIFile(filename: "/usr/include/sys/types.h", directory: "")
!87 = !{!88}
!88 = !DISubrange(count: 256)
!89 = !DIFile(filename: "/home/wslee/benchmarks/sound/mp3wrap-0.5/mp3wrap.c", directory: "")
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 3680, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 460)
!93 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!94 = !{i32 2, !"Dwarf Version", i32 4}
!95 = !{i32 2, !"Debug Info Version", i32 3}
!96 = !{i32 1, !"wchar_size", i32 4}
!97 = !{i32 7, !"PIC Level", i32 2}
!98 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!99 = distinct !DISubprogram(name: "main", scope: !89, file: !89, line: 68, type: !100, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!100 = !DISubroutineType(types: !101)
!101 = !{!13, !13, !102}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!103 = !DILocalVariable(name: "argc", arg: 1, scope: !99, file: !89, line: 68, type: !13)
!104 = !DILocation(line: 0, scope: !99)
!105 = !DILocalVariable(name: "argv", arg: 2, scope: !99, file: !89, line: 68, type: !102)
!106 = !DILocalVariable(name: "splitpoints", scope: !99, file: !89, line: 72, type: !107)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 16384, elements: !87)
!108 = !DILocation(line: 72, column: 17, scope: !99)
!109 = !DILocalVariable(name: "filename", scope: !99, file: !89, line: 78, type: !110)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 4096, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 512)
!113 = !DILocation(line: 78, column: 17, scope: !99)
!114 = !DILocalVariable(name: "ext", scope: !99, file: !89, line: 81, type: !110)
!115 = !DILocation(line: 81, column: 17, scope: !99)
!116 = !DILocalVariable(name: "__cil_tmp71", scope: !99, file: !89, line: 138, type: !63)
!117 = !DILocation(line: 138, column: 9, scope: !99)
!118 = !DILocalVariable(name: "__cil_tmp72", scope: !99, file: !89, line: 139, type: !63)
!119 = !DILocation(line: 139, column: 9, scope: !99)
!120 = !DILocalVariable(name: "__cil_tmp73", scope: !99, file: !89, line: 140, type: !63)
!121 = !DILocation(line: 140, column: 9, scope: !99)
!122 = !DILocalVariable(name: "__cil_tmp74", scope: !99, file: !89, line: 141, type: !12)
!123 = !DILocation(line: 141, column: 9, scope: !99)
!124 = !DILocalVariable(name: "__cil_tmp75", scope: !99, file: !89, line: 142, type: !12)
!125 = !DILocation(line: 142, column: 9, scope: !99)
!126 = !DILocalVariable(name: "__cil_tmp76", scope: !99, file: !89, line: 143, type: !12)
!127 = !DILocation(line: 143, column: 9, scope: !99)
!128 = !DILocalVariable(name: "__cil_tmp77", scope: !99, file: !89, line: 144, type: !12)
!129 = !DILocation(line: 144, column: 9, scope: !99)
!130 = !DILocalVariable(name: "__cil_tmp78", scope: !99, file: !89, line: 145, type: !12)
!131 = !DILocation(line: 145, column: 9, scope: !99)
!132 = !DILocalVariable(name: "__cil_tmp79", scope: !99, file: !89, line: 146, type: !12)
!133 = !DILocation(line: 146, column: 9, scope: !99)
!134 = !DILocalVariable(name: "__cil_tmp80", scope: !99, file: !89, line: 147, type: !12)
!135 = !DILocation(line: 147, column: 9, scope: !99)
!136 = !DILocalVariable(name: "__cil_tmp81", scope: !99, file: !89, line: 148, type: !12)
!137 = !DILocation(line: 148, column: 9, scope: !99)
!138 = !DILocalVariable(name: "__cil_tmp82", scope: !99, file: !89, line: 149, type: !12)
!139 = !DILocation(line: 149, column: 9, scope: !99)
!140 = !DILocalVariable(name: "__cil_tmp83", scope: !99, file: !89, line: 150, type: !12)
!141 = !DILocation(line: 150, column: 9, scope: !99)
!142 = !DILocalVariable(name: "__cil_tmp84", scope: !99, file: !89, line: 151, type: !12)
!143 = !DILocation(line: 151, column: 9, scope: !99)
!144 = !DILocalVariable(name: "__cil_tmp85", scope: !99, file: !89, line: 152, type: !12)
!145 = !DILocation(line: 152, column: 9, scope: !99)
!146 = !DILocalVariable(name: "__cil_tmp86", scope: !99, file: !89, line: 153, type: !12)
!147 = !DILocation(line: 153, column: 9, scope: !99)
!148 = !DILocalVariable(name: "__cil_tmp87", scope: !99, file: !89, line: 154, type: !12)
!149 = !DILocation(line: 154, column: 9, scope: !99)
!150 = !DILocalVariable(name: "__cil_tmp88", scope: !99, file: !89, line: 155, type: !12)
!151 = !DILocation(line: 155, column: 9, scope: !99)
!152 = !DILocalVariable(name: "__cil_tmp89", scope: !99, file: !89, line: 156, type: !12)
!153 = !DILocation(line: 156, column: 9, scope: !99)
!154 = !DILocalVariable(name: "__cil_tmp90", scope: !99, file: !89, line: 157, type: !12)
!155 = !DILocation(line: 157, column: 9, scope: !99)
!156 = !DILocalVariable(name: "__cil_tmp91", scope: !99, file: !89, line: 158, type: !12)
!157 = !DILocation(line: 158, column: 9, scope: !99)
!158 = !DILocalVariable(name: "__cil_tmp92", scope: !99, file: !89, line: 159, type: !12)
!159 = !DILocation(line: 159, column: 9, scope: !99)
!160 = !DILocalVariable(name: "__cil_tmp93", scope: !99, file: !89, line: 160, type: !12)
!161 = !DILocation(line: 160, column: 9, scope: !99)
!162 = !DILocalVariable(name: "__cil_tmp94", scope: !99, file: !89, line: 161, type: !12)
!163 = !DILocation(line: 161, column: 9, scope: !99)
!164 = !DILocalVariable(name: "__cil_tmp95", scope: !99, file: !89, line: 162, type: !12)
!165 = !DILocation(line: 162, column: 9, scope: !99)
!166 = !DILocalVariable(name: "__cil_tmp96", scope: !99, file: !89, line: 163, type: !12)
!167 = !DILocation(line: 163, column: 9, scope: !99)
!168 = !DILocalVariable(name: "__cil_tmp97", scope: !99, file: !89, line: 164, type: !12)
!169 = !DILocation(line: 164, column: 9, scope: !99)
!170 = !DILocalVariable(name: "__cil_tmp98", scope: !99, file: !89, line: 165, type: !12)
!171 = !DILocation(line: 165, column: 9, scope: !99)
!172 = !DILocalVariable(name: "__cil_tmp99", scope: !99, file: !89, line: 166, type: !12)
!173 = !DILocation(line: 166, column: 9, scope: !99)
!174 = !DILocalVariable(name: "__cil_tmp100", scope: !99, file: !89, line: 167, type: !12)
!175 = !DILocation(line: 167, column: 9, scope: !99)
!176 = !DILocalVariable(name: "__cil_tmp101", scope: !99, file: !89, line: 168, type: !12)
!177 = !DILocation(line: 168, column: 9, scope: !99)
!178 = !DILocalVariable(name: "__cil_tmp102", scope: !99, file: !89, line: 169, type: !12)
!179 = !DILocation(line: 169, column: 9, scope: !99)
!180 = !DILocalVariable(name: "__cil_tmp103", scope: !99, file: !89, line: 170, type: !12)
!181 = !DILocation(line: 170, column: 9, scope: !99)
!182 = !DILocalVariable(name: "__cil_tmp104", scope: !99, file: !89, line: 171, type: !12)
!183 = !DILocation(line: 171, column: 9, scope: !99)
!184 = !DILocalVariable(name: "__cil_tmp105", scope: !99, file: !89, line: 172, type: !12)
!185 = !DILocation(line: 172, column: 9, scope: !99)
!186 = !DILocalVariable(name: "__cil_tmp106", scope: !99, file: !89, line: 173, type: !12)
!187 = !DILocation(line: 173, column: 9, scope: !99)
!188 = !DILocalVariable(name: "__cil_tmp107", scope: !99, file: !89, line: 174, type: !12)
!189 = !DILocation(line: 174, column: 9, scope: !99)
!190 = !DILocalVariable(name: "__cil_tmp108", scope: !99, file: !89, line: 175, type: !12)
!191 = !DILocation(line: 175, column: 9, scope: !99)
!192 = !DILocalVariable(name: "__cil_tmp109", scope: !99, file: !89, line: 176, type: !12)
!193 = !DILocation(line: 176, column: 9, scope: !99)
!194 = !DILocalVariable(name: "__cil_tmp110", scope: !99, file: !89, line: 177, type: !12)
!195 = !DILocation(line: 177, column: 9, scope: !99)
!196 = !DILocalVariable(name: "__cil_tmp111", scope: !99, file: !89, line: 178, type: !12)
!197 = !DILocation(line: 178, column: 9, scope: !99)
!198 = !DILocalVariable(name: "__cil_tmp112", scope: !99, file: !89, line: 179, type: !12)
!199 = !DILocation(line: 179, column: 9, scope: !99)
!200 = !DILocalVariable(name: "__cil_tmp113", scope: !99, file: !89, line: 180, type: !12)
!201 = !DILocation(line: 180, column: 9, scope: !99)
!202 = !DILocalVariable(name: "__cil_tmp114", scope: !99, file: !89, line: 181, type: !12)
!203 = !DILocation(line: 181, column: 9, scope: !99)
!204 = !DILocalVariable(name: "__cil_tmp115", scope: !99, file: !89, line: 182, type: !12)
!205 = !DILocation(line: 182, column: 9, scope: !99)
!206 = !DILocalVariable(name: "__cil_tmp116", scope: !99, file: !89, line: 183, type: !12)
!207 = !DILocation(line: 183, column: 9, scope: !99)
!208 = !DILocalVariable(name: "__cil_tmp117", scope: !99, file: !89, line: 184, type: !12)
!209 = !DILocation(line: 184, column: 9, scope: !99)
!210 = !DILocalVariable(name: "__cil_tmp118", scope: !99, file: !89, line: 185, type: !12)
!211 = !DILocation(line: 185, column: 9, scope: !99)
!212 = !DILocalVariable(name: "__cil_tmp119", scope: !99, file: !89, line: 186, type: !12)
!213 = !DILocation(line: 186, column: 9, scope: !99)
!214 = !DILocalVariable(name: "__cil_tmp120", scope: !99, file: !89, line: 187, type: !12)
!215 = !DILocation(line: 187, column: 9, scope: !99)
!216 = !DILocalVariable(name: "__cil_tmp121", scope: !99, file: !89, line: 188, type: !12)
!217 = !DILocation(line: 188, column: 9, scope: !99)
!218 = !DILocalVariable(name: "__cil_tmp122", scope: !99, file: !89, line: 189, type: !12)
!219 = !DILocation(line: 189, column: 9, scope: !99)
!220 = !DILocalVariable(name: "__cil_tmp123", scope: !99, file: !89, line: 190, type: !12)
!221 = !DILocation(line: 190, column: 9, scope: !99)
!222 = !DILocalVariable(name: "__cil_tmp124", scope: !99, file: !89, line: 191, type: !12)
!223 = !DILocation(line: 191, column: 9, scope: !99)
!224 = !DILocalVariable(name: "__cil_tmp125", scope: !99, file: !89, line: 192, type: !12)
!225 = !DILocation(line: 192, column: 9, scope: !99)
!226 = !DILocalVariable(name: "__cil_tmp126", scope: !99, file: !89, line: 193, type: !12)
!227 = !DILocation(line: 193, column: 9, scope: !99)
!228 = !DILocalVariable(name: "__cil_tmp127", scope: !99, file: !89, line: 194, type: !12)
!229 = !DILocation(line: 194, column: 9, scope: !99)
!230 = !DILocalVariable(name: "__cil_tmp128", scope: !99, file: !89, line: 195, type: !12)
!231 = !DILocation(line: 195, column: 9, scope: !99)
!232 = !DILocalVariable(name: "__cil_tmp129", scope: !99, file: !89, line: 196, type: !12)
!233 = !DILocation(line: 196, column: 9, scope: !99)
!234 = !DILocalVariable(name: "__cil_tmp130", scope: !99, file: !89, line: 197, type: !12)
!235 = !DILocation(line: 197, column: 9, scope: !99)
!236 = !DILocalVariable(name: "__cil_tmp131", scope: !99, file: !89, line: 198, type: !12)
!237 = !DILocation(line: 198, column: 9, scope: !99)
!238 = !DILocalVariable(name: "__cil_tmp132", scope: !99, file: !89, line: 199, type: !12)
!239 = !DILocation(line: 199, column: 9, scope: !99)
!240 = !DILocalVariable(name: "__cil_tmp133", scope: !99, file: !89, line: 200, type: !12)
!241 = !DILocation(line: 200, column: 9, scope: !99)
!242 = !DILocalVariable(name: "__cil_tmp134", scope: !99, file: !89, line: 201, type: !12)
!243 = !DILocation(line: 201, column: 9, scope: !99)
!244 = !DILocalVariable(name: "__cil_tmp135", scope: !99, file: !89, line: 202, type: !12)
!245 = !DILocation(line: 202, column: 9, scope: !99)
!246 = !DILocalVariable(name: "__cil_tmp136", scope: !99, file: !89, line: 203, type: !12)
!247 = !DILocation(line: 203, column: 9, scope: !99)
!248 = !DILocalVariable(name: "__cil_tmp137", scope: !99, file: !89, line: 204, type: !12)
!249 = !DILocation(line: 204, column: 9, scope: !99)
!250 = !DILocalVariable(name: "__cil_tmp138", scope: !99, file: !89, line: 205, type: !12)
!251 = !DILocation(line: 205, column: 9, scope: !99)
!252 = !DILocalVariable(name: "__cil_tmp139", scope: !99, file: !89, line: 206, type: !12)
!253 = !DILocation(line: 206, column: 9, scope: !99)
!254 = !DILocalVariable(name: "__cil_tmp140", scope: !99, file: !89, line: 207, type: !12)
!255 = !DILocation(line: 207, column: 9, scope: !99)
!256 = !DILocalVariable(name: "__cil_tmp141", scope: !99, file: !89, line: 208, type: !12)
!257 = !DILocation(line: 208, column: 9, scope: !99)
!258 = !DILocalVariable(name: "__cil_tmp142", scope: !99, file: !89, line: 209, type: !12)
!259 = !DILocation(line: 209, column: 9, scope: !99)
!260 = !DILocalVariable(name: "__cil_tmp143", scope: !99, file: !89, line: 210, type: !12)
!261 = !DILocation(line: 210, column: 9, scope: !99)
!262 = !DILocalVariable(name: "__cil_tmp144", scope: !99, file: !89, line: 211, type: !12)
!263 = !DILocation(line: 211, column: 9, scope: !99)
!264 = !DILocalVariable(name: "__cil_tmp145", scope: !99, file: !89, line: 212, type: !12)
!265 = !DILocation(line: 212, column: 9, scope: !99)
!266 = !DILocalVariable(name: "__cil_tmp146", scope: !99, file: !89, line: 213, type: !12)
!267 = !DILocation(line: 213, column: 9, scope: !99)
!268 = !DILocalVariable(name: "__cil_tmp147", scope: !99, file: !89, line: 214, type: !12)
!269 = !DILocation(line: 214, column: 9, scope: !99)
!270 = !DILocalVariable(name: "__cil_tmp148", scope: !99, file: !89, line: 215, type: !12)
!271 = !DILocation(line: 215, column: 9, scope: !99)
!272 = !DILocalVariable(name: "__cil_tmp149", scope: !99, file: !89, line: 216, type: !12)
!273 = !DILocation(line: 216, column: 9, scope: !99)
!274 = !DILocalVariable(name: "__cil_tmp150", scope: !99, file: !89, line: 217, type: !12)
!275 = !DILocation(line: 217, column: 9, scope: !99)
!276 = !DILocalVariable(name: "__cil_tmp151", scope: !99, file: !89, line: 218, type: !12)
!277 = !DILocation(line: 218, column: 9, scope: !99)
!278 = !DILocalVariable(name: "__cil_tmp152", scope: !99, file: !89, line: 219, type: !12)
!279 = !DILocation(line: 219, column: 9, scope: !99)
!280 = !DILocalVariable(name: "__cil_tmp153", scope: !99, file: !89, line: 220, type: !12)
!281 = !DILocation(line: 220, column: 9, scope: !99)
!282 = !DILocalVariable(name: "__cil_tmp154", scope: !99, file: !89, line: 221, type: !12)
!283 = !DILocation(line: 221, column: 9, scope: !99)
!284 = !DILocalVariable(name: "__cil_tmp155", scope: !99, file: !89, line: 222, type: !12)
!285 = !DILocation(line: 222, column: 9, scope: !99)
!286 = !DILocalVariable(name: "__cil_tmp156", scope: !99, file: !89, line: 223, type: !12)
!287 = !DILocation(line: 223, column: 9, scope: !99)
!288 = !DILocalVariable(name: "__cil_tmp157", scope: !99, file: !89, line: 224, type: !12)
!289 = !DILocation(line: 224, column: 9, scope: !99)
!290 = !DILocalVariable(name: "__cil_tmp158", scope: !99, file: !89, line: 225, type: !12)
!291 = !DILocation(line: 225, column: 9, scope: !99)
!292 = !DILocalVariable(name: "__cil_tmp159", scope: !99, file: !89, line: 226, type: !12)
!293 = !DILocation(line: 226, column: 9, scope: !99)
!294 = !DILocalVariable(name: "__cil_tmp160", scope: !99, file: !89, line: 227, type: !12)
!295 = !DILocation(line: 227, column: 9, scope: !99)
!296 = !DILocalVariable(name: "__cil_tmp161", scope: !99, file: !89, line: 228, type: !12)
!297 = !DILocation(line: 228, column: 9, scope: !99)
!298 = !DILocalVariable(name: "begin", scope: !99, file: !89, line: 73, type: !76)
!299 = !DILocalVariable(name: "len", scope: !99, file: !89, line: 75, type: !76)
!300 = !DILocalVariable(name: "i", scope: !99, file: !89, line: 84, type: !13)
!301 = !DILocalVariable(name: "j", scope: !99, file: !89, line: 85, type: !13)
!302 = !DILocalVariable(name: "oldfiles", scope: !99, file: !89, line: 87, type: !13)
!303 = !DILocalVariable(name: "indexsize", scope: !99, file: !89, line: 88, type: !13)
!304 = !DILocalVariable(name: "id3offset", scope: !99, file: !89, line: 89, type: !13)
!305 = !DILocalVariable(name: "optoffset", scope: !99, file: !89, line: 90, type: !6)
!306 = !DILocalVariable(name: "addoption", scope: !99, file: !89, line: 91, type: !6)
!307 = !DILocalVariable(name: "listoption", scope: !99, file: !89, line: 92, type: !6)
!308 = !DILocalVariable(name: "verboption", scope: !99, file: !89, line: 93, type: !6)
!309 = !DILocalVariable(name: "ismp3wrap", scope: !99, file: !89, line: 94, type: !6)
!310 = !DILocation(line: 77, column: 3, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !89, line: 76, column: 3)
!312 = distinct !DILexicalBlock(scope: !313, file: !89, line: 231, column: 3)
!313 = distinct !DILexicalBlock(scope: !99, file: !89, line: 230, column: 3)
!314 = !DILocation(line: 78, column: 3, scope: !315)
!315 = distinct !DILexicalBlock(scope: !312, file: !89, line: 79, column: 3)
!316 = !DILocation(line: 79, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !312, file: !89, line: 80, column: 3)
!318 = !DILocation(line: 81, column: 3, scope: !319)
!319 = distinct !DILexicalBlock(scope: !320, file: !89, line: 83, column: 3)
!320 = distinct !DILexicalBlock(scope: !313, file: !89, line: 82, column: 3)
!321 = !DILocation(line: 0, scope: !313)
!322 = !DILocation(line: 75, column: 14, scope: !312)
!323 = !DILocation(line: 81, column: 13, scope: !319)
!324 = !DILocation(line: 81, column: 14, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !89, line: 85, column: 5)
!326 = distinct !DILexicalBlock(scope: !327, file: !89, line: 84, column: 5)
!327 = distinct !DILexicalBlock(scope: !319, file: !89, line: 81, column: 13)
!328 = !DILocalVariable(name: "option", scope: !99, file: !89, line: 83, type: !13)
!329 = !DILocation(line: 81, column: 19, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !89, line: 81, column: 9)
!331 = !DILocation(line: 81, column: 9, scope: !327)
!332 = !DILocation(line: 81, column: 7, scope: !333)
!333 = distinct !DILexicalBlock(scope: !330, file: !89, line: 81, column: 27)
!334 = !DILocation(line: 84, column: 16, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !89, line: 84, column: 9)
!336 = distinct !DILexicalBlock(scope: !327, file: !89, line: 83, column: 5)
!337 = !DILocation(line: 84, column: 9, scope: !336)
!338 = !DILocation(line: 84, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !89, line: 84, column: 24)
!340 = !DILocation(line: 89, column: 16, scope: !341)
!341 = distinct !DILexicalBlock(scope: !336, file: !89, line: 89, column: 9)
!342 = !DILocation(line: 89, column: 9, scope: !336)
!343 = !DILocation(line: 89, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !341, file: !89, line: 89, column: 23)
!345 = !DILocation(line: 94, column: 16, scope: !346)
!346 = distinct !DILexicalBlock(scope: !336, file: !89, line: 94, column: 9)
!347 = !DILocation(line: 94, column: 9, scope: !336)
!348 = !DILocation(line: 94, column: 7, scope: !349)
!349 = distinct !DILexicalBlock(scope: !346, file: !89, line: 94, column: 24)
!350 = !DILocation(line: 98, column: 5, scope: !336)
!351 = !DILocation(line: 84, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !336, file: !89, line: 84, column: 9)
!353 = !DILocation(line: 84, column: 25, scope: !352)
!354 = !DILocation(line: 85, column: 5, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !89, line: 84, column: 31)
!356 = !DILocation(line: 87, column: 5, scope: !336)
!357 = !DILocation(line: 89, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !336, file: !89, line: 89, column: 9)
!359 = !DILocation(line: 89, column: 25, scope: !358)
!360 = !DILocation(line: 90, column: 5, scope: !361)
!361 = distinct !DILexicalBlock(scope: !358, file: !89, line: 89, column: 31)
!362 = !DILocation(line: 92, column: 5, scope: !336)
!363 = !DILocation(line: 94, column: 9, scope: !364)
!364 = distinct !DILexicalBlock(scope: !336, file: !89, line: 94, column: 9)
!365 = !DILocation(line: 94, column: 25, scope: !364)
!366 = !DILocation(line: 95, column: 5, scope: !367)
!367 = distinct !DILexicalBlock(scope: !364, file: !89, line: 94, column: 31)
!368 = !DILocation(line: 96, column: 5, scope: !336)
!369 = !DILocation(line: 98, column: 38, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !89, line: 99, column: 5)
!371 = distinct !DILexicalBlock(scope: !336, file: !89, line: 98, column: 5)
!372 = !DILocation(line: 98, column: 5, scope: !370)
!373 = !DILocation(line: 99, column: 5, scope: !374)
!374 = distinct !DILexicalBlock(scope: !371, file: !89, line: 100, column: 5)
!375 = !DILocation(line: 0, scope: !336)
!376 = distinct !{!376, !318, !377}
!377 = !DILocation(line: 103, column: 3, scope: !319)
!378 = !DILocation(line: 105, column: 3, scope: !319)
!379 = !DILocation(line: 104, column: 9, scope: !380)
!380 = distinct !DILexicalBlock(scope: !313, file: !89, line: 104, column: 7)
!381 = !DILocation(line: 104, column: 7, scope: !313)
!382 = !DILocation(line: 104, column: 14, scope: !383)
!383 = distinct !DILexicalBlock(scope: !384, file: !89, line: 104, column: 9)
!384 = distinct !DILexicalBlock(scope: !380, file: !89, line: 104, column: 21)
!385 = !DILocation(line: 104, column: 9, scope: !384)
!386 = !DILocation(line: 104, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !383, file: !89, line: 104, column: 19)
!388 = !DILocation(line: 104, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !383, file: !89, line: 105, column: 12)
!390 = !DILocation(line: 106, column: 3, scope: !384)
!391 = !DILocation(line: 104, column: 7, scope: !392)
!392 = distinct !DILexicalBlock(scope: !380, file: !89, line: 104, column: 7)
!393 = !DILocation(line: 104, column: 7, scope: !380)
!394 = !DILocation(line: 104, column: 14, scope: !395)
!395 = distinct !DILexicalBlock(scope: !396, file: !89, line: 104, column: 9)
!396 = distinct !DILexicalBlock(scope: !392, file: !89, line: 104, column: 19)
!397 = !DILocation(line: 104, column: 9, scope: !396)
!398 = !DILocation(line: 104, column: 19, scope: !395)
!399 = !DILocation(line: 105, column: 7, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !89, line: 107, column: 7)
!401 = distinct !DILexicalBlock(scope: !402, file: !89, line: 106, column: 7)
!402 = distinct !DILexicalBlock(scope: !395, file: !89, line: 104, column: 19)
!403 = !DILocation(line: 106, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !401, file: !89, line: 107, column: 7)
!405 = !DILocation(line: 107, column: 7, scope: !406)
!406 = distinct !DILexicalBlock(scope: !401, file: !89, line: 108, column: 7)
!407 = !DILocation(line: 108, column: 7, scope: !408)
!408 = distinct !DILexicalBlock(scope: !401, file: !89, line: 109, column: 7)
!409 = !DILocation(line: 109, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !401, file: !89, line: 110, column: 7)
!411 = !DILocation(line: 110, column: 7, scope: !412)
!412 = distinct !DILexicalBlock(scope: !401, file: !89, line: 111, column: 7)
!413 = !DILocation(line: 111, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !401, file: !89, line: 112, column: 7)
!415 = !DILocation(line: 112, column: 7, scope: !416)
!416 = distinct !DILexicalBlock(scope: !401, file: !89, line: 113, column: 7)
!417 = !DILocation(line: 113, column: 7, scope: !418)
!418 = distinct !DILexicalBlock(scope: !401, file: !89, line: 114, column: 7)
!419 = !DILocation(line: 114, column: 7, scope: !420)
!420 = distinct !DILexicalBlock(scope: !401, file: !89, line: 115, column: 7)
!421 = !DILocation(line: 115, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !401, file: !89, line: 116, column: 7)
!423 = !DILocation(line: 116, column: 7, scope: !424)
!424 = distinct !DILexicalBlock(scope: !401, file: !89, line: 117, column: 7)
!425 = !DILocation(line: 117, column: 7, scope: !426)
!426 = distinct !DILexicalBlock(scope: !401, file: !89, line: 118, column: 7)
!427 = !DILocation(line: 118, column: 7, scope: !428)
!428 = distinct !DILexicalBlock(scope: !401, file: !89, line: 119, column: 7)
!429 = !DILocation(line: 119, column: 7, scope: !430)
!430 = distinct !DILexicalBlock(scope: !401, file: !89, line: 120, column: 7)
!431 = !DILocation(line: 120, column: 7, scope: !432)
!432 = distinct !DILexicalBlock(scope: !401, file: !89, line: 121, column: 7)
!433 = !DILocation(line: 121, column: 7, scope: !434)
!434 = distinct !DILexicalBlock(scope: !401, file: !89, line: 122, column: 7)
!435 = !DILocation(line: 122, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !401, file: !89, line: 123, column: 7)
!437 = !DILocation(line: 126, column: 3, scope: !396)
!438 = !DILocation(line: 125, column: 18, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !89, line: 128, column: 3)
!440 = distinct !DILexicalBlock(scope: !313, file: !89, line: 127, column: 3)
!441 = !DILocation(line: 125, column: 3, scope: !439)
!442 = !DILocation(line: 127, column: 9, scope: !443)
!443 = distinct !DILexicalBlock(scope: !440, file: !89, line: 127, column: 3)
!444 = !DILocalVariable(name: "ptr", scope: !99, file: !89, line: 82, type: !12)
!445 = !DILocation(line: 127, column: 7, scope: !446)
!446 = distinct !DILexicalBlock(scope: !313, file: !89, line: 127, column: 7)
!447 = !DILocation(line: 127, column: 27, scope: !446)
!448 = !DILocation(line: 127, column: 7, scope: !313)
!449 = !DILocation(line: 127, column: 38, scope: !450)
!450 = distinct !DILexicalBlock(scope: !451, file: !89, line: 129, column: 5)
!451 = distinct !DILexicalBlock(scope: !452, file: !89, line: 128, column: 5)
!452 = distinct !DILexicalBlock(scope: !446, file: !89, line: 127, column: 59)
!453 = !DILocation(line: 127, column: 5, scope: !450)
!454 = !DILocation(line: 131, column: 3, scope: !452)
!455 = !DILocation(line: 128, column: 11, scope: !456)
!456 = distinct !DILexicalBlock(scope: !457, file: !89, line: 133, column: 5)
!457 = distinct !DILexicalBlock(scope: !458, file: !89, line: 132, column: 5)
!458 = distinct !DILexicalBlock(scope: !446, file: !89, line: 131, column: 10)
!459 = !DILocalVariable(name: "tmp", scope: !99, file: !89, line: 95, type: !68)
!460 = !DILocation(line: 128, column: 38, scope: !461)
!461 = distinct !DILexicalBlock(scope: !457, file: !89, line: 130, column: 5)
!462 = !DILocation(line: 128, column: 5, scope: !461)
!463 = !DILocation(line: 130, column: 36, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !89, line: 134, column: 3)
!465 = distinct !DILexicalBlock(scope: !313, file: !89, line: 133, column: 3)
!466 = !DILocation(line: 130, column: 3, scope: !464)
!467 = !DILocation(line: 132, column: 16, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !89, line: 133, column: 3)
!469 = !DILocalVariable(name: "file_input", scope: !99, file: !89, line: 71, type: !14)
!470 = !DILocation(line: 132, column: 7, scope: !471)
!471 = distinct !DILexicalBlock(scope: !313, file: !89, line: 132, column: 7)
!472 = !DILocation(line: 132, column: 7, scope: !313)
!473 = !DILocation(line: 132, column: 5, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !89, line: 132, column: 19)
!475 = !DILocation(line: 132, column: 57, scope: !476)
!476 = distinct !DILexicalBlock(scope: !477, file: !89, line: 135, column: 5)
!477 = distinct !DILexicalBlock(scope: !478, file: !89, line: 134, column: 5)
!478 = distinct !DILexicalBlock(scope: !471, file: !89, line: 133, column: 10)
!479 = !DILocation(line: 132, column: 18, scope: !476)
!480 = !DILocation(line: 132, column: 9, scope: !481)
!481 = distinct !DILexicalBlock(scope: !478, file: !89, line: 132, column: 9)
!482 = !DILocation(line: 132, column: 9, scope: !478)
!483 = !DILocation(line: 132, column: 21, scope: !481)
!484 = !DILocation(line: 133, column: 11, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !89, line: 133, column: 11)
!486 = distinct !DILexicalBlock(scope: !481, file: !89, line: 132, column: 21)
!487 = !DILocation(line: 133, column: 11, scope: !486)
!488 = !DILocation(line: 133, column: 9, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !89, line: 135, column: 9)
!490 = distinct !DILexicalBlock(scope: !491, file: !89, line: 134, column: 9)
!491 = distinct !DILexicalBlock(scope: !485, file: !89, line: 133, column: 23)
!492 = !DILocation(line: 136, column: 7, scope: !491)
!493 = !DILocation(line: 134, column: 7, scope: !494)
!494 = distinct !DILexicalBlock(scope: !495, file: !89, line: 138, column: 7)
!495 = distinct !DILexicalBlock(scope: !486, file: !89, line: 137, column: 7)
!496 = !DILocation(line: 134, column: 17, scope: !494)
!497 = !DILocation(line: 134, column: 50, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !89, line: 138, column: 9)
!499 = distinct !DILexicalBlock(scope: !500, file: !89, line: 137, column: 9)
!500 = distinct !DILexicalBlock(scope: !494, file: !89, line: 134, column: 17)
!501 = !DILocation(line: 134, column: 19, scope: !498)
!502 = !DILocalVariable(name: "tmp___7", scope: !99, file: !89, line: 103, type: !12)
!503 = !DILocation(line: 134, column: 16, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !89, line: 134, column: 13)
!505 = !DILocation(line: 134, column: 40, scope: !504)
!506 = !DILocation(line: 134, column: 13, scope: !500)
!507 = !DILocation(line: 134, column: 11, scope: !508)
!508 = distinct !DILexicalBlock(scope: !504, file: !89, line: 134, column: 73)
!509 = !DILocation(line: 135, column: 38, scope: !510)
!510 = distinct !DILexicalBlock(scope: !511, file: !89, line: 137, column: 9)
!511 = distinct !DILexicalBlock(scope: !500, file: !89, line: 136, column: 9)
!512 = !DILocation(line: 135, column: 15, scope: !510)
!513 = !DILocation(line: 135, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !500, file: !89, line: 135, column: 13)
!515 = !DILocation(line: 135, column: 33, scope: !514)
!516 = !DILocation(line: 135, column: 13, scope: !500)
!517 = !DILocation(line: 136, column: 44, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !89, line: 137, column: 11)
!519 = distinct !DILexicalBlock(scope: !520, file: !89, line: 136, column: 11)
!520 = distinct !DILexicalBlock(scope: !514, file: !89, line: 135, column: 65)
!521 = !DILocation(line: 136, column: 21, scope: !518)
!522 = !DILocalVariable(name: "tmp___6", scope: !99, file: !89, line: 102, type: !68)
!523 = !DILocation(line: 136, column: 23, scope: !524)
!524 = distinct !DILexicalBlock(scope: !520, file: !89, line: 136, column: 15)
!525 = !DILocation(line: 136, column: 15, scope: !520)
!526 = !DILocation(line: 137, column: 46, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !89, line: 138, column: 13)
!528 = distinct !DILexicalBlock(scope: !529, file: !89, line: 137, column: 13)
!529 = distinct !DILexicalBlock(scope: !524, file: !89, line: 136, column: 29)
!530 = !DILocation(line: 137, column: 23, scope: !527)
!531 = !DILocalVariable(name: "tmp___1", scope: !99, file: !89, line: 97, type: !68)
!532 = !DILocation(line: 137, column: 40, scope: !533)
!533 = distinct !DILexicalBlock(scope: !529, file: !89, line: 137, column: 17)
!534 = !DILocation(line: 137, column: 23, scope: !533)
!535 = !DILocation(line: 137, column: 17, scope: !533)
!536 = !DILocation(line: 137, column: 46, scope: !533)
!537 = !DILocation(line: 137, column: 17, scope: !529)
!538 = !DILocation(line: 137, column: 48, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !89, line: 139, column: 15)
!540 = distinct !DILexicalBlock(scope: !541, file: !89, line: 138, column: 15)
!541 = distinct !DILexicalBlock(scope: !533, file: !89, line: 137, column: 53)
!542 = !DILocation(line: 137, column: 25, scope: !539)
!543 = !DILocalVariable(name: "tmp___0", scope: !99, file: !89, line: 96, type: !68)
!544 = !DILocation(line: 137, column: 32, scope: !540)
!545 = !DILocation(line: 137, column: 15, scope: !540)
!546 = !DILocation(line: 137, column: 38, scope: !540)
!547 = !DILocation(line: 139, column: 13, scope: !541)
!548 = !DILocation(line: 138, column: 46, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !89, line: 141, column: 13)
!550 = distinct !DILexicalBlock(scope: !529, file: !89, line: 140, column: 13)
!551 = !DILocation(line: 138, column: 23, scope: !549)
!552 = !DILocalVariable(name: "tmp___3", scope: !99, file: !89, line: 99, type: !68)
!553 = !DILocation(line: 138, column: 40, scope: !554)
!554 = distinct !DILexicalBlock(scope: !529, file: !89, line: 138, column: 17)
!555 = !DILocation(line: 138, column: 23, scope: !554)
!556 = !DILocation(line: 138, column: 17, scope: !554)
!557 = !DILocation(line: 138, column: 46, scope: !554)
!558 = !DILocation(line: 138, column: 17, scope: !529)
!559 = !DILocation(line: 138, column: 48, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !89, line: 140, column: 15)
!561 = distinct !DILexicalBlock(scope: !562, file: !89, line: 139, column: 15)
!562 = distinct !DILexicalBlock(scope: !554, file: !89, line: 138, column: 53)
!563 = !DILocation(line: 138, column: 25, scope: !560)
!564 = !DILocalVariable(name: "tmp___2", scope: !99, file: !89, line: 98, type: !68)
!565 = !DILocation(line: 138, column: 32, scope: !561)
!566 = !DILocation(line: 138, column: 15, scope: !561)
!567 = !DILocation(line: 138, column: 38, scope: !561)
!568 = !DILocation(line: 140, column: 13, scope: !562)
!569 = !DILocation(line: 139, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !529, file: !89, line: 141, column: 13)
!571 = !DILocation(line: 140, column: 23, scope: !572)
!572 = distinct !DILexicalBlock(scope: !570, file: !89, line: 140, column: 13)
!573 = !DILocalVariable(name: "tmp___4", scope: !99, file: !89, line: 100, type: !12)
!574 = !DILocation(line: 140, column: 17, scope: !575)
!575 = distinct !DILexicalBlock(scope: !529, file: !89, line: 140, column: 17)
!576 = !DILocation(line: 140, column: 41, scope: !575)
!577 = !DILocation(line: 140, column: 17, scope: !529)
!578 = !DILocation(line: 140, column: 25, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !89, line: 142, column: 15)
!580 = distinct !DILexicalBlock(scope: !581, file: !89, line: 141, column: 15)
!581 = distinct !DILexicalBlock(scope: !575, file: !89, line: 140, column: 73)
!582 = !DILocalVariable(name: "tmp___5", scope: !99, file: !89, line: 101, type: !12)
!583 = !DILocation(line: 140, column: 19, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !89, line: 140, column: 19)
!585 = !DILocation(line: 140, column: 43, scope: !584)
!586 = !DILocation(line: 140, column: 19, scope: !581)
!587 = !DILocation(line: 141, column: 21, scope: !588)
!588 = distinct !DILexicalBlock(scope: !589, file: !89, line: 141, column: 21)
!589 = distinct !DILexicalBlock(scope: !584, file: !89, line: 140, column: 75)
!590 = !DILocation(line: 141, column: 21, scope: !589)
!591 = !DILocation(line: 141, column: 19, scope: !592)
!592 = distinct !DILexicalBlock(scope: !593, file: !89, line: 143, column: 19)
!593 = distinct !DILexicalBlock(scope: !594, file: !89, line: 142, column: 19)
!594 = distinct !DILexicalBlock(scope: !588, file: !89, line: 141, column: 33)
!595 = !DILocation(line: 144, column: 17, scope: !594)
!596 = !DILocation(line: 142, column: 50, scope: !597)
!597 = distinct !DILexicalBlock(scope: !598, file: !89, line: 146, column: 17)
!598 = distinct !DILexicalBlock(scope: !589, file: !89, line: 145, column: 17)
!599 = !DILocation(line: 142, column: 17, scope: !597)
!600 = !DILocation(line: 146, column: 15, scope: !589)
!601 = !DILocation(line: 144, column: 50, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !89, line: 148, column: 17)
!603 = distinct !DILexicalBlock(scope: !604, file: !89, line: 147, column: 17)
!604 = distinct !DILexicalBlock(scope: !584, file: !89, line: 146, column: 22)
!605 = !DILocation(line: 144, column: 17, scope: !602)
!606 = !DILocation(line: 149, column: 13, scope: !581)
!607 = !DILocation(line: 144, column: 48, scope: !608)
!608 = distinct !DILexicalBlock(scope: !609, file: !89, line: 151, column: 15)
!609 = distinct !DILexicalBlock(scope: !610, file: !89, line: 150, column: 15)
!610 = distinct !DILexicalBlock(scope: !575, file: !89, line: 149, column: 20)
!611 = !DILocation(line: 144, column: 15, scope: !608)
!612 = !DILocation(line: 145, column: 17, scope: !613)
!613 = distinct !DILexicalBlock(scope: !529, file: !89, line: 145, column: 17)
!614 = !DILocation(line: 145, column: 17, scope: !529)
!615 = !DILocation(line: 146, column: 22, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !89, line: 147, column: 15)
!617 = distinct !DILexicalBlock(scope: !618, file: !89, line: 146, column: 15)
!618 = distinct !DILexicalBlock(scope: !613, file: !89, line: 145, column: 29)
!619 = !DILocation(line: 145, column: 15, scope: !616)
!620 = !DILocation(line: 149, column: 13, scope: !618)
!621 = !DILocation(line: 146, column: 13, scope: !529)
!622 = !DILocation(line: 148, column: 9, scope: !520)
!623 = distinct !{!623, !493, !624}
!624 = !DILocation(line: 149, column: 7, scope: !494)
!625 = !DILocation(line: 151, column: 7, scope: !494)
!626 = !DILocation(line: 150, column: 7, scope: !627)
!627 = distinct !DILexicalBlock(scope: !628, file: !89, line: 155, column: 7)
!628 = distinct !DILexicalBlock(scope: !486, file: !89, line: 154, column: 7)
!629 = !DILocation(line: 153, column: 5, scope: !486)
!630 = !DILocation(line: 153, column: 17, scope: !313)
!631 = !DILocation(line: 153, column: 24, scope: !313)
!632 = !DILocation(line: 153, column: 22, scope: !313)
!633 = !DILocalVariable(name: "files", scope: !99, file: !89, line: 86, type: !13)
!634 = !DILocation(line: 155, column: 3, scope: !635)
!635 = distinct !DILexicalBlock(scope: !636, file: !89, line: 157, column: 3)
!636 = distinct !DILexicalBlock(scope: !313, file: !89, line: 156, column: 3)
!637 = !DILocation(line: 155, column: 13, scope: !635)
!638 = !DILocation(line: 155, column: 14, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !89, line: 155, column: 9)
!640 = distinct !DILexicalBlock(scope: !635, file: !89, line: 155, column: 13)
!641 = !DILocation(line: 155, column: 9, scope: !640)
!642 = !DILocation(line: 155, column: 7, scope: !643)
!643 = distinct !DILexicalBlock(scope: !639, file: !89, line: 155, column: 24)
!644 = !DILocation(line: 156, column: 52, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !89, line: 158, column: 5)
!646 = distinct !DILexicalBlock(scope: !640, file: !89, line: 157, column: 5)
!647 = !DILocation(line: 156, column: 59, scope: !645)
!648 = !DILocation(line: 156, column: 57, scope: !645)
!649 = !DILocation(line: 156, column: 46, scope: !645)
!650 = !DILocation(line: 156, column: 39, scope: !645)
!651 = !DILocation(line: 156, column: 15, scope: !645)
!652 = !DILocalVariable(name: "tmp___8", scope: !99, file: !89, line: 104, type: !653)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !655, line: 128, baseType: !656)
!655 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!656 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !655, line: 128, flags: DIFlagFwdDecl)
!657 = !DILocation(line: 156, column: 9, scope: !658)
!658 = distinct !DILexicalBlock(scope: !640, file: !89, line: 156, column: 9)
!659 = !DILocation(line: 156, column: 9, scope: !640)
!660 = !DILocation(line: 158, column: 27, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !89, line: 158, column: 7)
!662 = distinct !DILexicalBlock(scope: !663, file: !89, line: 157, column: 7)
!663 = distinct !DILexicalBlock(scope: !658, file: !89, line: 156, column: 18)
!664 = !DILocation(line: 158, column: 34, scope: !661)
!665 = !DILocation(line: 158, column: 32, scope: !661)
!666 = !DILocation(line: 158, column: 21, scope: !661)
!667 = !DILocation(line: 158, column: 14, scope: !661)
!668 = !DILocation(line: 157, column: 7, scope: !661)
!669 = !DILocation(line: 158, column: 25, scope: !670)
!670 = distinct !DILexicalBlock(scope: !662, file: !89, line: 160, column: 7)
!671 = !DILocation(line: 158, column: 32, scope: !670)
!672 = !DILocation(line: 158, column: 30, scope: !670)
!673 = !DILocation(line: 158, column: 56, scope: !670)
!674 = !DILocation(line: 158, column: 63, scope: !670)
!675 = !DILocation(line: 158, column: 61, scope: !670)
!676 = !DILocation(line: 158, column: 7, scope: !670)
!677 = !DILocation(line: 159, column: 13, scope: !662)
!678 = !DILocation(line: 160, column: 9, scope: !662)
!679 = !DILocation(line: 162, column: 5, scope: !663)
!680 = !DILocation(line: 155, column: 7, scope: !640)
!681 = distinct !{!681, !634, !682}
!682 = !DILocation(line: 156, column: 3, scope: !635)
!683 = !DILocation(line: 158, column: 3, scope: !635)
!684 = !DILocation(line: 164, column: 13, scope: !685)
!685 = distinct !DILexicalBlock(scope: !313, file: !89, line: 164, column: 7)
!686 = !DILocation(line: 164, column: 7, scope: !313)
!687 = !DILocation(line: 165, column: 38, scope: !688)
!688 = distinct !DILexicalBlock(scope: !689, file: !89, line: 166, column: 5)
!689 = distinct !DILexicalBlock(scope: !690, file: !89, line: 165, column: 5)
!690 = distinct !DILexicalBlock(scope: !685, file: !89, line: 164, column: 20)
!691 = !DILocation(line: 165, column: 5, scope: !688)
!692 = !DILocation(line: 166, column: 5, scope: !693)
!693 = distinct !DILexicalBlock(scope: !689, file: !89, line: 167, column: 5)
!694 = !DILocation(line: 169, column: 15, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !89, line: 171, column: 3)
!696 = distinct !DILexicalBlock(scope: !313, file: !89, line: 170, column: 3)
!697 = !DILocation(line: 170, column: 13, scope: !698)
!698 = distinct !DILexicalBlock(scope: !696, file: !89, line: 171, column: 3)
!699 = !DILocalVariable(name: "tmp___9", scope: !99, file: !89, line: 105, type: !63)
!700 = !DILocalVariable(name: "wrapindex", scope: !99, file: !89, line: 79, type: !78)
!701 = !DILocation(line: 170, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !313, file: !89, line: 170, column: 7)
!703 = !DILocation(line: 170, column: 33, scope: !702)
!704 = !DILocation(line: 170, column: 7, scope: !313)
!705 = !DILocation(line: 171, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !89, line: 172, column: 5)
!707 = distinct !DILexicalBlock(scope: !708, file: !89, line: 171, column: 5)
!708 = distinct !DILexicalBlock(scope: !702, file: !89, line: 170, column: 65)
!709 = !DILocation(line: 172, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !707, file: !89, line: 173, column: 5)
!711 = !DILocation(line: 174, column: 3, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !89, line: 177, column: 3)
!713 = distinct !DILexicalBlock(scope: !313, file: !89, line: 176, column: 3)
!714 = !DILocation(line: 175, column: 18, scope: !715)
!715 = distinct !DILexicalBlock(scope: !713, file: !89, line: 176, column: 3)
!716 = !DILocation(line: 175, column: 3, scope: !715)
!717 = !DILocation(line: 177, column: 7, scope: !718)
!718 = distinct !DILexicalBlock(scope: !313, file: !89, line: 177, column: 7)
!719 = !DILocation(line: 177, column: 7, scope: !313)
!720 = !DILocation(line: 177, column: 5, scope: !721)
!721 = distinct !DILexicalBlock(scope: !718, file: !89, line: 177, column: 18)
!722 = !DILocation(line: 177, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !718, file: !89, line: 177, column: 7)
!724 = !DILocation(line: 177, column: 19, scope: !723)
!725 = !DILocation(line: 178, column: 64, scope: !726)
!726 = distinct !DILexicalBlock(scope: !727, file: !89, line: 180, column: 5)
!727 = distinct !DILexicalBlock(scope: !728, file: !89, line: 179, column: 5)
!728 = distinct !DILexicalBlock(scope: !723, file: !89, line: 177, column: 19)
!729 = !DILocation(line: 178, column: 57, scope: !726)
!730 = !DILocation(line: 178, column: 18, scope: !726)
!731 = !DILocation(line: 178, column: 11, scope: !732)
!732 = distinct !DILexicalBlock(scope: !728, file: !89, line: 178, column: 9)
!733 = !DILocation(line: 178, column: 9, scope: !728)
!734 = !DILocation(line: 179, column: 37, scope: !735)
!735 = distinct !DILexicalBlock(scope: !736, file: !89, line: 180, column: 7)
!736 = distinct !DILexicalBlock(scope: !737, file: !89, line: 179, column: 7)
!737 = distinct !DILexicalBlock(scope: !732, file: !89, line: 178, column: 23)
!738 = !DILocation(line: 179, column: 30, scope: !735)
!739 = !DILocation(line: 179, column: 7, scope: !735)
!740 = !DILocation(line: 180, column: 7, scope: !741)
!741 = distinct !DILexicalBlock(scope: !736, file: !89, line: 181, column: 7)
!742 = !DILocation(line: 182, column: 11, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !89, line: 185, column: 5)
!744 = distinct !DILexicalBlock(scope: !728, file: !89, line: 184, column: 5)
!745 = !DILocation(line: 183, column: 13, scope: !746)
!746 = distinct !DILexicalBlock(scope: !728, file: !89, line: 183, column: 9)
!747 = !DILocation(line: 183, column: 9, scope: !728)
!748 = !DILocation(line: 184, column: 40, scope: !749)
!749 = distinct !DILexicalBlock(scope: !750, file: !89, line: 185, column: 7)
!750 = distinct !DILexicalBlock(scope: !751, file: !89, line: 184, column: 7)
!751 = distinct !DILexicalBlock(scope: !746, file: !89, line: 183, column: 21)
!752 = !DILocation(line: 184, column: 7, scope: !749)
!753 = !DILocation(line: 185, column: 7, scope: !754)
!754 = distinct !DILexicalBlock(scope: !750, file: !89, line: 186, column: 7)
!755 = !DILocation(line: 186, column: 7, scope: !756)
!756 = distinct !DILexicalBlock(scope: !750, file: !89, line: 187, column: 7)
!757 = !DILocation(line: 188, column: 16, scope: !758)
!758 = distinct !DILexicalBlock(scope: !759, file: !89, line: 191, column: 5)
!759 = distinct !DILexicalBlock(scope: !728, file: !89, line: 190, column: 5)
!760 = !DILocalVariable(name: "tmp___10", scope: !99, file: !89, line: 106, type: !76)
!761 = !DILocation(line: 188, column: 17, scope: !759)
!762 = !DILocation(line: 189, column: 23, scope: !763)
!763 = distinct !DILexicalBlock(scope: !759, file: !89, line: 189, column: 5)
!764 = !DILocation(line: 189, column: 5, scope: !763)
!765 = !DILocation(line: 190, column: 5, scope: !766)
!766 = distinct !DILexicalBlock(scope: !767, file: !89, line: 193, column: 5)
!767 = distinct !DILexicalBlock(scope: !728, file: !89, line: 192, column: 5)
!768 = !DILocation(line: 0, scope: !728)
!769 = !DILocation(line: 190, column: 15, scope: !766)
!770 = !DILocation(line: 190, column: 16, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !89, line: 190, column: 11)
!772 = distinct !DILexicalBlock(scope: !766, file: !89, line: 190, column: 15)
!773 = !DILocation(line: 190, column: 11, scope: !772)
!774 = !DILocation(line: 190, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !771, file: !89, line: 190, column: 26)
!776 = !DILocation(line: 191, column: 18, scope: !777)
!777 = distinct !DILexicalBlock(scope: !778, file: !89, line: 193, column: 7)
!778 = distinct !DILexicalBlock(scope: !772, file: !89, line: 192, column: 7)
!779 = !DILocalVariable(name: "tmp___11", scope: !99, file: !89, line: 107, type: !46)
!780 = !DILocation(line: 191, column: 19, scope: !778)
!781 = !DILocation(line: 192, column: 18, scope: !782)
!782 = distinct !DILexicalBlock(scope: !778, file: !89, line: 192, column: 7)
!783 = !DILocalVariable(name: "tmp___15", scope: !99, file: !89, line: 111, type: !13)
!784 = !DILocation(line: 192, column: 20, scope: !785)
!785 = distinct !DILexicalBlock(scope: !772, file: !89, line: 192, column: 11)
!786 = !DILocation(line: 192, column: 11, scope: !772)
!787 = !DILocation(line: 193, column: 20, scope: !788)
!788 = distinct !DILexicalBlock(scope: !789, file: !89, line: 194, column: 9)
!789 = distinct !DILexicalBlock(scope: !790, file: !89, line: 193, column: 9)
!790 = distinct !DILexicalBlock(scope: !785, file: !89, line: 192, column: 27)
!791 = !DILocalVariable(name: "tmp___14", scope: !99, file: !89, line: 110, type: !13)
!792 = !DILocation(line: 193, column: 22, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !89, line: 193, column: 13)
!794 = !DILocation(line: 193, column: 13, scope: !790)
!795 = !DILocation(line: 194, column: 22, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !89, line: 195, column: 11)
!797 = distinct !DILexicalBlock(scope: !798, file: !89, line: 194, column: 11)
!798 = distinct !DILexicalBlock(scope: !793, file: !89, line: 193, column: 29)
!799 = !DILocalVariable(name: "tmp___13", scope: !99, file: !89, line: 109, type: !13)
!800 = !DILocation(line: 194, column: 24, scope: !801)
!801 = distinct !DILexicalBlock(scope: !798, file: !89, line: 194, column: 15)
!802 = !DILocation(line: 194, column: 15, scope: !798)
!803 = !DILocation(line: 195, column: 24, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !89, line: 196, column: 13)
!805 = distinct !DILexicalBlock(scope: !806, file: !89, line: 195, column: 13)
!806 = distinct !DILexicalBlock(scope: !801, file: !89, line: 194, column: 31)
!807 = !DILocalVariable(name: "tmp___12", scope: !99, file: !89, line: 108, type: !13)
!808 = !DILocation(line: 195, column: 26, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !89, line: 195, column: 17)
!810 = !DILocation(line: 195, column: 17, scope: !806)
!811 = !DILocation(line: 197, column: 15, scope: !812)
!812 = distinct !DILexicalBlock(scope: !809, file: !89, line: 195, column: 33)
!813 = !DILocation(line: 199, column: 11, scope: !806)
!814 = !DILocation(line: 200, column: 9, scope: !798)
!815 = !DILocation(line: 201, column: 7, scope: !790)
!816 = !DILocation(line: 190, column: 9, scope: !772)
!817 = distinct !{!817, !765, !818}
!818 = !DILocation(line: 191, column: 5, scope: !766)
!819 = !DILocation(line: 193, column: 5, scope: !766)
!820 = !DILocation(line: 200, column: 9, scope: !821)
!821 = distinct !DILexicalBlock(scope: !728, file: !89, line: 200, column: 9)
!822 = !DILocation(line: 200, column: 9, scope: !728)
!823 = !DILocation(line: 201, column: 7, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !89, line: 202, column: 7)
!825 = distinct !DILexicalBlock(scope: !826, file: !89, line: 201, column: 7)
!826 = distinct !DILexicalBlock(scope: !821, file: !89, line: 200, column: 20)
!827 = !DILocation(line: 202, column: 18, scope: !828)
!828 = distinct !DILexicalBlock(scope: !825, file: !89, line: 203, column: 7)
!829 = !DILocalVariable(name: "tmp___16", scope: !99, file: !89, line: 112, type: !13)
!830 = !DILocation(line: 202, column: 11, scope: !825)
!831 = !DILocalVariable(name: "c", scope: !99, file: !89, line: 80, type: !77)
!832 = !DILocation(line: 202, column: 11, scope: !833)
!833 = distinct !DILexicalBlock(scope: !826, file: !89, line: 202, column: 11)
!834 = !DILocation(line: 202, column: 19, scope: !833)
!835 = !DILocation(line: 202, column: 11, scope: !826)
!836 = !DILocation(line: 202, column: 13, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !89, line: 202, column: 13)
!838 = distinct !DILexicalBlock(scope: !833, file: !89, line: 202, column: 24)
!839 = !DILocation(line: 202, column: 13, scope: !838)
!840 = !DILocation(line: 203, column: 44, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !89, line: 204, column: 11)
!842 = distinct !DILexicalBlock(scope: !843, file: !89, line: 203, column: 11)
!843 = distinct !DILexicalBlock(scope: !837, file: !89, line: 202, column: 24)
!844 = !DILocation(line: 203, column: 11, scope: !841)
!845 = !DILocation(line: 206, column: 9, scope: !843)
!846 = !DILocation(line: 202, column: 11, scope: !847)
!847 = distinct !DILexicalBlock(scope: !837, file: !89, line: 206, column: 16)
!848 = !DILocation(line: 204, column: 7, scope: !838)
!849 = !DILocation(line: 205, column: 11, scope: !850)
!850 = distinct !DILexicalBlock(scope: !833, file: !89, line: 205, column: 11)
!851 = !DILocation(line: 205, column: 19, scope: !850)
!852 = !DILocation(line: 205, column: 11, scope: !833)
!853 = !DILocation(line: 206, column: 42, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !89, line: 207, column: 9)
!855 = distinct !DILexicalBlock(scope: !856, file: !89, line: 206, column: 9)
!856 = distinct !DILexicalBlock(scope: !850, file: !89, line: 205, column: 24)
!857 = !DILocation(line: 206, column: 9, scope: !854)
!858 = !DILocation(line: 207, column: 9, scope: !859)
!859 = distinct !DILexicalBlock(scope: !855, file: !89, line: 208, column: 9)
!860 = !DILocation(line: 208, column: 9, scope: !861)
!861 = distinct !DILexicalBlock(scope: !855, file: !89, line: 209, column: 9)
!862 = !DILocation(line: 210, column: 18, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !89, line: 213, column: 7)
!864 = distinct !DILexicalBlock(scope: !826, file: !89, line: 212, column: 7)
!865 = !DILocation(line: 211, column: 11, scope: !866)
!866 = distinct !DILexicalBlock(scope: !826, file: !89, line: 211, column: 11)
!867 = !DILocation(line: 211, column: 19, scope: !866)
!868 = !DILocation(line: 211, column: 11, scope: !826)
!869 = !DILocation(line: 212, column: 16, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !89, line: 213, column: 9)
!871 = distinct !DILexicalBlock(scope: !872, file: !89, line: 212, column: 9)
!872 = distinct !DILexicalBlock(scope: !866, file: !89, line: 211, column: 24)
!873 = !DILocalVariable(name: "fcrc", scope: !99, file: !89, line: 77, type: !76)
!874 = !DILocation(line: 213, column: 20, scope: !875)
!875 = distinct !DILexicalBlock(scope: !871, file: !89, line: 214, column: 9)
!876 = !DILocalVariable(name: "tmp___17", scope: !99, file: !89, line: 113, type: !46)
!877 = !DILocation(line: 214, column: 20, scope: !878)
!878 = distinct !DILexicalBlock(scope: !871, file: !89, line: 214, column: 9)
!879 = !DILocalVariable(name: "tmp___18", scope: !99, file: !89, line: 114, type: !13)
!880 = !DILocation(line: 214, column: 27, scope: !881)
!881 = distinct !DILexicalBlock(scope: !871, file: !89, line: 216, column: 9)
!882 = !DILocation(line: 214, column: 9, scope: !881)
!883 = !DILocation(line: 215, column: 20, scope: !884)
!884 = distinct !DILexicalBlock(scope: !871, file: !89, line: 216, column: 9)
!885 = !DILocalVariable(name: "tmp___19", scope: !99, file: !89, line: 115, type: !46)
!886 = !DILocalVariable(name: "end", scope: !99, file: !89, line: 74, type: !76)
!887 = !DILocation(line: 216, column: 42, scope: !888)
!888 = distinct !DILexicalBlock(scope: !871, file: !89, line: 216, column: 9)
!889 = !DILocation(line: 216, column: 9, scope: !888)
!890 = !DILocation(line: 217, column: 15, scope: !891)
!891 = distinct !DILexicalBlock(scope: !871, file: !89, line: 218, column: 9)
!892 = !DILocalVariable(name: "crc", scope: !99, file: !89, line: 76, type: !76)
!893 = !DILocation(line: 218, column: 17, scope: !894)
!894 = distinct !DILexicalBlock(scope: !872, file: !89, line: 218, column: 13)
!895 = !DILocation(line: 218, column: 13, scope: !872)
!896 = !DILocation(line: 219, column: 44, scope: !897)
!897 = distinct !DILexicalBlock(scope: !898, file: !89, line: 220, column: 11)
!898 = distinct !DILexicalBlock(scope: !899, file: !89, line: 219, column: 11)
!899 = distinct !DILexicalBlock(scope: !894, file: !89, line: 218, column: 26)
!900 = !DILocation(line: 219, column: 11, scope: !897)
!901 = !DILocation(line: 220, column: 22, scope: !902)
!902 = distinct !DILexicalBlock(scope: !898, file: !89, line: 221, column: 11)
!903 = !DILocalVariable(name: "tmp___20", scope: !99, file: !89, line: 116, type: !13)
!904 = !DILocation(line: 220, column: 24, scope: !905)
!905 = distinct !DILexicalBlock(scope: !899, file: !89, line: 220, column: 15)
!906 = !DILocation(line: 220, column: 15, scope: !899)
!907 = !DILocation(line: 221, column: 13, scope: !908)
!908 = distinct !DILexicalBlock(scope: !909, file: !89, line: 222, column: 13)
!909 = distinct !DILexicalBlock(scope: !910, file: !89, line: 221, column: 13)
!910 = distinct !DILexicalBlock(scope: !905, file: !89, line: 220, column: 32)
!911 = !DILocation(line: 225, column: 9, scope: !899)
!912 = !DILocation(line: 223, column: 44, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !89, line: 227, column: 11)
!914 = distinct !DILexicalBlock(scope: !915, file: !89, line: 226, column: 11)
!915 = distinct !DILexicalBlock(scope: !894, file: !89, line: 225, column: 16)
!916 = !DILocation(line: 223, column: 11, scope: !913)
!917 = !DILocation(line: 224, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !89, line: 228, column: 9)
!919 = distinct !DILexicalBlock(scope: !872, file: !89, line: 227, column: 9)
!920 = !DILocation(line: 227, column: 7, scope: !872)
!921 = !DILocation(line: 226, column: 15, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !89, line: 229, column: 7)
!923 = distinct !DILexicalBlock(scope: !826, file: !89, line: 228, column: 7)
!924 = !DILocation(line: 227, column: 7, scope: !923)
!925 = !DILocation(line: 227, column: 22, scope: !923)
!926 = !DILocation(line: 228, column: 11, scope: !927)
!927 = distinct !DILexicalBlock(scope: !826, file: !89, line: 228, column: 11)
!928 = !DILocation(line: 228, column: 11, scope: !826)
!929 = !DILocation(line: 229, column: 19, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !89, line: 229, column: 13)
!931 = distinct !DILexicalBlock(scope: !927, file: !89, line: 228, column: 22)
!932 = !DILocation(line: 229, column: 30, scope: !930)
!933 = !DILocation(line: 229, column: 13, scope: !931)
!934 = !DILocation(line: 230, column: 44, scope: !935)
!935 = distinct !DILexicalBlock(scope: !936, file: !89, line: 231, column: 11)
!936 = distinct !DILexicalBlock(scope: !937, file: !89, line: 230, column: 11)
!937 = distinct !DILexicalBlock(scope: !930, file: !89, line: 229, column: 37)
!938 = !DILocation(line: 230, column: 11, scope: !935)
!939 = !DILocation(line: 231, column: 11, scope: !940)
!940 = distinct !DILexicalBlock(scope: !936, file: !89, line: 232, column: 11)
!941 = !DILocation(line: 233, column: 20, scope: !942)
!942 = distinct !DILexicalBlock(scope: !943, file: !89, line: 236, column: 9)
!943 = distinct !DILexicalBlock(scope: !931, file: !89, line: 235, column: 9)
!944 = !DILocalVariable(name: "tmp___21", scope: !99, file: !89, line: 117, type: !68)
!945 = !DILocation(line: 233, column: 30, scope: !943)
!946 = !DILocation(line: 233, column: 56, scope: !943)
!947 = !DILocation(line: 233, column: 65, scope: !943)
!948 = !DILocation(line: 233, column: 100, scope: !943)
!949 = !DILocation(line: 233, column: 74, scope: !943)
!950 = !DILocation(line: 233, column: 72, scope: !943)
!951 = !DILocation(line: 233, column: 21, scope: !943)
!952 = !DILocation(line: 234, column: 13, scope: !953)
!953 = distinct !DILexicalBlock(scope: !931, file: !89, line: 234, column: 13)
!954 = !DILocation(line: 234, column: 21, scope: !953)
!955 = !DILocation(line: 234, column: 13, scope: !931)
!956 = !DILocation(line: 234, column: 21, scope: !957)
!957 = distinct !DILexicalBlock(scope: !953, file: !89, line: 234, column: 26)
!958 = !DILocation(line: 235, column: 9, scope: !957)
!959 = !DILocation(line: 0, scope: !931)
!960 = !DILocation(line: 235, column: 20, scope: !961)
!961 = distinct !DILexicalBlock(scope: !962, file: !89, line: 237, column: 9)
!962 = distinct !DILexicalBlock(scope: !931, file: !89, line: 236, column: 9)
!963 = !DILocalVariable(name: "tmp___22", scope: !99, file: !89, line: 118, type: !63)
!964 = !DILocation(line: 236, column: 9, scope: !965)
!965 = distinct !DILexicalBlock(scope: !962, file: !89, line: 236, column: 9)
!966 = !DILocation(line: 239, column: 7, scope: !931)
!967 = !DILocation(line: 241, column: 23, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !89, line: 241, column: 9)
!969 = distinct !DILexicalBlock(scope: !970, file: !89, line: 240, column: 9)
!970 = distinct !DILexicalBlock(scope: !927, file: !89, line: 239, column: 14)
!971 = !DILocation(line: 241, column: 16, scope: !968)
!972 = !DILocation(line: 240, column: 9, scope: !968)
!973 = !DILocation(line: 241, column: 13, scope: !974)
!974 = distinct !DILexicalBlock(scope: !970, file: !89, line: 241, column: 13)
!975 = !DILocation(line: 241, column: 13, scope: !970)
!976 = !DILocation(line: 242, column: 11, scope: !977)
!977 = distinct !DILexicalBlock(scope: !978, file: !89, line: 243, column: 11)
!978 = distinct !DILexicalBlock(scope: !979, file: !89, line: 242, column: 11)
!979 = distinct !DILexicalBlock(scope: !974, file: !89, line: 241, column: 25)
!980 = !DILocation(line: 243, column: 11, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !89, line: 244, column: 11)
!982 = !DILocation(line: 246, column: 9, scope: !979)
!983 = !DILocation(line: 245, column: 11, scope: !984)
!984 = distinct !DILexicalBlock(scope: !985, file: !89, line: 248, column: 11)
!985 = distinct !DILexicalBlock(scope: !986, file: !89, line: 247, column: 11)
!986 = distinct !DILexicalBlock(scope: !974, file: !89, line: 246, column: 16)
!987 = !DILocation(line: 247, column: 7, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !89, line: 249, column: 7)
!989 = distinct !DILexicalBlock(scope: !826, file: !89, line: 248, column: 7)
!990 = !DILocation(line: 0, scope: !826)
!991 = !DILocation(line: 247, column: 17, scope: !988)
!992 = !DILocation(line: 247, column: 18, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !89, line: 247, column: 13)
!994 = distinct !DILexicalBlock(scope: !988, file: !89, line: 247, column: 17)
!995 = !DILocation(line: 247, column: 13, scope: !994)
!996 = !DILocation(line: 247, column: 11, scope: !997)
!997 = distinct !DILexicalBlock(scope: !993, file: !89, line: 247, column: 32)
!998 = !DILocation(line: 248, column: 13, scope: !999)
!999 = distinct !DILexicalBlock(scope: !994, file: !89, line: 248, column: 13)
!1000 = !DILocation(line: 248, column: 13, scope: !994)
!1001 = !DILocation(line: 249, column: 13, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !999, file: !89, line: 248, column: 24)
!1003 = !DILocation(line: 250, column: 9, scope: !1002)
!1004 = !DILocation(line: 252, column: 15, scope: !1005)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !89, line: 252, column: 15)
!1006 = distinct !DILexicalBlock(scope: !999, file: !89, line: 250, column: 16)
!1007 = !DILocation(line: 252, column: 15, scope: !1006)
!1008 = !DILocation(line: 253, column: 19, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !1010, file: !89, line: 253, column: 17)
!1010 = distinct !DILexicalBlock(scope: !1005, file: !89, line: 252, column: 27)
!1011 = !DILocation(line: 253, column: 17, scope: !1010)
!1012 = !DILocation(line: 253, column: 15, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !89, line: 255, column: 15)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !89, line: 254, column: 15)
!1015 = distinct !DILexicalBlock(scope: !1009, file: !89, line: 253, column: 26)
!1016 = !DILocation(line: 256, column: 13, scope: !1015)
!1017 = !DILocation(line: 254, column: 19, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1010, file: !89, line: 254, column: 17)
!1019 = !DILocation(line: 254, column: 17, scope: !1010)
!1020 = !DILocation(line: 254, column: 15, scope: !1021)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !89, line: 256, column: 15)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !89, line: 255, column: 15)
!1023 = distinct !DILexicalBlock(scope: !1018, file: !89, line: 254, column: 25)
!1024 = !DILocation(line: 257, column: 13, scope: !1023)
!1025 = !DILocation(line: 258, column: 11, scope: !1010)
!1026 = !DILocation(line: 0, scope: !999)
!1027 = !DILocation(line: 257, column: 9, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !89, line: 261, column: 9)
!1029 = distinct !DILexicalBlock(scope: !994, file: !89, line: 260, column: 9)
!1030 = !DILocation(line: 0, scope: !994)
!1031 = !DILocation(line: 257, column: 19, scope: !1028)
!1032 = !DILocation(line: 258, column: 22, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !89, line: 261, column: 11)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !89, line: 260, column: 11)
!1035 = distinct !DILexicalBlock(scope: !1028, file: !89, line: 257, column: 19)
!1036 = !DILocalVariable(name: "tmp___23", scope: !99, file: !89, line: 119, type: !13)
!1037 = !DILocation(line: 258, column: 15, scope: !1034)
!1038 = !DILocation(line: 259, column: 15, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1035, file: !89, line: 259, column: 15)
!1040 = !DILocation(line: 259, column: 15, scope: !1035)
!1041 = !DILocalVariable(name: "tmp___24", scope: !99, file: !89, line: 120, type: !13)
!1042 = !DILocation(line: 260, column: 15, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1039, file: !89, line: 259, column: 26)
!1044 = !DILocation(line: 260, column: 25, scope: !1043)
!1045 = !DILocation(line: 260, column: 37, scope: !1043)
!1046 = !DILocation(line: 261, column: 11, scope: !1043)
!1047 = !DILocalVariable(name: "tmp___25", scope: !99, file: !89, line: 121, type: !13)
!1048 = !DILocation(line: 261, column: 15, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1039, file: !89, line: 261, column: 18)
!1050 = !DILocation(line: 261, column: 13, scope: !1049)
!1051 = !DILocation(line: 261, column: 32, scope: !1049)
!1052 = !DILocation(line: 0, scope: !1039)
!1053 = !DILocation(line: 257, column: 18, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1035, file: !89, line: 257, column: 15)
!1055 = !DILocation(line: 257, column: 26, scope: !1054)
!1056 = !DILocation(line: 257, column: 15, scope: !1035)
!1057 = !DILocation(line: 257, column: 13, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1054, file: !89, line: 257, column: 33)
!1059 = distinct !{!1059, !1027, !1060}
!1060 = !DILocation(line: 259, column: 9, scope: !1028)
!1061 = !DILocation(line: 261, column: 9, scope: !1028)
!1062 = !DILocation(line: 265, column: 26, scope: !1063)
!1063 = distinct !DILexicalBlock(scope: !1064, file: !89, line: 265, column: 9)
!1064 = distinct !DILexicalBlock(scope: !994, file: !89, line: 264, column: 9)
!1065 = !DILocation(line: 265, column: 9, scope: !1063)
!1066 = !DILocation(line: 265, column: 24, scope: !1063)
!1067 = !DILocation(line: 267, column: 13, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !994, file: !89, line: 267, column: 13)
!1069 = !DILocation(line: 267, column: 13, scope: !994)
!1070 = !DILocation(line: 268, column: 15, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !89, line: 268, column: 15)
!1072 = distinct !DILexicalBlock(scope: !1068, file: !89, line: 267, column: 25)
!1073 = !DILocation(line: 268, column: 15, scope: !1072)
!1074 = !DILocation(line: 268, column: 69, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !89, line: 270, column: 13)
!1076 = distinct !DILexicalBlock(scope: !1077, file: !89, line: 269, column: 13)
!1077 = distinct !DILexicalBlock(scope: !1071, file: !89, line: 268, column: 27)
!1078 = !DILocation(line: 268, column: 100, scope: !1075)
!1079 = !DILocation(line: 268, column: 86, scope: !1075)
!1080 = !DILocation(line: 268, column: 84, scope: !1075)
!1081 = !DILocation(line: 268, column: 13, scope: !1075)
!1082 = !DILocation(line: 271, column: 11, scope: !1077)
!1083 = !DILocation(line: 269, column: 59, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !89, line: 273, column: 11)
!1085 = distinct !DILexicalBlock(scope: !1072, file: !89, line: 272, column: 11)
!1086 = !DILocation(line: 269, column: 11, scope: !1084)
!1087 = !DILocation(line: 272, column: 9, scope: !1072)
!1088 = !DILocation(line: 247, column: 11, scope: !994)
!1089 = distinct !{!1089, !987, !1090}
!1090 = !DILocation(line: 248, column: 7, scope: !988)
!1091 = !DILocation(line: 250, column: 7, scope: !988)
!1092 = !DILocation(line: 272, column: 7, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1094, file: !89, line: 254, column: 7)
!1094 = distinct !DILexicalBlock(scope: !826, file: !89, line: 253, column: 7)
!1095 = !DILocation(line: 273, column: 11, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !826, file: !89, line: 273, column: 11)
!1097 = !DILocation(line: 273, column: 11, scope: !826)
!1098 = !DILocation(line: 275, column: 13, scope: !1099)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !89, line: 275, column: 13)
!1100 = distinct !DILexicalBlock(scope: !1096, file: !89, line: 273, column: 23)
!1101 = !DILocation(line: 275, column: 13, scope: !1100)
!1102 = !DILocation(line: 276, column: 11, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !89, line: 277, column: 11)
!1104 = distinct !DILexicalBlock(scope: !1105, file: !89, line: 276, column: 11)
!1105 = distinct !DILexicalBlock(scope: !1099, file: !89, line: 275, column: 25)
!1106 = !DILocation(line: 277, column: 89, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !89, line: 278, column: 11)
!1108 = !DILocation(line: 277, column: 75, scope: !1107)
!1109 = !DILocation(line: 277, column: 11, scope: !1107)
!1110 = !DILocation(line: 281, column: 9, scope: !1105)
!1111 = !DILocation(line: 279, column: 11, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !89, line: 283, column: 11)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !89, line: 282, column: 11)
!1114 = distinct !DILexicalBlock(scope: !1099, file: !89, line: 281, column: 16)
!1115 = !DILocation(line: 280, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !89, line: 284, column: 9)
!1117 = distinct !DILexicalBlock(scope: !1100, file: !89, line: 283, column: 9)
!1118 = !DILocation(line: 284, column: 5, scope: !826)
!1119 = !DILocation(line: 284, column: 40, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !89, line: 286, column: 7)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !89, line: 285, column: 7)
!1122 = distinct !DILexicalBlock(scope: !821, file: !89, line: 284, column: 12)
!1123 = !DILocation(line: 284, column: 7, scope: !1120)
!1124 = !DILocation(line: 285, column: 7, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1121, file: !89, line: 286, column: 7)
!1126 = !DILocation(line: 289, column: 3, scope: !728)
!1127 = !DILocation(line: 289, column: 7, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !313, file: !89, line: 289, column: 7)
!1129 = !DILocation(line: 289, column: 7, scope: !313)
!1130 = !DILocation(line: 290, column: 11, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1128, file: !89, line: 289, column: 18)
!1132 = !DILocation(line: 290, column: 39, scope: !1131)
!1133 = !DILocation(line: 290, column: 37, scope: !1131)
!1134 = !DILocation(line: 291, column: 5, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !89, line: 293, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1131, file: !89, line: 292, column: 5)
!1137 = !DILocation(line: 0, scope: !1131)
!1138 = !DILocation(line: 291, column: 15, scope: !1135)
!1139 = !DILocation(line: 291, column: 16, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !89, line: 291, column: 11)
!1141 = distinct !DILexicalBlock(scope: !1135, file: !89, line: 291, column: 15)
!1142 = !DILocation(line: 291, column: 11, scope: !1141)
!1143 = !DILocation(line: 291, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !89, line: 291, column: 30)
!1145 = !DILocation(line: 292, column: 7, scope: !1141)
!1146 = !DILocation(line: 292, column: 22, scope: !1141)
!1147 = !DILocation(line: 291, column: 9, scope: !1141)
!1148 = distinct !{!1148, !1134, !1149}
!1149 = !DILocation(line: 292, column: 5, scope: !1135)
!1150 = !DILocation(line: 294, column: 5, scope: !1135)
!1151 = !DILocation(line: 297, column: 3, scope: !1131)
!1152 = !DILocation(line: 295, column: 3, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !89, line: 297, column: 3)
!1154 = distinct !DILexicalBlock(scope: !313, file: !89, line: 296, column: 3)
!1155 = !DILocation(line: 295, column: 13, scope: !1153)
!1156 = !DILocation(line: 295, column: 14, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !89, line: 295, column: 9)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !89, line: 295, column: 13)
!1159 = !DILocation(line: 295, column: 9, scope: !1158)
!1160 = !DILocation(line: 295, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1157, file: !89, line: 295, column: 24)
!1162 = !DILocation(line: 296, column: 70, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !89, line: 298, column: 5)
!1164 = distinct !DILexicalBlock(scope: !1158, file: !89, line: 297, column: 5)
!1165 = !DILocation(line: 296, column: 77, scope: !1163)
!1166 = !DILocation(line: 296, column: 75, scope: !1163)
!1167 = !DILocation(line: 296, column: 64, scope: !1163)
!1168 = !DILocation(line: 296, column: 57, scope: !1163)
!1169 = !DILocation(line: 296, column: 18, scope: !1163)
!1170 = !DILocation(line: 296, column: 11, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1158, file: !89, line: 296, column: 9)
!1172 = !DILocation(line: 296, column: 9, scope: !1158)
!1173 = !DILocation(line: 297, column: 43, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1175, file: !89, line: 298, column: 7)
!1175 = distinct !DILexicalBlock(scope: !1176, file: !89, line: 297, column: 7)
!1176 = distinct !DILexicalBlock(scope: !1171, file: !89, line: 296, column: 23)
!1177 = !DILocation(line: 297, column: 50, scope: !1174)
!1178 = !DILocation(line: 297, column: 48, scope: !1174)
!1179 = !DILocation(line: 297, column: 37, scope: !1174)
!1180 = !DILocation(line: 297, column: 30, scope: !1174)
!1181 = !DILocation(line: 297, column: 7, scope: !1174)
!1182 = !DILocation(line: 298, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1175, file: !89, line: 299, column: 7)
!1184 = !DILocation(line: 300, column: 11, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1158, file: !89, line: 300, column: 9)
!1186 = !DILocation(line: 300, column: 9, scope: !1158)
!1187 = !DILocation(line: 300, column: 13, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !89, line: 300, column: 11)
!1189 = distinct !DILexicalBlock(scope: !1185, file: !89, line: 300, column: 22)
!1190 = !DILocation(line: 300, column: 11, scope: !1189)
!1191 = !DILocation(line: 300, column: 26, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !89, line: 300, column: 19)
!1193 = !DILocation(line: 300, column: 9, scope: !1192)
!1194 = !DILocation(line: 300, column: 24, scope: !1192)
!1195 = !DILocation(line: 301, column: 7, scope: !1192)
!1196 = !DILocation(line: 302, column: 5, scope: !1189)
!1197 = !DILocation(line: 302, column: 16, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !89, line: 304, column: 5)
!1199 = distinct !DILexicalBlock(scope: !1158, file: !89, line: 303, column: 5)
!1200 = !DILocalVariable(name: "tmp___26", scope: !99, file: !89, line: 122, type: !76)
!1201 = !DILocation(line: 302, column: 64, scope: !1199)
!1202 = !DILocation(line: 302, column: 50, scope: !1199)
!1203 = !DILocation(line: 302, column: 48, scope: !1199)
!1204 = !DILocation(line: 302, column: 20, scope: !1199)
!1205 = !DILocation(line: 302, column: 25, scope: !1199)
!1206 = !DILocation(line: 302, column: 5, scope: !1199)
!1207 = !DILocation(line: 302, column: 37, scope: !1199)
!1208 = !DILocation(line: 304, column: 5, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1199, file: !89, line: 303, column: 5)
!1210 = !DILocation(line: 295, column: 7, scope: !1199)
!1211 = distinct !{!1211, !1152, !1212}
!1212 = !DILocation(line: 297, column: 3, scope: !1153)
!1213 = !DILocation(line: 299, column: 3, scope: !1153)
!1214 = !DILocation(line: 307, column: 79, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1216, file: !89, line: 303, column: 3)
!1216 = distinct !DILexicalBlock(scope: !313, file: !89, line: 302, column: 3)
!1217 = !DILocation(line: 307, column: 14, scope: !1215)
!1218 = !DILocalVariable(name: "tmp___27", scope: !99, file: !89, line: 123, type: !12)
!1219 = !DILocation(line: 309, column: 9, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !313, file: !89, line: 309, column: 7)
!1221 = !DILocation(line: 309, column: 7, scope: !313)
!1222 = !DILocation(line: 310, column: 53, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !89, line: 311, column: 5)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !89, line: 310, column: 5)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !89, line: 309, column: 20)
!1226 = !DILocation(line: 310, column: 51, scope: !1223)
!1227 = !DILocation(line: 310, column: 46, scope: !1223)
!1228 = !DILocation(line: 310, column: 39, scope: !1223)
!1229 = !DILocation(line: 310, column: 16, scope: !1223)
!1230 = !DILocalVariable(name: "tmp___28", scope: !99, file: !89, line: 124, type: !68)
!1231 = !DILocation(line: 310, column: 38, scope: !1232)
!1232 = distinct !DILexicalBlock(scope: !1224, file: !89, line: 312, column: 5)
!1233 = !DILocation(line: 310, column: 97, scope: !1232)
!1234 = !DILocation(line: 310, column: 95, scope: !1232)
!1235 = !DILocation(line: 310, column: 90, scope: !1232)
!1236 = !DILocation(line: 310, column: 83, scope: !1232)
!1237 = !DILocation(line: 310, column: 5, scope: !1232)
!1238 = !DILocation(line: 311, column: 39, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1224, file: !89, line: 313, column: 5)
!1240 = !DILocation(line: 311, column: 67, scope: !1239)
!1241 = !DILocation(line: 311, column: 16, scope: !1239)
!1242 = !DILocalVariable(name: "tmp___33", scope: !99, file: !89, line: 129, type: !12)
!1243 = !DILocation(line: 311, column: 9, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1225, file: !89, line: 311, column: 9)
!1245 = !DILocation(line: 311, column: 34, scope: !1244)
!1246 = !DILocation(line: 311, column: 9, scope: !1225)
!1247 = !DILocation(line: 312, column: 41, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !89, line: 313, column: 7)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !89, line: 312, column: 7)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !89, line: 311, column: 66)
!1251 = !DILocation(line: 312, column: 18, scope: !1248)
!1252 = !DILocalVariable(name: "tmp___30", scope: !99, file: !89, line: 126, type: !68)
!1253 = !DILocation(line: 312, column: 20, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !89, line: 312, column: 11)
!1255 = !DILocation(line: 312, column: 11, scope: !1250)
!1256 = !DILocation(line: 312, column: 43, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !89, line: 314, column: 9)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !89, line: 313, column: 9)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !89, line: 312, column: 26)
!1260 = !DILocation(line: 312, column: 20, scope: !1257)
!1261 = !DILocalVariable(name: "tmp___31", scope: !99, file: !89, line: 127, type: !12)
!1262 = !DILocation(line: 312, column: 13, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1259, file: !89, line: 312, column: 13)
!1264 = !DILocation(line: 312, column: 38, scope: !1263)
!1265 = !DILocation(line: 312, column: 13, scope: !1259)
!1266 = !DILocation(line: 313, column: 45, scope: !1267)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !89, line: 314, column: 11)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !89, line: 313, column: 11)
!1269 = distinct !DILexicalBlock(scope: !1263, file: !89, line: 312, column: 70)
!1270 = !DILocation(line: 313, column: 22, scope: !1267)
!1271 = !DILocalVariable(name: "tmp___29", scope: !99, file: !89, line: 125, type: !68)
!1272 = !DILocation(line: 313, column: 29, scope: !1268)
!1273 = !DILocation(line: 313, column: 11, scope: !1268)
!1274 = !DILocation(line: 313, column: 35, scope: !1268)
!1275 = !DILocation(line: 315, column: 9, scope: !1269)
!1276 = !DILocation(line: 316, column: 7, scope: !1259)
!1277 = !DILocation(line: 314, column: 41, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !89, line: 318, column: 7)
!1279 = distinct !DILexicalBlock(scope: !1250, file: !89, line: 317, column: 7)
!1280 = !DILocation(line: 314, column: 18, scope: !1278)
!1281 = !DILocalVariable(name: "tmp___32", scope: !99, file: !89, line: 128, type: !68)
!1282 = !DILocation(line: 314, column: 40, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1279, file: !89, line: 316, column: 7)
!1284 = !DILocation(line: 314, column: 85, scope: !1283)
!1285 = !DILocation(line: 314, column: 7, scope: !1283)
!1286 = !DILocation(line: 318, column: 5, scope: !1250)
!1287 = !DILocation(line: 316, column: 57, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !89, line: 320, column: 5)
!1289 = distinct !DILexicalBlock(scope: !1225, file: !89, line: 319, column: 5)
!1290 = !DILocation(line: 316, column: 18, scope: !1288)
!1291 = !DILocation(line: 316, column: 9, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1225, file: !89, line: 316, column: 9)
!1293 = !DILocation(line: 316, column: 9, scope: !1225)
!1294 = !DILocation(line: 317, column: 40, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !89, line: 318, column: 7)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !89, line: 317, column: 7)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !89, line: 316, column: 21)
!1298 = !DILocation(line: 318, column: 15, scope: !1295)
!1299 = !DILocation(line: 317, column: 7, scope: !1295)
!1300 = !DILocation(line: 318, column: 7, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !89, line: 320, column: 7)
!1302 = !DILocation(line: 319, column: 18, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1296, file: !89, line: 320, column: 7)
!1304 = !DILocalVariable(name: "tmp___34", scope: !99, file: !89, line: 130, type: !13)
!1305 = !DILocation(line: 319, column: 20, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1297, file: !89, line: 319, column: 11)
!1307 = !DILocation(line: 319, column: 11, scope: !1297)
!1308 = !DILocation(line: 320, column: 9, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !89, line: 321, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1311, file: !89, line: 320, column: 9)
!1311 = distinct !DILexicalBlock(scope: !1306, file: !89, line: 319, column: 28)
!1312 = !DILocation(line: 324, column: 5, scope: !1297)
!1313 = !DILocation(line: 325, column: 3, scope: !1225)
!1314 = !DILocation(line: 325, column: 16, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !89, line: 327, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !89, line: 326, column: 5)
!1317 = distinct !DILexicalBlock(scope: !1220, file: !89, line: 325, column: 10)
!1318 = !DILocalVariable(name: "tmp___35", scope: !99, file: !89, line: 131, type: !68)
!1319 = !DILocation(line: 325, column: 38, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1316, file: !89, line: 327, column: 5)
!1321 = !DILocation(line: 325, column: 5, scope: !1320)
!1322 = !DILocation(line: 327, column: 56, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !89, line: 331, column: 3)
!1324 = distinct !DILexicalBlock(scope: !313, file: !89, line: 330, column: 3)
!1325 = !DILocation(line: 327, column: 17, scope: !1323)
!1326 = !DILocalVariable(name: "file_output", scope: !99, file: !89, line: 70, type: !14)
!1327 = !DILocation(line: 327, column: 9, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !313, file: !89, line: 327, column: 7)
!1329 = !DILocation(line: 327, column: 7, scope: !313)
!1330 = !DILocation(line: 328, column: 42, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !89, line: 329, column: 5)
!1332 = distinct !DILexicalBlock(scope: !1333, file: !89, line: 328, column: 5)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !89, line: 327, column: 22)
!1334 = !DILocation(line: 328, column: 40, scope: !1331)
!1335 = !DILocation(line: 328, column: 35, scope: !1331)
!1336 = !DILocation(line: 328, column: 28, scope: !1331)
!1337 = !DILocation(line: 328, column: 5, scope: !1331)
!1338 = !DILocation(line: 329, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1332, file: !89, line: 330, column: 5)
!1340 = !DILocation(line: 332, column: 13, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !313, file: !89, line: 332, column: 7)
!1342 = !DILocation(line: 332, column: 24, scope: !1341)
!1343 = !DILocation(line: 332, column: 7, scope: !313)
!1344 = !DILocation(line: 332, column: 40, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !89, line: 332, column: 29)
!1346 = !DILocation(line: 332, column: 52, scope: !1345)
!1347 = !DILocation(line: 332, column: 58, scope: !1345)
!1348 = !DILocation(line: 332, column: 63, scope: !1345)
!1349 = !DILocation(line: 332, column: 15, scope: !1345)
!1350 = !DILocation(line: 332, column: 13, scope: !1345)
!1351 = !DILocation(line: 333, column: 3, scope: !1345)
!1352 = !DILocation(line: 333, column: 37, scope: !1353)
!1353 = distinct !DILexicalBlock(scope: !313, file: !89, line: 334, column: 3)
!1354 = !DILocation(line: 333, column: 49, scope: !1353)
!1355 = !DILocation(line: 333, column: 54, scope: !1353)
!1356 = !DILocation(line: 333, column: 13, scope: !1353)
!1357 = !DILocation(line: 333, column: 11, scope: !1353)
!1358 = !DILocation(line: 334, column: 13, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1353, file: !89, line: 334, column: 3)
!1360 = !DILocation(line: 334, column: 11, scope: !1359)
!1361 = !DILocation(line: 335, column: 13, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1353, file: !89, line: 336, column: 3)
!1363 = !DILocation(line: 335, column: 11, scope: !1362)
!1364 = !DILocation(line: 337, column: 3, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !89, line: 340, column: 3)
!1366 = distinct !DILexicalBlock(scope: !313, file: !89, line: 339, column: 3)
!1367 = !DILocation(line: 337, column: 13, scope: !1365)
!1368 = !DILocation(line: 337, column: 14, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !89, line: 337, column: 9)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !89, line: 337, column: 13)
!1371 = !DILocation(line: 337, column: 9, scope: !1370)
!1372 = !DILocation(line: 337, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1369, file: !89, line: 337, column: 22)
!1374 = !DILocation(line: 338, column: 17, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !89, line: 340, column: 5)
!1376 = distinct !DILexicalBlock(scope: !1370, file: !89, line: 339, column: 5)
!1377 = !DILocation(line: 338, column: 11, scope: !1375)
!1378 = !DILocation(line: 338, column: 5, scope: !1375)
!1379 = !DILocation(line: 337, column: 7, scope: !1376)
!1380 = distinct !{!1380, !1364, !1381}
!1381 = !DILocation(line: 339, column: 3, scope: !1365)
!1382 = !DILocation(line: 341, column: 3, scope: !1365)
!1383 = !DILocation(line: 340, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !89, line: 342, column: 3)
!1385 = distinct !DILexicalBlock(scope: !313, file: !89, line: 341, column: 3)
!1386 = !DILocation(line: 340, column: 13, scope: !1384)
!1387 = !DILocation(line: 340, column: 14, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !89, line: 340, column: 9)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !89, line: 340, column: 13)
!1390 = !DILocation(line: 340, column: 9, scope: !1389)
!1391 = !DILocation(line: 340, column: 7, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !89, line: 340, column: 28)
!1393 = !DILocation(line: 341, column: 29, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !89, line: 343, column: 5)
!1395 = distinct !DILexicalBlock(scope: !1389, file: !89, line: 342, column: 5)
!1396 = !DILocation(line: 341, column: 17, scope: !1394)
!1397 = !DILocation(line: 341, column: 11, scope: !1394)
!1398 = !DILocation(line: 341, column: 5, scope: !1394)
!1399 = !DILocation(line: 340, column: 7, scope: !1395)
!1400 = distinct !{!1400, !1383, !1401}
!1401 = !DILocation(line: 342, column: 3, scope: !1384)
!1402 = !DILocation(line: 344, column: 3, scope: !1384)
!1403 = !DILocation(line: 343, column: 3, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !89, line: 348, column: 3)
!1405 = distinct !DILexicalBlock(scope: !313, file: !89, line: 347, column: 3)
!1406 = !DILocation(line: 345, column: 7, scope: !1407)
!1407 = distinct !DILexicalBlock(scope: !313, file: !89, line: 345, column: 7)
!1408 = !DILocation(line: 345, column: 7, scope: !313)
!1409 = !DILocation(line: 346, column: 64, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !89, line: 347, column: 5)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !89, line: 346, column: 5)
!1412 = distinct !DILexicalBlock(scope: !1407, file: !89, line: 345, column: 18)
!1413 = !DILocation(line: 346, column: 57, scope: !1410)
!1414 = !DILocation(line: 346, column: 18, scope: !1410)
!1415 = !DILocation(line: 346, column: 11, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !89, line: 346, column: 9)
!1417 = !DILocation(line: 346, column: 9, scope: !1412)
!1418 = !DILocation(line: 347, column: 37, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !89, line: 348, column: 7)
!1420 = distinct !DILexicalBlock(scope: !1421, file: !89, line: 347, column: 7)
!1421 = distinct !DILexicalBlock(scope: !1416, file: !89, line: 346, column: 23)
!1422 = !DILocation(line: 347, column: 30, scope: !1419)
!1423 = !DILocation(line: 347, column: 7, scope: !1419)
!1424 = !DILocation(line: 348, column: 7, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1420, file: !89, line: 349, column: 7)
!1426 = !DILocation(line: 350, column: 31, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1428, file: !89, line: 353, column: 5)
!1428 = distinct !DILexicalBlock(scope: !1412, file: !89, line: 352, column: 5)
!1429 = !DILocation(line: 350, column: 57, scope: !1427)
!1430 = !DILocation(line: 350, column: 5, scope: !1427)
!1431 = !DILocation(line: 351, column: 5, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1428, file: !89, line: 352, column: 5)
!1433 = !DILocation(line: 352, column: 12, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1428, file: !89, line: 353, column: 5)
!1435 = !DILocation(line: 352, column: 5, scope: !1434)
!1436 = !DILocation(line: 353, column: 14, scope: !1428)
!1437 = !DILocation(line: 353, column: 11, scope: !1428)
!1438 = !DILocation(line: 353, column: 5, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !89, line: 356, column: 5)
!1440 = distinct !DILexicalBlock(scope: !1412, file: !89, line: 355, column: 5)
!1441 = !DILocation(line: 0, scope: !1412)
!1442 = !DILocation(line: 353, column: 15, scope: !1439)
!1443 = !DILocation(line: 353, column: 26, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !89, line: 353, column: 11)
!1445 = distinct !DILexicalBlock(scope: !1439, file: !89, line: 353, column: 15)
!1446 = !DILocation(line: 353, column: 20, scope: !1444)
!1447 = !DILocation(line: 353, column: 11, scope: !1445)
!1448 = !DILocation(line: 353, column: 9, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !89, line: 353, column: 34)
!1450 = !DILocation(line: 354, column: 24, scope: !1451)
!1451 = distinct !DILexicalBlock(scope: !1445, file: !89, line: 354, column: 11)
!1452 = !DILocation(line: 354, column: 17, scope: !1451)
!1453 = !DILocation(line: 354, column: 33, scope: !1451)
!1454 = !DILocation(line: 354, column: 11, scope: !1445)
!1455 = !DILocation(line: 355, column: 26, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1457, file: !89, line: 355, column: 13)
!1457 = distinct !DILexicalBlock(scope: !1451, file: !89, line: 354, column: 41)
!1458 = !DILocation(line: 355, column: 19, scope: !1456)
!1459 = !DILocation(line: 355, column: 35, scope: !1456)
!1460 = !DILocation(line: 355, column: 13, scope: !1457)
!1461 = !DILocation(line: 356, column: 11, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !89, line: 357, column: 11)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !89, line: 356, column: 11)
!1464 = distinct !DILexicalBlock(scope: !1456, file: !89, line: 355, column: 42)
!1465 = !DILocation(line: 359, column: 9, scope: !1464)
!1466 = !DILocation(line: 357, column: 75, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !89, line: 361, column: 9)
!1468 = distinct !DILexicalBlock(scope: !1457, file: !89, line: 360, column: 9)
!1469 = !DILocation(line: 357, column: 68, scope: !1467)
!1470 = !DILocation(line: 357, column: 9, scope: !1467)
!1471 = !DILocation(line: 358, column: 16, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1468, file: !89, line: 359, column: 9)
!1473 = !DILocation(line: 358, column: 9, scope: !1472)
!1474 = !DILocation(line: 361, column: 7, scope: !1457)
!1475 = !DILocation(line: 360, column: 18, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !89, line: 363, column: 7)
!1477 = distinct !DILexicalBlock(scope: !1445, file: !89, line: 362, column: 7)
!1478 = !DILocalVariable(name: "tmp___36", scope: !99, file: !89, line: 132, type: !13)
!1479 = !DILocation(line: 360, column: 7, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1477, file: !89, line: 362, column: 7)
!1481 = !DILocation(line: 353, column: 13, scope: !1477)
!1482 = distinct !{!1482, !1438, !1483}
!1483 = !DILocation(line: 355, column: 5, scope: !1439)
!1484 = !DILocation(line: 357, column: 5, scope: !1439)
!1485 = !DILocation(line: 362, column: 5, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1487, file: !89, line: 361, column: 5)
!1487 = distinct !DILexicalBlock(scope: !1412, file: !89, line: 360, column: 5)
!1488 = !DILocation(line: 363, column: 5, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1487, file: !89, line: 364, column: 5)
!1490 = !DILocation(line: 366, column: 3, scope: !1412)
!1491 = !DILocation(line: 366, column: 3, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !89, line: 368, column: 3)
!1493 = distinct !DILexicalBlock(scope: !313, file: !89, line: 367, column: 3)
!1494 = !DILocation(line: 366, column: 13, scope: !1492)
!1495 = !DILocation(line: 366, column: 14, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 366, column: 9)
!1497 = distinct !DILexicalBlock(scope: !1492, file: !89, line: 366, column: 13)
!1498 = !DILocation(line: 366, column: 9, scope: !1497)
!1499 = !DILocation(line: 366, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1496, file: !89, line: 366, column: 24)
!1501 = !DILocation(line: 368, column: 65, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !89, line: 369, column: 5)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 368, column: 5)
!1504 = !DILocation(line: 368, column: 70, scope: !1502)
!1505 = !DILocation(line: 368, column: 77, scope: !1502)
!1506 = !DILocation(line: 368, column: 5, scope: !1502)
!1507 = !DILocation(line: 369, column: 9, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 369, column: 9)
!1509 = !DILocation(line: 369, column: 9, scope: !1497)
!1510 = !DILocation(line: 370, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !89, line: 371, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !89, line: 370, column: 7)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !89, line: 369, column: 20)
!1514 = !DILocation(line: 373, column: 5, scope: !1513)
!1515 = !DILocation(line: 372, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !89, line: 375, column: 7)
!1517 = distinct !DILexicalBlock(scope: !1518, file: !89, line: 374, column: 7)
!1518 = distinct !DILexicalBlock(scope: !1508, file: !89, line: 373, column: 12)
!1519 = !DILocation(line: 373, column: 68, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !89, line: 377, column: 5)
!1521 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 376, column: 5)
!1522 = !DILocation(line: 373, column: 75, scope: !1520)
!1523 = !DILocation(line: 373, column: 73, scope: !1520)
!1524 = !DILocation(line: 373, column: 62, scope: !1520)
!1525 = !DILocation(line: 373, column: 55, scope: !1520)
!1526 = !DILocation(line: 373, column: 5, scope: !1520)
!1527 = !DILocation(line: 374, column: 12, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1521, file: !89, line: 375, column: 5)
!1529 = !DILocation(line: 374, column: 5, scope: !1528)
!1530 = !DILocation(line: 375, column: 70, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1521, file: !89, line: 376, column: 5)
!1532 = !DILocation(line: 375, column: 77, scope: !1531)
!1533 = !DILocation(line: 375, column: 75, scope: !1531)
!1534 = !DILocation(line: 375, column: 64, scope: !1531)
!1535 = !DILocation(line: 375, column: 57, scope: !1531)
!1536 = !DILocation(line: 375, column: 18, scope: !1531)
!1537 = !DILocation(line: 375, column: 11, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 375, column: 9)
!1539 = !DILocation(line: 375, column: 9, scope: !1497)
!1540 = !DILocation(line: 376, column: 40, scope: !1541)
!1541 = distinct !DILexicalBlock(scope: !1542, file: !89, line: 377, column: 7)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !89, line: 376, column: 7)
!1543 = distinct !DILexicalBlock(scope: !1538, file: !89, line: 375, column: 23)
!1544 = !DILocation(line: 376, column: 7, scope: !1541)
!1545 = !DILocation(line: 377, column: 43, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !89, line: 378, column: 7)
!1547 = !DILocation(line: 377, column: 50, scope: !1546)
!1548 = !DILocation(line: 377, column: 48, scope: !1546)
!1549 = !DILocation(line: 377, column: 37, scope: !1546)
!1550 = !DILocation(line: 377, column: 30, scope: !1546)
!1551 = !DILocation(line: 377, column: 7, scope: !1546)
!1552 = !DILocation(line: 378, column: 7, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1542, file: !89, line: 379, column: 7)
!1554 = !DILocation(line: 382, column: 11, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !89, line: 382, column: 5)
!1556 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 382, column: 5)
!1557 = !DILocation(line: 383, column: 5, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1556, file: !89, line: 384, column: 5)
!1559 = !DILocation(line: 384, column: 5, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !89, line: 387, column: 5)
!1561 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 386, column: 5)
!1562 = !DILocation(line: 0, scope: !1497)
!1563 = !DILocation(line: 384, column: 15, scope: !1560)
!1564 = !DILocalVariable(name: "tmp___38", scope: !99, file: !89, line: 134, type: !76)
!1565 = !DILocation(line: 384, column: 13, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !89, line: 384, column: 15)
!1567 = !DILocation(line: 384, column: 23, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1566, file: !89, line: 384, column: 11)
!1569 = !DILocation(line: 384, column: 11, scope: !1566)
!1570 = !DILocation(line: 384, column: 9, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1568, file: !89, line: 384, column: 31)
!1572 = !DILocation(line: 385, column: 18, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1574, file: !89, line: 387, column: 7)
!1574 = distinct !DILexicalBlock(scope: !1566, file: !89, line: 386, column: 7)
!1575 = !DILocalVariable(name: "tmp___37", scope: !99, file: !89, line: 133, type: !13)
!1576 = !DILocation(line: 385, column: 7, scope: !1577)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !89, line: 387, column: 7)
!1578 = distinct !{!1578, !1559, !1579}
!1579 = !DILocation(line: 388, column: 5, scope: !1560)
!1580 = !DILocation(line: 390, column: 5, scope: !1560)
!1581 = !DILocation(line: 386, column: 5, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !89, line: 394, column: 5)
!1583 = distinct !DILexicalBlock(scope: !1497, file: !89, line: 393, column: 5)
!1584 = !DILocation(line: 387, column: 5, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1583, file: !89, line: 388, column: 5)
!1586 = !DILocation(line: 366, column: 7, scope: !1583)
!1587 = distinct !{!1587, !1491, !1588}
!1588 = !DILocation(line: 368, column: 3, scope: !1492)
!1589 = !DILocation(line: 370, column: 3, scope: !1492)
!1590 = !DILocation(line: 390, column: 3, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 374, column: 3)
!1592 = distinct !DILexicalBlock(scope: !313, file: !89, line: 373, column: 3)
!1593 = !DILocation(line: 391, column: 10, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 392, column: 3)
!1595 = !DILocation(line: 391, column: 3, scope: !1594)
!1596 = !DILocation(line: 393, column: 3, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 393, column: 3)
!1598 = !DILocation(line: 395, column: 14, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 395, column: 3)
!1600 = !DILocalVariable(name: "tmp___39", scope: !99, file: !89, line: 135, type: !46)
!1601 = !DILocation(line: 396, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 396, column: 3)
!1603 = !DILocation(line: 397, column: 3, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 398, column: 3)
!1605 = !DILocation(line: 398, column: 21, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 399, column: 3)
!1607 = !DILocation(line: 398, column: 28, scope: !1606)
!1608 = !DILocation(line: 398, column: 9, scope: !1606)
!1609 = !DILocation(line: 398, column: 3, scope: !1606)
!1610 = !DILocation(line: 399, column: 21, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 400, column: 3)
!1612 = !DILocation(line: 399, column: 28, scope: !1611)
!1613 = !DILocation(line: 399, column: 9, scope: !1611)
!1614 = !DILocation(line: 399, column: 3, scope: !1611)
!1615 = !DILocation(line: 400, column: 21, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 401, column: 3)
!1617 = !DILocation(line: 400, column: 27, scope: !1616)
!1618 = !DILocation(line: 400, column: 9, scope: !1616)
!1619 = !DILocation(line: 400, column: 3, scope: !1616)
!1620 = !DILocation(line: 401, column: 20, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 402, column: 3)
!1622 = !DILocation(line: 401, column: 9, scope: !1621)
!1623 = !DILocation(line: 401, column: 3, scope: !1621)
!1624 = !DILocation(line: 403, column: 3, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 403, column: 3)
!1626 = !DILocation(line: 405, column: 3, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1592, file: !89, line: 405, column: 3)
!1628 = !DILocation(line: 407, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !313, file: !89, line: 407, column: 7)
!1630 = !DILocation(line: 407, column: 7, scope: !313)
!1631 = !DILocation(line: 408, column: 5, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !89, line: 409, column: 5)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !89, line: 408, column: 5)
!1634 = distinct !DILexicalBlock(scope: !1629, file: !89, line: 407, column: 18)
!1635 = !DILocation(line: 410, column: 20, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1633, file: !89, line: 410, column: 5)
!1637 = !DILocation(line: 410, column: 13, scope: !1636)
!1638 = !DILocation(line: 409, column: 5, scope: !1636)
!1639 = !DILocation(line: 410, column: 16, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1633, file: !89, line: 412, column: 5)
!1641 = !DILocalVariable(name: "tmp___40", scope: !99, file: !89, line: 136, type: !13)
!1642 = !DILocation(line: 410, column: 18, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1634, file: !89, line: 410, column: 9)
!1644 = !DILocation(line: 410, column: 9, scope: !1634)
!1645 = !DILocation(line: 411, column: 40, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !89, line: 412, column: 7)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !89, line: 411, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1643, file: !89, line: 410, column: 25)
!1649 = !DILocation(line: 411, column: 7, scope: !1646)
!1650 = !DILocation(line: 414, column: 5, scope: !1648)
!1651 = !DILocation(line: 412, column: 46, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !89, line: 416, column: 5)
!1653 = distinct !DILexicalBlock(scope: !1634, file: !89, line: 415, column: 5)
!1654 = !DILocation(line: 412, column: 39, scope: !1652)
!1655 = !DILocation(line: 412, column: 16, scope: !1652)
!1656 = !DILocalVariable(name: "tmp___41", scope: !99, file: !89, line: 137, type: !68)
!1657 = !DILocation(line: 412, column: 38, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1653, file: !89, line: 414, column: 5)
!1659 = !DILocation(line: 412, column: 90, scope: !1658)
!1660 = !DILocation(line: 412, column: 83, scope: !1658)
!1661 = !DILocation(line: 413, column: 22, scope: !1658)
!1662 = !DILocation(line: 412, column: 5, scope: !1658)
!1663 = !DILocation(line: 416, column: 3, scope: !1634)
!1664 = !DILocation(line: 416, column: 10, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !89, line: 418, column: 3)
!1666 = distinct !DILexicalBlock(scope: !313, file: !89, line: 417, column: 3)
!1667 = !DILocation(line: 415, column: 3, scope: !1665)
!1668 = !DILocation(line: 416, column: 3, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1666, file: !89, line: 418, column: 3)
!1670 = !DILocation(line: 417, column: 3, scope: !313)
!1671 = distinct !DISubprogram(name: "exchange", scope: !1672, file: !1672, line: 132, type: !1673, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1672 = !DIFile(filename: "/home/wslee/benchmarks/sound/mp3wrap-0.5/wrap.c", directory: "")
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!102, !102, !13, !13}
!1675 = !DILocalVariable(name: "argv", arg: 1, scope: !1671, file: !1672, line: 132, type: !102)
!1676 = !DILocation(line: 0, scope: !1671)
!1677 = !DILocalVariable(name: "offset", arg: 2, scope: !1671, file: !1672, line: 132, type: !13)
!1678 = !DILocalVariable(name: "tot", arg: 3, scope: !1671, file: !1672, line: 132, type: !13)
!1679 = !DILocation(line: 134, column: 16, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1671, file: !1672, line: 136, column: 3)
!1681 = !DILocalVariable(name: "first", scope: !1671, file: !1672, line: 134, type: !102)
!1682 = !DILocation(line: 135, column: 3, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !1672, line: 136, column: 3)
!1684 = distinct !DILexicalBlock(scope: !1680, file: !1672, line: 135, column: 3)
!1685 = !DILocation(line: 0, scope: !1680)
!1686 = !DILocation(line: 135, column: 13, scope: !1683)
!1687 = !DILocation(line: 135, column: 19, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !1672, line: 135, column: 9)
!1689 = distinct !DILexicalBlock(scope: !1683, file: !1672, line: 135, column: 13)
!1690 = !DILocation(line: 135, column: 9, scope: !1689)
!1691 = !DILocation(line: 135, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1688, file: !1672, line: 135, column: 27)
!1693 = !DILocation(line: 136, column: 31, scope: !1689)
!1694 = !DILocation(line: 136, column: 21, scope: !1689)
!1695 = !DILocation(line: 136, column: 14, scope: !1689)
!1696 = !DILocation(line: 136, column: 12, scope: !1689)
!1697 = !DILocation(line: 137, column: 11, scope: !1689)
!1698 = !DILocation(line: 138, column: 12, scope: !1689)
!1699 = distinct !{!1699, !1682, !1700}
!1700 = !DILocation(line: 139, column: 3, scope: !1683)
!1701 = !DILocation(line: 141, column: 3, scope: !1683)
!1702 = !DILocation(line: 141, column: 3, scope: !1680)
!1703 = distinct !DISubprogram(name: "cindexsize", scope: !1672, file: !1672, line: 56, type: !1704, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!13, !13, !102, !6}
!1706 = !DILocalVariable(name: "files", arg: 1, scope: !1703, file: !1672, line: 56, type: !13)
!1707 = !DILocation(line: 0, scope: !1703)
!1708 = !DILocalVariable(name: "argv", arg: 2, scope: !1703, file: !1672, line: 56, type: !102)
!1709 = !DILocalVariable(name: "optoffset", arg: 3, scope: !1703, file: !1672, line: 56, type: !6)
!1710 = !DILocalVariable(name: "__cil_tmp8", scope: !1703, file: !1672, line: 62, type: !12)
!1711 = !DILocation(line: 62, column: 9, scope: !1703)
!1712 = !DILocalVariable(name: "size", scope: !1703, file: !1672, line: 59, type: !13)
!1713 = !DILocalVariable(name: "i", scope: !1703, file: !1672, line: 58, type: !13)
!1714 = !DILocation(line: 59, column: 3, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !1672, line: 61, column: 3)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !1672, line: 60, column: 3)
!1717 = distinct !DILexicalBlock(scope: !1703, file: !1672, line: 64, column: 3)
!1718 = !DILocation(line: 0, scope: !1717)
!1719 = !DILocation(line: 59, column: 13, scope: !1715)
!1720 = !DILocation(line: 59, column: 14, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !1672, line: 59, column: 9)
!1722 = distinct !DILexicalBlock(scope: !1715, file: !1672, line: 59, column: 13)
!1723 = !DILocation(line: 59, column: 9, scope: !1722)
!1724 = !DILocation(line: 59, column: 7, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !1672, line: 59, column: 24)
!1726 = !DILocation(line: 60, column: 37, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1728, file: !1672, line: 62, column: 5)
!1728 = distinct !DILexicalBlock(scope: !1722, file: !1672, line: 61, column: 5)
!1729 = !DILocation(line: 60, column: 44, scope: !1727)
!1730 = !DILocation(line: 60, column: 42, scope: !1727)
!1731 = !DILocation(line: 60, column: 31, scope: !1727)
!1732 = !DILocation(line: 60, column: 24, scope: !1727)
!1733 = !DILocation(line: 60, column: 17, scope: !1727)
!1734 = !DILocalVariable(name: "tmp", scope: !1703, file: !1672, line: 60, type: !13)
!1735 = !DILocation(line: 60, column: 17, scope: !1728)
!1736 = !DILocation(line: 60, column: 10, scope: !1728)
!1737 = !DILocation(line: 59, column: 7, scope: !1728)
!1738 = distinct !{!1738, !1714, !1739}
!1739 = !DILocation(line: 61, column: 3, scope: !1715)
!1740 = !DILocation(line: 63, column: 3, scope: !1715)
!1741 = !DILocation(line: 61, column: 19, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1743, file: !1672, line: 67, column: 3)
!1743 = distinct !DILexicalBlock(scope: !1717, file: !1672, line: 66, column: 3)
!1744 = !DILocalVariable(name: "tmp___0", scope: !1703, file: !1672, line: 61, type: !13)
!1745 = !DILocation(line: 61, column: 19, scope: !1717)
!1746 = !DILocation(line: 61, column: 39, scope: !1717)
!1747 = !DILocation(line: 61, column: 44, scope: !1717)
!1748 = !DILocation(line: 61, column: 30, scope: !1717)
!1749 = !DILocation(line: 61, column: 49, scope: !1717)
!1750 = !DILocation(line: 61, column: 54, scope: !1717)
!1751 = !DILocation(line: 61, column: 3, scope: !1717)
!1752 = distinct !DISubprogram(name: "flength", scope: !1672, file: !1672, line: 50, type: !1753, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!76, !14}
!1755 = !DILocalVariable(name: "in", arg: 1, scope: !1752, file: !1672, line: 50, type: !14)
!1756 = !DILocation(line: 0, scope: !1752)
!1757 = !DILocation(line: 52, column: 3, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1759, file: !1672, line: 56, column: 3)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !1672, line: 55, column: 3)
!1760 = distinct !DILexicalBlock(scope: !1752, file: !1672, line: 54, column: 3)
!1761 = !DILocation(line: 53, column: 9, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1759, file: !1672, line: 54, column: 3)
!1763 = !DILocalVariable(name: "tmp", scope: !1752, file: !1672, line: 52, type: !46)
!1764 = !DILocation(line: 53, column: 3, scope: !1760)
!1765 = distinct !DISubprogram(name: "getid3v2", scope: !1672, file: !1672, line: 103, type: !1766, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!76, !14, !76}
!1768 = !DILocalVariable(name: "in", arg: 1, scope: !1765, file: !1672, line: 103, type: !14)
!1769 = !DILocation(line: 0, scope: !1765)
!1770 = !DILocalVariable(name: "start", arg: 2, scope: !1765, file: !1672, line: 103, type: !76)
!1771 = !DILocation(line: 106, column: 3, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1773, file: !1672, line: 119, column: 3)
!1773 = distinct !DILexicalBlock(scope: !1774, file: !1672, line: 118, column: 3)
!1774 = distinct !DILexicalBlock(scope: !1765, file: !1672, line: 117, column: 3)
!1775 = !DILocation(line: 107, column: 13, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1773, file: !1672, line: 108, column: 3)
!1777 = !DILocalVariable(name: "tmp___5", scope: !1765, file: !1672, line: 115, type: !13)
!1778 = !DILocation(line: 107, column: 15, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1774, file: !1672, line: 107, column: 7)
!1780 = !DILocation(line: 107, column: 7, scope: !1774)
!1781 = !DILocation(line: 108, column: 15, scope: !1782)
!1782 = distinct !DILexicalBlock(scope: !1783, file: !1672, line: 109, column: 5)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !1672, line: 108, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1779, file: !1672, line: 107, column: 22)
!1785 = !DILocalVariable(name: "tmp___4", scope: !1765, file: !1672, line: 114, type: !13)
!1786 = !DILocation(line: 108, column: 17, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1784, file: !1672, line: 108, column: 9)
!1788 = !DILocation(line: 108, column: 9, scope: !1784)
!1789 = !DILocation(line: 109, column: 17, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1791, file: !1672, line: 110, column: 7)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !1672, line: 109, column: 7)
!1792 = distinct !DILexicalBlock(scope: !1787, file: !1672, line: 108, column: 24)
!1793 = !DILocalVariable(name: "tmp___3", scope: !1765, file: !1672, line: 113, type: !13)
!1794 = !DILocation(line: 109, column: 19, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1792, file: !1672, line: 109, column: 11)
!1796 = !DILocation(line: 109, column: 11, scope: !1792)
!1797 = !DILocation(line: 110, column: 9, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !1672, line: 111, column: 9)
!1799 = distinct !DILexicalBlock(scope: !1800, file: !1672, line: 110, column: 9)
!1800 = distinct !DILexicalBlock(scope: !1795, file: !1672, line: 109, column: 26)
!1801 = !DILocation(line: 111, column: 15, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !1672, line: 112, column: 9)
!1803 = !DILocalVariable(name: "tmp", scope: !1765, file: !1672, line: 109, type: !13)
!1804 = !DILocation(line: 111, column: 14, scope: !1799)
!1805 = !DILocalVariable(name: "c1", scope: !1765, file: !1672, line: 105, type: !9)
!1806 = !DILocation(line: 112, column: 19, scope: !1807)
!1807 = distinct !DILexicalBlock(scope: !1799, file: !1672, line: 112, column: 9)
!1808 = !DILocalVariable(name: "tmp___0", scope: !1765, file: !1672, line: 110, type: !13)
!1809 = !DILocation(line: 112, column: 14, scope: !1799)
!1810 = !DILocalVariable(name: "c2", scope: !1765, file: !1672, line: 106, type: !9)
!1811 = !DILocation(line: 113, column: 19, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1799, file: !1672, line: 113, column: 9)
!1813 = !DILocalVariable(name: "tmp___1", scope: !1765, file: !1672, line: 111, type: !13)
!1814 = !DILocation(line: 113, column: 14, scope: !1799)
!1815 = !DILocalVariable(name: "c3", scope: !1765, file: !1672, line: 107, type: !9)
!1816 = !DILocation(line: 114, column: 19, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1799, file: !1672, line: 114, column: 9)
!1818 = !DILocalVariable(name: "tmp___2", scope: !1765, file: !1672, line: 112, type: !13)
!1819 = !DILocation(line: 114, column: 14, scope: !1799)
!1820 = !DILocalVariable(name: "c4", scope: !1765, file: !1672, line: 108, type: !9)
!1821 = !DILocation(line: 115, column: 36, scope: !1800)
!1822 = !DILocation(line: 115, column: 45, scope: !1800)
!1823 = !DILocation(line: 115, column: 57, scope: !1800)
!1824 = !DILocation(line: 115, column: 66, scope: !1800)
!1825 = !DILocation(line: 115, column: 55, scope: !1800)
!1826 = !DILocation(line: 115, column: 77, scope: !1800)
!1827 = !DILocation(line: 115, column: 86, scope: !1800)
!1828 = !DILocation(line: 115, column: 75, scope: !1800)
!1829 = !DILocation(line: 115, column: 95, scope: !1800)
!1830 = !DILocation(line: 115, column: 93, scope: !1800)
!1831 = !DILocation(line: 115, column: 17, scope: !1800)
!1832 = !DILocation(line: 115, column: 9, scope: !1800)
!1833 = !DILocation(line: 117, column: 5, scope: !1792)
!1834 = !DILocation(line: 118, column: 3, scope: !1784)
!1835 = !DILocation(line: 118, column: 3, scope: !1774)
!1836 = !DILocation(line: 0, scope: !1774)
!1837 = !DILocation(line: 120, column: 1, scope: !1765)
!1838 = distinct !DISubprogram(name: "getword", scope: !1672, file: !1672, line: 121, type: !1839, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!76, !14, !76, !13}
!1841 = !DILocalVariable(name: "in", arg: 1, scope: !1838, file: !1672, line: 121, type: !14)
!1842 = !DILocation(line: 0, scope: !1838)
!1843 = !DILocalVariable(name: "offset", arg: 2, scope: !1838, file: !1672, line: 121, type: !76)
!1844 = !DILocalVariable(name: "mode", arg: 3, scope: !1838, file: !1672, line: 121, type: !13)
!1845 = !DILocalVariable(name: "head", scope: !1838, file: !1672, line: 124, type: !76)
!1846 = !DILocation(line: 124, column: 3, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !1672, line: 124, column: 3)
!1848 = distinct !DILexicalBlock(scope: !1849, file: !1672, line: 128, column: 3)
!1849 = distinct !DILexicalBlock(scope: !1838, file: !1672, line: 127, column: 3)
!1850 = !DILocalVariable(name: "i", scope: !1838, file: !1672, line: 123, type: !13)
!1851 = !DILocation(line: 125, column: 3, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !1672, line: 128, column: 3)
!1853 = distinct !DILexicalBlock(scope: !1849, file: !1672, line: 127, column: 3)
!1854 = !DILocation(line: 0, scope: !1849)
!1855 = !DILocation(line: 125, column: 13, scope: !1852)
!1856 = !DILocation(line: 125, column: 14, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !1672, line: 125, column: 9)
!1858 = distinct !DILexicalBlock(scope: !1852, file: !1672, line: 125, column: 13)
!1859 = !DILocation(line: 125, column: 9, scope: !1858)
!1860 = !DILocation(line: 125, column: 7, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1857, file: !1672, line: 125, column: 20)
!1862 = !DILocation(line: 126, column: 10, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1858, file: !1672, line: 127, column: 5)
!1864 = !DILocation(line: 127, column: 11, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1863, file: !1672, line: 127, column: 5)
!1866 = !DILocalVariable(name: "tmp", scope: !1838, file: !1672, line: 125, type: !13)
!1867 = !DILocation(line: 127, column: 13, scope: !1863)
!1868 = !DILocation(line: 127, column: 10, scope: !1863)
!1869 = !DILocation(line: 125, column: 7, scope: !1863)
!1870 = distinct !{!1870, !1851, !1871}
!1871 = !DILocation(line: 127, column: 3, scope: !1852)
!1872 = !DILocation(line: 129, column: 3, scope: !1852)
!1873 = !DILocation(line: 129, column: 3, scope: !1849)
!1874 = distinct !DISubprogram(name: "getid3v1", scope: !1672, file: !1672, line: 41, type: !1875, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1875 = !DISubroutineType(types: !1876)
!1876 = !{!13, !14}
!1877 = !DILocalVariable(name: "file_input", arg: 1, scope: !1874, file: !1672, line: 41, type: !14)
!1878 = !DILocation(line: 0, scope: !1874)
!1879 = !DILocation(line: 42, column: 3, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !1672, line: 49, column: 3)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !1672, line: 48, column: 3)
!1882 = distinct !DILexicalBlock(scope: !1874, file: !1672, line: 47, column: 3)
!1883 = !DILocation(line: 43, column: 13, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1881, file: !1672, line: 44, column: 3)
!1885 = !DILocalVariable(name: "tmp___1", scope: !1874, file: !1672, line: 45, type: !13)
!1886 = !DILocation(line: 43, column: 15, scope: !1887)
!1887 = distinct !DILexicalBlock(scope: !1882, file: !1672, line: 43, column: 7)
!1888 = !DILocation(line: 43, column: 7, scope: !1882)
!1889 = !DILocation(line: 44, column: 15, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1891, file: !1672, line: 45, column: 5)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !1672, line: 44, column: 5)
!1892 = distinct !DILexicalBlock(scope: !1887, file: !1672, line: 43, column: 22)
!1893 = !DILocalVariable(name: "tmp___0", scope: !1874, file: !1672, line: 44, type: !13)
!1894 = !DILocation(line: 44, column: 17, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1892, file: !1672, line: 44, column: 9)
!1896 = !DILocation(line: 44, column: 9, scope: !1892)
!1897 = !DILocation(line: 45, column: 13, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1899, file: !1672, line: 46, column: 7)
!1899 = distinct !DILexicalBlock(scope: !1900, file: !1672, line: 45, column: 7)
!1900 = distinct !DILexicalBlock(scope: !1895, file: !1672, line: 44, column: 24)
!1901 = !DILocalVariable(name: "tmp", scope: !1874, file: !1672, line: 43, type: !13)
!1902 = !DILocation(line: 45, column: 15, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1900, file: !1672, line: 45, column: 11)
!1904 = !DILocation(line: 45, column: 11, scope: !1900)
!1905 = !DILocation(line: 46, column: 9, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !1672, line: 45, column: 22)
!1907 = !DILocation(line: 48, column: 5, scope: !1900)
!1908 = !DILocation(line: 49, column: 3, scope: !1892)
!1909 = !DILocation(line: 47, column: 3, scope: !1882)
!1910 = !DILocation(line: 0, scope: !1882)
!1911 = !DILocation(line: 49, column: 1, scope: !1874)
!1912 = distinct !DISubprogram(name: "c_crc", scope: !82, file: !82, line: 98, type: !1913, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!76, !14, !76, !76}
!1915 = !DILocalVariable(name: "in", arg: 1, scope: !1912, file: !82, line: 98, type: !14)
!1916 = !DILocation(line: 0, scope: !1912)
!1917 = !DILocalVariable(name: "begin", arg: 2, scope: !1912, file: !82, line: 98, type: !76)
!1918 = !DILocalVariable(name: "end", arg: 3, scope: !1912, file: !82, line: 98, type: !76)
!1919 = !DILocalVariable(name: "__cil_tmp8", scope: !1912, file: !82, line: 104, type: !12)
!1920 = !DILocation(line: 104, column: 9, scope: !1912)
!1921 = !DILocalVariable(name: "crc", scope: !1912, file: !82, line: 100, type: !76)
!1922 = !DILocation(line: 105, column: 9, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !82, line: 104, column: 3)
!1924 = distinct !DILexicalBlock(scope: !1925, file: !82, line: 107, column: 3)
!1925 = distinct !DILexicalBlock(scope: !1912, file: !82, line: 106, column: 3)
!1926 = !DILocalVariable(name: "tmp", scope: !1912, file: !82, line: 102, type: !13)
!1927 = !DILocation(line: 105, column: 11, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1925, file: !82, line: 105, column: 7)
!1929 = !DILocation(line: 105, column: 7, scope: !1925)
!1930 = !DILocation(line: 106, column: 5, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !82, line: 107, column: 5)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !82, line: 106, column: 5)
!1933 = distinct !DILexicalBlock(scope: !1928, file: !82, line: 105, column: 18)
!1934 = !DILocation(line: 107, column: 5, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1932, file: !82, line: 108, column: 5)
!1936 = !DILocation(line: 110, column: 3, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !82, line: 112, column: 3)
!1938 = distinct !DILexicalBlock(scope: !1925, file: !82, line: 111, column: 3)
!1939 = !DILocation(line: 0, scope: !1925)
!1940 = !DILocation(line: 110, column: 13, scope: !1937)
!1941 = !DILocalVariable(name: "tmp___0", scope: !1912, file: !82, line: 103, type: !76)
!1942 = !DILocation(line: 110, column: 11, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1937, file: !82, line: 110, column: 13)
!1944 = !DILocation(line: 110, column: 20, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1943, file: !82, line: 110, column: 9)
!1946 = !DILocation(line: 110, column: 9, scope: !1943)
!1947 = !DILocation(line: 110, column: 7, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1945, file: !82, line: 110, column: 28)
!1949 = !DILocation(line: 111, column: 9, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !82, line: 113, column: 5)
!1951 = distinct !DILexicalBlock(scope: !1943, file: !82, line: 112, column: 5)
!1952 = !DILocalVariable(name: "c", scope: !1912, file: !82, line: 101, type: !13)
!1953 = !DILocation(line: 112, column: 17, scope: !1951)
!1954 = !DILocation(line: 112, column: 23, scope: !1951)
!1955 = !DILocation(line: 112, column: 69, scope: !1951)
!1956 = !DILocation(line: 112, column: 67, scope: !1951)
!1957 = !DILocation(line: 112, column: 88, scope: !1951)
!1958 = !DILocation(line: 112, column: 55, scope: !1951)
!1959 = !DILocation(line: 112, column: 39, scope: !1951)
!1960 = !DILocation(line: 112, column: 37, scope: !1951)
!1961 = distinct !{!1961, !1936, !1962}
!1962 = !DILocation(line: 114, column: 3, scope: !1937)
!1963 = !DILocation(line: 116, column: 3, scope: !1937)
!1964 = !DILocation(line: 115, column: 15, scope: !1925)
!1965 = !DILocation(line: 115, column: 3, scope: !1925)
!1966 = distinct !DISubprogram(name: "buildindex", scope: !1672, file: !1672, line: 64, type: !1967, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!12, !12, !13, !13, !102, !6, !1969, !6, !13}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!1970 = !DILocalVariable(name: "wrapindex", arg: 1, scope: !1966, file: !1672, line: 64, type: !12)
!1971 = !DILocation(line: 0, scope: !1966)
!1972 = !DILocalVariable(name: "indexsize", arg: 2, scope: !1966, file: !1672, line: 64, type: !13)
!1973 = !DILocalVariable(name: "files", arg: 3, scope: !1966, file: !1672, line: 64, type: !13)
!1974 = !DILocalVariable(name: "argv", arg: 4, scope: !1966, file: !1672, line: 64, type: !102)
!1975 = !DILocalVariable(name: "optoffset", arg: 5, scope: !1966, file: !1672, line: 64, type: !6)
!1976 = !DILocalVariable(name: "splitpoints", arg: 6, scope: !1966, file: !1672, line: 65, type: !1969)
!1977 = !DILocalVariable(name: "addoption", arg: 7, scope: !1966, file: !1672, line: 65, type: !6)
!1978 = !DILocalVariable(name: "oldfiles", arg: 8, scope: !1966, file: !1672, line: 65, type: !13)
!1979 = !DILocalVariable(name: "__cil_tmp23", scope: !1966, file: !1672, line: 81, type: !12)
!1980 = !DILocation(line: 81, column: 9, scope: !1966)
!1981 = !DILocalVariable(name: "__cil_tmp24", scope: !1966, file: !1672, line: 82, type: !12)
!1982 = !DILocation(line: 82, column: 9, scope: !1966)
!1983 = !DILocalVariable(name: "__cil_tmp25", scope: !1966, file: !1672, line: 83, type: !12)
!1984 = !DILocation(line: 83, column: 9, scope: !1966)
!1985 = !DILocalVariable(name: "__cil_tmp26", scope: !1966, file: !1672, line: 84, type: !12)
!1986 = !DILocation(line: 84, column: 9, scope: !1966)
!1987 = !DILocalVariable(name: "__cil_tmp27", scope: !1966, file: !1672, line: 85, type: !12)
!1988 = !DILocation(line: 85, column: 9, scope: !1966)
!1989 = !DILocalVariable(name: "j", scope: !1966, file: !1672, line: 68, type: !13)
!1990 = !DILocation(line: 70, column: 15, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1992, file: !1672, line: 69, column: 3)
!1992 = distinct !DILexicalBlock(scope: !1993, file: !1672, line: 88, column: 3)
!1993 = distinct !DILexicalBlock(scope: !1966, file: !1672, line: 87, column: 3)
!1994 = !DILocalVariable(name: "tmp", scope: !1966, file: !1672, line: 71, type: !13)
!1995 = !DILocation(line: 70, column: 3, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !1672, line: 72, column: 3)
!1997 = !DILocation(line: 71, column: 13, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1992, file: !1672, line: 72, column: 3)
!1999 = !DILocalVariable(name: "tmp___0", scope: !1966, file: !1672, line: 72, type: !77)
!2000 = !DILocation(line: 71, column: 15, scope: !1992)
!2001 = !DILocation(line: 71, column: 20, scope: !1992)
!2002 = !DILocation(line: 72, column: 13, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1992, file: !1672, line: 72, column: 3)
!2004 = !DILocalVariable(name: "tmp___1", scope: !1966, file: !1672, line: 73, type: !77)
!2005 = !DILocation(line: 72, column: 15, scope: !1992)
!2006 = !DILocation(line: 72, column: 20, scope: !1992)
!2007 = !DILocation(line: 73, column: 15, scope: !1992)
!2008 = !DILocation(line: 73, column: 20, scope: !1992)
!2009 = !DILocation(line: 74, column: 36, scope: !1992)
!2010 = !DILocation(line: 74, column: 22, scope: !1992)
!2011 = !DILocation(line: 74, column: 15, scope: !1992)
!2012 = !DILocation(line: 74, column: 20, scope: !1992)
!2013 = !DILocation(line: 75, column: 9, scope: !1992)
!2014 = !DILocalVariable(name: "i", scope: !1966, file: !1672, line: 67, type: !13)
!2015 = !DILocation(line: 76, column: 3, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !1672, line: 79, column: 3)
!2017 = distinct !DILexicalBlock(scope: !1993, file: !1672, line: 78, column: 3)
!2018 = !DILocation(line: 0, scope: !1993)
!2019 = !DILocation(line: 76, column: 13, scope: !2016)
!2020 = !DILocation(line: 76, column: 14, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !1672, line: 76, column: 9)
!2022 = distinct !DILexicalBlock(scope: !2016, file: !1672, line: 76, column: 13)
!2023 = !DILocation(line: 76, column: 9, scope: !2022)
!2024 = !DILocation(line: 76, column: 7, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2021, file: !1672, line: 76, column: 25)
!2026 = !DILocalVariable(name: "tmp___2", scope: !1966, file: !1672, line: 74, type: !13)
!2027 = !DILocation(line: 77, column: 7, scope: !2022)
!2028 = !DILocation(line: 77, column: 53, scope: !2022)
!2029 = !DILocation(line: 77, column: 39, scope: !2022)
!2030 = !DILocation(line: 77, column: 58, scope: !2022)
!2031 = !DILocation(line: 77, column: 65, scope: !2022)
!2032 = !DILocation(line: 77, column: 30, scope: !2022)
!2033 = !DILocation(line: 77, column: 17, scope: !2022)
!2034 = !DILocation(line: 77, column: 28, scope: !2022)
!2035 = !DILocalVariable(name: "tmp___3", scope: !1966, file: !1672, line: 75, type: !13)
!2036 = !DILocation(line: 78, column: 7, scope: !2022)
!2037 = !DILocation(line: 78, column: 53, scope: !2022)
!2038 = !DILocation(line: 78, column: 39, scope: !2022)
!2039 = !DILocation(line: 78, column: 58, scope: !2022)
!2040 = !DILocation(line: 78, column: 65, scope: !2022)
!2041 = !DILocation(line: 78, column: 30, scope: !2022)
!2042 = !DILocation(line: 78, column: 17, scope: !2022)
!2043 = !DILocation(line: 78, column: 28, scope: !2022)
!2044 = !DILocalVariable(name: "tmp___4", scope: !1966, file: !1672, line: 76, type: !13)
!2045 = !DILocation(line: 79, column: 7, scope: !2022)
!2046 = !DILocation(line: 79, column: 53, scope: !2022)
!2047 = !DILocation(line: 79, column: 39, scope: !2022)
!2048 = !DILocation(line: 79, column: 58, scope: !2022)
!2049 = !DILocation(line: 79, column: 64, scope: !2022)
!2050 = !DILocation(line: 79, column: 30, scope: !2022)
!2051 = !DILocation(line: 79, column: 17, scope: !2022)
!2052 = !DILocation(line: 79, column: 28, scope: !2022)
!2053 = !DILocalVariable(name: "tmp___5", scope: !1966, file: !1672, line: 77, type: !13)
!2054 = !DILocation(line: 80, column: 7, scope: !2022)
!2055 = !DILocation(line: 80, column: 52, scope: !2022)
!2056 = !DILocation(line: 80, column: 38, scope: !2022)
!2057 = !DILocation(line: 80, column: 57, scope: !2022)
!2058 = !DILocation(line: 80, column: 30, scope: !2022)
!2059 = !DILocation(line: 80, column: 17, scope: !2022)
!2060 = !DILocation(line: 80, column: 28, scope: !2022)
!2061 = !DILocation(line: 81, column: 11, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2022, file: !1672, line: 81, column: 9)
!2063 = !DILocation(line: 81, column: 9, scope: !2022)
!2064 = !DILocalVariable(name: "k", scope: !1966, file: !1672, line: 69, type: !13)
!2065 = !DILocation(line: 83, column: 11, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !1672, line: 83, column: 11)
!2067 = distinct !DILexicalBlock(scope: !2062, file: !1672, line: 81, column: 20)
!2068 = !DILocation(line: 83, column: 11, scope: !2067)
!2069 = !DILocation(line: 83, column: 15, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !1672, line: 83, column: 13)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !1672, line: 83, column: 22)
!2072 = !DILocation(line: 83, column: 13, scope: !2071)
!2073 = !DILocation(line: 84, column: 11, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !1672, line: 85, column: 11)
!2075 = distinct !DILexicalBlock(scope: !2076, file: !1672, line: 84, column: 11)
!2076 = distinct !DILexicalBlock(scope: !2070, file: !1672, line: 83, column: 27)
!2077 = !DILocation(line: 0, scope: !2022)
!2078 = !DILocation(line: 84, column: 21, scope: !2074)
!2079 = !DILocalVariable(name: "tmp___6", scope: !1966, file: !1672, line: 78, type: !13)
!2080 = !DILocation(line: 84, column: 15, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2074, file: !1672, line: 84, column: 21)
!2082 = !DILocation(line: 84, column: 38, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2081, file: !1672, line: 84, column: 17)
!2084 = !DILocation(line: 84, column: 26, scope: !2083)
!2085 = !DILocation(line: 84, column: 20, scope: !2083)
!2086 = !DILocation(line: 84, column: 49, scope: !2083)
!2087 = !DILocation(line: 84, column: 17, scope: !2081)
!2088 = !DILocation(line: 84, column: 15, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2083, file: !1672, line: 84, column: 56)
!2090 = distinct !{!2090, !2073, !2091}
!2091 = !DILocation(line: 86, column: 11, scope: !2074)
!2092 = !DILocation(line: 88, column: 11, scope: !2074)
!2093 = !DILocation(line: 91, column: 9, scope: !2076)
!2094 = !DILocation(line: 83, column: 11, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2070, file: !1672, line: 91, column: 16)
!2096 = !DILocation(line: 85, column: 7, scope: !2071)
!2097 = !DILocation(line: 85, column: 14, scope: !2066)
!2098 = !DILocation(line: 86, column: 9, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !1672, line: 88, column: 9)
!2100 = distinct !DILexicalBlock(scope: !2101, file: !1672, line: 87, column: 9)
!2101 = distinct !DILexicalBlock(scope: !2066, file: !1672, line: 85, column: 14)
!2102 = !DILocation(line: 0, scope: !2067)
!2103 = !DILocation(line: 86, column: 19, scope: !2099)
!2104 = !DILocalVariable(name: "tmp___7", scope: !1966, file: !1672, line: 79, type: !13)
!2105 = !DILocation(line: 87, column: 13, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2099, file: !1672, line: 86, column: 19)
!2107 = !DILocation(line: 87, column: 31, scope: !2106)
!2108 = !DILocation(line: 87, column: 38, scope: !2106)
!2109 = !DILocation(line: 87, column: 36, scope: !2106)
!2110 = !DILocation(line: 87, column: 55, scope: !2106)
!2111 = !DILocation(line: 87, column: 24, scope: !2106)
!2112 = !DILocation(line: 87, column: 17, scope: !2106)
!2113 = !DILocation(line: 87, column: 68, scope: !2106)
!2114 = !DILocation(line: 87, column: 15, scope: !2106)
!2115 = !DILocalVariable(name: "c", scope: !1966, file: !1672, line: 70, type: !9)
!2116 = !DILocalVariable(name: "tmp___8", scope: !1966, file: !1672, line: 80, type: !13)
!2117 = !DILocation(line: 88, column: 13, scope: !2106)
!2118 = !DILocation(line: 88, column: 23, scope: !2106)
!2119 = !DILocation(line: 88, column: 34, scope: !2106)
!2120 = !DILocation(line: 86, column: 18, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2106, file: !1672, line: 86, column: 15)
!2122 = !DILocation(line: 86, column: 26, scope: !2121)
!2123 = !DILocation(line: 86, column: 15, scope: !2106)
!2124 = !DILocation(line: 86, column: 13, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2121, file: !1672, line: 86, column: 33)
!2126 = distinct !{!2126, !2098, !2127}
!2127 = !DILocation(line: 88, column: 9, scope: !2099)
!2128 = !DILocation(line: 90, column: 9, scope: !2099)
!2129 = !DILocation(line: 0, scope: !2066)
!2130 = !DILocation(line: 94, column: 5, scope: !2067)
!2131 = !DILocation(line: 76, column: 7, scope: !2022)
!2132 = distinct !{!2132, !2015, !2133}
!2133 = !DILocation(line: 77, column: 3, scope: !2016)
!2134 = !DILocation(line: 79, column: 3, scope: !2016)
!2135 = !DILocation(line: 95, column: 22, scope: !2136)
!2136 = distinct !DILexicalBlock(scope: !1993, file: !1672, line: 95, column: 7)
!2137 = !DILocation(line: 95, column: 9, scope: !2136)
!2138 = !DILocation(line: 95, column: 7, scope: !1993)
!2139 = !DILocation(line: 96, column: 38, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2141, file: !1672, line: 97, column: 5)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !1672, line: 96, column: 5)
!2142 = distinct !DILexicalBlock(scope: !2136, file: !1672, line: 95, column: 27)
!2143 = !DILocation(line: 96, column: 5, scope: !2140)
!2144 = !DILocation(line: 97, column: 5, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !1672, line: 98, column: 5)
!2146 = !DILocation(line: 100, column: 3, scope: !1993)
!2147 = distinct !DISubprogram(name: "charat", scope: !1672, file: !1672, line: 34, type: !2148, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!77, !12, !13}
!2150 = !DILocalVariable(name: "s", arg: 1, scope: !2147, file: !1672, line: 34, type: !12)
!2151 = !DILocation(line: 0, scope: !2147)
!2152 = !DILocalVariable(name: "pos", arg: 2, scope: !2147, file: !1672, line: 34, type: !13)
!2153 = !DILocation(line: 36, column: 15, scope: !2154)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !1672, line: 40, column: 3)
!2155 = distinct !DILexicalBlock(scope: !2156, file: !1672, line: 39, column: 3)
!2156 = distinct !DILexicalBlock(scope: !2147, file: !1672, line: 38, column: 3)
!2157 = !DILocalVariable(name: "tmp", scope: !2147, file: !1672, line: 36, type: !13)
!2158 = !DILocation(line: 36, column: 11, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2156, file: !1672, line: 36, column: 7)
!2160 = !DILocation(line: 36, column: 7, scope: !2156)
!2161 = !DILocation(line: 37, column: 33, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !1672, line: 36, column: 18)
!2163 = !DILocation(line: 37, column: 29, scope: !2162)
!2164 = !DILocation(line: 37, column: 5, scope: !2162)
!2165 = !DILocation(line: 38, column: 5, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2159, file: !1672, line: 38, column: 10)
!2167 = !DILocation(line: 0, scope: !2159)
!2168 = !DILocation(line: 41, column: 1, scope: !2147)
