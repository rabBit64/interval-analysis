; ModuleID = '/tmp/tmp.ll'
source_filename = "c/id3tool-1.2a.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.style_s = type { i8, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.id3tag_s = type { [3 x i8], [30 x i8], [30 x i8], [30 x i8], [4 x i8], %union.__anonunion_note_24, i8 }
%union.__anonunion_note_24 = type { %struct.__anonstruct_v10_25 }
%struct.__anonstruct_v10_25 = type { [30 x i8] }
%struct.__anonstruct_v11_26 = type { [28 x i8], i8, i8 }

@.str = private unnamed_addr constant [6 x i8] c"Blues\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Classic Rock\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Country\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Dance\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Disco\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"Funk\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"Grunge\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"Hip-Hop\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"Jazz\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Metal\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"New Age\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"Oldies\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"Pop\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"R&B\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"Rap\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"Reggae\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"Rock\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"Techno\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"Industrial\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Alternative\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"Ska\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Death Metal\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"Pranks\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"Soundtrack\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"Euro-Techno\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"Ambient\00", align 1
@.str.27 = private unnamed_addr constant [9 x i8] c"Trip-Hop\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"Vocal\00", align 1
@.str.29 = private unnamed_addr constant [10 x i8] c"Jazz+Funk\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"Fusion\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"Trance\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"Classical\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"Instrumental\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"Acid\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"House\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"Game\00", align 1
@.str.37 = private unnamed_addr constant [11 x i8] c"Sound Clip\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"Gospel\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"Noise\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"Alt. Rock\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"Bass\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"Soul\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"Punk\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"Space\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"Meditative\00", align 1
@.str.46 = private unnamed_addr constant [17 x i8] c"Instrumental Pop\00", align 1
@.str.47 = private unnamed_addr constant [18 x i8] c"Instrumental Rock\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"Ethnic\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"Gothic\00", align 1
@.str.50 = private unnamed_addr constant [9 x i8] c"Darkwave\00", align 1
@.str.51 = private unnamed_addr constant [18 x i8] c"Techno-Industrial\00", align 1
@.str.52 = private unnamed_addr constant [11 x i8] c"Electronic\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"Pop-Folk\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"Eurodance\00", align 1
@.str.55 = private unnamed_addr constant [6 x i8] c"Dream\00", align 1
@.str.56 = private unnamed_addr constant [14 x i8] c"Southern Rock\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"Comedy\00", align 1
@.str.58 = private unnamed_addr constant [5 x i8] c"Cult\00", align 1
@.str.59 = private unnamed_addr constant [8 x i8] c"Gangsta\00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"Top 40\00", align 1
@.str.61 = private unnamed_addr constant [14 x i8] c"Christian Rap\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"Pop/Funk\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"Jungle\00", align 1
@.str.64 = private unnamed_addr constant [10 x i8] c"Native US\00", align 1
@.str.65 = private unnamed_addr constant [8 x i8] c"Cabaret\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"New Wave\00", align 1
@.str.67 = private unnamed_addr constant [12 x i8] c"Psychadelic\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"Rave\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"Showtunes\00", align 1
@.str.70 = private unnamed_addr constant [8 x i8] c"Trailer\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"Lo-Fi\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"Tribal\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c"Acid Punk\00", align 1
@.str.74 = private unnamed_addr constant [10 x i8] c"Acid Jazz\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"Polka\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"Retro\00", align 1
@.str.77 = private unnamed_addr constant [8 x i8] c"Musical\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"Rock & Roll\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"Hard Rock\00", align 1
@.str.80 = private unnamed_addr constant [5 x i8] c"Folk\00", align 1
@.str.81 = private unnamed_addr constant [10 x i8] c"Folk-Rock\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"National Folk\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"Swing\00", align 1
@.str.84 = private unnamed_addr constant [12 x i8] c"Fast Fusion\00", align 1
@.str.85 = private unnamed_addr constant [6 x i8] c"Bebob\00", align 1
@.str.86 = private unnamed_addr constant [6 x i8] c"Latin\00", align 1
@.str.87 = private unnamed_addr constant [8 x i8] c"Revival\00", align 1
@.str.88 = private unnamed_addr constant [7 x i8] c"Celtic\00", align 1
@.str.89 = private unnamed_addr constant [10 x i8] c"Bluegrass\00", align 1
@.str.90 = private unnamed_addr constant [11 x i8] c"Avantgarde\00", align 1
@.str.91 = private unnamed_addr constant [12 x i8] c"Gothic Rock\00", align 1
@.str.92 = private unnamed_addr constant [17 x i8] c"Progressive Rock\00", align 1
@.str.93 = private unnamed_addr constant [17 x i8] c"Psychedelic Rock\00", align 1
@.str.94 = private unnamed_addr constant [15 x i8] c"Symphonic Rock\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"Slow Rock\00", align 1
@.str.96 = private unnamed_addr constant [9 x i8] c"Big Band\00", align 1
@.str.97 = private unnamed_addr constant [7 x i8] c"Chorus\00", align 1
@.str.98 = private unnamed_addr constant [15 x i8] c"Easy Listening\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"Acoustic\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"Humour\00", align 1
@.str.101 = private unnamed_addr constant [7 x i8] c"Speech\00", align 1
@.str.102 = private unnamed_addr constant [8 x i8] c"Chanson\00", align 1
@.str.103 = private unnamed_addr constant [6 x i8] c"Opera\00", align 1
@.str.104 = private unnamed_addr constant [14 x i8] c"Chamber Music\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"Sonata\00", align 1
@.str.106 = private unnamed_addr constant [9 x i8] c"Symphony\00", align 1
@.str.107 = private unnamed_addr constant [11 x i8] c"Booty Bass\00", align 1
@.str.108 = private unnamed_addr constant [7 x i8] c"Primus\00", align 1
@.str.109 = private unnamed_addr constant [12 x i8] c"Porn Groove\00", align 1
@.str.110 = private unnamed_addr constant [7 x i8] c"Satire\00", align 1
@.str.111 = private unnamed_addr constant [9 x i8] c"Slow Jam\00", align 1
@.str.112 = private unnamed_addr constant [5 x i8] c"Club\00", align 1
@.str.113 = private unnamed_addr constant [6 x i8] c"Tango\00", align 1
@.str.114 = private unnamed_addr constant [6 x i8] c"Samba\00", align 1
@.str.115 = private unnamed_addr constant [9 x i8] c"Folklore\00", align 1
@.str.116 = private unnamed_addr constant [7 x i8] c"Ballad\00", align 1
@.str.117 = private unnamed_addr constant [13 x i8] c"Power Ballad\00", align 1
@.str.118 = private unnamed_addr constant [13 x i8] c"Rhytmic Soul\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"Freestyle\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"Duet\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"Punk Rock\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"Drum Solo\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"Acapella\00", align 1
@.str.124 = private unnamed_addr constant [11 x i8] c"Euro-House\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"Dance Hall\00", align 1
@.str.126 = private unnamed_addr constant [4 x i8] c"Goa\00", align 1
@.str.127 = private unnamed_addr constant [12 x i8] c"Drum & Bass\00", align 1
@.str.128 = private unnamed_addr constant [11 x i8] c"Club-House\00", align 1
@.str.129 = private unnamed_addr constant [9 x i8] c"Hardcore\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"Terror\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"Indie\00", align 1
@.str.132 = private unnamed_addr constant [8 x i8] c"BritPop\00", align 1
@.str.133 = private unnamed_addr constant [10 x i8] c"Negerpunk\00", align 1
@.str.134 = private unnamed_addr constant [11 x i8] c"Polsk Punk\00", align 1
@.str.135 = private unnamed_addr constant [5 x i8] c"Beat\00", align 1
@.str.136 = private unnamed_addr constant [22 x i8] c"Christian Gangsta Rap\00", align 1
@.str.137 = private unnamed_addr constant [12 x i8] c"Heavy Metal\00", align 1
@.str.138 = private unnamed_addr constant [12 x i8] c"Black Metal\00", align 1
@.str.139 = private unnamed_addr constant [10 x i8] c"Crossover\00", align 1
@.str.140 = private unnamed_addr constant [23 x i8] c"Contemporary Christian\00", align 1
@.str.141 = private unnamed_addr constant [15 x i8] c"Christian Rock\00", align 1
@.str.142 = private unnamed_addr constant [9 x i8] c"Merengue\00", align 1
@.str.143 = private unnamed_addr constant [6 x i8] c"Salsa\00", align 1
@.str.144 = private unnamed_addr constant [12 x i8] c"Trash Metal\00", align 1
@id3_styles = global [146 x %struct.style_s] [%struct.style_s { i8 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i32 0, i32 0) }, %struct.style_s { i8 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0) }, %struct.style_s { i8 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0) }, %struct.style_s { i8 3, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i32 0, i32 0) }, %struct.style_s { i8 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i32 0, i32 0) }, %struct.style_s { i8 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0) }, %struct.style_s { i8 6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0) }, %struct.style_s { i8 7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i32 0, i32 0) }, %struct.style_s { i8 8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i32 0, i32 0) }, %struct.style_s { i8 9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i32 0, i32 0) }, %struct.style_s { i8 10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i32 0, i32 0) }, %struct.style_s { i8 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0) }, %struct.style_s { i8 12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0) }, %struct.style_s { i8 13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0) }, %struct.style_s { i8 14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0) }, %struct.style_s { i8 15, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0) }, %struct.style_s { i8 16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0) }, %struct.style_s { i8 17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0) }, %struct.style_s { i8 18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0) }, %struct.style_s { i8 19, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.19, i32 0, i32 0) }, %struct.style_s { i8 20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.20, i32 0, i32 0) }, %struct.style_s { i8 21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0) }, %struct.style_s { i8 22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i32 0, i32 0) }, %struct.style_s { i8 23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i32 0, i32 0) }, %struct.style_s { i8 24, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i32 0, i32 0) }, %struct.style_s { i8 25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0) }, %struct.style_s { i8 26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.26, i32 0, i32 0) }, %struct.style_s { i8 27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.27, i32 0, i32 0) }, %struct.style_s { i8 28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i32 0, i32 0) }, %struct.style_s { i8 29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.29, i32 0, i32 0) }, %struct.style_s { i8 30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i32 0, i32 0) }, %struct.style_s { i8 31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0) }, %struct.style_s { i8 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0) }, %struct.style_s { i8 33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.33, i32 0, i32 0) }, %struct.style_s { i8 34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0) }, %struct.style_s { i8 35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0) }, %struct.style_s { i8 36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0) }, %struct.style_s { i8 37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.37, i32 0, i32 0) }, %struct.style_s { i8 38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0) }, %struct.style_s { i8 39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0) }, %struct.style_s { i8 40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.40, i32 0, i32 0) }, %struct.style_s { i8 41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i32 0, i32 0) }, %struct.style_s { i8 42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i32 0, i32 0) }, %struct.style_s { i8 43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.43, i32 0, i32 0) }, %struct.style_s { i8 44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i32 0, i32 0) }, %struct.style_s { i8 45, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.45, i32 0, i32 0) }, %struct.style_s { i8 46, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.46, i32 0, i32 0) }, %struct.style_s { i8 47, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.47, i32 0, i32 0) }, %struct.style_s { i8 48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0) }, %struct.style_s { i8 49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0) }, %struct.style_s { i8 50, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.50, i32 0, i32 0) }, %struct.style_s { i8 51, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.51, i32 0, i32 0) }, %struct.style_s { i8 52, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.52, i32 0, i32 0) }, %struct.style_s { i8 53, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0) }, %struct.style_s { i8 54, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0) }, %struct.style_s { i8 55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.55, i32 0, i32 0) }, %struct.style_s { i8 56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.56, i32 0, i32 0) }, %struct.style_s { i8 57, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0) }, %struct.style_s { i8 58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.58, i32 0, i32 0) }, %struct.style_s { i8 59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.59, i32 0, i32 0) }, %struct.style_s { i8 60, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.60, i32 0, i32 0) }, %struct.style_s { i8 61, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.61, i32 0, i32 0) }, %struct.style_s { i8 62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.62, i32 0, i32 0) }, %struct.style_s { i8 63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0) }, %struct.style_s { i8 64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.64, i32 0, i32 0) }, %struct.style_s { i8 65, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.65, i32 0, i32 0) }, %struct.style_s { i8 66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0) }, %struct.style_s { i8 67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.67, i32 0, i32 0) }, %struct.style_s { i8 68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.68, i32 0, i32 0) }, %struct.style_s { i8 69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.69, i32 0, i32 0) }, %struct.style_s { i8 70, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.70, i32 0, i32 0) }, %struct.style_s { i8 71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.71, i32 0, i32 0) }, %struct.style_s { i8 72, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0) }, %struct.style_s { i8 73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.73, i32 0, i32 0) }, %struct.style_s { i8 74, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.74, i32 0, i32 0) }, %struct.style_s { i8 75, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0) }, %struct.style_s { i8 76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.76, i32 0, i32 0) }, %struct.style_s { i8 77, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.77, i32 0, i32 0) }, %struct.style_s { i8 78, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0) }, %struct.style_s { i8 79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0) }, %struct.style_s { i8 80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.80, i32 0, i32 0) }, %struct.style_s { i8 81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.81, i32 0, i32 0) }, %struct.style_s { i8 82, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.82, i32 0, i32 0) }, %struct.style_s { i8 83, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0) }, %struct.style_s { i8 84, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.84, i32 0, i32 0) }, %struct.style_s { i8 85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.85, i32 0, i32 0) }, %struct.style_s { i8 86, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.86, i32 0, i32 0) }, %struct.style_s { i8 87, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.87, i32 0, i32 0) }, %struct.style_s { i8 88, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.88, i32 0, i32 0) }, %struct.style_s { i8 89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.89, i32 0, i32 0) }, %struct.style_s { i8 90, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.90, i32 0, i32 0) }, %struct.style_s { i8 91, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.91, i32 0, i32 0) }, %struct.style_s { i8 92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.92, i32 0, i32 0) }, %struct.style_s { i8 93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.93, i32 0, i32 0) }, %struct.style_s { i8 94, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.94, i32 0, i32 0) }, %struct.style_s { i8 95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.95, i32 0, i32 0) }, %struct.style_s { i8 96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.96, i32 0, i32 0) }, %struct.style_s { i8 97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.97, i32 0, i32 0) }, %struct.style_s { i8 98, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.98, i32 0, i32 0) }, %struct.style_s { i8 99, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.99, i32 0, i32 0) }, %struct.style_s { i8 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0) }, %struct.style_s { i8 101, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.101, i32 0, i32 0) }, %struct.style_s { i8 102, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.102, i32 0, i32 0) }, %struct.style_s { i8 103, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.103, i32 0, i32 0) }, %struct.style_s { i8 104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.104, i32 0, i32 0) }, %struct.style_s { i8 105, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.105, i32 0, i32 0) }, %struct.style_s { i8 106, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.106, i32 0, i32 0) }, %struct.style_s { i8 107, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.107, i32 0, i32 0) }, %struct.style_s { i8 108, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.108, i32 0, i32 0) }, %struct.style_s { i8 109, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.109, i32 0, i32 0) }, %struct.style_s { i8 110, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.110, i32 0, i32 0) }, %struct.style_s { i8 111, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.111, i32 0, i32 0) }, %struct.style_s { i8 112, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.112, i32 0, i32 0) }, %struct.style_s { i8 113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.113, i32 0, i32 0) }, %struct.style_s { i8 114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.114, i32 0, i32 0) }, %struct.style_s { i8 115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.115, i32 0, i32 0) }, %struct.style_s { i8 116, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.116, i32 0, i32 0) }, %struct.style_s { i8 117, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.117, i32 0, i32 0) }, %struct.style_s { i8 118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.118, i32 0, i32 0) }, %struct.style_s { i8 119, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.119, i32 0, i32 0) }, %struct.style_s { i8 120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.120, i32 0, i32 0) }, %struct.style_s { i8 121, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.121, i32 0, i32 0) }, %struct.style_s { i8 122, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.122, i32 0, i32 0) }, %struct.style_s { i8 123, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.123, i32 0, i32 0) }, %struct.style_s { i8 124, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.124, i32 0, i32 0) }, %struct.style_s { i8 125, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.125, i32 0, i32 0) }, %struct.style_s { i8 126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.126, i32 0, i32 0) }, %struct.style_s { i8 127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.127, i32 0, i32 0) }, %struct.style_s { i8 -128, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.128, i32 0, i32 0) }, %struct.style_s { i8 -127, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.129, i32 0, i32 0) }, %struct.style_s { i8 -126, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.130, i32 0, i32 0) }, %struct.style_s { i8 -125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i32 0, i32 0) }, %struct.style_s { i8 -124, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.132, i32 0, i32 0) }, %struct.style_s { i8 -123, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.133, i32 0, i32 0) }, %struct.style_s { i8 -122, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.134, i32 0, i32 0) }, %struct.style_s { i8 -121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.135, i32 0, i32 0) }, %struct.style_s { i8 -120, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.136, i32 0, i32 0) }, %struct.style_s { i8 -119, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.137, i32 0, i32 0) }, %struct.style_s { i8 -118, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.138, i32 0, i32 0) }, %struct.style_s { i8 -117, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.139, i32 0, i32 0) }, %struct.style_s { i8 -116, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.140, i32 0, i32 0) }, %struct.style_s { i8 -115, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.141, i32 0, i32 0) }, %struct.style_s { i8 -114, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.142, i32 0, i32 0) }, %struct.style_s { i8 -113, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.143, i32 0, i32 0) }, %struct.style_s { i8 -112, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.144, i32 0, i32 0) }, %struct.style_s { i8 -1, i8* null }], align 16, !dbg !0
@.str.145 = private unnamed_addr constant [4 x i8] c"TAG\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"Unknown Style\00", align 1
@.str.147 = private unnamed_addr constant [10 x i8] c"set-title\00", align 1
@.str.148 = private unnamed_addr constant [10 x i8] c"set-album\00", align 1
@.str.149 = private unnamed_addr constant [11 x i8] c"set-artist\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"set-year\00", align 1
@.str.151 = private unnamed_addr constant [9 x i8] c"set-note\00", align 1
@.str.152 = private unnamed_addr constant [10 x i8] c"set-genre\00", align 1
@.str.153 = private unnamed_addr constant [15 x i8] c"set-genre-word\00", align 1
@.str.154 = private unnamed_addr constant [10 x i8] c"set-track\00", align 1
@.str.155 = private unnamed_addr constant [11 x i8] c"genre-list\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.157 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@id3options = global [12 x %struct.option] [%struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.147, i32 0, i32 0), i32 1, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.148, i32 0, i32 0), i32 1, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.149, i32 0, i32 0), i32 1, i32* null, i32 114 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.150, i32 0, i32 0), i32 1, i32* null, i32 121 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.151, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.152, i32 0, i32 0), i32 1, i32* null, i32 103 }, %struct.option { i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.153, i32 0, i32 0), i32 1, i32* null, i32 71 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.154, i32 0, i32 0), i32 1, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.155, i32 0, i32 0), i32 0, i32* null, i32 108 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.156, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.157, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !90
@.str.158 = private unnamed_addr constant [20 x i8] c"id3tool version %s\0A\00", align 1
@.str.159 = private unnamed_addr constant [5 x i8] c"1.2a\00", align 1
@.str.160 = private unnamed_addr constant [46 x i8] c"Copyright (C) 1999-2005, Christopher Collins\0A\00", align 1
@.str.161 = private unnamed_addr constant [80 x i8] c"id3tool comes with ABSOLUTELY NO WARRANTY.  This is free software, and you are\0A\00", align 1
@.str.162 = private unnamed_addr constant [80 x i8] c"welcome to redistribute it under certain conditions.  For details refer to the\0A\00", align 1
@.str.163 = private unnamed_addr constant [44 x i8] c"file \22COPYING\22 included with this program.\0A\00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"usage:\0A\00", align 1
@.str.165 = private unnamed_addr constant [27 x i8] c"%s [<options>] <filename>\0A\00", align 1
@.str.166 = private unnamed_addr constant [48 x i8] c"  -t, --set-title=WORD\09\09Sets the title to WORD\0A\00", align 1
@.str.167 = private unnamed_addr constant [48 x i8] c"  -a, --set-album=WORD\09\09Sets the album to WORD\0A\00", align 1
@.str.168 = private unnamed_addr constant [50 x i8] c"  -r, --set-artist=WORD\09\09Sets the artist to WORD\0A\00", align 1
@.str.169 = private unnamed_addr constant [57 x i8] c"  -y, --set-year=YEAR\09\09Sets the year to YEAR [4 digits]\0A\00", align 1
@.str.170 = private unnamed_addr constant [46 x i8] c"  -n, --set-note=WORD\09\09Sets the note to WORD\0A\00", align 1
@.str.171 = private unnamed_addr constant [51 x i8] c"  -g, --set-genre=INT\09\09Sets the genre code to INT\0A\00", align 1
@.str.172 = private unnamed_addr constant [52 x i8] c"  -G, --set-genre-word=WORD\09Sets the genre to WORD\0A\00", align 1
@.str.173 = private unnamed_addr constant [53 x i8] c"  -c, --set-track=INT\09\09Sets the track number to INT\0A\00", align 1
@.str.174 = private unnamed_addr constant [55 x i8] c"  -l, --genre-list\09\09Shows the Genre's and their codes\0A\00", align 1
@.str.175 = private unnamed_addr constant [40 x i8] c"  -v, --version\09\09\09Displays the version\0A\00", align 1
@.str.176 = private unnamed_addr constant [38 x i8] c"  -h, --help\09\09\09Displays this message\0A\00", align 1
@.str.177 = private unnamed_addr constant [54 x i8] c"\0AReport bugs to Chris Collins <ccollins@pcug.org.au>\0A\00", align 1
@.str.178 = private unnamed_addr constant [20 x i8] c"t:a:r:y:n:g:G:c:lvh\00", align 1
@stderr = external global %struct._IO_FILE*, align 8
@.str.179 = private unnamed_addr constant [23 x i8] c"%s: title already set\0A\00", align 1
@optarg = external global i8*, align 8
@.str.180 = private unnamed_addr constant [23 x i8] c"%s: album already set\0A\00", align 1
@.str.181 = private unnamed_addr constant [24 x i8] c"%s: artist already set\0A\00", align 1
@.str.182 = private unnamed_addr constant [22 x i8] c"%s: year already set\0A\00", align 1
@.str.183 = private unnamed_addr constant [22 x i8] c"%s: note already set\0A\00", align 1
@.str.184 = private unnamed_addr constant [23 x i8] c"%s: genre already set\0A\00", align 1
@.str.185 = private unnamed_addr constant [23 x i8] c"%s: track already set\0A\00", align 1
@.str.186 = private unnamed_addr constant [30 x i8] c"%s: Couldn't find genre \22%s\22\0A\00", align 1
@.str.187 = private unnamed_addr constant [12 x i8] c"%-40s | %s\0A\00", align 1
@.str.188 = private unnamed_addr constant [6 x i8] c"Style\00", align 1
@.str.189 = private unnamed_addr constant [3 x i8] c"ID\00", align 1
@.str.190 = private unnamed_addr constant [49 x i8] c"-----------------------------------------+-----\0A\00", align 1
@.str.191 = private unnamed_addr constant [16 x i8] c"%-40s | 0x%02X\0A\00", align 1
@.str.192 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@optind = external global i32, align 4
@.str.193 = private unnamed_addr constant [26 x i8] c"%s: Not enough arguments\0A\00", align 1
@.str.194 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.195 = private unnamed_addr constant [36 x i8] c"%s: Can't open file \22%s\22 for read.\0A\00", align 1
@.str.196 = private unnamed_addr constant [14 x i8] c"Filename: %s\0A\00", align 1
@.str.197 = private unnamed_addr constant [12 x i8] c"No ID3 Tag\0A\00", align 1
@.str.198 = private unnamed_addr constant [19 x i8] c"Song Title:\09%-30s\0A\00", align 1
@.str.199 = private unnamed_addr constant [16 x i8] c"Artist:\09\09%-30s\0A\00", align 1
@.str.200 = private unnamed_addr constant [15 x i8] c"Album:\09\09%-30s\0A\00", align 1
@.str.201 = private unnamed_addr constant [14 x i8] c"Note:\09\09%-28s\0A\00", align 1
@.str.202 = private unnamed_addr constant [12 x i8] c"Track:\09\09%d\0A\00", align 1
@.str.203 = private unnamed_addr constant [14 x i8] c"Note:\09\09%-30s\0A\00", align 1
@.str.204 = private unnamed_addr constant [13 x i8] c"Year:\09\09%-4s\0A\00", align 1
@.str.205 = private unnamed_addr constant [19 x i8] c"Genre:\09\09%s (0x%X)\0A\00", align 1
@.str.206 = private unnamed_addr constant [7 x i8] c"%4.4ld\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"r+b\00", align 1
@.str.208 = private unnamed_addr constant [37 x i8] c"%s: Can't open file \22%s\22 for write.\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define i32 @id3_readtag(%struct._IO_FILE* %fin, %struct.id3tag_s* %id3tag) #0 !dbg !111 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fin, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata %struct.id3tag_s* %id3tag, metadata !151, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata !4, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = ptrtoint %struct._IO_FILE* %fin to i64, !dbg !154
  %cmp = icmp eq i64 0, %0, !dbg !157
  br i1 %cmp, label %if.then, label %if.else, !dbg !158

if.then:                                          ; preds = %entry
  br label %return, !dbg !159

if.else:                                          ; preds = %entry
  %1 = ptrtoint %struct.id3tag_s* %id3tag to i64, !dbg !161
  %cmp1 = icmp eq i64 0, %1, !dbg !163
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !164

if.then2:                                         ; preds = %if.else
  br label %return, !dbg !165

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %call = call i32 @fseek(%struct._IO_FILE* %fin, i64 0, i32 2), !dbg !167
  %call4 = call i64 @ftell(%struct._IO_FILE* %fin), !dbg !170
  call void @llvm.dbg.value(metadata i64 %call4, metadata !172, metadata !DIExpression()), !dbg !150
  %sub = sub nsw i64 %call4, 128, !dbg !173
  %call5 = call i32 @fseek(%struct._IO_FILE* %fin, i64 %sub, i32 0), !dbg !175
  %2 = bitcast %struct.id3tag_s* %id3tag to i8*, !dbg !176
  %call6 = call i32 @fread(i8* %2, i32 128, i32 1, %struct._IO_FILE* %fin), !dbg !178
  call void @llvm.dbg.value(metadata i32 %call6, metadata !179, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.value(metadata i32 %call6, metadata !180, metadata !DIExpression()), !dbg !150
  %cmp7 = icmp ne i32 1, %call6, !dbg !181
  br i1 %cmp7, label %if.then8, label %if.else9, !dbg !183

if.then8:                                         ; preds = %if.end3
  br label %return, !dbg !184

if.else9:                                         ; preds = %if.end3
  %magic = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %id3tag, i32 0, i32 0, !dbg !186
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %magic, i32 0, i32 0, !dbg !190
  %call10 = call i32 @strncmp(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i32 3) #6, !dbg !191
  call void @llvm.dbg.value(metadata i32 %call10, metadata !192, metadata !DIExpression()), !dbg !150
  %tobool = icmp ne i32 %call10, 0, !dbg !193
  br i1 %tobool, label %if.then11, label %if.end12, !dbg !195

if.then11:                                        ; preds = %if.else9
  br label %return, !dbg !196

if.end12:                                         ; preds = %if.else9
  br label %if.end13

if.end13:                                         ; preds = %if.end12
  br label %return, !dbg !198

return:                                           ; preds = %if.end13, %if.then11, %if.then8, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ 1, %if.then8 ], [ 1, %if.then11 ], [ 0, %if.end13 ], !dbg !199
  ret i32 %retval.0, !dbg !200
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #2

declare i64 @ftell(%struct._IO_FILE*) #2

declare i32 @fread(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8*, i8*, i32) #3

; Function Attrs: noinline nounwind ssp uwtable
define i32 @id3_appendtag(%struct._IO_FILE* %fout, %struct.id3tag_s* %id3tag) #0 !dbg !201 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fout, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata %struct.id3tag_s* %id3tag, metadata !204, metadata !DIExpression()), !dbg !203
  %0 = ptrtoint %struct._IO_FILE* %fout to i64, !dbg !205
  %cmp = icmp eq i64 0, %0, !dbg !208
  br i1 %cmp, label %if.then, label %if.else, !dbg !209

if.then:                                          ; preds = %entry
  br label %return, !dbg !210

if.else:                                          ; preds = %entry
  %1 = ptrtoint %struct.id3tag_s* %id3tag to i64, !dbg !212
  %cmp1 = icmp eq i64 0, %1, !dbg !214
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !215

if.then2:                                         ; preds = %if.else
  br label %return, !dbg !216

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %call = call i32 @fseek(%struct._IO_FILE* %fout, i64 0, i32 2), !dbg !218
  %2 = bitcast %struct.id3tag_s* %id3tag to i8*, !dbg !221
  %call4 = call i32 @fwrite(i8* %2, i32 128, i32 1, %struct._IO_FILE* %fout), !dbg !223
  br label %return, !dbg !224

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ 0, %if.end3 ], !dbg !225
  ret i32 %retval.0, !dbg !226
}

declare i32 @fwrite(i8*, i32, i32, %struct._IO_FILE*) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @id3_replacetag(%struct._IO_FILE* %fout, %struct.id3tag_s* %id3tag) #0 !dbg !227 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %fout, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata %struct.id3tag_s* %id3tag, metadata !230, metadata !DIExpression()), !dbg !229
  %0 = ptrtoint %struct._IO_FILE* %fout to i64, !dbg !231
  %cmp = icmp eq i64 0, %0, !dbg !234
  br i1 %cmp, label %if.then, label %if.else, !dbg !235

if.then:                                          ; preds = %entry
  br label %return, !dbg !236

if.else:                                          ; preds = %entry
  %1 = ptrtoint %struct.id3tag_s* %id3tag to i64, !dbg !238
  %cmp1 = icmp eq i64 0, %1, !dbg !240
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !241

if.then2:                                         ; preds = %if.else
  br label %return, !dbg !242

if.end:                                           ; preds = %if.else
  br label %if.end3

if.end3:                                          ; preds = %if.end
  %call = call i32 @fseek(%struct._IO_FILE* %fout, i64 0, i32 2), !dbg !244
  %call4 = call i64 @ftell(%struct._IO_FILE* %fout), !dbg !247
  call void @llvm.dbg.value(metadata i64 %call4, metadata !249, metadata !DIExpression()), !dbg !229
  %sub = sub nsw i64 %call4, 128, !dbg !250
  %call5 = call i32 @fseek(%struct._IO_FILE* %fout, i64 %sub, i32 0), !dbg !252
  %2 = bitcast %struct.id3tag_s* %id3tag to i8*, !dbg !253
  %call6 = call i32 @fwrite(i8* %2, i32 128, i32 1, %struct._IO_FILE* %fout), !dbg !255
  br label %return, !dbg !256

return:                                           ; preds = %if.end3, %if.then2, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -1, %if.then2 ], [ 0, %if.end3 ], !dbg !257
  ret i32 %retval.0, !dbg !258
}

; Function Attrs: noinline nounwind ssp uwtable
define void @id3_cleartag(%struct.id3tag_s* %id3tag) #0 !dbg !259 {
entry:
  call void @llvm.dbg.value(metadata %struct.id3tag_s* %id3tag, metadata !262, metadata !DIExpression()), !dbg !263
  call void @llvm.dbg.declare(metadata !4, metadata !264, metadata !DIExpression()), !dbg !265
  %0 = ptrtoint %struct.id3tag_s* %id3tag to i64, !dbg !266
  %cmp = icmp eq i64 0, %0, !dbg !269
  br i1 %cmp, label %if.then, label %if.end, !dbg !270

if.then:                                          ; preds = %entry
  br label %return, !dbg !271

if.end:                                           ; preds = %entry
  %1 = bitcast %struct.id3tag_s* %id3tag to i8*, !dbg !273
  %call = call i8* @memset(i8* %1, i32 0, i32 128) #7, !dbg !276
  %magic = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %id3tag, i32 0, i32 0, !dbg !277
  %arraydecay = getelementptr inbounds [3 x i8], [3 x i8]* %magic, i32 0, i32 0, !dbg !279
  %call1 = call i8* @strncpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.145, i32 0, i32 0), i32 3) #7, !dbg !280
  %style = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %id3tag, i32 0, i32 6, !dbg !281
  store i8 -1, i8* %style, align 1, !dbg !282
  br label %return, !dbg !283

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !284
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i32) #4

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #4

; Function Attrs: noinline nounwind ssp uwtable
define i8* @id3_findstyle(i32 %styleid) #0 !dbg !285 {
entry:
  call void @llvm.dbg.value(metadata i32 %styleid, metadata !288, metadata !DIExpression()), !dbg !289
  call void @llvm.dbg.declare(metadata !4, metadata !290, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata i32 0, metadata !292, metadata !DIExpression()), !dbg !289
  br label %while.body, !dbg !293

while.body:                                       ; preds = %if.end10, %entry
  %ctr.0 = phi i32 [ 0, %entry ], [ %inc, %if.end10 ], !dbg !297
  call void @llvm.dbg.value(metadata i32 %ctr.0, metadata !292, metadata !DIExpression()), !dbg !289
  br label %while_continue___0, !dbg !298

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !298

while_continue:                                   ; preds = %while_continue___0
  %idxprom = sext i32 %ctr.0 to i64, !dbg !299
  %arrayidx = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom, !dbg !299
  %name = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx, i32 0, i32 1, !dbg !302
  %0 = load i8*, i8** %name, align 8, !dbg !302
  %1 = ptrtoint i8* %0 to i64, !dbg !303
  %cmp = icmp ne i64 %1, 0, !dbg !304
  br i1 %cmp, label %if.end, label %if.then, !dbg !305

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !306

if.end:                                           ; preds = %while_continue
  %idxprom1 = sext i32 %ctr.0 to i64, !dbg !308
  %arrayidx2 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom1, !dbg !308
  %styleid3 = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx2, i32 0, i32 0, !dbg !310
  %2 = load i8, i8* %styleid3, align 16, !dbg !310
  %conv = zext i8 %2 to i32, !dbg !311
  %cmp4 = icmp eq i32 %conv, %styleid, !dbg !312
  br i1 %cmp4, label %if.then6, label %if.end10, !dbg !313

if.then6:                                         ; preds = %if.end
  %idxprom7 = sext i32 %ctr.0 to i64, !dbg !314
  %arrayidx8 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom7, !dbg !314
  %name9 = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx8, i32 0, i32 1, !dbg !316
  %3 = load i8*, i8** %name9, align 8, !dbg !316
  br label %return, !dbg !317

if.end10:                                         ; preds = %if.end
  %inc = add nsw i32 %ctr.0, 1, !dbg !305
  call void @llvm.dbg.value(metadata i32 %inc, metadata !292, metadata !DIExpression()), !dbg !289
  br label %while.body, !dbg !293, !llvm.loop !318

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !320

while_break:                                      ; preds = %while_break___0, %if.then
  br label %return, !dbg !321

return:                                           ; preds = %while_break, %if.then6
  %retval.0 = phi i8* [ %3, %if.then6 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str.146, i32 0, i32 0), %while_break ], !dbg !297
  ret i8* %retval.0, !dbg !322
}

; Function Attrs: noinline nounwind ssp uwtable
define void @showblurb() #0 !dbg !323 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !326, metadata !DIExpression()), !dbg !327
  call void @llvm.dbg.declare(metadata !4, metadata !328, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.declare(metadata !4, metadata !330, metadata !DIExpression()), !dbg !331
  call void @llvm.dbg.declare(metadata !4, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata !4, metadata !334, metadata !DIExpression()), !dbg !335
  call void @llvm.dbg.declare(metadata !4, metadata !336, metadata !DIExpression()), !dbg !337
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.158, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.159, i32 0, i32 0)), !dbg !338
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.160, i32 0, i32 0)), !dbg !342
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.161, i32 0, i32 0)), !dbg !344
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.162, i32 0, i32 0)), !dbg !346
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.163, i32 0, i32 0)), !dbg !348
  ret void, !dbg !350
}

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @showusage(i32 %argc, i8** %argv) #0 !dbg !351 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !355, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.value(metadata i8** %argv, metadata !357, metadata !DIExpression()), !dbg !356
  call void @llvm.dbg.declare(metadata !4, metadata !358, metadata !DIExpression()), !dbg !359
  call void @llvm.dbg.declare(metadata !4, metadata !360, metadata !DIExpression()), !dbg !361
  call void @llvm.dbg.declare(metadata !4, metadata !362, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.declare(metadata !4, metadata !364, metadata !DIExpression()), !dbg !365
  call void @llvm.dbg.declare(metadata !4, metadata !366, metadata !DIExpression()), !dbg !367
  call void @llvm.dbg.declare(metadata !4, metadata !368, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.declare(metadata !4, metadata !370, metadata !DIExpression()), !dbg !371
  call void @llvm.dbg.declare(metadata !4, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata !4, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata !4, metadata !376, metadata !DIExpression()), !dbg !377
  call void @llvm.dbg.declare(metadata !4, metadata !378, metadata !DIExpression()), !dbg !379
  call void @llvm.dbg.declare(metadata !4, metadata !380, metadata !DIExpression()), !dbg !381
  call void @llvm.dbg.declare(metadata !4, metadata !382, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.declare(metadata !4, metadata !384, metadata !DIExpression()), !dbg !385
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.164, i32 0, i32 0)), !dbg !386
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !390
  %0 = load i8*, i8** %add.ptr, align 8, !dbg !392
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.165, i32 0, i32 0), i8* %0), !dbg !393
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.166, i32 0, i32 0)), !dbg !394
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.167, i32 0, i32 0)), !dbg !396
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.168, i32 0, i32 0)), !dbg !398
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.169, i32 0, i32 0)), !dbg !400
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.170, i32 0, i32 0)), !dbg !402
  %call7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.171, i32 0, i32 0)), !dbg !404
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.172, i32 0, i32 0)), !dbg !406
  %call9 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.173, i32 0, i32 0)), !dbg !408
  %call10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.174, i32 0, i32 0)), !dbg !410
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.175, i32 0, i32 0)), !dbg !412
  %call12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.176, i32 0, i32 0)), !dbg !414
  %call13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.177, i32 0, i32 0)), !dbg !416
  ret void, !dbg !418
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !419 {
entry:
  %mytag = alloca %struct.id3tag_s, align 1
  %strbuf = alloca [31 x i8], align 16
  %opt_index = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8** %argv, metadata !424, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata %struct.id3tag_s* %mytag, metadata !425, metadata !DIExpression()), !dbg !426
  call void @llvm.dbg.declare(metadata [31 x i8]* %strbuf, metadata !427, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.declare(metadata i32* %opt_index, metadata !432, metadata !DIExpression()), !dbg !433
  call void @llvm.dbg.declare(metadata !4, metadata !434, metadata !DIExpression()), !dbg !435
  call void @llvm.dbg.declare(metadata !4, metadata !436, metadata !DIExpression()), !dbg !437
  call void @llvm.dbg.declare(metadata !4, metadata !438, metadata !DIExpression()), !dbg !439
  call void @llvm.dbg.declare(metadata !4, metadata !440, metadata !DIExpression()), !dbg !441
  call void @llvm.dbg.declare(metadata !4, metadata !442, metadata !DIExpression()), !dbg !443
  call void @llvm.dbg.declare(metadata !4, metadata !444, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.declare(metadata !4, metadata !446, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.declare(metadata !4, metadata !448, metadata !DIExpression()), !dbg !449
  call void @llvm.dbg.declare(metadata !4, metadata !450, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.declare(metadata !4, metadata !452, metadata !DIExpression()), !dbg !453
  call void @llvm.dbg.declare(metadata !4, metadata !454, metadata !DIExpression()), !dbg !455
  call void @llvm.dbg.declare(metadata !4, metadata !456, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.declare(metadata !4, metadata !458, metadata !DIExpression()), !dbg !459
  call void @llvm.dbg.declare(metadata !4, metadata !460, metadata !DIExpression()), !dbg !461
  call void @llvm.dbg.declare(metadata !4, metadata !462, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.declare(metadata !4, metadata !464, metadata !DIExpression()), !dbg !465
  call void @llvm.dbg.declare(metadata !4, metadata !466, metadata !DIExpression()), !dbg !467
  call void @llvm.dbg.declare(metadata !4, metadata !468, metadata !DIExpression()), !dbg !469
  call void @llvm.dbg.declare(metadata !4, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata !4, metadata !472, metadata !DIExpression()), !dbg !473
  call void @llvm.dbg.declare(metadata !4, metadata !474, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata !4, metadata !476, metadata !DIExpression()), !dbg !477
  call void @llvm.dbg.declare(metadata !4, metadata !478, metadata !DIExpression()), !dbg !479
  call void @llvm.dbg.declare(metadata !4, metadata !480, metadata !DIExpression()), !dbg !481
  call void @llvm.dbg.declare(metadata !4, metadata !482, metadata !DIExpression()), !dbg !483
  call void @llvm.dbg.declare(metadata !4, metadata !484, metadata !DIExpression()), !dbg !485
  call void @llvm.dbg.declare(metadata !4, metadata !486, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.declare(metadata !4, metadata !488, metadata !DIExpression()), !dbg !489
  call void @llvm.dbg.declare(metadata !4, metadata !490, metadata !DIExpression()), !dbg !491
  call void @llvm.dbg.declare(metadata !4, metadata !492, metadata !DIExpression()), !dbg !493
  call void @llvm.dbg.declare(metadata !4, metadata !494, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.declare(metadata !4, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata !4, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata !4, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata !4, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.value(metadata i8* null, metadata !504, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* null, metadata !505, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* null, metadata !506, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* null, metadata !507, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 -1, metadata !508, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 -1, metadata !509, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 -1, metadata !510, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata %struct._IO_FILE* null, metadata !511, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i32 0, metadata !512, metadata !DIExpression()), !dbg !423
  store i32 0, i32* %opt_index, align 4, !dbg !513
  %call = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.178, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @id3options, i32 0, i32 0), i32* %opt_index) #7, !dbg !516
  call void @llvm.dbg.value(metadata i32 %call, metadata !518, metadata !DIExpression()), !dbg !423
  br label %while.body, !dbg !519

while.body:                                       ; preds = %switch_break, %entry
  %newtrack.0 = phi i64 [ -1, %entry ], [ %newtrack.1, %switch_break ], !dbg !522
  %newgenre.0 = phi i64 [ -1, %entry ], [ %newgenre.1, %switch_break ], !dbg !523
  %newyear.0 = phi i64 [ -1, %entry ], [ %newyear.1, %switch_break ], !dbg !524
  %newnote.0 = phi i8* [ null, %entry ], [ %newnote.1, %switch_break ], !dbg !525
  %newartist.0 = phi i8* [ null, %entry ], [ %newartist.1, %switch_break ], !dbg !526
  %newalbum.0 = phi i8* [ null, %entry ], [ %newalbum.1, %switch_break ], !dbg !527
  %newtitle.0 = phi i8* [ null, %entry ], [ %newtitle.1, %switch_break ], !dbg !528
  %retval1.0 = phi i32 [ %call, %entry ], [ %call129, %switch_break ], !dbg !528
  call void @llvm.dbg.value(metadata i32 %retval1.0, metadata !518, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %newtitle.0, metadata !504, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %newalbum.0, metadata !505, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %newartist.0, metadata !506, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %newnote.0, metadata !507, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %newyear.0, metadata !508, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %newgenre.0, metadata !509, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %newtrack.0, metadata !510, metadata !DIExpression()), !dbg !423
  br label %while_continue___3, !dbg !529

while_continue___3:                               ; preds = %while.body
  br label %while_continue, !dbg !529

while_continue:                                   ; preds = %while_continue___3
  %cmp = icmp ne i32 %retval1.0, -1, !dbg !530
  br i1 %cmp, label %if.end, label %if.then, !dbg !533

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !534

if.end:                                           ; preds = %while_continue
  %cmp2 = icmp eq i32 %retval1.0, 116, !dbg !536
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !539

if.then3:                                         ; preds = %if.end
  br label %case_116, !dbg !540

if.end4:                                          ; preds = %if.end
  %cmp5 = icmp eq i32 %retval1.0, 97, !dbg !542
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !544

if.then6:                                         ; preds = %if.end4
  br label %case_97, !dbg !545

if.end7:                                          ; preds = %if.end4
  %cmp8 = icmp eq i32 %retval1.0, 114, !dbg !547
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !549

if.then9:                                         ; preds = %if.end7
  br label %case_114, !dbg !550

if.end10:                                         ; preds = %if.end7
  %cmp11 = icmp eq i32 %retval1.0, 121, !dbg !552
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !554

if.then12:                                        ; preds = %if.end10
  br label %case_121, !dbg !555

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp eq i32 %retval1.0, 110, !dbg !557
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !559

if.then15:                                        ; preds = %if.end13
  br label %case_110, !dbg !560

if.end16:                                         ; preds = %if.end13
  %cmp17 = icmp eq i32 %retval1.0, 103, !dbg !562
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !564

if.then18:                                        ; preds = %if.end16
  br label %case_103, !dbg !565

if.end19:                                         ; preds = %if.end16
  %cmp20 = icmp eq i32 %retval1.0, 99, !dbg !567
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !569

if.then21:                                        ; preds = %if.end19
  br label %case_99, !dbg !570

if.end22:                                         ; preds = %if.end19
  %cmp23 = icmp eq i32 %retval1.0, 71, !dbg !572
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !574

if.then24:                                        ; preds = %if.end22
  br label %case_71, !dbg !575

if.end25:                                         ; preds = %if.end22
  %cmp26 = icmp eq i32 %retval1.0, 108, !dbg !577
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !579

if.then27:                                        ; preds = %if.end25
  br label %case_108, !dbg !580

if.end28:                                         ; preds = %if.end25
  %cmp29 = icmp eq i32 %retval1.0, 118, !dbg !582
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !584

if.then30:                                        ; preds = %if.end28
  br label %case_118, !dbg !585

if.end31:                                         ; preds = %if.end28
  %cmp32 = icmp eq i32 %retval1.0, 104, !dbg !587
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !589

if.then33:                                        ; preds = %if.end31
  br label %case_104, !dbg !590

if.end34:                                         ; preds = %if.end31
  %cmp35 = icmp eq i32 %retval1.0, 63, !dbg !592
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !594

if.then36:                                        ; preds = %if.end34
  br label %case_63, !dbg !595

if.end37:                                         ; preds = %if.end34
  br label %switch_default, !dbg !597

case_116:                                         ; preds = %if.then3
  %0 = ptrtoint i8* %newtitle.0 to i64, !dbg !598
  %cmp38 = icmp ne i64 0, %0, !dbg !600
  br i1 %cmp38, label %if.then39, label %if.end41, !dbg !601

if.then39:                                        ; preds = %case_116
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !602
  %add.ptr = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !606
  %2 = load i8*, i8** %add.ptr, align 8, !dbg !607
  %call40 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.179, i32 0, i32 0), i8* %2), !dbg !608
  call void @exit(i32 1) #8, !dbg !609
  unreachable, !dbg !609

if.end41:                                         ; preds = %case_116
  %3 = load i8*, i8** @optarg, align 8, !dbg !611
  %call42 = call noalias i8* @strdup(i8* %3) #7, !dbg !614
  call void @llvm.dbg.value(metadata i8* %call42, metadata !504, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !615

case_97:                                          ; preds = %if.then6
  %4 = ptrtoint i8* %newalbum.0 to i64, !dbg !616
  %cmp43 = icmp ne i64 0, %4, !dbg !618
  br i1 %cmp43, label %if.then44, label %if.end47, !dbg !619

if.then44:                                        ; preds = %case_97
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !620
  %add.ptr45 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !624
  %6 = load i8*, i8** %add.ptr45, align 8, !dbg !625
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %5, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.180, i32 0, i32 0), i8* %6), !dbg !626
  call void @exit(i32 1) #8, !dbg !627
  unreachable, !dbg !627

if.end47:                                         ; preds = %case_97
  %7 = load i8*, i8** @optarg, align 8, !dbg !629
  %call48 = call noalias i8* @strdup(i8* %7) #7, !dbg !632
  call void @llvm.dbg.value(metadata i8* %call48, metadata !505, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !633

case_114:                                         ; preds = %if.then9
  %8 = ptrtoint i8* %newartist.0 to i64, !dbg !634
  %cmp49 = icmp ne i64 0, %8, !dbg !636
  br i1 %cmp49, label %if.then50, label %if.end53, !dbg !637

if.then50:                                        ; preds = %case_114
  %9 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !638
  %add.ptr51 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !642
  %10 = load i8*, i8** %add.ptr51, align 8, !dbg !643
  %call52 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.181, i32 0, i32 0), i8* %10), !dbg !644
  call void @exit(i32 1) #8, !dbg !645
  unreachable, !dbg !645

if.end53:                                         ; preds = %case_114
  %11 = load i8*, i8** @optarg, align 8, !dbg !647
  %call54 = call noalias i8* @strdup(i8* %11) #7, !dbg !650
  call void @llvm.dbg.value(metadata i8* %call54, metadata !506, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !651

case_121:                                         ; preds = %if.then12
  %cmp55 = icmp sge i64 %newyear.0, 0, !dbg !652
  br i1 %cmp55, label %if.then56, label %if.end59, !dbg !654

if.then56:                                        ; preds = %case_121
  %12 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !655
  %add.ptr57 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !659
  %13 = load i8*, i8** %add.ptr57, align 8, !dbg !660
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.182, i32 0, i32 0), i8* %13), !dbg !661
  call void @exit(i32 1) #8, !dbg !662
  unreachable, !dbg !662

if.end59:                                         ; preds = %case_121
  %14 = load i8*, i8** @optarg, align 8, !dbg !664
  %call60 = call i32 @atoi(i8* %14) #6, !dbg !667
  call void @llvm.dbg.value(metadata i32 %call60, metadata !668, metadata !DIExpression()), !dbg !423
  %conv = sext i32 %call60 to i64, !dbg !669
  call void @llvm.dbg.value(metadata i64 %conv, metadata !508, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !670

case_110:                                         ; preds = %if.then15
  %15 = ptrtoint i8* %newnote.0 to i64, !dbg !671
  %cmp61 = icmp ne i64 0, %15, !dbg !673
  br i1 %cmp61, label %if.then63, label %if.end66, !dbg !674

if.then63:                                        ; preds = %case_110
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !675
  %add.ptr64 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !679
  %17 = load i8*, i8** %add.ptr64, align 8, !dbg !680
  %call65 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.183, i32 0, i32 0), i8* %17), !dbg !681
  call void @exit(i32 1) #8, !dbg !682
  unreachable, !dbg !682

if.end66:                                         ; preds = %case_110
  %18 = load i8*, i8** @optarg, align 8, !dbg !684
  %call67 = call noalias i8* @strdup(i8* %18) #7, !dbg !687
  call void @llvm.dbg.value(metadata i8* %call67, metadata !507, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !688

case_103:                                         ; preds = %if.then18
  %cmp68 = icmp sge i64 %newgenre.0, 0, !dbg !689
  br i1 %cmp68, label %if.then70, label %if.end73, !dbg !691

if.then70:                                        ; preds = %case_103
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !692
  %add.ptr71 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !696
  %20 = load i8*, i8** %add.ptr71, align 8, !dbg !697
  %call72 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.184, i32 0, i32 0), i8* %20), !dbg !698
  call void @exit(i32 1) #8, !dbg !699
  unreachable, !dbg !699

if.end73:                                         ; preds = %case_103
  %21 = load i8*, i8** @optarg, align 8, !dbg !701
  %call74 = call i32 @atoi(i8* %21) #6, !dbg !704
  call void @llvm.dbg.value(metadata i32 %call74, metadata !705, metadata !DIExpression()), !dbg !423
  %conv75 = sext i32 %call74 to i64, !dbg !706
  call void @llvm.dbg.value(metadata i64 %conv75, metadata !509, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !707

case_99:                                          ; preds = %if.then21
  %cmp76 = icmp sge i64 %newtrack.0, 0, !dbg !708
  br i1 %cmp76, label %if.then78, label %if.end81, !dbg !710

if.then78:                                        ; preds = %case_99
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !711
  %add.ptr79 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !715
  %23 = load i8*, i8** %add.ptr79, align 8, !dbg !716
  %call80 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.185, i32 0, i32 0), i8* %23), !dbg !717
  call void @exit(i32 1) #8, !dbg !718
  unreachable, !dbg !718

if.end81:                                         ; preds = %case_99
  %24 = load i8*, i8** @optarg, align 8, !dbg !720
  %call82 = call i32 @atoi(i8* %24) #6, !dbg !723
  call void @llvm.dbg.value(metadata i32 %call82, metadata !724, metadata !DIExpression()), !dbg !423
  %conv83 = sext i32 %call82 to i64, !dbg !725
  call void @llvm.dbg.value(metadata i64 %conv83, metadata !510, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !726

case_71:                                          ; preds = %if.then24
  call void @llvm.dbg.value(metadata i32 0, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while.body85, !dbg !728

while.body85:                                     ; preds = %if.end95, %case_71
  %ctr.0 = phi i32 [ 0, %case_71 ], [ %inc, %if.end95 ], !dbg !731
  call void @llvm.dbg.value(metadata i32 %ctr.0, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while_continue___4, !dbg !732

while_continue___4:                               ; preds = %while.body85
  br label %while_continue___0, !dbg !732

while_continue___0:                               ; preds = %while_continue___4
  %idxprom = sext i32 %ctr.0 to i64, !dbg !733
  %arrayidx = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom, !dbg !733
  %name = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx, i32 0, i32 1, !dbg !736
  %25 = load i8*, i8** %name, align 8, !dbg !736
  %26 = ptrtoint i8* %25 to i64, !dbg !737
  %cmp86 = icmp ne i64 %26, 0, !dbg !738
  br i1 %cmp86, label %if.end89, label %if.then88, !dbg !739

if.then88:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !740

if.end89:                                         ; preds = %while_continue___0
  %27 = load i8*, i8** @optarg, align 8, !dbg !742
  %idxprom90 = sext i32 %ctr.0 to i64, !dbg !745
  %arrayidx91 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom90, !dbg !745
  %name92 = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx91, i32 0, i32 1, !dbg !746
  %28 = load i8*, i8** %name92, align 8, !dbg !746
  %call93 = call i32 @strcasecmp(i8* %27, i8* %28) #6, !dbg !747
  call void @llvm.dbg.value(metadata i32 %call93, metadata !748, metadata !DIExpression()), !dbg !423
  %tobool = icmp ne i32 %call93, 0, !dbg !749
  br i1 %tobool, label %if.end95, label %if.then94, !dbg !751

if.then94:                                        ; preds = %if.end89
  br label %while_break___0, !dbg !752

if.end95:                                         ; preds = %if.end89
  %inc = add nsw i32 %ctr.0, 1, !dbg !739
  call void @llvm.dbg.value(metadata i32 %inc, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while.body85, !dbg !728, !llvm.loop !754

while_break___4:                                  ; No predecessors!
  br label %while_break___0, !dbg !756

while_break___0:                                  ; preds = %while_break___4, %if.then94, %if.then88
  %idxprom96 = sext i32 %ctr.0 to i64, !dbg !757
  %arrayidx97 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom96, !dbg !757
  %name98 = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx97, i32 0, i32 1, !dbg !759
  %29 = load i8*, i8** %name98, align 8, !dbg !759
  %30 = ptrtoint i8* %29 to i64, !dbg !760
  %cmp99 = icmp eq i64 %30, 0, !dbg !761
  br i1 %cmp99, label %if.then101, label %if.end104, !dbg !762

if.then101:                                       ; preds = %while_break___0
  %31 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !763
  %add.ptr102 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !767
  %32 = load i8*, i8** %add.ptr102, align 8, !dbg !768
  %33 = load i8*, i8** @optarg, align 8, !dbg !769
  %call103 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.186, i32 0, i32 0), i8* %32, i8* %33), !dbg !770
  call void @exit(i32 1) #8, !dbg !771
  unreachable, !dbg !771

if.end104:                                        ; preds = %while_break___0
  %idxprom105 = sext i32 %ctr.0 to i64, !dbg !773
  %arrayidx106 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom105, !dbg !773
  %styleid = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx106, i32 0, i32 0, !dbg !774
  %34 = load i8, i8* %styleid, align 16, !dbg !774
  %conv107 = zext i8 %34 to i64, !dbg !775
  call void @llvm.dbg.value(metadata i64 %conv107, metadata !509, metadata !DIExpression()), !dbg !423
  br label %switch_break, !dbg !776

case_108:                                         ; preds = %if.then27
  %call108 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.187, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.188, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.189, i32 0, i32 0)), !dbg !777
  %call109 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.190, i32 0, i32 0)), !dbg !780
  call void @llvm.dbg.value(metadata i32 0, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while.body111, !dbg !782

while.body111:                                    ; preds = %if.end118, %case_108
  %ctr.1 = phi i32 [ 0, %case_108 ], [ %inc127, %if.end118 ], !dbg !731
  call void @llvm.dbg.value(metadata i32 %ctr.1, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while_continue___5, !dbg !785

while_continue___5:                               ; preds = %while.body111
  br label %while_continue___1, !dbg !785

while_continue___1:                               ; preds = %while_continue___5
  %idxprom112 = sext i32 %ctr.1 to i64, !dbg !786
  %arrayidx113 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom112, !dbg !786
  %name114 = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx113, i32 0, i32 1, !dbg !789
  %35 = load i8*, i8** %name114, align 8, !dbg !789
  %36 = ptrtoint i8* %35 to i64, !dbg !790
  %cmp115 = icmp ne i64 %36, 0, !dbg !791
  br i1 %cmp115, label %if.end118, label %if.then117, !dbg !792

if.then117:                                       ; preds = %while_continue___1
  br label %while_break___1, !dbg !793

if.end118:                                        ; preds = %while_continue___1
  %idxprom119 = sext i32 %ctr.1 to i64, !dbg !795
  %arrayidx120 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom119, !dbg !795
  %name121 = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx120, i32 0, i32 1, !dbg !798
  %37 = load i8*, i8** %name121, align 8, !dbg !798
  %idxprom122 = sext i32 %ctr.1 to i64, !dbg !799
  %arrayidx123 = getelementptr inbounds [146 x %struct.style_s], [146 x %struct.style_s]* @id3_styles, i64 0, i64 %idxprom122, !dbg !799
  %styleid124 = getelementptr inbounds %struct.style_s, %struct.style_s* %arrayidx123, i32 0, i32 0, !dbg !800
  %38 = load i8, i8* %styleid124, align 16, !dbg !800
  %conv125 = zext i8 %38 to i32, !dbg !801
  %call126 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.191, i32 0, i32 0), i8* %37, i32 %conv125), !dbg !802
  %inc127 = add nsw i32 %ctr.1, 1, !dbg !803
  call void @llvm.dbg.value(metadata i32 %inc127, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while.body111, !dbg !782, !llvm.loop !804

while_break___5:                                  ; No predecessors!
  br label %while_break___1, !dbg !806

while_break___1:                                  ; preds = %while_break___5, %if.then117
  call void @exit(i32 0) #8, !dbg !807
  unreachable, !dbg !807

case_118:                                         ; preds = %if.then30
  call void @showblurb(), !dbg !810
  call void @exit(i32 0) #8, !dbg !813
  unreachable, !dbg !813

case_104:                                         ; preds = %if.then33
  call void @showblurb(), !dbg !815
  %call128 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.192, i32 0, i32 0)), !dbg !818
  call void @showusage(i32 %argc, i8** %argv), !dbg !820
  call void @exit(i32 0) #8, !dbg !822
  unreachable, !dbg !822

case_63:                                          ; preds = %if.then36
  call void @exit(i32 1) #8, !dbg !824
  unreachable, !dbg !824

switch_default:                                   ; preds = %if.end37
  br label %switch_break, !dbg !827

switch_break:                                     ; preds = %switch_default, %if.end104, %if.end81, %if.end73, %if.end66, %if.end59, %if.end53, %if.end47, %if.end41
  %newtrack.1 = phi i64 [ %newtrack.0, %if.end41 ], [ %newtrack.0, %if.end47 ], [ %newtrack.0, %if.end53 ], [ %newtrack.0, %if.end59 ], [ %newtrack.0, %if.end66 ], [ %newtrack.0, %if.end73 ], [ %conv83, %if.end81 ], [ %newtrack.0, %if.end104 ], [ %newtrack.0, %switch_default ], !dbg !528
  %newgenre.1 = phi i64 [ %newgenre.0, %if.end41 ], [ %newgenre.0, %if.end47 ], [ %newgenre.0, %if.end53 ], [ %newgenre.0, %if.end59 ], [ %newgenre.0, %if.end66 ], [ %conv75, %if.end73 ], [ %newgenre.0, %if.end81 ], [ %conv107, %if.end104 ], [ %newgenre.0, %switch_default ], !dbg !528
  %newyear.1 = phi i64 [ %newyear.0, %if.end41 ], [ %newyear.0, %if.end47 ], [ %newyear.0, %if.end53 ], [ %conv, %if.end59 ], [ %newyear.0, %if.end66 ], [ %newyear.0, %if.end73 ], [ %newyear.0, %if.end81 ], [ %newyear.0, %if.end104 ], [ %newyear.0, %switch_default ], !dbg !528
  %newnote.1 = phi i8* [ %newnote.0, %if.end41 ], [ %newnote.0, %if.end47 ], [ %newnote.0, %if.end53 ], [ %newnote.0, %if.end59 ], [ %call67, %if.end66 ], [ %newnote.0, %if.end73 ], [ %newnote.0, %if.end81 ], [ %newnote.0, %if.end104 ], [ %newnote.0, %switch_default ], !dbg !528
  %newartist.1 = phi i8* [ %newartist.0, %if.end41 ], [ %newartist.0, %if.end47 ], [ %call54, %if.end53 ], [ %newartist.0, %if.end59 ], [ %newartist.0, %if.end66 ], [ %newartist.0, %if.end73 ], [ %newartist.0, %if.end81 ], [ %newartist.0, %if.end104 ], [ %newartist.0, %switch_default ], !dbg !528
  %newalbum.1 = phi i8* [ %newalbum.0, %if.end41 ], [ %call48, %if.end47 ], [ %newalbum.0, %if.end53 ], [ %newalbum.0, %if.end59 ], [ %newalbum.0, %if.end66 ], [ %newalbum.0, %if.end73 ], [ %newalbum.0, %if.end81 ], [ %newalbum.0, %if.end104 ], [ %newalbum.0, %switch_default ], !dbg !528
  %newtitle.1 = phi i8* [ %call42, %if.end41 ], [ %newtitle.0, %if.end47 ], [ %newtitle.0, %if.end53 ], [ %newtitle.0, %if.end59 ], [ %newtitle.0, %if.end66 ], [ %newtitle.0, %if.end73 ], [ %newtitle.0, %if.end81 ], [ %newtitle.0, %if.end104 ], [ %newtitle.0, %switch_default ], !dbg !528
  call void @llvm.dbg.value(metadata i8* %newtitle.1, metadata !504, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %newalbum.1, metadata !505, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %newartist.1, metadata !506, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i8* %newnote.1, metadata !507, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %newyear.1, metadata !508, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %newgenre.1, metadata !509, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %newtrack.1, metadata !510, metadata !DIExpression()), !dbg !423
  %call129 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.178, i32 0, i32 0), %struct.option* getelementptr inbounds ([12 x %struct.option], [12 x %struct.option]* @id3options, i32 0, i32 0), i32* %opt_index) #7, !dbg !828
  call void @llvm.dbg.value(metadata i32 %call129, metadata !518, metadata !DIExpression()), !dbg !423
  br label %while.body, !dbg !519, !llvm.loop !831

while_break___3:                                  ; No predecessors!
  br label %while_break, !dbg !833

while_break:                                      ; preds = %while_break___3, %if.then
  %39 = load i32, i32* @optind, align 4, !dbg !834
  %add = add nsw i32 %39, 1, !dbg !836
  %cmp130 = icmp sgt i32 %add, %argc, !dbg !837
  br i1 %cmp130, label %if.then132, label %if.end136, !dbg !838

if.then132:                                       ; preds = %while_break
  %40 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !839
  %add.ptr133 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !843
  %41 = load i8*, i8** %add.ptr133, align 8, !dbg !844
  %call134 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.193, i32 0, i32 0), i8* %41), !dbg !845
  call void @showblurb(), !dbg !846
  %call135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.192, i32 0, i32 0)), !dbg !848
  call void @showusage(i32 %argc, i8** %argv), !dbg !850
  call void @exit(i32 1) #8, !dbg !852
  unreachable, !dbg !852

if.end136:                                        ; preds = %while_break
  %42 = load i32, i32* @optind, align 4, !dbg !854
  call void @llvm.dbg.value(metadata i32 %42, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while.body137, !dbg !855

while.body137:                                    ; preds = %if.end463, %if.end136
  %newyear.2 = phi i64 [ %newyear.0, %if.end136 ], [ %newyear.6, %if.end463 ], !dbg !528
  %ctr.2 = phi i32 [ %42, %if.end136 ], [ %inc464, %if.end463 ], !dbg !528
  call void @llvm.dbg.value(metadata i32 %ctr.2, metadata !727, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.value(metadata i64 %newyear.2, metadata !508, metadata !DIExpression()), !dbg !423
  br label %while_continue___6, !dbg !858

while_continue___6:                               ; preds = %while.body137
  br label %while_continue___2, !dbg !858

while_continue___2:                               ; preds = %while_continue___6
  %cmp138 = icmp slt i32 %ctr.2, %argc, !dbg !859
  br i1 %cmp138, label %if.end141, label %if.then140, !dbg !862

if.then140:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !863

if.end141:                                        ; preds = %while_continue___2
  %idx.ext = sext i32 %ctr.2 to i64, !dbg !865
  %add.ptr142 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext, !dbg !865
  %43 = load i8*, i8** %add.ptr142, align 8, !dbg !868
  %call143 = call %struct._IO_FILE* @fopen(i8* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.194, i32 0, i32 0)), !dbg !869
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call143, metadata !511, metadata !DIExpression()), !dbg !423
  %44 = ptrtoint %struct._IO_FILE* %call143 to i64, !dbg !870
  %cmp144 = icmp eq i64 0, %44, !dbg !872
  br i1 %cmp144, label %if.then146, label %if.end151, !dbg !873

if.then146:                                       ; preds = %if.end141
  %45 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !874
  %add.ptr147 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !878
  %46 = load i8*, i8** %add.ptr147, align 8, !dbg !879
  %idx.ext148 = sext i32 %ctr.2 to i64, !dbg !880
  %add.ptr149 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext148, !dbg !880
  %47 = load i8*, i8** %add.ptr149, align 8, !dbg !881
  %call150 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %45, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.195, i32 0, i32 0), i8* %46, i8* %47), !dbg !882
  call void @exit(i32 1) #8, !dbg !883
  unreachable, !dbg !883

if.end151:                                        ; preds = %if.end141
  %call152 = call i32 @id3_readtag(%struct._IO_FILE* %call143, %struct.id3tag_s* %mytag), !dbg !885
  call void @llvm.dbg.value(metadata i32 %call152, metadata !888, metadata !DIExpression()), !dbg !423
  %tobool153 = icmp ne i32 %call152, 0, !dbg !889
  br i1 %tobool153, label %if.then154, label %if.else, !dbg !891

if.then154:                                       ; preds = %if.end151
  call void @llvm.dbg.value(metadata i32 1, metadata !512, metadata !DIExpression()), !dbg !423
  call void @id3_cleartag(%struct.id3tag_s* %mytag), !dbg !892
  br label %if.end155, !dbg !896

if.else:                                          ; preds = %if.end151
  call void @llvm.dbg.value(metadata i32 0, metadata !512, metadata !DIExpression()), !dbg !423
  br label %if.end155

if.end155:                                        ; preds = %if.else, %if.then154
  %newtag.0 = phi i32 [ 1, %if.then154 ], [ 0, %if.else ], !dbg !897
  call void @llvm.dbg.value(metadata i32 %newtag.0, metadata !512, metadata !DIExpression()), !dbg !423
  %call156 = call i32 @fclose(%struct._IO_FILE* %call143), !dbg !898
  %tobool157 = icmp ne i8* %newtitle.0, null, !dbg !901
  br i1 %tobool157, label %if.else310, label %if.then158, !dbg !903

if.then158:                                       ; preds = %if.end155
  %tobool159 = icmp ne i8* %newartist.0, null, !dbg !904
  br i1 %tobool159, label %if.else308, label %if.then160, !dbg !907

if.then160:                                       ; preds = %if.then158
  %tobool161 = icmp ne i8* %newalbum.0, null, !dbg !908
  br i1 %tobool161, label %if.else306, label %if.then162, !dbg !911

if.then162:                                       ; preds = %if.then160
  %tobool163 = icmp ne i8* %newnote.0, null, !dbg !912
  br i1 %tobool163, label %if.else304, label %if.then164, !dbg !915

if.then164:                                       ; preds = %if.then162
  %cmp165 = icmp slt i64 %newyear.2, 0, !dbg !916
  br i1 %cmp165, label %if.then167, label %if.else302, !dbg !919

if.then167:                                       ; preds = %if.then164
  %cmp168 = icmp slt i64 %newgenre.0, 0, !dbg !920
  br i1 %cmp168, label %if.then170, label %if.else300, !dbg !923

if.then170:                                       ; preds = %if.then167
  %cmp171 = icmp slt i64 %newtrack.0, 0, !dbg !924
  br i1 %cmp171, label %if.then173, label %if.else298, !dbg !927

if.then173:                                       ; preds = %if.then170
  %idx.ext174 = sext i32 %ctr.2 to i64, !dbg !928
  %add.ptr175 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext174, !dbg !928
  %48 = load i8*, i8** %add.ptr175, align 8, !dbg !932
  %call176 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.196, i32 0, i32 0), i8* %48), !dbg !933
  %tobool177 = icmp ne i32 %newtag.0, 0, !dbg !934
  br i1 %tobool177, label %if.then178, label %if.else180, !dbg !936

if.then178:                                       ; preds = %if.then173
  %call179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.197, i32 0, i32 0)), !dbg !937
  br label %if.end296, !dbg !941

if.else180:                                       ; preds = %if.then173
  %songname = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 1, !dbg !942
  %arrayidx181 = getelementptr inbounds [30 x i8], [30 x i8]* %songname, i64 0, i64 0, !dbg !945
  %49 = load i8, i8* %arrayidx181, align 1, !dbg !945
  %conv182 = sext i8 %49 to i32, !dbg !946
  %cmp183 = icmp ne i32 %conv182, 0, !dbg !947
  br i1 %cmp183, label %if.then185, label %if.end192, !dbg !948

if.then185:                                       ; preds = %if.else180
  %arraydecay = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !949
  %songname186 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 1, !dbg !953
  %arraydecay187 = getelementptr inbounds [30 x i8], [30 x i8]* %songname186, i32 0, i32 0, !dbg !954
  %call188 = call i8* @strncpy(i8* %arraydecay, i8* %arraydecay187, i32 30) #7, !dbg !955
  %arrayidx189 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i64 0, i64 30, !dbg !956
  store i8 0, i8* %arrayidx189, align 2, !dbg !957
  %arraydecay190 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !958
  %call191 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.198, i32 0, i32 0), i8* %arraydecay190), !dbg !960
  br label %if.end192, !dbg !961

if.end192:                                        ; preds = %if.then185, %if.else180
  %artist = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 2, !dbg !962
  %arrayidx193 = getelementptr inbounds [30 x i8], [30 x i8]* %artist, i64 0, i64 0, !dbg !964
  %50 = load i8, i8* %arrayidx193, align 1, !dbg !964
  %conv194 = sext i8 %50 to i32, !dbg !965
  %cmp195 = icmp ne i32 %conv194, 0, !dbg !966
  br i1 %cmp195, label %if.then197, label %if.end205, !dbg !967

if.then197:                                       ; preds = %if.end192
  %arraydecay198 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !968
  %artist199 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 2, !dbg !972
  %arraydecay200 = getelementptr inbounds [30 x i8], [30 x i8]* %artist199, i32 0, i32 0, !dbg !973
  %call201 = call i8* @strncpy(i8* %arraydecay198, i8* %arraydecay200, i32 30) #7, !dbg !974
  %arrayidx202 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i64 0, i64 30, !dbg !975
  store i8 0, i8* %arrayidx202, align 2, !dbg !976
  %arraydecay203 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !977
  %call204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.199, i32 0, i32 0), i8* %arraydecay203), !dbg !979
  br label %if.end205, !dbg !980

if.end205:                                        ; preds = %if.then197, %if.end192
  %album = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 3, !dbg !981
  %arrayidx206 = getelementptr inbounds [30 x i8], [30 x i8]* %album, i64 0, i64 0, !dbg !983
  %51 = load i8, i8* %arrayidx206, align 1, !dbg !983
  %conv207 = sext i8 %51 to i32, !dbg !984
  %cmp208 = icmp ne i32 %conv207, 0, !dbg !985
  br i1 %cmp208, label %if.then210, label %if.end218, !dbg !986

if.then210:                                       ; preds = %if.end205
  %arraydecay211 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !987
  %album212 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 3, !dbg !991
  %arraydecay213 = getelementptr inbounds [30 x i8], [30 x i8]* %album212, i32 0, i32 0, !dbg !992
  %call214 = call i8* @strncpy(i8* %arraydecay211, i8* %arraydecay213, i32 30) #7, !dbg !993
  %arrayidx215 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i64 0, i64 30, !dbg !994
  store i8 0, i8* %arrayidx215, align 2, !dbg !995
  %arraydecay216 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !996
  %call217 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.200, i32 0, i32 0), i8* %arraydecay216), !dbg !998
  br label %if.end218, !dbg !999

if.end218:                                        ; preds = %if.then210, %if.end205
  %note = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1000
  %v11 = bitcast %union.__anonunion_note_24* %note to %struct.__anonstruct_v11_26*, !dbg !1002
  %marker = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11, i32 0, i32 1, !dbg !1003
  %52 = load i8, i8* %marker, align 1, !dbg !1003
  %conv219 = sext i8 %52 to i32, !dbg !1004
  %cmp220 = icmp eq i32 %conv219, 0, !dbg !1005
  br i1 %cmp220, label %if.then222, label %if.else253, !dbg !1006

if.then222:                                       ; preds = %if.end218
  %note223 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1007
  %v11224 = bitcast %union.__anonunion_note_24* %note223 to %struct.__anonstruct_v11_26*, !dbg !1010
  %note225 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11224, i32 0, i32 0, !dbg !1011
  %arrayidx226 = getelementptr inbounds [28 x i8], [28 x i8]* %note225, i64 0, i64 0, !dbg !1012
  %53 = load i8, i8* %arrayidx226, align 1, !dbg !1012
  %conv227 = sext i8 %53 to i32, !dbg !1013
  %cmp228 = icmp ne i32 %conv227, 0, !dbg !1014
  br i1 %cmp228, label %if.then230, label %if.end240, !dbg !1015

if.then230:                                       ; preds = %if.then222
  %arraydecay231 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1016
  %note232 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1020
  %v11233 = bitcast %union.__anonunion_note_24* %note232 to %struct.__anonstruct_v11_26*, !dbg !1021
  %note234 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11233, i32 0, i32 0, !dbg !1022
  %arraydecay235 = getelementptr inbounds [28 x i8], [28 x i8]* %note234, i32 0, i32 0, !dbg !1023
  %call236 = call i8* @strncpy(i8* %arraydecay231, i8* %arraydecay235, i32 28) #7, !dbg !1024
  %arrayidx237 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i64 0, i64 28, !dbg !1025
  store i8 0, i8* %arrayidx237, align 4, !dbg !1026
  %arraydecay238 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1027
  %call239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.201, i32 0, i32 0), i8* %arraydecay238), !dbg !1029
  br label %if.end240, !dbg !1030

if.end240:                                        ; preds = %if.then230, %if.then222
  %note241 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1031
  %v11242 = bitcast %union.__anonunion_note_24* %note241 to %struct.__anonstruct_v11_26*, !dbg !1033
  %track = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11242, i32 0, i32 2, !dbg !1034
  %54 = load i8, i8* %track, align 1, !dbg !1034
  %conv243 = zext i8 %54 to i32, !dbg !1035
  %cmp244 = icmp ne i32 %conv243, 0, !dbg !1036
  br i1 %cmp244, label %if.then246, label %if.end252, !dbg !1037

if.then246:                                       ; preds = %if.end240
  %note247 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1038
  %v11248 = bitcast %union.__anonunion_note_24* %note247 to %struct.__anonstruct_v11_26*, !dbg !1042
  %track249 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11248, i32 0, i32 2, !dbg !1043
  %55 = load i8, i8* %track249, align 1, !dbg !1043
  %conv250 = zext i8 %55 to i32, !dbg !1044
  %call251 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.202, i32 0, i32 0), i32 %conv250), !dbg !1045
  br label %if.end252, !dbg !1046

if.end252:                                        ; preds = %if.then246, %if.end240
  br label %if.end271, !dbg !1047

if.else253:                                       ; preds = %if.end218
  %note254 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1048
  %v10 = bitcast %union.__anonunion_note_24* %note254 to %struct.__anonstruct_v10_25*, !dbg !1050
  %note255 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10, i32 0, i32 0, !dbg !1051
  %arrayidx256 = getelementptr inbounds [30 x i8], [30 x i8]* %note255, i64 0, i64 0, !dbg !1052
  %56 = load i8, i8* %arrayidx256, align 1, !dbg !1052
  %conv257 = sext i8 %56 to i32, !dbg !1053
  %cmp258 = icmp ne i32 %conv257, 0, !dbg !1054
  br i1 %cmp258, label %if.then260, label %if.end270, !dbg !1055

if.then260:                                       ; preds = %if.else253
  %arraydecay261 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1056
  %note262 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1060
  %v10263 = bitcast %union.__anonunion_note_24* %note262 to %struct.__anonstruct_v10_25*, !dbg !1061
  %note264 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10263, i32 0, i32 0, !dbg !1062
  %arraydecay265 = getelementptr inbounds [30 x i8], [30 x i8]* %note264, i32 0, i32 0, !dbg !1063
  %call266 = call i8* @strncpy(i8* %arraydecay261, i8* %arraydecay265, i32 30) #7, !dbg !1064
  %arrayidx267 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i64 0, i64 30, !dbg !1065
  store i8 0, i8* %arrayidx267, align 2, !dbg !1066
  %arraydecay268 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1067
  %call269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.203, i32 0, i32 0), i8* %arraydecay268), !dbg !1069
  br label %if.end270, !dbg !1070

if.end270:                                        ; preds = %if.then260, %if.else253
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.end252
  %year = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 4, !dbg !1071
  %arrayidx272 = getelementptr inbounds [4 x i8], [4 x i8]* %year, i64 0, i64 0, !dbg !1073
  %57 = load i8, i8* %arrayidx272, align 1, !dbg !1073
  %conv273 = sext i8 %57 to i32, !dbg !1074
  %cmp274 = icmp ne i32 %conv273, 0, !dbg !1075
  br i1 %cmp274, label %if.then276, label %if.end284, !dbg !1076

if.then276:                                       ; preds = %if.end271
  %arraydecay277 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1077
  %year278 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 4, !dbg !1081
  %arraydecay279 = getelementptr inbounds [4 x i8], [4 x i8]* %year278, i32 0, i32 0, !dbg !1082
  %call280 = call i8* @strncpy(i8* %arraydecay277, i8* %arraydecay279, i32 4) #7, !dbg !1083
  %arrayidx281 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i64 0, i64 4, !dbg !1084
  store i8 0, i8* %arrayidx281, align 4, !dbg !1085
  %arraydecay282 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1086
  %call283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.204, i32 0, i32 0), i8* %arraydecay282), !dbg !1088
  br label %if.end284, !dbg !1089

if.end284:                                        ; preds = %if.then276, %if.end271
  %style = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 6, !dbg !1090
  %58 = load i8, i8* %style, align 1, !dbg !1090
  %conv285 = zext i8 %58 to i32, !dbg !1092
  %cmp286 = icmp ne i32 %conv285, 255, !dbg !1093
  br i1 %cmp286, label %if.then288, label %if.end295, !dbg !1094

if.then288:                                       ; preds = %if.end284
  %style289 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 6, !dbg !1095
  %59 = load i8, i8* %style289, align 1, !dbg !1095
  %conv290 = zext i8 %59 to i32, !dbg !1099
  %call291 = call i8* @id3_findstyle(i32 %conv290), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %call291, metadata !1101, metadata !DIExpression()), !dbg !423
  %style292 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 6, !dbg !1102
  %60 = load i8, i8* %style292, align 1, !dbg !1102
  %conv293 = zext i8 %60 to i32, !dbg !1104
  %call294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.205, i32 0, i32 0), i8* %call291, i32 %conv293), !dbg !1105
  br label %if.end295, !dbg !1106

if.end295:                                        ; preds = %if.then288, %if.end284
  br label %if.end296

if.end296:                                        ; preds = %if.end295, %if.then178
  %call297 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.192, i32 0, i32 0)), !dbg !1107
  br label %if.end299, !dbg !1110

if.else298:                                       ; preds = %if.then170
  br label %_L___4, !dbg !1111

if.end299:                                        ; preds = %if.end296
  br label %if.end301, !dbg !1113

if.else300:                                       ; preds = %if.then167
  br label %_L___4, !dbg !1114

if.end301:                                        ; preds = %if.end299
  br label %if.end303, !dbg !1116

if.else302:                                       ; preds = %if.then164
  br label %_L___4, !dbg !1117

if.end303:                                        ; preds = %if.end301
  br label %if.end305, !dbg !1119

if.else304:                                       ; preds = %if.then162
  br label %_L___4, !dbg !1120

if.end305:                                        ; preds = %if.end303
  br label %if.end307, !dbg !1122

if.else306:                                       ; preds = %if.then160
  br label %_L___4, !dbg !1123

if.end307:                                        ; preds = %if.end305
  br label %if.end309, !dbg !1125

if.else308:                                       ; preds = %if.then158
  br label %_L___4, !dbg !1126

if.end309:                                        ; preds = %if.end307
  br label %if.end463, !dbg !1128

if.else310:                                       ; preds = %if.end155
  br label %_L___4, !dbg !1129

_L___4:                                           ; preds = %if.else310, %if.else308, %if.else306, %if.else304, %if.else302, %if.else300, %if.else298
  %tobool311 = icmp ne i8* %newtitle.0, null, !dbg !1130
  br i1 %tobool311, label %if.then312, label %if.end319, !dbg !1133

if.then312:                                       ; preds = %_L___4
  %songname313 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 1, !dbg !1134
  %arraydecay314 = getelementptr inbounds [30 x i8], [30 x i8]* %songname313, i32 0, i32 0, !dbg !1138
  %call315 = call i8* @memset(i8* %arraydecay314, i32 0, i32 30) #7, !dbg !1139
  %songname316 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 1, !dbg !1140
  %arraydecay317 = getelementptr inbounds [30 x i8], [30 x i8]* %songname316, i32 0, i32 0, !dbg !1142
  %call318 = call i8* @strncpy(i8* %arraydecay317, i8* %newtitle.0, i32 30) #7, !dbg !1143
  br label %if.end319, !dbg !1144

if.end319:                                        ; preds = %if.then312, %_L___4
  %tobool320 = icmp ne i8* %newartist.0, null, !dbg !1145
  br i1 %tobool320, label %if.then321, label %if.end328, !dbg !1147

if.then321:                                       ; preds = %if.end319
  %artist322 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 2, !dbg !1148
  %arraydecay323 = getelementptr inbounds [30 x i8], [30 x i8]* %artist322, i32 0, i32 0, !dbg !1152
  %call324 = call i8* @memset(i8* %arraydecay323, i32 0, i32 30) #7, !dbg !1153
  %artist325 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 2, !dbg !1154
  %arraydecay326 = getelementptr inbounds [30 x i8], [30 x i8]* %artist325, i32 0, i32 0, !dbg !1156
  %call327 = call i8* @strncpy(i8* %arraydecay326, i8* %newartist.0, i32 30) #7, !dbg !1157
  br label %if.end328, !dbg !1158

if.end328:                                        ; preds = %if.then321, %if.end319
  %tobool329 = icmp ne i8* %newalbum.0, null, !dbg !1159
  br i1 %tobool329, label %if.then330, label %if.end337, !dbg !1161

if.then330:                                       ; preds = %if.end328
  %album331 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 3, !dbg !1162
  %arraydecay332 = getelementptr inbounds [30 x i8], [30 x i8]* %album331, i32 0, i32 0, !dbg !1166
  %call333 = call i8* @memset(i8* %arraydecay332, i32 0, i32 30) #7, !dbg !1167
  %album334 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 3, !dbg !1168
  %arraydecay335 = getelementptr inbounds [30 x i8], [30 x i8]* %album334, i32 0, i32 0, !dbg !1170
  %call336 = call i8* @strncpy(i8* %arraydecay335, i8* %newalbum.0, i32 30) #7, !dbg !1171
  br label %if.end337, !dbg !1172

if.end337:                                        ; preds = %if.then330, %if.end328
  %tobool338 = icmp ne i8* %newnote.0, null, !dbg !1173
  br i1 %tobool338, label %if.then339, label %if.end403, !dbg !1175

if.then339:                                       ; preds = %if.end337
  %note340 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1176
  %v11341 = bitcast %union.__anonunion_note_24* %note340 to %struct.__anonstruct_v11_26*, !dbg !1179
  %marker342 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11341, i32 0, i32 1, !dbg !1180
  %61 = load i8, i8* %marker342, align 1, !dbg !1180
  %conv343 = sext i8 %61 to i32, !dbg !1181
  %cmp344 = icmp eq i32 %conv343, 0, !dbg !1182
  br i1 %cmp344, label %if.then346, label %if.else391, !dbg !1183

if.then346:                                       ; preds = %if.then339
  %note347 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1184
  %v11348 = bitcast %union.__anonunion_note_24* %note347 to %struct.__anonstruct_v11_26*, !dbg !1187
  %track349 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11348, i32 0, i32 2, !dbg !1188
  %62 = load i8, i8* %track349, align 1, !dbg !1188
  %conv350 = zext i8 %62 to i32, !dbg !1189
  %cmp351 = icmp ne i32 %conv350, 0, !dbg !1190
  br i1 %cmp351, label %if.then353, label %if.else379, !dbg !1191

if.then353:                                       ; preds = %if.then346
  %cmp354 = icmp ne i64 %newtrack.0, 0, !dbg !1192
  br i1 %cmp354, label %if.then356, label %if.else367, !dbg !1195

if.then356:                                       ; preds = %if.then353
  %note357 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1196
  %v10358 = bitcast %union.__anonunion_note_24* %note357 to %struct.__anonstruct_v10_25*, !dbg !1200
  %note359 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10358, i32 0, i32 0, !dbg !1201
  %arraydecay360 = getelementptr inbounds [30 x i8], [30 x i8]* %note359, i32 0, i32 0, !dbg !1202
  %call361 = call i8* @memset(i8* %arraydecay360, i32 0, i32 28) #7, !dbg !1203
  %note362 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1204
  %v11363 = bitcast %union.__anonunion_note_24* %note362 to %struct.__anonstruct_v11_26*, !dbg !1206
  %note364 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11363, i32 0, i32 0, !dbg !1207
  %arraydecay365 = getelementptr inbounds [28 x i8], [28 x i8]* %note364, i32 0, i32 0, !dbg !1208
  %call366 = call i8* @strncpy(i8* %arraydecay365, i8* %newnote.0, i32 28) #7, !dbg !1209
  br label %if.end378, !dbg !1210

if.else367:                                       ; preds = %if.then353
  %note368 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1211
  %v10369 = bitcast %union.__anonunion_note_24* %note368 to %struct.__anonstruct_v10_25*, !dbg !1215
  %note370 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10369, i32 0, i32 0, !dbg !1216
  %arraydecay371 = getelementptr inbounds [30 x i8], [30 x i8]* %note370, i32 0, i32 0, !dbg !1217
  %call372 = call i8* @memset(i8* %arraydecay371, i32 0, i32 30) #7, !dbg !1218
  %note373 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1219
  %v10374 = bitcast %union.__anonunion_note_24* %note373 to %struct.__anonstruct_v10_25*, !dbg !1221
  %note375 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10374, i32 0, i32 0, !dbg !1222
  %arraydecay376 = getelementptr inbounds [30 x i8], [30 x i8]* %note375, i32 0, i32 0, !dbg !1223
  %call377 = call i8* @strncpy(i8* %arraydecay376, i8* %newnote.0, i32 30) #7, !dbg !1224
  br label %if.end378

if.end378:                                        ; preds = %if.else367, %if.then356
  br label %if.end390, !dbg !1225

if.else379:                                       ; preds = %if.then346
  %note380 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1226
  %v10381 = bitcast %union.__anonunion_note_24* %note380 to %struct.__anonstruct_v10_25*, !dbg !1230
  %note382 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10381, i32 0, i32 0, !dbg !1231
  %arraydecay383 = getelementptr inbounds [30 x i8], [30 x i8]* %note382, i32 0, i32 0, !dbg !1232
  %call384 = call i8* @memset(i8* %arraydecay383, i32 0, i32 30) #7, !dbg !1233
  %note385 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1234
  %v10386 = bitcast %union.__anonunion_note_24* %note385 to %struct.__anonstruct_v10_25*, !dbg !1236
  %note387 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10386, i32 0, i32 0, !dbg !1237
  %arraydecay388 = getelementptr inbounds [30 x i8], [30 x i8]* %note387, i32 0, i32 0, !dbg !1238
  %call389 = call i8* @strncpy(i8* %arraydecay388, i8* %newnote.0, i32 30) #7, !dbg !1239
  br label %if.end390

if.end390:                                        ; preds = %if.else379, %if.end378
  br label %if.end402, !dbg !1240

if.else391:                                       ; preds = %if.then339
  %note392 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1241
  %v10393 = bitcast %union.__anonunion_note_24* %note392 to %struct.__anonstruct_v10_25*, !dbg !1245
  %note394 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10393, i32 0, i32 0, !dbg !1246
  %arraydecay395 = getelementptr inbounds [30 x i8], [30 x i8]* %note394, i32 0, i32 0, !dbg !1247
  %call396 = call i8* @memset(i8* %arraydecay395, i32 0, i32 30) #7, !dbg !1248
  %note397 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1249
  %v10398 = bitcast %union.__anonunion_note_24* %note397 to %struct.__anonstruct_v10_25*, !dbg !1251
  %note399 = getelementptr inbounds %struct.__anonstruct_v10_25, %struct.__anonstruct_v10_25* %v10398, i32 0, i32 0, !dbg !1252
  %arraydecay400 = getelementptr inbounds [30 x i8], [30 x i8]* %note399, i32 0, i32 0, !dbg !1253
  %call401 = call i8* @strncpy(i8* %arraydecay400, i8* %newnote.0, i32 30) #7, !dbg !1254
  br label %if.end402

if.end402:                                        ; preds = %if.else391, %if.end390
  br label %if.end403, !dbg !1255

if.end403:                                        ; preds = %if.end402, %if.end337
  %cmp404 = icmp sge i64 %newyear.2, 0, !dbg !1256
  br i1 %cmp404, label %if.then406, label %if.end427, !dbg !1258

if.then406:                                       ; preds = %if.end403
  %cmp407 = icmp slt i64 %newyear.2, 100, !dbg !1259
  br i1 %cmp407, label %if.then409, label %if.end417, !dbg !1262

if.then409:                                       ; preds = %if.then406
  %cmp410 = icmp sgt i64 %newyear.2, 70, !dbg !1263
  br i1 %cmp410, label %if.then412, label %if.else414, !dbg !1266

if.then412:                                       ; preds = %if.then409
  %add413 = add nsw i64 %newyear.2, 1900, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %add413, metadata !508, metadata !DIExpression()), !dbg !423
  br label %if.end416, !dbg !1269

if.else414:                                       ; preds = %if.then409
  %add415 = add nsw i64 %newyear.2, 2000, !dbg !1270
  call void @llvm.dbg.value(metadata i64 %add415, metadata !508, metadata !DIExpression()), !dbg !423
  br label %if.end416

if.end416:                                        ; preds = %if.else414, %if.then412
  %newyear.3 = phi i64 [ %add413, %if.then412 ], [ %add415, %if.else414 ], !dbg !1272
  call void @llvm.dbg.value(metadata i64 %newyear.3, metadata !508, metadata !DIExpression()), !dbg !423
  br label %if.end417, !dbg !1273

if.end417:                                        ; preds = %if.end416, %if.then406
  %newyear.4 = phi i64 [ %newyear.3, %if.end416 ], [ %newyear.2, %if.then406 ], !dbg !528
  call void @llvm.dbg.value(metadata i64 %newyear.4, metadata !508, metadata !DIExpression()), !dbg !423
  %arraydecay418 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1274
  %call419 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.206, i32 0, i32 0), i64 %newyear.4) #7, !dbg !1277
  %year420 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 4, !dbg !1278
  %arraydecay421 = getelementptr inbounds [4 x i8], [4 x i8]* %year420, i32 0, i32 0, !dbg !1280
  %call422 = call i8* @memset(i8* %arraydecay421, i32 0, i32 4) #7, !dbg !1281
  %year423 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 4, !dbg !1282
  %arraydecay424 = getelementptr inbounds [4 x i8], [4 x i8]* %year423, i32 0, i32 0, !dbg !1284
  %arraydecay425 = getelementptr inbounds [31 x i8], [31 x i8]* %strbuf, i32 0, i32 0, !dbg !1285
  %call426 = call i8* @strncpy(i8* %arraydecay424, i8* %arraydecay425, i32 4) #7, !dbg !1286
  br label %if.end427, !dbg !1287

if.end427:                                        ; preds = %if.end417, %if.end403
  %newyear.5 = phi i64 [ %newyear.4, %if.end417 ], [ %newyear.2, %if.end403 ], !dbg !528
  call void @llvm.dbg.value(metadata i64 %newyear.5, metadata !508, metadata !DIExpression()), !dbg !423
  %cmp428 = icmp sge i64 %newgenre.0, 0, !dbg !1288
  br i1 %cmp428, label %if.then430, label %if.end433, !dbg !1290

if.then430:                                       ; preds = %if.end427
  %conv431 = trunc i64 %newgenre.0 to i8, !dbg !1291
  %style432 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 6, !dbg !1293
  store i8 %conv431, i8* %style432, align 1, !dbg !1294
  br label %if.end433, !dbg !1295

if.end433:                                        ; preds = %if.then430, %if.end427
  %cmp434 = icmp sgt i64 %newtrack.0, 0, !dbg !1296
  br i1 %cmp434, label %if.then436, label %if.end444, !dbg !1298

if.then436:                                       ; preds = %if.end433
  %note437 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1299
  %v11438 = bitcast %union.__anonunion_note_24* %note437 to %struct.__anonstruct_v11_26*, !dbg !1301
  %marker439 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11438, i32 0, i32 1, !dbg !1302
  store i8 0, i8* %marker439, align 1, !dbg !1303
  %conv440 = trunc i64 %newtrack.0 to i8, !dbg !1304
  %note441 = getelementptr inbounds %struct.id3tag_s, %struct.id3tag_s* %mytag, i32 0, i32 5, !dbg !1305
  %v11442 = bitcast %union.__anonunion_note_24* %note441 to %struct.__anonstruct_v11_26*, !dbg !1306
  %track443 = getelementptr inbounds %struct.__anonstruct_v11_26, %struct.__anonstruct_v11_26* %v11442, i32 0, i32 2, !dbg !1307
  store i8 %conv440, i8* %track443, align 1, !dbg !1308
  br label %if.end444, !dbg !1309

if.end444:                                        ; preds = %if.then436, %if.end433
  %idx.ext445 = sext i32 %ctr.2 to i64, !dbg !1310
  %add.ptr446 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext445, !dbg !1310
  %63 = load i8*, i8** %add.ptr446, align 8, !dbg !1313
  %call447 = call %struct._IO_FILE* @fopen(i8* %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.207, i32 0, i32 0)), !dbg !1314
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call447, metadata !511, metadata !DIExpression()), !dbg !423
  %64 = ptrtoint %struct._IO_FILE* %call447 to i64, !dbg !1315
  %cmp448 = icmp eq i64 0, %64, !dbg !1317
  br i1 %cmp448, label %if.then450, label %if.end455, !dbg !1318

if.then450:                                       ; preds = %if.end444
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1319
  %add.ptr451 = getelementptr inbounds i8*, i8** %argv, i64 0, !dbg !1323
  %66 = load i8*, i8** %add.ptr451, align 8, !dbg !1324
  %idx.ext452 = sext i32 %ctr.2 to i64, !dbg !1325
  %add.ptr453 = getelementptr inbounds i8*, i8** %argv, i64 %idx.ext452, !dbg !1325
  %67 = load i8*, i8** %add.ptr453, align 8, !dbg !1326
  %call454 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.208, i32 0, i32 0), i8* %66, i8* %67), !dbg !1327
  call void @exit(i32 1) #8, !dbg !1328
  unreachable, !dbg !1328

if.end455:                                        ; preds = %if.end444
  %tobool456 = icmp ne i32 %newtag.0, 0, !dbg !1330
  br i1 %tobool456, label %if.then457, label %if.else459, !dbg !1332

if.then457:                                       ; preds = %if.end455
  %call458 = call i32 @id3_appendtag(%struct._IO_FILE* %call447, %struct.id3tag_s* %mytag), !dbg !1333
  br label %if.end461, !dbg !1337

if.else459:                                       ; preds = %if.end455
  %call460 = call i32 @id3_replacetag(%struct._IO_FILE* %call447, %struct.id3tag_s* %mytag), !dbg !1338
  br label %if.end461

if.end461:                                        ; preds = %if.else459, %if.then457
  %call462 = call i32 @fclose(%struct._IO_FILE* %call447), !dbg !1342
  br label %if.end463

if.end463:                                        ; preds = %if.end461, %if.end309
  %newyear.6 = phi i64 [ %newyear.5, %if.end461 ], [ %newyear.2, %if.end309 ], !dbg !528
  call void @llvm.dbg.value(metadata i64 %newyear.6, metadata !508, metadata !DIExpression()), !dbg !423
  %inc464 = add nsw i32 %ctr.2, 1, !dbg !862
  call void @llvm.dbg.value(metadata i32 %inc464, metadata !727, metadata !DIExpression()), !dbg !423
  br label %while.body137, !dbg !855, !llvm.loop !1345

while_break___6:                                  ; No predecessors!
  br label %while_break___2, !dbg !1347

while_break___2:                                  ; preds = %while_break___6, %if.then140
  %tobool465 = icmp ne i8* %newtitle.0, null, !dbg !1348
  br i1 %tobool465, label %if.then466, label %if.end467, !dbg !1350

if.then466:                                       ; preds = %while_break___2
  call void @free(i8* %newtitle.0) #7, !dbg !1351
  br label %if.end467, !dbg !1355

if.end467:                                        ; preds = %if.then466, %while_break___2
  %tobool468 = icmp ne i8* %newartist.0, null, !dbg !1356
  br i1 %tobool468, label %if.then469, label %if.end470, !dbg !1358

if.then469:                                       ; preds = %if.end467
  call void @free(i8* %newartist.0) #7, !dbg !1359
  br label %if.end470, !dbg !1363

if.end470:                                        ; preds = %if.then469, %if.end467
  %tobool471 = icmp ne i8* %newalbum.0, null, !dbg !1364
  br i1 %tobool471, label %if.then472, label %if.end473, !dbg !1366

if.then472:                                       ; preds = %if.end470
  call void @free(i8* %newalbum.0) #7, !dbg !1367
  br label %if.end473, !dbg !1371

if.end473:                                        ; preds = %if.then472, %if.end470
  %tobool474 = icmp ne i8* %newnote.0, null, !dbg !1372
  br i1 %tobool474, label %if.then475, label %if.end476, !dbg !1374

if.then475:                                       ; preds = %if.end473
  call void @free(i8* %newnote.0) #7, !dbg !1375
  br label %if.end476, !dbg !1379

if.end476:                                        ; preds = %if.then475, %if.end473
  ret i32 0, !dbg !1380
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #4

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32) #5

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #4

; Function Attrs: nounwind readonly
declare i32 @atoi(i8*) #3

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #4

; Function Attrs: nounwind
declare void @free(i8*) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.module.flags = !{!105, !106, !107, !108, !109}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!110}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "id3_styles", scope: !2, file: !96, line: 49, type: !97, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !89, nameTableKind: GNU)
!3 = !DIFile(filename: "c/id3tool-1.2a.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !7, !8, !11, !18, !72, !74, !20, !76, !77, !79, !46, !21}
!6 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 211, baseType: !10)
!9 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !13, line: 49, baseType: !14)
!13 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !15, line: 271, size: 1728, elements: !16)
!15 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!16 = !{!17, !19, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !40, !41, !42, !43, !47, !49, !51, !55, !58, !62, !63, !64, !65, !66, !67, !68}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !14, file: !15, line: 272, baseType: !18, size: 32)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !14, file: !15, line: 273, baseType: !20, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !14, file: !15, line: 274, baseType: !20, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !14, file: !15, line: 275, baseType: !20, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !14, file: !15, line: 276, baseType: !20, size: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !14, file: !15, line: 277, baseType: !20, size: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !14, file: !15, line: 278, baseType: !20, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !14, file: !15, line: 279, baseType: !20, size: 64, offset: 448)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !14, file: !15, line: 280, baseType: !20, size: 64, offset: 512)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !14, file: !15, line: 281, baseType: !20, size: 64, offset: 576)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !14, file: !15, line: 282, baseType: !20, size: 64, offset: 640)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !14, file: !15, line: 283, baseType: !20, size: 64, offset: 704)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !14, file: !15, line: 284, baseType: !33, size: 64, offset: 768)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !15, line: 186, size: 192, elements: !35)
!35 = !{!36, !37, !39}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !34, file: !15, line: 187, baseType: !33, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !34, file: !15, line: 188, baseType: !38, size: 64, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !34, file: !15, line: 189, baseType: !18, size: 32, offset: 128)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !14, file: !15, line: 285, baseType: !38, size: 64, offset: 832)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !14, file: !15, line: 286, baseType: !18, size: 32, offset: 896)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !14, file: !15, line: 287, baseType: !18, size: 32, offset: 928)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !14, file: !15, line: 288, baseType: !44, size: 64, offset: 960)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !45, line: 141, baseType: !46)
!45 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!46 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !14, file: !15, line: 289, baseType: !48, size: 16, offset: 1024)
!48 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !14, file: !15, line: 290, baseType: !50, size: 8, offset: 1040)
!50 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !14, file: !15, line: 291, baseType: !52, size: 8, offset: 1048)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 8, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 1)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !14, file: !15, line: 292, baseType: !56, size: 64, offset: 1088)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !15, line: 180, baseType: null)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !14, file: !15, line: 293, baseType: !59, size: 64, offset: 1152)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !45, line: 142, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !45, line: 56, baseType: !61)
!61 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !14, file: !15, line: 294, baseType: !7, size: 64, offset: 1216)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !14, file: !15, line: 295, baseType: !7, size: 64, offset: 1280)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !14, file: !15, line: 296, baseType: !7, size: 64, offset: 1344)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !14, file: !15, line: 297, baseType: !7, size: 64, offset: 1408)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !14, file: !15, line: 298, baseType: !8, size: 32, offset: 1472)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !14, file: !15, line: 299, baseType: !18, size: 32, offset: 1504)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !14, file: !15, line: 300, baseType: !69, size: 192, offset: 1536)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 192, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 24)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!76 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !82, line: 106, size: 256, elements: !83)
!82 = !DIFile(filename: "/usr/include/getopt.h", directory: "")
!83 = !{!84, !85, !86, !88}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !81, file: !82, line: 107, baseType: !72, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !81, file: !82, line: 108, baseType: !18, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !81, file: !82, line: 109, baseType: !87, size: 64, offset: 128)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !81, file: !82, line: 110, baseType: !18, size: 32, offset: 192)
!89 = !{!0, !90}
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "id3options", scope: !2, file: !92, line: 55, type: !93, isLocal: false, isDefinition: true)
!92 = !DIFile(filename: "/home/wslee/benchmarks/sound/id3tool-1.2a/id3tool.c", directory: "")
!93 = !DICompositeType(tag: DW_TAG_array_type, baseType: !81, size: 3072, elements: !94)
!94 = !{!95}
!95 = !DISubrange(count: 12)
!96 = !DIFile(filename: "/home/wslee/benchmarks/sound/id3tool-1.2a/id3.c", directory: "")
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 18688, elements: !103)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "style_s", file: !99, line: 64, size: 128, elements: !100)
!99 = !DIFile(filename: "/home/wslee/benchmarks/sound/id3tool-1.2a/id3.h", directory: "")
!100 = !{!101, !102}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "styleid", scope: !98, file: !99, line: 65, baseType: !76, size: 8)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !99, line: 66, baseType: !20, size: 64, offset: 64)
!103 = !{!104}
!104 = !DISubrange(count: 146)
!105 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!106 = !{i32 2, !"Dwarf Version", i32 4}
!107 = !{i32 2, !"Debug Info Version", i32 3}
!108 = !{i32 1, !"wchar_size", i32 4}
!109 = !{i32 7, !"PIC Level", i32 2}
!110 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!111 = distinct !DISubprogram(name: "id3_readtag", scope: !96, file: !96, line: 198, type: !112, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!112 = !DISubroutineType(types: !113)
!113 = !{!18, !11, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "id3tag_t", file: !99, line: 45, baseType: !116)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "id3tag_s", file: !99, line: 45, size: 1024, elements: !117)
!117 = !{!118, !122, !126, !127, !128, !132, !148}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !116, file: !99, line: 46, baseType: !119, size: 24)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 24, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 3)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "songname", scope: !116, file: !99, line: 47, baseType: !123, size: 240, offset: 24)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 240, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 30)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "artist", scope: !116, file: !99, line: 48, baseType: !123, size: 240, offset: 264)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "album", scope: !116, file: !99, line: 49, baseType: !123, size: 240, offset: 504)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "year", scope: !116, file: !99, line: 50, baseType: !129, size: 32, offset: 744)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 32, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 4)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !116, file: !99, line: 51, baseType: !133, size: 240, offset: 776)
!133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__anonunion_note_24", file: !99, line: 45, size: 240, elements: !134)
!134 = !{!135, !139}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "v10", scope: !133, file: !99, line: 46, baseType: !136, size: 240)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_v10_25", file: !99, line: 45, size: 240, elements: !137)
!137 = !{!138}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !136, file: !99, line: 46, baseType: !123, size: 240)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "v11", scope: !133, file: !99, line: 47, baseType: !140, size: 240)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_v11_26", file: !99, line: 45, size: 240, elements: !141)
!141 = !{!142, !146, !147}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "note", scope: !140, file: !99, line: 46, baseType: !143, size: 224)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 224, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 28)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "marker", scope: !140, file: !99, line: 47, baseType: !21, size: 8, offset: 224)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "track", scope: !140, file: !99, line: 48, baseType: !76, size: 8, offset: 232)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !116, file: !99, line: 52, baseType: !76, size: 8, offset: 1016)
!149 = !DILocalVariable(name: "fin", arg: 1, scope: !111, file: !96, line: 198, type: !11)
!150 = !DILocation(line: 0, scope: !111)
!151 = !DILocalVariable(name: "id3tag", arg: 2, scope: !111, file: !96, line: 198, type: !114)
!152 = !DILocalVariable(name: "__cil_tmp7", scope: !111, file: !96, line: 204, type: !20)
!153 = !DILocation(line: 204, column: 9, scope: !111)
!154 = !DILocation(line: 202, column: 38, scope: !155)
!155 = distinct !DILexicalBlock(scope: !156, file: !96, line: 202, column: 7)
!156 = distinct !DILexicalBlock(scope: !111, file: !96, line: 206, column: 3)
!157 = !DILocation(line: 202, column: 35, scope: !155)
!158 = !DILocation(line: 202, column: 7, scope: !156)
!159 = !DILocation(line: 203, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !155, file: !96, line: 202, column: 59)
!161 = !DILocation(line: 202, column: 38, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !96, line: 202, column: 7)
!163 = !DILocation(line: 202, column: 35, scope: !162)
!164 = !DILocation(line: 202, column: 7, scope: !155)
!165 = !DILocation(line: 203, column: 5, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !96, line: 202, column: 62)
!167 = !DILocation(line: 205, column: 3, scope: !168)
!168 = distinct !DILexicalBlock(scope: !169, file: !96, line: 206, column: 3)
!169 = distinct !DILexicalBlock(scope: !156, file: !96, line: 205, column: 3)
!170 = !DILocation(line: 206, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !169, file: !96, line: 207, column: 3)
!172 = !DILocalVariable(name: "tmp", scope: !111, file: !96, line: 201, type: !46)
!173 = !DILocation(line: 206, column: 18, scope: !174)
!174 = distinct !DILexicalBlock(scope: !169, file: !96, line: 208, column: 3)
!175 = !DILocation(line: 206, column: 3, scope: !174)
!176 = !DILocation(line: 207, column: 19, scope: !177)
!177 = distinct !DILexicalBlock(scope: !169, file: !96, line: 208, column: 3)
!178 = !DILocation(line: 207, column: 13, scope: !177)
!179 = !DILocalVariable(name: "tmp___0", scope: !111, file: !96, line: 202, type: !8)
!180 = !DILocalVariable(name: "n", scope: !111, file: !96, line: 200, type: !18)
!181 = !DILocation(line: 208, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !156, file: !96, line: 208, column: 7)
!183 = !DILocation(line: 208, column: 7, scope: !156)
!184 = !DILocation(line: 209, column: 5, scope: !185)
!185 = distinct !DILexicalBlock(scope: !182, file: !96, line: 208, column: 15)
!186 = !DILocation(line: 208, column: 48, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !96, line: 212, column: 5)
!188 = distinct !DILexicalBlock(scope: !189, file: !96, line: 211, column: 5)
!189 = distinct !DILexicalBlock(scope: !182, file: !96, line: 210, column: 10)
!190 = !DILocation(line: 208, column: 39, scope: !187)
!191 = !DILocation(line: 208, column: 15, scope: !187)
!192 = !DILocalVariable(name: "tmp___1", scope: !111, file: !96, line: 203, type: !18)
!193 = !DILocation(line: 208, column: 9, scope: !194)
!194 = distinct !DILexicalBlock(scope: !189, file: !96, line: 208, column: 9)
!195 = !DILocation(line: 208, column: 9, scope: !189)
!196 = !DILocation(line: 209, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !194, file: !96, line: 208, column: 18)
!198 = !DILocation(line: 211, column: 3, scope: !156)
!199 = !DILocation(line: 0, scope: !156)
!200 = !DILocation(line: 213, column: 1, scope: !111)
!201 = distinct !DISubprogram(name: "id3_appendtag", scope: !96, file: !96, line: 214, type: !112, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!202 = !DILocalVariable(name: "fout", arg: 1, scope: !201, file: !96, line: 214, type: !11)
!203 = !DILocation(line: 0, scope: !201)
!204 = !DILocalVariable(name: "id3tag", arg: 2, scope: !201, file: !96, line: 214, type: !114)
!205 = !DILocation(line: 217, column: 38, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !96, line: 217, column: 7)
!207 = distinct !DILexicalBlock(scope: !201, file: !96, line: 218, column: 3)
!208 = !DILocation(line: 217, column: 35, scope: !206)
!209 = !DILocation(line: 217, column: 7, scope: !207)
!210 = !DILocation(line: 218, column: 5, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !96, line: 217, column: 60)
!212 = !DILocation(line: 217, column: 38, scope: !213)
!213 = distinct !DILexicalBlock(scope: !206, file: !96, line: 217, column: 7)
!214 = !DILocation(line: 217, column: 35, scope: !213)
!215 = !DILocation(line: 217, column: 7, scope: !206)
!216 = !DILocation(line: 218, column: 5, scope: !217)
!217 = distinct !DILexicalBlock(scope: !213, file: !96, line: 217, column: 62)
!218 = !DILocation(line: 220, column: 3, scope: !219)
!219 = distinct !DILexicalBlock(scope: !220, file: !96, line: 221, column: 3)
!220 = distinct !DILexicalBlock(scope: !207, file: !96, line: 220, column: 3)
!221 = !DILocation(line: 222, column: 10, scope: !222)
!222 = distinct !DILexicalBlock(scope: !220, file: !96, line: 222, column: 3)
!223 = !DILocation(line: 222, column: 3, scope: !222)
!224 = !DILocation(line: 224, column: 3, scope: !207)
!225 = !DILocation(line: 0, scope: !207)
!226 = !DILocation(line: 226, column: 1, scope: !201)
!227 = distinct !DISubprogram(name: "id3_replacetag", scope: !96, file: !96, line: 227, type: !112, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!228 = !DILocalVariable(name: "fout", arg: 1, scope: !227, file: !96, line: 227, type: !11)
!229 = !DILocation(line: 0, scope: !227)
!230 = !DILocalVariable(name: "id3tag", arg: 2, scope: !227, file: !96, line: 227, type: !114)
!231 = !DILocation(line: 230, column: 38, scope: !232)
!232 = distinct !DILexicalBlock(scope: !233, file: !96, line: 230, column: 7)
!233 = distinct !DILexicalBlock(scope: !227, file: !96, line: 231, column: 3)
!234 = !DILocation(line: 230, column: 35, scope: !232)
!235 = !DILocation(line: 230, column: 7, scope: !233)
!236 = !DILocation(line: 231, column: 5, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !96, line: 230, column: 60)
!238 = !DILocation(line: 230, column: 38, scope: !239)
!239 = distinct !DILexicalBlock(scope: !232, file: !96, line: 230, column: 7)
!240 = !DILocation(line: 230, column: 35, scope: !239)
!241 = !DILocation(line: 230, column: 7, scope: !232)
!242 = !DILocation(line: 231, column: 5, scope: !243)
!243 = distinct !DILexicalBlock(scope: !239, file: !96, line: 230, column: 62)
!244 = !DILocation(line: 233, column: 3, scope: !245)
!245 = distinct !DILexicalBlock(scope: !246, file: !96, line: 234, column: 3)
!246 = distinct !DILexicalBlock(scope: !233, file: !96, line: 233, column: 3)
!247 = !DILocation(line: 234, column: 9, scope: !248)
!248 = distinct !DILexicalBlock(scope: !246, file: !96, line: 235, column: 3)
!249 = !DILocalVariable(name: "tmp", scope: !227, file: !96, line: 229, type: !46)
!250 = !DILocation(line: 234, column: 19, scope: !251)
!251 = distinct !DILexicalBlock(scope: !246, file: !96, line: 236, column: 3)
!252 = !DILocation(line: 234, column: 3, scope: !251)
!253 = !DILocation(line: 236, column: 10, scope: !254)
!254 = distinct !DILexicalBlock(scope: !246, file: !96, line: 236, column: 3)
!255 = !DILocation(line: 236, column: 3, scope: !254)
!256 = !DILocation(line: 238, column: 3, scope: !233)
!257 = !DILocation(line: 0, scope: !233)
!258 = !DILocation(line: 240, column: 1, scope: !227)
!259 = distinct !DISubprogram(name: "id3_cleartag", scope: !96, file: !96, line: 241, type: !260, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!260 = !DISubroutineType(types: !261)
!261 = !{null, !114}
!262 = !DILocalVariable(name: "id3tag", arg: 1, scope: !259, file: !96, line: 241, type: !114)
!263 = !DILocation(line: 0, scope: !259)
!264 = !DILocalVariable(name: "__cil_tmp2", scope: !259, file: !96, line: 243, type: !20)
!265 = !DILocation(line: 243, column: 9, scope: !259)
!266 = !DILocation(line: 244, column: 38, scope: !267)
!267 = distinct !DILexicalBlock(scope: !268, file: !96, line: 244, column: 7)
!268 = distinct !DILexicalBlock(scope: !259, file: !96, line: 245, column: 3)
!269 = !DILocation(line: 244, column: 35, scope: !267)
!270 = !DILocation(line: 244, column: 7, scope: !268)
!271 = !DILocation(line: 245, column: 5, scope: !272)
!272 = distinct !DILexicalBlock(scope: !267, file: !96, line: 244, column: 62)
!273 = !DILocation(line: 247, column: 10, scope: !274)
!274 = distinct !DILexicalBlock(scope: !275, file: !96, line: 248, column: 3)
!275 = distinct !DILexicalBlock(scope: !268, file: !96, line: 247, column: 3)
!276 = !DILocation(line: 247, column: 3, scope: !274)
!277 = !DILocation(line: 248, column: 45, scope: !278)
!278 = distinct !DILexicalBlock(scope: !275, file: !96, line: 249, column: 3)
!279 = !DILocation(line: 248, column: 36, scope: !278)
!280 = !DILocation(line: 248, column: 3, scope: !278)
!281 = !DILocation(line: 249, column: 11, scope: !275)
!282 = !DILocation(line: 249, column: 17, scope: !275)
!283 = !DILocation(line: 250, column: 3, scope: !268)
!284 = !DILocation(line: 252, column: 1, scope: !259)
!285 = distinct !DISubprogram(name: "id3_findstyle", scope: !96, file: !96, line: 252, type: !286, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!286 = !DISubroutineType(types: !287)
!287 = !{!20, !18}
!288 = !DILocalVariable(name: "styleid", arg: 1, scope: !285, file: !96, line: 252, type: !18)
!289 = !DILocation(line: 0, scope: !285)
!290 = !DILocalVariable(name: "__cil_tmp3", scope: !285, file: !96, line: 255, type: !20)
!291 = !DILocation(line: 255, column: 9, scope: !285)
!292 = !DILocalVariable(name: "ctr", scope: !285, file: !96, line: 254, type: !18)
!293 = !DILocation(line: 256, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !96, line: 258, column: 3)
!295 = distinct !DILexicalBlock(scope: !296, file: !96, line: 257, column: 3)
!296 = distinct !DILexicalBlock(scope: !285, file: !96, line: 257, column: 3)
!297 = !DILocation(line: 0, scope: !296)
!298 = !DILocation(line: 256, column: 13, scope: !294)
!299 = !DILocation(line: 256, column: 28, scope: !300)
!300 = distinct !DILexicalBlock(scope: !301, file: !96, line: 256, column: 9)
!301 = distinct !DILexicalBlock(scope: !294, file: !96, line: 256, column: 13)
!302 = !DILocation(line: 256, column: 44, scope: !300)
!303 = !DILocation(line: 256, column: 12, scope: !300)
!304 = !DILocation(line: 256, column: 49, scope: !300)
!305 = !DILocation(line: 256, column: 9, scope: !301)
!306 = !DILocation(line: 256, column: 7, scope: !307)
!307 = distinct !DILexicalBlock(scope: !300, file: !96, line: 256, column: 82)
!308 = !DILocation(line: 257, column: 15, scope: !309)
!309 = distinct !DILexicalBlock(scope: !301, file: !96, line: 257, column: 9)
!310 = !DILocation(line: 257, column: 31, scope: !309)
!311 = !DILocation(line: 257, column: 9, scope: !309)
!312 = !DILocation(line: 257, column: 39, scope: !309)
!313 = !DILocation(line: 257, column: 9, scope: !301)
!314 = !DILocation(line: 258, column: 15, scope: !315)
!315 = distinct !DILexicalBlock(scope: !309, file: !96, line: 257, column: 51)
!316 = !DILocation(line: 258, column: 31, scope: !315)
!317 = !DILocation(line: 258, column: 7, scope: !315)
!318 = distinct !{!318, !293, !319}
!319 = !DILocation(line: 257, column: 3, scope: !294)
!320 = !DILocation(line: 259, column: 3, scope: !294)
!321 = !DILocation(line: 261, column: 3, scope: !296)
!322 = !DILocation(line: 263, column: 1, scope: !285)
!323 = distinct !DISubprogram(name: "showblurb", scope: !92, file: !92, line: 86, type: !324, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!324 = !DISubroutineType(types: !325)
!325 = !{null}
!326 = !DILocalVariable(name: "__cil_tmp1", scope: !323, file: !92, line: 88, type: !20)
!327 = !DILocation(line: 88, column: 9, scope: !323)
!328 = !DILocalVariable(name: "__cil_tmp2", scope: !323, file: !92, line: 89, type: !20)
!329 = !DILocation(line: 89, column: 9, scope: !323)
!330 = !DILocalVariable(name: "__cil_tmp3", scope: !323, file: !92, line: 90, type: !20)
!331 = !DILocation(line: 90, column: 9, scope: !323)
!332 = !DILocalVariable(name: "__cil_tmp4", scope: !323, file: !92, line: 91, type: !20)
!333 = !DILocation(line: 91, column: 9, scope: !323)
!334 = !DILocalVariable(name: "__cil_tmp5", scope: !323, file: !92, line: 92, type: !20)
!335 = !DILocation(line: 92, column: 9, scope: !323)
!336 = !DILocalVariable(name: "__cil_tmp6", scope: !323, file: !92, line: 93, type: !20)
!337 = !DILocation(line: 93, column: 9, scope: !323)
!338 = !DILocation(line: 89, column: 3, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !92, line: 97, column: 3)
!340 = distinct !DILexicalBlock(scope: !341, file: !92, line: 96, column: 3)
!341 = distinct !DILexicalBlock(scope: !323, file: !92, line: 95, column: 3)
!342 = !DILocation(line: 90, column: 3, scope: !343)
!343 = distinct !DILexicalBlock(scope: !340, file: !92, line: 91, column: 3)
!344 = !DILocation(line: 91, column: 3, scope: !345)
!345 = distinct !DILexicalBlock(scope: !340, file: !92, line: 92, column: 3)
!346 = !DILocation(line: 93, column: 3, scope: !347)
!347 = distinct !DILexicalBlock(scope: !340, file: !92, line: 93, column: 3)
!348 = !DILocation(line: 95, column: 3, scope: !349)
!349 = distinct !DILexicalBlock(scope: !340, file: !92, line: 95, column: 3)
!350 = !DILocation(line: 103, column: 3, scope: !341)
!351 = distinct !DISubprogram(name: "showusage", scope: !92, file: !92, line: 105, type: !352, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!352 = !DISubroutineType(types: !353)
!353 = !{null, !18, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!355 = !DILocalVariable(name: "argc", arg: 1, scope: !351, file: !92, line: 105, type: !18)
!356 = !DILocation(line: 0, scope: !351)
!357 = !DILocalVariable(name: "argv", arg: 2, scope: !351, file: !92, line: 105, type: !354)
!358 = !DILocalVariable(name: "__cil_tmp3", scope: !351, file: !92, line: 107, type: !20)
!359 = !DILocation(line: 107, column: 9, scope: !351)
!360 = !DILocalVariable(name: "__cil_tmp4", scope: !351, file: !92, line: 108, type: !20)
!361 = !DILocation(line: 108, column: 9, scope: !351)
!362 = !DILocalVariable(name: "__cil_tmp5", scope: !351, file: !92, line: 109, type: !20)
!363 = !DILocation(line: 109, column: 9, scope: !351)
!364 = !DILocalVariable(name: "__cil_tmp6", scope: !351, file: !92, line: 110, type: !20)
!365 = !DILocation(line: 110, column: 9, scope: !351)
!366 = !DILocalVariable(name: "__cil_tmp7", scope: !351, file: !92, line: 111, type: !20)
!367 = !DILocation(line: 111, column: 9, scope: !351)
!368 = !DILocalVariable(name: "__cil_tmp8", scope: !351, file: !92, line: 112, type: !20)
!369 = !DILocation(line: 112, column: 9, scope: !351)
!370 = !DILocalVariable(name: "__cil_tmp9", scope: !351, file: !92, line: 113, type: !20)
!371 = !DILocation(line: 113, column: 9, scope: !351)
!372 = !DILocalVariable(name: "__cil_tmp10", scope: !351, file: !92, line: 114, type: !20)
!373 = !DILocation(line: 114, column: 9, scope: !351)
!374 = !DILocalVariable(name: "__cil_tmp11", scope: !351, file: !92, line: 115, type: !20)
!375 = !DILocation(line: 115, column: 9, scope: !351)
!376 = !DILocalVariable(name: "__cil_tmp12", scope: !351, file: !92, line: 116, type: !20)
!377 = !DILocation(line: 116, column: 9, scope: !351)
!378 = !DILocalVariable(name: "__cil_tmp13", scope: !351, file: !92, line: 117, type: !20)
!379 = !DILocation(line: 117, column: 9, scope: !351)
!380 = !DILocalVariable(name: "__cil_tmp14", scope: !351, file: !92, line: 118, type: !20)
!381 = !DILocation(line: 118, column: 9, scope: !351)
!382 = !DILocalVariable(name: "__cil_tmp15", scope: !351, file: !92, line: 119, type: !20)
!383 = !DILocation(line: 119, column: 9, scope: !351)
!384 = !DILocalVariable(name: "__cil_tmp16", scope: !351, file: !92, line: 120, type: !20)
!385 = !DILocation(line: 120, column: 9, scope: !351)
!386 = !DILocation(line: 108, column: 3, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !92, line: 124, column: 3)
!388 = distinct !DILexicalBlock(scope: !389, file: !92, line: 123, column: 3)
!389 = distinct !DILexicalBlock(scope: !351, file: !92, line: 122, column: 3)
!390 = !DILocation(line: 109, column: 81, scope: !391)
!391 = distinct !DILexicalBlock(scope: !388, file: !92, line: 110, column: 3)
!392 = !DILocation(line: 109, column: 74, scope: !391)
!393 = !DILocation(line: 109, column: 3, scope: !391)
!394 = !DILocation(line: 110, column: 3, scope: !395)
!395 = distinct !DILexicalBlock(scope: !388, file: !92, line: 111, column: 3)
!396 = !DILocation(line: 111, column: 3, scope: !397)
!397 = distinct !DILexicalBlock(scope: !388, file: !92, line: 112, column: 3)
!398 = !DILocation(line: 112, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !388, file: !92, line: 113, column: 3)
!400 = !DILocation(line: 113, column: 3, scope: !401)
!401 = distinct !DILexicalBlock(scope: !388, file: !92, line: 114, column: 3)
!402 = !DILocation(line: 114, column: 3, scope: !403)
!403 = distinct !DILexicalBlock(scope: !388, file: !92, line: 115, column: 3)
!404 = !DILocation(line: 115, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !388, file: !92, line: 116, column: 3)
!406 = !DILocation(line: 116, column: 3, scope: !407)
!407 = distinct !DILexicalBlock(scope: !388, file: !92, line: 117, column: 3)
!408 = !DILocation(line: 117, column: 3, scope: !409)
!409 = distinct !DILexicalBlock(scope: !388, file: !92, line: 118, column: 3)
!410 = !DILocation(line: 118, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !388, file: !92, line: 119, column: 3)
!412 = !DILocation(line: 119, column: 3, scope: !413)
!413 = distinct !DILexicalBlock(scope: !388, file: !92, line: 120, column: 3)
!414 = !DILocation(line: 120, column: 3, scope: !415)
!415 = distinct !DILexicalBlock(scope: !388, file: !92, line: 121, column: 3)
!416 = !DILocation(line: 121, column: 3, scope: !417)
!417 = distinct !DILexicalBlock(scope: !388, file: !92, line: 122, column: 3)
!418 = !DILocation(line: 122, column: 3, scope: !389)
!419 = distinct !DISubprogram(name: "main", scope: !92, file: !92, line: 124, type: !420, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!420 = !DISubroutineType(types: !421)
!421 = !{!18, !18, !354}
!422 = !DILocalVariable(name: "argc", arg: 1, scope: !419, file: !92, line: 124, type: !18)
!423 = !DILocation(line: 0, scope: !419)
!424 = !DILocalVariable(name: "argv", arg: 2, scope: !419, file: !92, line: 124, type: !354)
!425 = !DILocalVariable(name: "mytag", scope: !419, file: !92, line: 134, type: !115)
!426 = !DILocation(line: 134, column: 12, scope: !419)
!427 = !DILocalVariable(name: "strbuf", scope: !419, file: !92, line: 137, type: !428)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 248, elements: !429)
!429 = !{!430}
!430 = !DISubrange(count: 31)
!431 = !DILocation(line: 137, column: 8, scope: !419)
!432 = !DILocalVariable(name: "opt_index", scope: !419, file: !92, line: 138, type: !18)
!433 = !DILocation(line: 138, column: 7, scope: !419)
!434 = !DILocalVariable(name: "__cil_tmp23", scope: !419, file: !92, line: 146, type: !7)
!435 = !DILocation(line: 146, column: 9, scope: !419)
!436 = !DILocalVariable(name: "__cil_tmp24", scope: !419, file: !92, line: 147, type: !20)
!437 = !DILocation(line: 147, column: 9, scope: !419)
!438 = !DILocalVariable(name: "__cil_tmp25", scope: !419, file: !92, line: 148, type: !20)
!439 = !DILocation(line: 148, column: 9, scope: !419)
!440 = !DILocalVariable(name: "__cil_tmp26", scope: !419, file: !92, line: 149, type: !20)
!441 = !DILocation(line: 149, column: 9, scope: !419)
!442 = !DILocalVariable(name: "__cil_tmp27", scope: !419, file: !92, line: 150, type: !20)
!443 = !DILocation(line: 150, column: 9, scope: !419)
!444 = !DILocalVariable(name: "__cil_tmp28", scope: !419, file: !92, line: 151, type: !20)
!445 = !DILocation(line: 151, column: 9, scope: !419)
!446 = !DILocalVariable(name: "__cil_tmp29", scope: !419, file: !92, line: 152, type: !20)
!447 = !DILocation(line: 152, column: 9, scope: !419)
!448 = !DILocalVariable(name: "__cil_tmp30", scope: !419, file: !92, line: 153, type: !20)
!449 = !DILocation(line: 153, column: 9, scope: !419)
!450 = !DILocalVariable(name: "__cil_tmp31", scope: !419, file: !92, line: 154, type: !20)
!451 = !DILocation(line: 154, column: 9, scope: !419)
!452 = !DILocalVariable(name: "__cil_tmp32", scope: !419, file: !92, line: 155, type: !20)
!453 = !DILocation(line: 155, column: 9, scope: !419)
!454 = !DILocalVariable(name: "__cil_tmp33", scope: !419, file: !92, line: 156, type: !20)
!455 = !DILocation(line: 156, column: 9, scope: !419)
!456 = !DILocalVariable(name: "__cil_tmp34", scope: !419, file: !92, line: 157, type: !20)
!457 = !DILocation(line: 157, column: 9, scope: !419)
!458 = !DILocalVariable(name: "__cil_tmp35", scope: !419, file: !92, line: 158, type: !20)
!459 = !DILocation(line: 158, column: 9, scope: !419)
!460 = !DILocalVariable(name: "__cil_tmp36", scope: !419, file: !92, line: 159, type: !20)
!461 = !DILocation(line: 159, column: 9, scope: !419)
!462 = !DILocalVariable(name: "__cil_tmp37", scope: !419, file: !92, line: 160, type: !20)
!463 = !DILocation(line: 160, column: 9, scope: !419)
!464 = !DILocalVariable(name: "__cil_tmp38", scope: !419, file: !92, line: 161, type: !20)
!465 = !DILocation(line: 161, column: 9, scope: !419)
!466 = !DILocalVariable(name: "__cil_tmp39", scope: !419, file: !92, line: 162, type: !20)
!467 = !DILocation(line: 162, column: 9, scope: !419)
!468 = !DILocalVariable(name: "__cil_tmp40", scope: !419, file: !92, line: 163, type: !20)
!469 = !DILocation(line: 163, column: 9, scope: !419)
!470 = !DILocalVariable(name: "__cil_tmp41", scope: !419, file: !92, line: 164, type: !20)
!471 = !DILocation(line: 164, column: 9, scope: !419)
!472 = !DILocalVariable(name: "__cil_tmp42", scope: !419, file: !92, line: 165, type: !20)
!473 = !DILocation(line: 165, column: 9, scope: !419)
!474 = !DILocalVariable(name: "__cil_tmp43", scope: !419, file: !92, line: 166, type: !20)
!475 = !DILocation(line: 166, column: 9, scope: !419)
!476 = !DILocalVariable(name: "__cil_tmp44", scope: !419, file: !92, line: 167, type: !20)
!477 = !DILocation(line: 167, column: 9, scope: !419)
!478 = !DILocalVariable(name: "__cil_tmp45", scope: !419, file: !92, line: 168, type: !20)
!479 = !DILocation(line: 168, column: 9, scope: !419)
!480 = !DILocalVariable(name: "__cil_tmp46", scope: !419, file: !92, line: 169, type: !20)
!481 = !DILocation(line: 169, column: 9, scope: !419)
!482 = !DILocalVariable(name: "__cil_tmp47", scope: !419, file: !92, line: 170, type: !20)
!483 = !DILocation(line: 170, column: 9, scope: !419)
!484 = !DILocalVariable(name: "__cil_tmp48", scope: !419, file: !92, line: 171, type: !20)
!485 = !DILocation(line: 171, column: 9, scope: !419)
!486 = !DILocalVariable(name: "__cil_tmp49", scope: !419, file: !92, line: 172, type: !20)
!487 = !DILocation(line: 172, column: 9, scope: !419)
!488 = !DILocalVariable(name: "__cil_tmp50", scope: !419, file: !92, line: 173, type: !20)
!489 = !DILocation(line: 173, column: 9, scope: !419)
!490 = !DILocalVariable(name: "__cil_tmp51", scope: !419, file: !92, line: 174, type: !20)
!491 = !DILocation(line: 174, column: 9, scope: !419)
!492 = !DILocalVariable(name: "__cil_tmp52", scope: !419, file: !92, line: 175, type: !20)
!493 = !DILocation(line: 175, column: 9, scope: !419)
!494 = !DILocalVariable(name: "__cil_tmp53", scope: !419, file: !92, line: 176, type: !20)
!495 = !DILocation(line: 176, column: 9, scope: !419)
!496 = !DILocalVariable(name: "__cil_tmp54", scope: !419, file: !92, line: 177, type: !20)
!497 = !DILocation(line: 177, column: 9, scope: !419)
!498 = !DILocalVariable(name: "__cil_tmp55", scope: !419, file: !92, line: 178, type: !20)
!499 = !DILocation(line: 178, column: 9, scope: !419)
!500 = !DILocalVariable(name: "__cil_tmp56", scope: !419, file: !92, line: 179, type: !20)
!501 = !DILocation(line: 179, column: 9, scope: !419)
!502 = !DILocalVariable(name: "__cil_tmp57", scope: !419, file: !92, line: 180, type: !20)
!503 = !DILocation(line: 180, column: 9, scope: !419)
!504 = !DILocalVariable(name: "newtitle", scope: !419, file: !92, line: 127, type: !20)
!505 = !DILocalVariable(name: "newalbum", scope: !419, file: !92, line: 128, type: !20)
!506 = !DILocalVariable(name: "newartist", scope: !419, file: !92, line: 129, type: !20)
!507 = !DILocalVariable(name: "newnote", scope: !419, file: !92, line: 130, type: !20)
!508 = !DILocalVariable(name: "newyear", scope: !419, file: !92, line: 131, type: !46)
!509 = !DILocalVariable(name: "newgenre", scope: !419, file: !92, line: 132, type: !46)
!510 = !DILocalVariable(name: "newtrack", scope: !419, file: !92, line: 133, type: !46)
!511 = !DILocalVariable(name: "fptr", scope: !419, file: !92, line: 135, type: !11)
!512 = !DILocalVariable(name: "newtag", scope: !419, file: !92, line: 136, type: !18)
!513 = !DILocation(line: 139, column: 13, scope: !514)
!514 = distinct !DILexicalBlock(scope: !515, file: !92, line: 183, column: 3)
!515 = distinct !DILexicalBlock(scope: !419, file: !92, line: 182, column: 3)
!516 = !DILocation(line: 142, column: 12, scope: !517)
!517 = distinct !DILexicalBlock(scope: !514, file: !92, line: 140, column: 3)
!518 = !DILocalVariable(name: "retval", scope: !419, file: !92, line: 126, type: !18)
!519 = !DILocation(line: 144, column: 3, scope: !520)
!520 = distinct !DILexicalBlock(scope: !521, file: !92, line: 147, column: 3)
!521 = distinct !DILexicalBlock(scope: !515, file: !92, line: 146, column: 3)
!522 = !DILocation(line: 134, column: 12, scope: !514)
!523 = !DILocation(line: 133, column: 12, scope: !514)
!524 = !DILocation(line: 132, column: 11, scope: !514)
!525 = !DILocation(line: 131, column: 11, scope: !514)
!526 = !DILocation(line: 130, column: 13, scope: !514)
!527 = !DILocation(line: 129, column: 12, scope: !514)
!528 = !DILocation(line: 0, scope: !515)
!529 = !DILocation(line: 144, column: 13, scope: !520)
!530 = !DILocation(line: 144, column: 19, scope: !531)
!531 = distinct !DILexicalBlock(scope: !532, file: !92, line: 144, column: 9)
!532 = distinct !DILexicalBlock(scope: !520, file: !92, line: 144, column: 13)
!533 = !DILocation(line: 144, column: 9, scope: !532)
!534 = !DILocation(line: 144, column: 7, scope: !535)
!535 = distinct !DILexicalBlock(scope: !531, file: !92, line: 144, column: 27)
!536 = !DILocation(line: 146, column: 16, scope: !537)
!537 = distinct !DILexicalBlock(scope: !538, file: !92, line: 146, column: 9)
!538 = distinct !DILexicalBlock(scope: !532, file: !92, line: 146, column: 5)
!539 = !DILocation(line: 146, column: 9, scope: !538)
!540 = !DILocation(line: 146, column: 7, scope: !541)
!541 = distinct !DILexicalBlock(scope: !537, file: !92, line: 146, column: 24)
!542 = !DILocation(line: 154, column: 16, scope: !543)
!543 = distinct !DILexicalBlock(scope: !538, file: !92, line: 154, column: 9)
!544 = !DILocation(line: 154, column: 9, scope: !538)
!545 = !DILocation(line: 154, column: 7, scope: !546)
!546 = distinct !DILexicalBlock(scope: !543, file: !92, line: 154, column: 23)
!547 = !DILocation(line: 162, column: 16, scope: !548)
!548 = distinct !DILexicalBlock(scope: !538, file: !92, line: 162, column: 9)
!549 = !DILocation(line: 162, column: 9, scope: !538)
!550 = !DILocation(line: 162, column: 7, scope: !551)
!551 = distinct !DILexicalBlock(scope: !548, file: !92, line: 162, column: 24)
!552 = !DILocation(line: 170, column: 16, scope: !553)
!553 = distinct !DILexicalBlock(scope: !538, file: !92, line: 170, column: 9)
!554 = !DILocation(line: 170, column: 9, scope: !538)
!555 = !DILocation(line: 170, column: 7, scope: !556)
!556 = distinct !DILexicalBlock(scope: !553, file: !92, line: 170, column: 24)
!557 = !DILocation(line: 178, column: 16, scope: !558)
!558 = distinct !DILexicalBlock(scope: !538, file: !92, line: 178, column: 9)
!559 = !DILocation(line: 178, column: 9, scope: !538)
!560 = !DILocation(line: 178, column: 7, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !92, line: 178, column: 24)
!562 = !DILocation(line: 186, column: 16, scope: !563)
!563 = distinct !DILexicalBlock(scope: !538, file: !92, line: 186, column: 9)
!564 = !DILocation(line: 186, column: 9, scope: !538)
!565 = !DILocation(line: 186, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !92, line: 186, column: 24)
!567 = !DILocation(line: 194, column: 16, scope: !568)
!568 = distinct !DILexicalBlock(scope: !538, file: !92, line: 194, column: 9)
!569 = !DILocation(line: 194, column: 9, scope: !538)
!570 = !DILocation(line: 194, column: 7, scope: !571)
!571 = distinct !DILexicalBlock(scope: !568, file: !92, line: 194, column: 23)
!572 = !DILocation(line: 202, column: 16, scope: !573)
!573 = distinct !DILexicalBlock(scope: !538, file: !92, line: 202, column: 9)
!574 = !DILocation(line: 202, column: 9, scope: !538)
!575 = !DILocation(line: 202, column: 7, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !92, line: 202, column: 23)
!577 = !DILocation(line: 218, column: 16, scope: !578)
!578 = distinct !DILexicalBlock(scope: !538, file: !92, line: 218, column: 9)
!579 = !DILocation(line: 218, column: 9, scope: !538)
!580 = !DILocation(line: 218, column: 7, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !92, line: 218, column: 24)
!582 = !DILocation(line: 228, column: 16, scope: !583)
!583 = distinct !DILexicalBlock(scope: !538, file: !92, line: 228, column: 9)
!584 = !DILocation(line: 228, column: 9, scope: !538)
!585 = !DILocation(line: 228, column: 7, scope: !586)
!586 = distinct !DILexicalBlock(scope: !583, file: !92, line: 228, column: 24)
!587 = !DILocation(line: 232, column: 16, scope: !588)
!588 = distinct !DILexicalBlock(scope: !538, file: !92, line: 232, column: 9)
!589 = !DILocation(line: 232, column: 9, scope: !538)
!590 = !DILocation(line: 232, column: 7, scope: !591)
!591 = distinct !DILexicalBlock(scope: !588, file: !92, line: 232, column: 24)
!592 = !DILocation(line: 237, column: 16, scope: !593)
!593 = distinct !DILexicalBlock(scope: !538, file: !92, line: 237, column: 9)
!594 = !DILocation(line: 237, column: 9, scope: !538)
!595 = !DILocation(line: 237, column: 7, scope: !596)
!596 = distinct !DILexicalBlock(scope: !593, file: !92, line: 237, column: 23)
!597 = !DILocation(line: 239, column: 5, scope: !538)
!598 = !DILocation(line: 147, column: 40, scope: !599)
!599 = distinct !DILexicalBlock(scope: !538, file: !92, line: 147, column: 9)
!600 = !DILocation(line: 147, column: 37, scope: !599)
!601 = !DILocation(line: 147, column: 9, scope: !538)
!602 = !DILocation(line: 148, column: 40, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !92, line: 149, column: 7)
!604 = distinct !DILexicalBlock(scope: !605, file: !92, line: 148, column: 7)
!605 = distinct !DILexicalBlock(scope: !599, file: !92, line: 147, column: 66)
!606 = !DILocation(line: 149, column: 22, scope: !603)
!607 = !DILocation(line: 149, column: 15, scope: !603)
!608 = !DILocation(line: 148, column: 7, scope: !603)
!609 = !DILocation(line: 150, column: 7, scope: !610)
!610 = distinct !DILexicalBlock(scope: !604, file: !92, line: 151, column: 7)
!611 = !DILocation(line: 152, column: 39, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !92, line: 155, column: 5)
!613 = distinct !DILexicalBlock(scope: !538, file: !92, line: 154, column: 5)
!614 = !DILocation(line: 152, column: 16, scope: !612)
!615 = !DILocation(line: 153, column: 5, scope: !538)
!616 = !DILocation(line: 155, column: 40, scope: !617)
!617 = distinct !DILexicalBlock(scope: !538, file: !92, line: 155, column: 9)
!618 = !DILocation(line: 155, column: 37, scope: !617)
!619 = !DILocation(line: 155, column: 9, scope: !538)
!620 = !DILocation(line: 156, column: 40, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !92, line: 157, column: 7)
!622 = distinct !DILexicalBlock(scope: !623, file: !92, line: 156, column: 7)
!623 = distinct !DILexicalBlock(scope: !617, file: !92, line: 155, column: 66)
!624 = !DILocation(line: 157, column: 22, scope: !621)
!625 = !DILocation(line: 157, column: 15, scope: !621)
!626 = !DILocation(line: 156, column: 7, scope: !621)
!627 = !DILocation(line: 158, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !622, file: !92, line: 159, column: 7)
!629 = !DILocation(line: 160, column: 39, scope: !630)
!630 = distinct !DILexicalBlock(scope: !631, file: !92, line: 163, column: 5)
!631 = distinct !DILexicalBlock(scope: !538, file: !92, line: 162, column: 5)
!632 = !DILocation(line: 160, column: 16, scope: !630)
!633 = !DILocation(line: 161, column: 5, scope: !538)
!634 = !DILocation(line: 163, column: 40, scope: !635)
!635 = distinct !DILexicalBlock(scope: !538, file: !92, line: 163, column: 9)
!636 = !DILocation(line: 163, column: 37, scope: !635)
!637 = !DILocation(line: 163, column: 9, scope: !538)
!638 = !DILocation(line: 164, column: 40, scope: !639)
!639 = distinct !DILexicalBlock(scope: !640, file: !92, line: 165, column: 7)
!640 = distinct !DILexicalBlock(scope: !641, file: !92, line: 164, column: 7)
!641 = distinct !DILexicalBlock(scope: !635, file: !92, line: 163, column: 67)
!642 = !DILocation(line: 165, column: 22, scope: !639)
!643 = !DILocation(line: 165, column: 15, scope: !639)
!644 = !DILocation(line: 164, column: 7, scope: !639)
!645 = !DILocation(line: 166, column: 7, scope: !646)
!646 = distinct !DILexicalBlock(scope: !640, file: !92, line: 167, column: 7)
!647 = !DILocation(line: 168, column: 40, scope: !648)
!648 = distinct !DILexicalBlock(scope: !649, file: !92, line: 171, column: 5)
!649 = distinct !DILexicalBlock(scope: !538, file: !92, line: 170, column: 5)
!650 = !DILocation(line: 168, column: 17, scope: !648)
!651 = !DILocation(line: 169, column: 5, scope: !538)
!652 = !DILocation(line: 171, column: 17, scope: !653)
!653 = distinct !DILexicalBlock(scope: !538, file: !92, line: 171, column: 9)
!654 = !DILocation(line: 171, column: 9, scope: !538)
!655 = !DILocation(line: 172, column: 40, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !92, line: 173, column: 7)
!657 = distinct !DILexicalBlock(scope: !658, file: !92, line: 172, column: 7)
!658 = distinct !DILexicalBlock(scope: !653, file: !92, line: 171, column: 24)
!659 = !DILocation(line: 173, column: 22, scope: !656)
!660 = !DILocation(line: 173, column: 15, scope: !656)
!661 = !DILocation(line: 172, column: 7, scope: !656)
!662 = !DILocation(line: 174, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !657, file: !92, line: 175, column: 7)
!664 = !DILocation(line: 176, column: 32, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !92, line: 179, column: 5)
!666 = distinct !DILexicalBlock(scope: !538, file: !92, line: 178, column: 5)
!667 = !DILocation(line: 176, column: 11, scope: !665)
!668 = !DILocalVariable(name: "tmp", scope: !419, file: !92, line: 140, type: !18)
!669 = !DILocation(line: 176, column: 15, scope: !666)
!670 = !DILocation(line: 177, column: 5, scope: !538)
!671 = !DILocation(line: 179, column: 40, scope: !672)
!672 = distinct !DILexicalBlock(scope: !538, file: !92, line: 179, column: 9)
!673 = !DILocation(line: 179, column: 37, scope: !672)
!674 = !DILocation(line: 179, column: 9, scope: !538)
!675 = !DILocation(line: 180, column: 40, scope: !676)
!676 = distinct !DILexicalBlock(scope: !677, file: !92, line: 181, column: 7)
!677 = distinct !DILexicalBlock(scope: !678, file: !92, line: 180, column: 7)
!678 = distinct !DILexicalBlock(scope: !672, file: !92, line: 179, column: 65)
!679 = !DILocation(line: 181, column: 22, scope: !676)
!680 = !DILocation(line: 181, column: 15, scope: !676)
!681 = !DILocation(line: 180, column: 7, scope: !676)
!682 = !DILocation(line: 182, column: 7, scope: !683)
!683 = distinct !DILexicalBlock(scope: !677, file: !92, line: 183, column: 7)
!684 = !DILocation(line: 184, column: 38, scope: !685)
!685 = distinct !DILexicalBlock(scope: !686, file: !92, line: 187, column: 5)
!686 = distinct !DILexicalBlock(scope: !538, file: !92, line: 186, column: 5)
!687 = !DILocation(line: 184, column: 15, scope: !685)
!688 = !DILocation(line: 185, column: 5, scope: !538)
!689 = !DILocation(line: 187, column: 18, scope: !690)
!690 = distinct !DILexicalBlock(scope: !538, file: !92, line: 187, column: 9)
!691 = !DILocation(line: 187, column: 9, scope: !538)
!692 = !DILocation(line: 188, column: 40, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !92, line: 189, column: 7)
!694 = distinct !DILexicalBlock(scope: !695, file: !92, line: 188, column: 7)
!695 = distinct !DILexicalBlock(scope: !690, file: !92, line: 187, column: 25)
!696 = !DILocation(line: 189, column: 22, scope: !693)
!697 = !DILocation(line: 189, column: 15, scope: !693)
!698 = !DILocation(line: 188, column: 7, scope: !693)
!699 = !DILocation(line: 190, column: 7, scope: !700)
!700 = distinct !DILexicalBlock(scope: !694, file: !92, line: 191, column: 7)
!701 = !DILocation(line: 192, column: 36, scope: !702)
!702 = distinct !DILexicalBlock(scope: !703, file: !92, line: 195, column: 5)
!703 = distinct !DILexicalBlock(scope: !538, file: !92, line: 194, column: 5)
!704 = !DILocation(line: 192, column: 15, scope: !702)
!705 = !DILocalVariable(name: "tmp___0", scope: !419, file: !92, line: 141, type: !18)
!706 = !DILocation(line: 192, column: 16, scope: !703)
!707 = !DILocation(line: 193, column: 5, scope: !538)
!708 = !DILocation(line: 195, column: 18, scope: !709)
!709 = distinct !DILexicalBlock(scope: !538, file: !92, line: 195, column: 9)
!710 = !DILocation(line: 195, column: 9, scope: !538)
!711 = !DILocation(line: 196, column: 40, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !92, line: 197, column: 7)
!713 = distinct !DILexicalBlock(scope: !714, file: !92, line: 196, column: 7)
!714 = distinct !DILexicalBlock(scope: !709, file: !92, line: 195, column: 25)
!715 = !DILocation(line: 197, column: 22, scope: !712)
!716 = !DILocation(line: 197, column: 15, scope: !712)
!717 = !DILocation(line: 196, column: 7, scope: !712)
!718 = !DILocation(line: 198, column: 7, scope: !719)
!719 = distinct !DILexicalBlock(scope: !713, file: !92, line: 199, column: 7)
!720 = !DILocation(line: 200, column: 36, scope: !721)
!721 = distinct !DILexicalBlock(scope: !722, file: !92, line: 203, column: 5)
!722 = distinct !DILexicalBlock(scope: !538, file: !92, line: 202, column: 5)
!723 = !DILocation(line: 200, column: 15, scope: !721)
!724 = !DILocalVariable(name: "tmp___1", scope: !419, file: !92, line: 142, type: !18)
!725 = !DILocation(line: 200, column: 16, scope: !722)
!726 = !DILocation(line: 201, column: 5, scope: !538)
!727 = !DILocalVariable(name: "ctr", scope: !419, file: !92, line: 139, type: !18)
!728 = !DILocation(line: 203, column: 5, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !92, line: 205, column: 5)
!730 = distinct !DILexicalBlock(scope: !538, file: !92, line: 204, column: 5)
!731 = !DILocation(line: 0, scope: !538)
!732 = !DILocation(line: 203, column: 15, scope: !729)
!733 = !DILocation(line: 203, column: 30, scope: !734)
!734 = distinct !DILexicalBlock(scope: !735, file: !92, line: 203, column: 11)
!735 = distinct !DILexicalBlock(scope: !729, file: !92, line: 203, column: 15)
!736 = !DILocation(line: 203, column: 46, scope: !734)
!737 = !DILocation(line: 203, column: 14, scope: !734)
!738 = !DILocation(line: 203, column: 51, scope: !734)
!739 = !DILocation(line: 203, column: 11, scope: !735)
!740 = !DILocation(line: 203, column: 9, scope: !741)
!741 = distinct !DILexicalBlock(scope: !734, file: !92, line: 203, column: 84)
!742 = !DILocation(line: 204, column: 44, scope: !743)
!743 = distinct !DILexicalBlock(scope: !744, file: !92, line: 206, column: 7)
!744 = distinct !DILexicalBlock(scope: !735, file: !92, line: 205, column: 7)
!745 = !DILocation(line: 204, column: 68, scope: !743)
!746 = !DILocation(line: 204, column: 84, scope: !743)
!747 = !DILocation(line: 204, column: 17, scope: !743)
!748 = !DILocalVariable(name: "tmp___2", scope: !419, file: !92, line: 143, type: !18)
!749 = !DILocation(line: 204, column: 13, scope: !750)
!750 = distinct !DILexicalBlock(scope: !735, file: !92, line: 204, column: 11)
!751 = !DILocation(line: 204, column: 11, scope: !735)
!752 = !DILocation(line: 207, column: 9, scope: !753)
!753 = distinct !DILexicalBlock(scope: !750, file: !92, line: 204, column: 22)
!754 = distinct !{!754, !728, !755}
!755 = !DILocation(line: 204, column: 5, scope: !729)
!756 = !DILocation(line: 206, column: 5, scope: !729)
!757 = !DILocation(line: 210, column: 25, scope: !758)
!758 = distinct !DILexicalBlock(scope: !538, file: !92, line: 210, column: 9)
!759 = !DILocation(line: 210, column: 41, scope: !758)
!760 = !DILocation(line: 210, column: 9, scope: !758)
!761 = !DILocation(line: 210, column: 46, scope: !758)
!762 = !DILocation(line: 210, column: 9, scope: !538)
!763 = !DILocation(line: 211, column: 40, scope: !764)
!764 = distinct !DILexicalBlock(scope: !765, file: !92, line: 212, column: 7)
!765 = distinct !DILexicalBlock(scope: !766, file: !92, line: 211, column: 7)
!766 = distinct !DILexicalBlock(scope: !758, file: !92, line: 210, column: 78)
!767 = !DILocation(line: 212, column: 22, scope: !764)
!768 = !DILocation(line: 212, column: 15, scope: !764)
!769 = !DILocation(line: 212, column: 28, scope: !764)
!770 = !DILocation(line: 211, column: 7, scope: !764)
!771 = !DILocation(line: 214, column: 7, scope: !772)
!772 = distinct !DILexicalBlock(scope: !765, file: !92, line: 214, column: 7)
!773 = !DILocation(line: 216, column: 23, scope: !538)
!774 = !DILocation(line: 216, column: 39, scope: !538)
!775 = !DILocation(line: 216, column: 16, scope: !538)
!776 = !DILocation(line: 217, column: 5, scope: !538)
!777 = !DILocation(line: 219, column: 5, scope: !778)
!778 = distinct !DILexicalBlock(scope: !779, file: !92, line: 220, column: 5)
!779 = distinct !DILexicalBlock(scope: !538, file: !92, line: 219, column: 5)
!780 = !DILocation(line: 220, column: 5, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !92, line: 221, column: 5)
!782 = !DILocation(line: 222, column: 5, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !92, line: 225, column: 5)
!784 = distinct !DILexicalBlock(scope: !538, file: !92, line: 224, column: 5)
!785 = !DILocation(line: 222, column: 15, scope: !783)
!786 = !DILocation(line: 222, column: 30, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !92, line: 222, column: 11)
!788 = distinct !DILexicalBlock(scope: !783, file: !92, line: 222, column: 15)
!789 = !DILocation(line: 222, column: 46, scope: !787)
!790 = !DILocation(line: 222, column: 14, scope: !787)
!791 = !DILocation(line: 222, column: 51, scope: !787)
!792 = !DILocation(line: 222, column: 11, scope: !788)
!793 = !DILocation(line: 222, column: 9, scope: !794)
!794 = distinct !DILexicalBlock(scope: !787, file: !92, line: 222, column: 84)
!795 = !DILocation(line: 223, column: 67, scope: !796)
!796 = distinct !DILexicalBlock(scope: !797, file: !92, line: 225, column: 7)
!797 = distinct !DILexicalBlock(scope: !788, file: !92, line: 224, column: 7)
!798 = !DILocation(line: 223, column: 83, scope: !796)
!799 = !DILocation(line: 224, column: 20, scope: !796)
!800 = !DILocation(line: 224, column: 36, scope: !796)
!801 = !DILocation(line: 224, column: 14, scope: !796)
!802 = !DILocation(line: 223, column: 7, scope: !796)
!803 = !DILocation(line: 222, column: 11, scope: !797)
!804 = distinct !{!804, !782, !805}
!805 = !DILocation(line: 224, column: 5, scope: !783)
!806 = !DILocation(line: 226, column: 5, scope: !783)
!807 = !DILocation(line: 227, column: 5, scope: !808)
!808 = distinct !DILexicalBlock(scope: !809, file: !92, line: 230, column: 5)
!809 = distinct !DILexicalBlock(scope: !538, file: !92, line: 229, column: 5)
!810 = !DILocation(line: 229, column: 5, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !92, line: 232, column: 5)
!812 = distinct !DILexicalBlock(scope: !538, file: !92, line: 231, column: 5)
!813 = !DILocation(line: 231, column: 5, scope: !814)
!814 = distinct !DILexicalBlock(scope: !812, file: !92, line: 231, column: 5)
!815 = !DILocation(line: 233, column: 5, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !92, line: 236, column: 5)
!817 = distinct !DILexicalBlock(scope: !538, file: !92, line: 235, column: 5)
!818 = !DILocation(line: 234, column: 5, scope: !819)
!819 = distinct !DILexicalBlock(scope: !817, file: !92, line: 235, column: 5)
!820 = !DILocation(line: 235, column: 5, scope: !821)
!821 = distinct !DILexicalBlock(scope: !817, file: !92, line: 236, column: 5)
!822 = !DILocation(line: 236, column: 5, scope: !823)
!823 = distinct !DILexicalBlock(scope: !817, file: !92, line: 237, column: 5)
!824 = !DILocation(line: 238, column: 5, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !92, line: 241, column: 5)
!826 = distinct !DILexicalBlock(scope: !538, file: !92, line: 240, column: 5)
!827 = !DILocation(line: 240, column: 5, scope: !538)
!828 = !DILocation(line: 242, column: 14, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !92, line: 244, column: 5)
!830 = distinct !DILexicalBlock(scope: !532, file: !92, line: 243, column: 5)
!831 = distinct !{!831, !519, !832}
!832 = !DILocation(line: 246, column: 3, scope: !520)
!833 = !DILocation(line: 248, column: 3, scope: !520)
!834 = !DILocation(line: 245, column: 7, scope: !835)
!835 = distinct !DILexicalBlock(scope: !515, file: !92, line: 245, column: 7)
!836 = !DILocation(line: 245, column: 14, scope: !835)
!837 = !DILocation(line: 245, column: 18, scope: !835)
!838 = !DILocation(line: 245, column: 7, scope: !515)
!839 = !DILocation(line: 246, column: 38, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !92, line: 247, column: 5)
!841 = distinct !DILexicalBlock(scope: !842, file: !92, line: 246, column: 5)
!842 = distinct !DILexicalBlock(scope: !835, file: !92, line: 245, column: 26)
!843 = !DILocation(line: 247, column: 20, scope: !840)
!844 = !DILocation(line: 247, column: 13, scope: !840)
!845 = !DILocation(line: 246, column: 5, scope: !840)
!846 = !DILocation(line: 247, column: 5, scope: !847)
!847 = distinct !DILexicalBlock(scope: !841, file: !92, line: 249, column: 5)
!848 = !DILocation(line: 248, column: 5, scope: !849)
!849 = distinct !DILexicalBlock(scope: !841, file: !92, line: 249, column: 5)
!850 = !DILocation(line: 249, column: 5, scope: !851)
!851 = distinct !DILexicalBlock(scope: !841, file: !92, line: 250, column: 5)
!852 = !DILocation(line: 250, column: 5, scope: !853)
!853 = distinct !DILexicalBlock(scope: !841, file: !92, line: 251, column: 5)
!854 = !DILocation(line: 252, column: 9, scope: !515)
!855 = !DILocation(line: 252, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !92, line: 254, column: 3)
!857 = distinct !DILexicalBlock(scope: !515, file: !92, line: 253, column: 3)
!858 = !DILocation(line: 252, column: 13, scope: !856)
!859 = !DILocation(line: 252, column: 16, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !92, line: 252, column: 9)
!861 = distinct !DILexicalBlock(scope: !856, file: !92, line: 252, column: 13)
!862 = !DILocation(line: 252, column: 9, scope: !861)
!863 = !DILocation(line: 252, column: 7, scope: !864)
!864 = distinct !DILexicalBlock(scope: !860, file: !92, line: 252, column: 25)
!865 = !DILocation(line: 253, column: 58, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !92, line: 255, column: 5)
!867 = distinct !DILexicalBlock(scope: !861, file: !92, line: 254, column: 5)
!868 = !DILocation(line: 253, column: 51, scope: !866)
!869 = !DILocation(line: 253, column: 12, scope: !866)
!870 = !DILocation(line: 254, column: 40, scope: !871)
!871 = distinct !DILexicalBlock(scope: !861, file: !92, line: 254, column: 9)
!872 = !DILocation(line: 254, column: 37, scope: !871)
!873 = !DILocation(line: 254, column: 9, scope: !861)
!874 = !DILocation(line: 255, column: 40, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !92, line: 256, column: 7)
!876 = distinct !DILexicalBlock(scope: !877, file: !92, line: 255, column: 7)
!877 = distinct !DILexicalBlock(scope: !871, file: !92, line: 254, column: 62)
!878 = !DILocation(line: 256, column: 22, scope: !875)
!879 = !DILocation(line: 256, column: 15, scope: !875)
!880 = !DILocation(line: 256, column: 35, scope: !875)
!881 = !DILocation(line: 256, column: 28, scope: !875)
!882 = !DILocation(line: 255, column: 7, scope: !875)
!883 = !DILocation(line: 257, column: 7, scope: !884)
!884 = distinct !DILexicalBlock(scope: !876, file: !92, line: 258, column: 7)
!885 = !DILocation(line: 259, column: 15, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !92, line: 262, column: 5)
!887 = distinct !DILexicalBlock(scope: !861, file: !92, line: 261, column: 5)
!888 = !DILocalVariable(name: "tmp___3", scope: !419, file: !92, line: 144, type: !18)
!889 = !DILocation(line: 259, column: 9, scope: !890)
!890 = distinct !DILexicalBlock(scope: !861, file: !92, line: 259, column: 9)
!891 = !DILocation(line: 259, column: 9, scope: !861)
!892 = !DILocation(line: 261, column: 7, scope: !893)
!893 = distinct !DILexicalBlock(scope: !894, file: !92, line: 261, column: 7)
!894 = distinct !DILexicalBlock(scope: !895, file: !92, line: 260, column: 7)
!895 = distinct !DILexicalBlock(scope: !890, file: !92, line: 259, column: 18)
!896 = !DILocation(line: 264, column: 5, scope: !895)
!897 = !DILocation(line: 0, scope: !890)
!898 = !DILocation(line: 265, column: 5, scope: !899)
!899 = distinct !DILexicalBlock(scope: !900, file: !92, line: 266, column: 5)
!900 = distinct !DILexicalBlock(scope: !861, file: !92, line: 265, column: 5)
!901 = !DILocation(line: 266, column: 11, scope: !902)
!902 = distinct !DILexicalBlock(scope: !861, file: !92, line: 266, column: 9)
!903 = !DILocation(line: 266, column: 9, scope: !861)
!904 = !DILocation(line: 266, column: 13, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !92, line: 266, column: 11)
!906 = distinct !DILexicalBlock(scope: !902, file: !92, line: 266, column: 21)
!907 = !DILocation(line: 266, column: 11, scope: !906)
!908 = !DILocation(line: 266, column: 15, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !92, line: 266, column: 13)
!910 = distinct !DILexicalBlock(scope: !905, file: !92, line: 266, column: 24)
!911 = !DILocation(line: 266, column: 13, scope: !910)
!912 = !DILocation(line: 266, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !92, line: 266, column: 15)
!914 = distinct !DILexicalBlock(scope: !909, file: !92, line: 266, column: 25)
!915 = !DILocation(line: 266, column: 15, scope: !914)
!916 = !DILocation(line: 266, column: 25, scope: !917)
!917 = distinct !DILexicalBlock(scope: !918, file: !92, line: 266, column: 17)
!918 = distinct !DILexicalBlock(scope: !913, file: !92, line: 266, column: 26)
!919 = !DILocation(line: 266, column: 17, scope: !918)
!920 = !DILocation(line: 266, column: 28, scope: !921)
!921 = distinct !DILexicalBlock(scope: !922, file: !92, line: 266, column: 19)
!922 = distinct !DILexicalBlock(scope: !917, file: !92, line: 266, column: 31)
!923 = !DILocation(line: 266, column: 19, scope: !922)
!924 = !DILocation(line: 266, column: 30, scope: !925)
!925 = distinct !DILexicalBlock(scope: !926, file: !92, line: 266, column: 21)
!926 = distinct !DILexicalBlock(scope: !921, file: !92, line: 266, column: 34)
!927 = !DILocation(line: 266, column: 21, scope: !926)
!928 = !DILocation(line: 269, column: 84, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !92, line: 268, column: 19)
!930 = distinct !DILexicalBlock(scope: !931, file: !92, line: 267, column: 19)
!931 = distinct !DILexicalBlock(scope: !925, file: !92, line: 266, column: 36)
!932 = !DILocation(line: 269, column: 77, scope: !929)
!933 = !DILocation(line: 269, column: 19, scope: !929)
!934 = !DILocation(line: 270, column: 23, scope: !935)
!935 = distinct !DILexicalBlock(scope: !931, file: !92, line: 270, column: 23)
!936 = !DILocation(line: 270, column: 23, scope: !931)
!937 = !DILocation(line: 271, column: 21, scope: !938)
!938 = distinct !DILexicalBlock(scope: !939, file: !92, line: 272, column: 21)
!939 = distinct !DILexicalBlock(scope: !940, file: !92, line: 271, column: 21)
!940 = distinct !DILexicalBlock(scope: !935, file: !92, line: 270, column: 31)
!941 = !DILocation(line: 274, column: 19, scope: !940)
!942 = !DILocation(line: 273, column: 37, scope: !943)
!943 = distinct !DILexicalBlock(scope: !944, file: !92, line: 273, column: 25)
!944 = distinct !DILexicalBlock(scope: !935, file: !92, line: 274, column: 26)
!945 = !DILocation(line: 273, column: 31, scope: !943)
!946 = !DILocation(line: 273, column: 25, scope: !943)
!947 = !DILocation(line: 273, column: 49, scope: !943)
!948 = !DILocation(line: 273, column: 25, scope: !944)
!949 = !DILocation(line: 274, column: 56, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !92, line: 275, column: 23)
!951 = distinct !DILexicalBlock(scope: !952, file: !92, line: 274, column: 23)
!952 = distinct !DILexicalBlock(scope: !943, file: !92, line: 273, column: 55)
!953 = !DILocation(line: 274, column: 106, scope: !950)
!954 = !DILocation(line: 274, column: 99, scope: !950)
!955 = !DILocation(line: 274, column: 23, scope: !950)
!956 = !DILocation(line: 275, column: 23, scope: !951)
!957 = !DILocation(line: 275, column: 34, scope: !951)
!958 = !DILocation(line: 277, column: 30, scope: !959)
!959 = distinct !DILexicalBlock(scope: !951, file: !92, line: 276, column: 23)
!960 = !DILocation(line: 276, column: 23, scope: !959)
!961 = !DILocation(line: 280, column: 21, scope: !952)
!962 = !DILocation(line: 278, column: 37, scope: !963)
!963 = distinct !DILexicalBlock(scope: !944, file: !92, line: 278, column: 25)
!964 = !DILocation(line: 278, column: 31, scope: !963)
!965 = !DILocation(line: 278, column: 25, scope: !963)
!966 = !DILocation(line: 278, column: 47, scope: !963)
!967 = !DILocation(line: 278, column: 25, scope: !944)
!968 = !DILocation(line: 279, column: 56, scope: !969)
!969 = distinct !DILexicalBlock(scope: !970, file: !92, line: 280, column: 23)
!970 = distinct !DILexicalBlock(scope: !971, file: !92, line: 279, column: 23)
!971 = distinct !DILexicalBlock(scope: !963, file: !92, line: 278, column: 53)
!972 = !DILocation(line: 279, column: 106, scope: !969)
!973 = !DILocation(line: 279, column: 99, scope: !969)
!974 = !DILocation(line: 279, column: 23, scope: !969)
!975 = !DILocation(line: 280, column: 23, scope: !970)
!976 = !DILocation(line: 280, column: 34, scope: !970)
!977 = !DILocation(line: 282, column: 30, scope: !978)
!978 = distinct !DILexicalBlock(scope: !970, file: !92, line: 281, column: 23)
!979 = !DILocation(line: 281, column: 23, scope: !978)
!980 = !DILocation(line: 285, column: 21, scope: !971)
!981 = !DILocation(line: 283, column: 37, scope: !982)
!982 = distinct !DILexicalBlock(scope: !944, file: !92, line: 283, column: 25)
!983 = !DILocation(line: 283, column: 31, scope: !982)
!984 = !DILocation(line: 283, column: 25, scope: !982)
!985 = !DILocation(line: 283, column: 46, scope: !982)
!986 = !DILocation(line: 283, column: 25, scope: !944)
!987 = !DILocation(line: 284, column: 56, scope: !988)
!988 = distinct !DILexicalBlock(scope: !989, file: !92, line: 285, column: 23)
!989 = distinct !DILexicalBlock(scope: !990, file: !92, line: 284, column: 23)
!990 = distinct !DILexicalBlock(scope: !982, file: !92, line: 283, column: 52)
!991 = !DILocation(line: 284, column: 106, scope: !988)
!992 = !DILocation(line: 284, column: 99, scope: !988)
!993 = !DILocation(line: 284, column: 23, scope: !988)
!994 = !DILocation(line: 285, column: 23, scope: !989)
!995 = !DILocation(line: 285, column: 34, scope: !989)
!996 = !DILocation(line: 287, column: 30, scope: !997)
!997 = distinct !DILexicalBlock(scope: !989, file: !92, line: 286, column: 23)
!998 = !DILocation(line: 286, column: 23, scope: !997)
!999 = !DILocation(line: 290, column: 21, scope: !990)
!1000 = !DILocation(line: 288, column: 37, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !944, file: !92, line: 288, column: 25)
!1002 = !DILocation(line: 288, column: 42, scope: !1001)
!1003 = !DILocation(line: 288, column: 46, scope: !1001)
!1004 = !DILocation(line: 288, column: 25, scope: !1001)
!1005 = !DILocation(line: 288, column: 53, scope: !1001)
!1006 = !DILocation(line: 288, column: 25, scope: !944)
!1007 = !DILocation(line: 290, column: 39, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1009, file: !92, line: 290, column: 27)
!1009 = distinct !DILexicalBlock(scope: !1001, file: !92, line: 288, column: 59)
!1010 = !DILocation(line: 290, column: 44, scope: !1008)
!1011 = !DILocation(line: 290, column: 48, scope: !1008)
!1012 = !DILocation(line: 290, column: 33, scope: !1008)
!1013 = !DILocation(line: 290, column: 27, scope: !1008)
!1014 = !DILocation(line: 290, column: 56, scope: !1008)
!1015 = !DILocation(line: 290, column: 27, scope: !1009)
!1016 = !DILocation(line: 291, column: 58, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !92, line: 292, column: 25)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !92, line: 291, column: 25)
!1019 = distinct !DILexicalBlock(scope: !1008, file: !92, line: 290, column: 62)
!1020 = !DILocation(line: 291, column: 108, scope: !1017)
!1021 = !DILocation(line: 291, column: 113, scope: !1017)
!1022 = !DILocation(line: 291, column: 117, scope: !1017)
!1023 = !DILocation(line: 291, column: 101, scope: !1017)
!1024 = !DILocation(line: 291, column: 25, scope: !1017)
!1025 = !DILocation(line: 292, column: 25, scope: !1018)
!1026 = !DILocation(line: 292, column: 36, scope: !1018)
!1027 = !DILocation(line: 294, column: 32, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1018, file: !92, line: 293, column: 25)
!1029 = !DILocation(line: 293, column: 25, scope: !1028)
!1030 = !DILocation(line: 297, column: 23, scope: !1019)
!1031 = !DILocation(line: 295, column: 39, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1009, file: !92, line: 295, column: 27)
!1033 = !DILocation(line: 295, column: 44, scope: !1032)
!1034 = !DILocation(line: 295, column: 48, scope: !1032)
!1035 = !DILocation(line: 295, column: 27, scope: !1032)
!1036 = !DILocation(line: 295, column: 54, scope: !1032)
!1037 = !DILocation(line: 295, column: 27, scope: !1009)
!1038 = !DILocation(line: 297, column: 44, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !92, line: 297, column: 25)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !92, line: 296, column: 25)
!1041 = distinct !DILexicalBlock(scope: !1032, file: !92, line: 295, column: 60)
!1042 = !DILocation(line: 297, column: 49, scope: !1039)
!1043 = !DILocation(line: 297, column: 53, scope: !1039)
!1044 = !DILocation(line: 297, column: 32, scope: !1039)
!1045 = !DILocation(line: 296, column: 25, scope: !1039)
!1046 = !DILocation(line: 300, column: 23, scope: !1041)
!1047 = !DILocation(line: 301, column: 21, scope: !1009)
!1048 = !DILocation(line: 299, column: 37, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !1001, file: !92, line: 299, column: 25)
!1050 = !DILocation(line: 299, column: 42, scope: !1049)
!1051 = !DILocation(line: 299, column: 46, scope: !1049)
!1052 = !DILocation(line: 299, column: 31, scope: !1049)
!1053 = !DILocation(line: 299, column: 25, scope: !1049)
!1054 = !DILocation(line: 299, column: 54, scope: !1049)
!1055 = !DILocation(line: 299, column: 25, scope: !1001)
!1056 = !DILocation(line: 300, column: 56, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !92, line: 301, column: 23)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !92, line: 300, column: 23)
!1059 = distinct !DILexicalBlock(scope: !1049, file: !92, line: 299, column: 60)
!1060 = !DILocation(line: 300, column: 106, scope: !1057)
!1061 = !DILocation(line: 300, column: 111, scope: !1057)
!1062 = !DILocation(line: 300, column: 115, scope: !1057)
!1063 = !DILocation(line: 300, column: 99, scope: !1057)
!1064 = !DILocation(line: 300, column: 23, scope: !1057)
!1065 = !DILocation(line: 301, column: 23, scope: !1058)
!1066 = !DILocation(line: 301, column: 34, scope: !1058)
!1067 = !DILocation(line: 303, column: 30, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1058, file: !92, line: 302, column: 23)
!1069 = !DILocation(line: 302, column: 23, scope: !1068)
!1070 = !DILocation(line: 306, column: 21, scope: !1059)
!1071 = !DILocation(line: 305, column: 37, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !944, file: !92, line: 305, column: 25)
!1073 = !DILocation(line: 305, column: 31, scope: !1072)
!1074 = !DILocation(line: 305, column: 25, scope: !1072)
!1075 = !DILocation(line: 305, column: 45, scope: !1072)
!1076 = !DILocation(line: 305, column: 25, scope: !944)
!1077 = !DILocation(line: 306, column: 56, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !92, line: 307, column: 23)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !92, line: 306, column: 23)
!1080 = distinct !DILexicalBlock(scope: !1072, file: !92, line: 305, column: 51)
!1081 = !DILocation(line: 306, column: 106, scope: !1078)
!1082 = !DILocation(line: 306, column: 99, scope: !1078)
!1083 = !DILocation(line: 306, column: 23, scope: !1078)
!1084 = !DILocation(line: 307, column: 23, scope: !1079)
!1085 = !DILocation(line: 307, column: 33, scope: !1079)
!1086 = !DILocation(line: 308, column: 82, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1079, file: !92, line: 308, column: 23)
!1088 = !DILocation(line: 308, column: 23, scope: !1087)
!1089 = !DILocation(line: 311, column: 21, scope: !1080)
!1090 = !DILocation(line: 310, column: 37, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !944, file: !92, line: 310, column: 25)
!1092 = !DILocation(line: 310, column: 25, scope: !1091)
!1093 = !DILocation(line: 310, column: 43, scope: !1091)
!1094 = !DILocation(line: 310, column: 25, scope: !944)
!1095 = !DILocation(line: 311, column: 59, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !92, line: 312, column: 23)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !92, line: 311, column: 23)
!1098 = distinct !DILexicalBlock(scope: !1091, file: !92, line: 310, column: 51)
!1099 = !DILocation(line: 311, column: 47, scope: !1096)
!1100 = !DILocation(line: 311, column: 33, scope: !1096)
!1101 = !DILocalVariable(name: "tmp___4", scope: !419, file: !92, line: 145, type: !20)
!1102 = !DILocation(line: 312, column: 51, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1097, file: !92, line: 313, column: 23)
!1104 = !DILocation(line: 312, column: 39, scope: !1103)
!1105 = !DILocation(line: 311, column: 23, scope: !1103)
!1106 = !DILocation(line: 315, column: 21, scope: !1098)
!1107 = !DILocation(line: 316, column: 19, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !92, line: 318, column: 19)
!1109 = distinct !DILexicalBlock(scope: !931, file: !92, line: 317, column: 19)
!1110 = !DILocation(line: 319, column: 17, scope: !931)
!1111 = !DILocation(line: 266, column: 19, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !925, file: !92, line: 319, column: 24)
!1113 = !DILocation(line: 268, column: 15, scope: !926)
!1114 = !DILocation(line: 266, column: 17, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !921, file: !92, line: 268, column: 22)
!1116 = !DILocation(line: 268, column: 13, scope: !922)
!1117 = !DILocation(line: 266, column: 15, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !917, file: !92, line: 268, column: 20)
!1119 = !DILocation(line: 268, column: 11, scope: !918)
!1120 = !DILocation(line: 266, column: 13, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !913, file: !92, line: 268, column: 18)
!1122 = !DILocation(line: 268, column: 9, scope: !914)
!1123 = !DILocation(line: 266, column: 11, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !909, file: !92, line: 268, column: 16)
!1125 = !DILocation(line: 268, column: 7, scope: !910)
!1126 = !DILocation(line: 266, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !905, file: !92, line: 268, column: 14)
!1128 = !DILocation(line: 268, column: 5, scope: !906)
!1129 = !DILocation(line: 268, column: 12, scope: !902)
!1130 = !DILocation(line: 319, column: 11, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 319, column: 11)
!1132 = distinct !DILexicalBlock(scope: !902, file: !92, line: 268, column: 12)
!1133 = !DILocation(line: 319, column: 11, scope: !1132)
!1134 = !DILocation(line: 320, column: 31, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !92, line: 321, column: 9)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !92, line: 320, column: 9)
!1137 = distinct !DILexicalBlock(scope: !1131, file: !92, line: 319, column: 21)
!1138 = !DILocation(line: 320, column: 24, scope: !1135)
!1139 = !DILocation(line: 320, column: 9, scope: !1135)
!1140 = !DILocation(line: 321, column: 49, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !92, line: 322, column: 9)
!1142 = !DILocation(line: 321, column: 42, scope: !1141)
!1143 = !DILocation(line: 321, column: 9, scope: !1141)
!1144 = !DILocation(line: 325, column: 7, scope: !1137)
!1145 = !DILocation(line: 323, column: 11, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 323, column: 11)
!1147 = !DILocation(line: 323, column: 11, scope: !1132)
!1148 = !DILocation(line: 324, column: 31, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !92, line: 325, column: 9)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !92, line: 324, column: 9)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !92, line: 323, column: 22)
!1152 = !DILocation(line: 324, column: 24, scope: !1149)
!1153 = !DILocation(line: 324, column: 9, scope: !1149)
!1154 = !DILocation(line: 325, column: 49, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1150, file: !92, line: 326, column: 9)
!1156 = !DILocation(line: 325, column: 42, scope: !1155)
!1157 = !DILocation(line: 325, column: 9, scope: !1155)
!1158 = !DILocation(line: 329, column: 7, scope: !1151)
!1159 = !DILocation(line: 327, column: 11, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 327, column: 11)
!1161 = !DILocation(line: 327, column: 11, scope: !1132)
!1162 = !DILocation(line: 328, column: 31, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !92, line: 329, column: 9)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !92, line: 328, column: 9)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !92, line: 327, column: 21)
!1166 = !DILocation(line: 328, column: 24, scope: !1163)
!1167 = !DILocation(line: 328, column: 9, scope: !1163)
!1168 = !DILocation(line: 329, column: 49, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !92, line: 330, column: 9)
!1170 = !DILocation(line: 329, column: 42, scope: !1169)
!1171 = !DILocation(line: 329, column: 9, scope: !1169)
!1172 = !DILocation(line: 333, column: 7, scope: !1165)
!1173 = !DILocation(line: 331, column: 11, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 331, column: 11)
!1175 = !DILocation(line: 331, column: 11, scope: !1132)
!1176 = !DILocation(line: 333, column: 25, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !92, line: 333, column: 13)
!1178 = distinct !DILexicalBlock(scope: !1174, file: !92, line: 331, column: 20)
!1179 = !DILocation(line: 333, column: 30, scope: !1177)
!1180 = !DILocation(line: 333, column: 34, scope: !1177)
!1181 = !DILocation(line: 333, column: 13, scope: !1177)
!1182 = !DILocation(line: 333, column: 41, scope: !1177)
!1183 = !DILocation(line: 333, column: 13, scope: !1178)
!1184 = !DILocation(line: 333, column: 27, scope: !1185)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !92, line: 333, column: 15)
!1186 = distinct !DILexicalBlock(scope: !1177, file: !92, line: 333, column: 47)
!1187 = !DILocation(line: 333, column: 32, scope: !1185)
!1188 = !DILocation(line: 333, column: 36, scope: !1185)
!1189 = !DILocation(line: 333, column: 15, scope: !1185)
!1190 = !DILocation(line: 333, column: 42, scope: !1185)
!1191 = !DILocation(line: 333, column: 15, scope: !1186)
!1192 = !DILocation(line: 333, column: 26, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !92, line: 333, column: 17)
!1194 = distinct !DILexicalBlock(scope: !1185, file: !92, line: 333, column: 48)
!1195 = !DILocation(line: 333, column: 17, scope: !1194)
!1196 = !DILocation(line: 336, column: 37, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1198, file: !92, line: 335, column: 15)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !92, line: 334, column: 15)
!1199 = distinct !DILexicalBlock(scope: !1193, file: !92, line: 333, column: 33)
!1200 = !DILocation(line: 336, column: 42, scope: !1197)
!1201 = !DILocation(line: 336, column: 46, scope: !1197)
!1202 = !DILocation(line: 336, column: 30, scope: !1197)
!1203 = !DILocation(line: 336, column: 15, scope: !1197)
!1204 = !DILocation(line: 337, column: 55, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1198, file: !92, line: 338, column: 15)
!1206 = !DILocation(line: 337, column: 60, scope: !1205)
!1207 = !DILocation(line: 337, column: 64, scope: !1205)
!1208 = !DILocation(line: 337, column: 48, scope: !1205)
!1209 = !DILocation(line: 337, column: 15, scope: !1205)
!1210 = !DILocation(line: 341, column: 13, scope: !1199)
!1211 = !DILocation(line: 339, column: 37, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !92, line: 343, column: 15)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !92, line: 342, column: 15)
!1214 = distinct !DILexicalBlock(scope: !1193, file: !92, line: 341, column: 20)
!1215 = !DILocation(line: 339, column: 42, scope: !1212)
!1216 = !DILocation(line: 339, column: 46, scope: !1212)
!1217 = !DILocation(line: 339, column: 30, scope: !1212)
!1218 = !DILocation(line: 339, column: 15, scope: !1212)
!1219 = !DILocation(line: 340, column: 55, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1213, file: !92, line: 341, column: 15)
!1221 = !DILocation(line: 340, column: 60, scope: !1220)
!1222 = !DILocation(line: 340, column: 64, scope: !1220)
!1223 = !DILocation(line: 340, column: 48, scope: !1220)
!1224 = !DILocation(line: 340, column: 15, scope: !1220)
!1225 = !DILocation(line: 345, column: 11, scope: !1194)
!1226 = !DILocation(line: 339, column: 35, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1228, file: !92, line: 347, column: 13)
!1228 = distinct !DILexicalBlock(scope: !1229, file: !92, line: 346, column: 13)
!1229 = distinct !DILexicalBlock(scope: !1185, file: !92, line: 345, column: 18)
!1230 = !DILocation(line: 339, column: 40, scope: !1227)
!1231 = !DILocation(line: 339, column: 44, scope: !1227)
!1232 = !DILocation(line: 339, column: 28, scope: !1227)
!1233 = !DILocation(line: 339, column: 13, scope: !1227)
!1234 = !DILocation(line: 340, column: 53, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1228, file: !92, line: 341, column: 13)
!1236 = !DILocation(line: 340, column: 58, scope: !1235)
!1237 = !DILocation(line: 340, column: 62, scope: !1235)
!1238 = !DILocation(line: 340, column: 46, scope: !1235)
!1239 = !DILocation(line: 340, column: 13, scope: !1235)
!1240 = !DILocation(line: 345, column: 9, scope: !1186)
!1241 = !DILocation(line: 339, column: 33, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !92, line: 347, column: 11)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !92, line: 346, column: 11)
!1244 = distinct !DILexicalBlock(scope: !1177, file: !92, line: 345, column: 16)
!1245 = !DILocation(line: 339, column: 38, scope: !1242)
!1246 = !DILocation(line: 339, column: 42, scope: !1242)
!1247 = !DILocation(line: 339, column: 26, scope: !1242)
!1248 = !DILocation(line: 339, column: 11, scope: !1242)
!1249 = !DILocation(line: 340, column: 51, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1243, file: !92, line: 341, column: 11)
!1251 = !DILocation(line: 340, column: 56, scope: !1250)
!1252 = !DILocation(line: 340, column: 60, scope: !1250)
!1253 = !DILocation(line: 340, column: 44, scope: !1250)
!1254 = !DILocation(line: 340, column: 11, scope: !1250)
!1255 = !DILocation(line: 345, column: 7, scope: !1178)
!1256 = !DILocation(line: 344, column: 19, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 344, column: 11)
!1258 = !DILocation(line: 344, column: 11, scope: !1132)
!1259 = !DILocation(line: 345, column: 21, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !92, line: 345, column: 13)
!1261 = distinct !DILexicalBlock(scope: !1257, file: !92, line: 344, column: 26)
!1262 = !DILocation(line: 345, column: 13, scope: !1261)
!1263 = !DILocation(line: 346, column: 23, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !92, line: 346, column: 15)
!1265 = distinct !DILexicalBlock(scope: !1260, file: !92, line: 345, column: 29)
!1266 = !DILocation(line: 346, column: 15, scope: !1265)
!1267 = !DILocation(line: 347, column: 21, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !92, line: 346, column: 30)
!1269 = !DILocation(line: 348, column: 11, scope: !1268)
!1270 = !DILocation(line: 349, column: 21, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1264, file: !92, line: 348, column: 18)
!1272 = !DILocation(line: 0, scope: !1264)
!1273 = !DILocation(line: 351, column: 9, scope: !1265)
!1274 = !DILocation(line: 352, column: 42, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !92, line: 353, column: 9)
!1276 = distinct !DILexicalBlock(scope: !1261, file: !92, line: 352, column: 9)
!1277 = !DILocation(line: 352, column: 9, scope: !1275)
!1278 = !DILocation(line: 353, column: 31, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1276, file: !92, line: 355, column: 9)
!1280 = !DILocation(line: 353, column: 24, scope: !1279)
!1281 = !DILocation(line: 353, column: 9, scope: !1279)
!1282 = !DILocation(line: 354, column: 49, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1276, file: !92, line: 355, column: 9)
!1284 = !DILocation(line: 354, column: 42, scope: !1283)
!1285 = !DILocation(line: 354, column: 89, scope: !1283)
!1286 = !DILocation(line: 354, column: 9, scope: !1283)
!1287 = !DILocation(line: 358, column: 7, scope: !1261)
!1288 = !DILocation(line: 356, column: 20, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 356, column: 11)
!1290 = !DILocation(line: 356, column: 11, scope: !1132)
!1291 = !DILocation(line: 357, column: 23, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1289, file: !92, line: 356, column: 27)
!1293 = !DILocation(line: 357, column: 15, scope: !1292)
!1294 = !DILocation(line: 357, column: 21, scope: !1292)
!1295 = !DILocation(line: 358, column: 7, scope: !1292)
!1296 = !DILocation(line: 359, column: 20, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 359, column: 11)
!1298 = !DILocation(line: 359, column: 11, scope: !1132)
!1299 = !DILocation(line: 360, column: 15, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1297, file: !92, line: 359, column: 26)
!1301 = !DILocation(line: 360, column: 20, scope: !1300)
!1302 = !DILocation(line: 360, column: 24, scope: !1300)
!1303 = !DILocation(line: 360, column: 31, scope: !1300)
!1304 = !DILocation(line: 361, column: 32, scope: !1300)
!1305 = !DILocation(line: 361, column: 15, scope: !1300)
!1306 = !DILocation(line: 361, column: 20, scope: !1300)
!1307 = !DILocation(line: 361, column: 24, scope: !1300)
!1308 = !DILocation(line: 361, column: 30, scope: !1300)
!1309 = !DILocation(line: 362, column: 7, scope: !1300)
!1310 = !DILocation(line: 364, column: 60, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !92, line: 364, column: 7)
!1312 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 363, column: 7)
!1313 = !DILocation(line: 364, column: 53, scope: !1311)
!1314 = !DILocation(line: 364, column: 14, scope: !1311)
!1315 = !DILocation(line: 365, column: 42, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 365, column: 11)
!1317 = !DILocation(line: 365, column: 39, scope: !1316)
!1318 = !DILocation(line: 365, column: 11, scope: !1132)
!1319 = !DILocation(line: 366, column: 42, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !92, line: 367, column: 9)
!1321 = distinct !DILexicalBlock(scope: !1322, file: !92, line: 366, column: 9)
!1322 = distinct !DILexicalBlock(scope: !1316, file: !92, line: 365, column: 64)
!1323 = !DILocation(line: 367, column: 24, scope: !1320)
!1324 = !DILocation(line: 367, column: 17, scope: !1320)
!1325 = !DILocation(line: 367, column: 37, scope: !1320)
!1326 = !DILocation(line: 367, column: 30, scope: !1320)
!1327 = !DILocation(line: 366, column: 9, scope: !1320)
!1328 = !DILocation(line: 368, column: 9, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1321, file: !92, line: 369, column: 9)
!1330 = !DILocation(line: 370, column: 11, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 370, column: 11)
!1332 = !DILocation(line: 370, column: 11, scope: !1132)
!1333 = !DILocation(line: 371, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !92, line: 372, column: 9)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !92, line: 371, column: 9)
!1336 = distinct !DILexicalBlock(scope: !1331, file: !92, line: 370, column: 19)
!1337 = !DILocation(line: 374, column: 7, scope: !1336)
!1338 = !DILocation(line: 373, column: 9, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !92, line: 376, column: 9)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !92, line: 375, column: 9)
!1341 = distinct !DILexicalBlock(scope: !1331, file: !92, line: 374, column: 14)
!1342 = !DILocation(line: 375, column: 7, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !92, line: 378, column: 7)
!1344 = distinct !DILexicalBlock(scope: !1132, file: !92, line: 377, column: 7)
!1345 = distinct !{!1345, !855, !1346}
!1346 = !DILocation(line: 253, column: 3, scope: !856)
!1347 = !DILocation(line: 255, column: 3, scope: !856)
!1348 = !DILocation(line: 380, column: 7, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !515, file: !92, line: 380, column: 7)
!1350 = !DILocation(line: 380, column: 7, scope: !515)
!1351 = !DILocation(line: 381, column: 5, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1353, file: !92, line: 382, column: 5)
!1353 = distinct !DILexicalBlock(scope: !1354, file: !92, line: 381, column: 5)
!1354 = distinct !DILexicalBlock(scope: !1349, file: !92, line: 380, column: 17)
!1355 = !DILocation(line: 384, column: 3, scope: !1354)
!1356 = !DILocation(line: 383, column: 7, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !515, file: !92, line: 383, column: 7)
!1358 = !DILocation(line: 383, column: 7, scope: !515)
!1359 = !DILocation(line: 384, column: 5, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1361, file: !92, line: 385, column: 5)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !92, line: 384, column: 5)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !92, line: 383, column: 18)
!1363 = !DILocation(line: 387, column: 3, scope: !1362)
!1364 = !DILocation(line: 386, column: 7, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !515, file: !92, line: 386, column: 7)
!1366 = !DILocation(line: 386, column: 7, scope: !515)
!1367 = !DILocation(line: 387, column: 5, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !92, line: 388, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !92, line: 387, column: 5)
!1370 = distinct !DILexicalBlock(scope: !1365, file: !92, line: 386, column: 17)
!1371 = !DILocation(line: 390, column: 3, scope: !1370)
!1372 = !DILocation(line: 389, column: 7, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !515, file: !92, line: 389, column: 7)
!1374 = !DILocation(line: 389, column: 7, scope: !515)
!1375 = !DILocation(line: 390, column: 5, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !92, line: 391, column: 5)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !92, line: 390, column: 5)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !92, line: 389, column: 16)
!1379 = !DILocation(line: 393, column: 3, scope: !1378)
!1380 = !DILocation(line: 392, column: 3, scope: !515)
