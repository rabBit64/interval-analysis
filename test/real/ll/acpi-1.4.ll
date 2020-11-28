; ModuleID = '/tmp/tmp.ll'
source_filename = "c/acpi-1.4.c"
target datalayout = "e-m:o-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-macosx10.15.0"

%struct.device = type { i32, i8*, i8*, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i32, i32, [24 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.file_list = type { i8*, i8* }
%struct.list = type { i8*, %struct.list* }
%struct.field = type { i8*, i8* }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__anonstruct_trip_27 = type { float, i8* }

@device = global [4 x %struct.device] [%struct.device { i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.60, i32 0, i32 0) }, %struct.device { i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.62, i32 0, i32 0) }, %struct.device { i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.63, i32 0, i32 0) }, %struct.device { i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.65, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.66, i32 0, i32 0) }], align 16, !dbg !0
@stderr = external global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [59 x i8] c"No ACPI support in kernel, or incorrect acpi_path (\22%s\22).\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"No support for device type: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"remaining capacity\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"charge_now\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"energy_now\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"present rate\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"current_now\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"last full capacity\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"charge_full\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"energy_full\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"charge_full_design\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"energy_full_design\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"charging state\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"State\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"voltage_now\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"battery\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"available\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"%s %d: slot empty\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"Battery\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"mWh\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"%s %d: %s, %d%%\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"rate information unavailable\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"charging\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"discharging\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c" remaining\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"discharging at zero rate - will never fully discharge.\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c" until charged\00", align 1
@.str.29 = private unnamed_addr constant [49 x i8] c"charging at zero rate - will never fully charge.\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c", %02d:%02d:%02d%s\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c", %s\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.33 = private unnamed_addr constant [63 x i8] c"%s %d: design capacity %d %s, last full capacity %d %s = %d%%\0A\00", align 1
@.str.34 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"Status\00", align 1
@.str.36 = private unnamed_addr constant [7 x i8] c"online\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"mains\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"on-line\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"off-line\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"Adapter\00", align 1
@.str.41 = private unnamed_addr constant [11 x i8] c"%s %d: %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"sys_temp\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"trip_point_%d_temp\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"trip_point_%d_type\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"dK\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"thermal zone\00", align 1
@.str.49 = private unnamed_addr constant [7 x i8] c"acpitz\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"Thermal\00", align 1
@.str.51 = private unnamed_addr constant [20 x i8] c"%s %d: %s, %.1f %s\0A\00", align 1
@.str.52 = private unnamed_addr constant [65 x i8] c"%s %d: trip point %d switches to mode %s at temperature %.1f %s\0A\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.54 = private unnamed_addr constant [10 x i8] c"cur_state\00", align 1
@.str.55 = private unnamed_addr constant [10 x i8] c"max_state\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"Cooling\00", align 1
@.str.57 = private unnamed_addr constant [42 x i8] c"%s %d: %s no state information available\0A\00", align 1
@.str.58 = private unnamed_addr constant [20 x i8] c"%s %d: %s %d of %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [13 x i8] c"power_supply\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"BAT\00", align 1
@.str.61 = private unnamed_addr constant [11 x i8] c"ac_adapter\00", align 1
@.str.62 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.63 = private unnamed_addr constant [13 x i8] c"thermal_zone\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c"thermal\00", align 1
@.str.65 = private unnamed_addr constant [4 x i8] c"fan\00", align 1
@.str.66 = private unnamed_addr constant [15 x i8] c"cooling_device\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"/sys/class\00", align 1
@.str.68 = private unnamed_addr constant [25 x i8] c"Out of memory in main()\0A\00", align 1
@.str.69 = private unnamed_addr constant [15 x i8] c"ipVbtashvfkcd:\00", align 1
@long_options = internal global [16 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.96, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.97, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.98, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0), i32 0, i32* null, i32 98 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.99, i32 0, i32 0), i32 0, i32* null, i32 97 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.64, i32 0, i32 0), i32 0, i32* null, i32 116 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i32 0, i32 0), i32 0, i32* null, i32 99 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.101, i32 0, i32 0), i32 0, i32* null, i32 115 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.102, i32 0, i32 0), i32 0, i32* null, i32 83 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.103, i32 0, i32 0), i32 0, i32* null, i32 102 }, %struct.option { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i32 0, i32* null, i32 107 }, %struct.option { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.104, i32 0, i32 0), i32 1, i32* null, i32 100 }, %struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.105, i32 0, i32 0), i32 0, i32* null, i32 86 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.106, i32 0, i32 0), i32 0, i32* null, i32 112 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.107, i32 0, i32 0), i32 0, i32* null, i32 105 }, %struct.option zeroinitializer], align 16, !dbg !115
@.str.70 = private unnamed_addr constant [11 x i8] c"/proc/acpi\00", align 1
@optarg = external global i8*, align 8
@.str.71 = private unnamed_addr constant [60 x i8] c"Out of memory. Could not allocate memory in list_new_node.\0A\00", align 1
@.str.72 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@proc_list = internal global [5 x %struct.file_list] [%struct.file_list { i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0), i8* null }, %struct.file_list { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* null }, %struct.file_list { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.76, i32 0, i32 0), i8* null }, %struct.file_list { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0), i8* null }, %struct.file_list { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.77, i32 0, i32 0), i8* null }], align 16, !dbg !100
@sys_list = internal global [25 x %struct.file_list] [%struct.file_list { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.79, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.80, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.81, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.82, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.84, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.85, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.86, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.86, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.87, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.89, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0) }, %struct.file_list { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0) }], align 16, !dbg !110
@.str.73 = private unnamed_addr constant [21 x i8] c"/energy_full_design \00", align 1
@.str.74 = private unnamed_addr constant [55 x i8] c"Out of memory. Could not allocate memory in get_info.\0A\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.77 = private unnamed_addr constant [13 x i8] c"cooling_mode\00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"voltage_min_design\00", align 1
@.str.79 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.80 = private unnamed_addr constant [18 x i8] c"trip_point_0_type\00", align 1
@.str.81 = private unnamed_addr constant [18 x i8] c"trip_point_0_temp\00", align 1
@.str.82 = private unnamed_addr constant [18 x i8] c"trip_point_1_type\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"trip_point_1_temp\00", align 1
@.str.84 = private unnamed_addr constant [18 x i8] c"trip_point_2_type\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"trip_point_2_temp\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"trip_point_3_type\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"trip_point_3_temp\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"trip_point_4_type\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"trip_point_4_temp\00", align 1
@.str.90 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.91 = private unnamed_addr constant [58 x i8] c"Out of memory. Could not allocate memory in parse_field.\0A\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"degrees C\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"degrees F\00", align 1
@.str.95 = private unnamed_addr constant [7 x i8] c"kelvin\00", align 1
@.str.96 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.98 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.99 = private unnamed_addr constant [11 x i8] c"ac-adapter\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"cooling\00", align 1
@.str.101 = private unnamed_addr constant [11 x i8] c"show-empty\00", align 1
@.str.102 = private unnamed_addr constant [11 x i8] c"hide-empty\00", align 1
@.str.103 = private unnamed_addr constant [11 x i8] c"fahrenheit\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.105 = private unnamed_addr constant [11 x i8] c"everything\00", align 1
@.str.106 = private unnamed_addr constant [5 x i8] c"proc\00", align 1
@.str.107 = private unnamed_addr constant [8 x i8] c"details\00", align 1
@.str.108 = private unnamed_addr constant [233 x i8] c"acpi 1.4\0A\0ACopyright (C) 2001 Grahame Bowland.\0A              2008 Michael Meskes.\0AThis is free software; see the source for copying conditions.  There is NO\0Awarranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.\0A\00", align 1
@.str.109 = private unnamed_addr constant [1092 x i8] c"Usage: acpi [OPTION]...\0AShows information from the /proc filesystem, such as battery status or\0Athermal information.\0A\0A  -b, --battery\09\09battery information\0A  -i, --details\09\09show additional details if available:\0A\09\09\09\09- battery capacity information\0A\09\09\09\09- temperature trip points\0A  -a, --ac-adapter\09\09ac adapter information\0A  -t, --thermal\09\09thermal information\0A  -c, --cooling\09\09cooling information\0A  -V, --everything\09\09show every device, overrides above options\0A  -s, --show-empty\09\09show non-operational devices\0A  -f, --fahrenheit\09\09use fahrenheit as the temperature unit\0A  -k, --kelvin\09\09\09use kelvin as the temperature unit\0A  -d, --directory <dir>\09path to ACPI info (/sys/class resp. /proc/acpi)\0A  -p, --proc\09\09\09use old proc interface instead of new sys interface\0A  -h, --help\09\09\09display this help and exit\0A  -v, --version\09\09output version information and exit\0A\0ABy default, acpi displays information on installed system batteries.\0ANon-operational devices, for example empty battery slots are hidden.\0AThe default unit of temperature is degrees celsius.\0A\0AReport bugs to Michael Meskes <meskes@debian.org>.\0A\00", align 1

; Function Attrs: noinline nounwind ssp uwtable
define void @free_devices(%struct.list* %devices) #0 !dbg !137 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %devices, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata %struct.list* %devices, metadata !142, metadata !DIExpression()), !dbg !141
  br label %while.body, !dbg !143

while.body:                                       ; preds = %while_break___0, %entry
  %p.0 = phi %struct.list* [ %devices, %entry ], [ %8, %while_break___0 ], !dbg !147
  call void @llvm.dbg.value(metadata %struct.list* %p.0, metadata !142, metadata !DIExpression()), !dbg !141
  br label %while_continue___1, !dbg !148

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !148

while_continue:                                   ; preds = %while_continue___1
  %tobool = icmp ne %struct.list* %p.0, null, !dbg !149
  br i1 %tobool, label %if.end, label %if.then, !dbg !152

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !153

if.end:                                           ; preds = %while_continue
  %data = getelementptr inbounds %struct.list, %struct.list* %p.0, i32 0, i32 0, !dbg !155
  %0 = load i8*, i8** %data, align 8, !dbg !155
  %1 = bitcast i8* %0 to %struct.list*, !dbg !156
  call void @llvm.dbg.value(metadata %struct.list* %1, metadata !157, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.value(metadata %struct.list* %1, metadata !158, metadata !DIExpression()), !dbg !141
  br label %while.body2, !dbg !159

while.body2:                                      ; preds = %if.end5, %if.end
  %r.0 = phi %struct.list* [ %1, %if.end ], [ %7, %if.end5 ], !dbg !162
  call void @llvm.dbg.value(metadata %struct.list* %r.0, metadata !158, metadata !DIExpression()), !dbg !141
  br label %while_continue___2, !dbg !163

while_continue___2:                               ; preds = %while.body2
  br label %while_continue___0, !dbg !163

while_continue___0:                               ; preds = %while_continue___2
  %tobool3 = icmp ne %struct.list* %r.0, null, !dbg !164
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !167

if.then4:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !168

if.end5:                                          ; preds = %while_continue___0
  %data6 = getelementptr inbounds %struct.list, %struct.list* %r.0, i32 0, i32 0, !dbg !170
  %2 = load i8*, i8** %data6, align 8, !dbg !170
  %3 = bitcast i8* %2 to %struct.field*, !dbg !172
  call void @llvm.dbg.value(metadata %struct.field* %3, metadata !173, metadata !DIExpression()), !dbg !141
  %attr = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !174
  %4 = load i8*, i8** %attr, align 8, !dbg !174
  call void @free(i8* %4) #6, !dbg !176
  %value = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !177
  %5 = load i8*, i8** %value, align 8, !dbg !177
  call void @free(i8* %5) #6, !dbg !179
  %6 = bitcast %struct.field* %3 to i8*, !dbg !180
  call void @free(i8* %6) #6, !dbg !182
  %next = getelementptr inbounds %struct.list, %struct.list* %r.0, i32 0, i32 1, !dbg !183
  %7 = load %struct.list*, %struct.list** %next, align 8, !dbg !183
  call void @llvm.dbg.value(metadata %struct.list* %7, metadata !158, metadata !DIExpression()), !dbg !141
  br label %while.body2, !dbg !159, !llvm.loop !184

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !186

while_break___0:                                  ; preds = %while_break___2, %if.then4
  call void @list_free(%struct.list* %1), !dbg !187
  %next7 = getelementptr inbounds %struct.list, %struct.list* %p.0, i32 0, i32 1, !dbg !190
  %8 = load %struct.list*, %struct.list** %next7, align 8, !dbg !190
  call void @llvm.dbg.value(metadata %struct.list* %8, metadata !142, metadata !DIExpression()), !dbg !141
  br label %while.body, !dbg !143, !llvm.loop !191

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !193

while_break:                                      ; preds = %while_break___1, %if.then
  call void @list_free(%struct.list* %devices), !dbg !194
  ret void, !dbg !197
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @list_free(%struct.list* %node) #0 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %node, metadata !200, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.value(metadata %struct.list* %node, metadata !202, metadata !DIExpression()), !dbg !201
  br label %while.body, !dbg !203

while.body:                                       ; preds = %if.end, %entry
  %p.0 = phi %struct.list* [ %node, %entry ], [ %0, %if.end ], !dbg !207
  call void @llvm.dbg.value(metadata %struct.list* %p.0, metadata !202, metadata !DIExpression()), !dbg !201
  br label %while_continue___0, !dbg !208

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !208

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne %struct.list* %p.0, null, !dbg !209
  br i1 %tobool, label %if.end, label %if.then, !dbg !212

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !213

if.end:                                           ; preds = %while_continue
  %next1 = getelementptr inbounds %struct.list, %struct.list* %p.0, i32 0, i32 1, !dbg !215
  %0 = load %struct.list*, %struct.list** %next1, align 8, !dbg !215
  call void @llvm.dbg.value(metadata %struct.list* %0, metadata !217, metadata !DIExpression()), !dbg !201
  %1 = bitcast %struct.list* %p.0 to i8*, !dbg !218
  call void @free(i8* %1) #6, !dbg !220
  call void @llvm.dbg.value(metadata %struct.list* %0, metadata !202, metadata !DIExpression()), !dbg !201
  br label %while.body, !dbg !203, !llvm.loop !221

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !223

while_break:                                      ; preds = %while_break___0, %if.then
  ret void, !dbg !224
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.list* @find_devices(i8* %acpi_path, i32 %device_nr, i32 %proc_interface) #0 !dbg !225 {
entry:
  call void @llvm.dbg.value(metadata i8* %acpi_path, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %device_nr, metadata !230, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i32 %proc_interface, metadata !231, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata !4, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata !4, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata !4, metadata !236, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata %struct.list* null, metadata !238, metadata !DIExpression()), !dbg !229
  %tobool = icmp ne i32 %proc_interface, 0, !dbg !239
  br i1 %tobool, label %if.then, label %if.else, !dbg !242

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %device_nr to i64, !dbg !243
  %arrayidx = getelementptr inbounds [4 x %struct.device], [4 x %struct.device]* @device, i64 0, i64 %idxprom, !dbg !243
  %proc = getelementptr inbounds %struct.device, %struct.device* %arrayidx, i32 0, i32 1, !dbg !245
  %0 = load i8*, i8** %proc, align 8, !dbg !245
  call void @llvm.dbg.value(metadata i8* %0, metadata !246, metadata !DIExpression()), !dbg !229
  br label %if.end, !dbg !247

if.else:                                          ; preds = %entry
  %idxprom1 = sext i32 %device_nr to i64, !dbg !248
  %arrayidx2 = getelementptr inbounds [4 x %struct.device], [4 x %struct.device]* @device, i64 0, i64 %idxprom1, !dbg !248
  %sys = getelementptr inbounds %struct.device, %struct.device* %arrayidx2, i32 0, i32 2, !dbg !250
  %1 = load i8*, i8** %sys, align 16, !dbg !250
  call void @llvm.dbg.value(metadata i8* %1, metadata !246, metadata !DIExpression()), !dbg !229
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi i8* [ %0, %if.then ], [ %1, %if.else ], !dbg !251
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !246, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.value(metadata i8* %tmp.0, metadata !252, metadata !DIExpression()), !dbg !229
  %call = call i32 @chdir(i8* %acpi_path) #6, !dbg !253
  call void @llvm.dbg.value(metadata i32 %call, metadata !256, metadata !DIExpression()), !dbg !229
  %cmp = icmp slt i32 %call, 0, !dbg !257
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !259

if.then3:                                         ; preds = %if.end
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !260
  %call4 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i32 0, i32 0), i8* %acpi_path), !dbg !264
  call void @exit(i32 1) #7, !dbg !265
  unreachable, !dbg !265

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @chdir(i8* %tmp.0) #6, !dbg !267
  call void @llvm.dbg.value(metadata i32 %call6, metadata !270, metadata !DIExpression()), !dbg !229
  %cmp7 = icmp slt i32 %call6, 0, !dbg !271
  br i1 %cmp7, label %if.then8, label %if.end10, !dbg !273

if.then8:                                         ; preds = %if.end5
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !274
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0), i8* %tmp.0), !dbg !278
  br label %return, !dbg !279

if.end10:                                         ; preds = %if.end5
  %call11 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !280
  call void @llvm.dbg.value(metadata %struct.__dirstream* %call11, metadata !283, metadata !DIExpression()), !dbg !229
  %tobool12 = icmp ne %struct.__dirstream* %call11, null, !dbg !288
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !290

if.then13:                                        ; preds = %if.end10
  br label %return, !dbg !291

if.end14:                                         ; preds = %if.end10
  br label %while.body, !dbg !293

while.body:                                       ; preds = %if.end27, %if.end14
  %rval.0 = phi %struct.list* [ null, %if.end14 ], [ %rval.1, %if.end27 ], !dbg !296
  call void @llvm.dbg.value(metadata %struct.list* %rval.0, metadata !238, metadata !DIExpression()), !dbg !229
  br label %while_continue___0, !dbg !297

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !297

while_continue:                                   ; preds = %if.then21, %while_continue___0
  %call15 = call %struct.dirent* @readdir(%struct.__dirstream* %call11), !dbg !298
  call void @llvm.dbg.value(metadata %struct.dirent* %call15, metadata !302, metadata !DIExpression()), !dbg !229
  %tobool16 = icmp ne %struct.dirent* %call15, null, !dbg !317
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !319

if.then17:                                        ; preds = %while_continue
  br label %while_break, !dbg !320

if.end18:                                         ; preds = %while_continue
  %call19 = call i32 @ignore_directory_entry(%struct.dirent* %call15), !dbg !322
  call void @llvm.dbg.value(metadata i32 %call19, metadata !325, metadata !DIExpression()), !dbg !229
  %tobool20 = icmp ne i32 %call19, 0, !dbg !326
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !328

if.then21:                                        ; preds = %if.end18
  br label %while_continue, !dbg !329

if.end22:                                         ; preds = %if.end18
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %call15, i32 0, i32 4, !dbg !331
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0, !dbg !334
  %call23 = call %struct.list* @get_info(i8* %arraydecay, i32 %proc_interface), !dbg !335
  call void @llvm.dbg.value(metadata %struct.list* %call23, metadata !336, metadata !DIExpression()), !dbg !229
  %tobool24 = icmp ne %struct.list* %call23, null, !dbg !337
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !339

if.then25:                                        ; preds = %if.end22
  %4 = bitcast %struct.list* %call23 to i8*, !dbg !340
  %call26 = call %struct.list* @list_append(%struct.list* %rval.0, i8* %4), !dbg !344
  call void @llvm.dbg.value(metadata %struct.list* %call26, metadata !238, metadata !DIExpression()), !dbg !229
  br label %if.end27, !dbg !345

if.end27:                                         ; preds = %if.then25, %if.end22
  %rval.1 = phi %struct.list* [ %call26, %if.then25 ], [ %rval.0, %if.end22 ], !dbg !296
  call void @llvm.dbg.value(metadata %struct.list* %rval.1, metadata !238, metadata !DIExpression()), !dbg !229
  br label %while.body, !dbg !293, !llvm.loop !346

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !348

while_break:                                      ; preds = %while_break___0, %if.then17
  %call28 = call i32 @closedir(%struct.__dirstream* %call11), !dbg !349
  br label %return, !dbg !352

return:                                           ; preds = %while_break, %if.then13, %if.then8
  %retval.0 = phi %struct.list* [ null, %if.then8 ], [ %rval.0, %while_break ], [ null, %if.then13 ], !dbg !296
  ret %struct.list* %retval.0, !dbg !353
}

; Function Attrs: nounwind
declare i32 @chdir(i8*) #2

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32) #4

declare %struct.__dirstream* @opendir(i8*) #3

declare %struct.dirent* @readdir(%struct.__dirstream*) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @ignore_directory_entry(%struct.dirent* %de) #0 !dbg !354 {
entry:
  call void @llvm.dbg.value(metadata %struct.dirent* %de, metadata !357, metadata !DIExpression()), !dbg !358
  call void @llvm.dbg.declare(metadata !4, metadata !359, metadata !DIExpression()), !dbg !360
  call void @llvm.dbg.declare(metadata !4, metadata !361, metadata !DIExpression()), !dbg !362
  %d_name = getelementptr inbounds %struct.dirent, %struct.dirent* %de, i32 0, i32 4, !dbg !363
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %d_name, i32 0, i32 0, !dbg !367
  %call = call i32 @strcmp(i8* %arraydecay, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #8, !dbg !368
  call void @llvm.dbg.value(metadata i32 %call, metadata !369, metadata !DIExpression()), !dbg !358
  %tobool = icmp ne i32 %call, 0, !dbg !370
  br i1 %tobool, label %if.then, label %if.else6, !dbg !372

if.then:                                          ; preds = %entry
  %d_name1 = getelementptr inbounds %struct.dirent, %struct.dirent* %de, i32 0, i32 4, !dbg !373
  %arraydecay2 = getelementptr inbounds [256 x i8], [256 x i8]* %d_name1, i32 0, i32 0, !dbg !377
  %call3 = call i32 @strcmp(i8* %arraydecay2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.72, i32 0, i32 0)) #8, !dbg !378
  call void @llvm.dbg.value(metadata i32 %call3, metadata !379, metadata !DIExpression()), !dbg !358
  %tobool4 = icmp ne i32 %call3, 0, !dbg !380
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !382

if.then5:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 0, metadata !383, metadata !DIExpression()), !dbg !358
  br label %if.end, !dbg !384

if.else:                                          ; preds = %if.then
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !358
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then5
  %tmp___1.0 = phi i32 [ 0, %if.then5 ], [ 1, %if.else ], !dbg !386
  call void @llvm.dbg.value(metadata i32 %tmp___1.0, metadata !383, metadata !DIExpression()), !dbg !358
  br label %if.end7, !dbg !387

if.else6:                                         ; preds = %entry
  call void @llvm.dbg.value(metadata i32 1, metadata !383, metadata !DIExpression()), !dbg !358
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.end
  %tmp___1.1 = phi i32 [ %tmp___1.0, %if.end ], [ 1, %if.else6 ], !dbg !388
  call void @llvm.dbg.value(metadata i32 %tmp___1.1, metadata !383, metadata !DIExpression()), !dbg !358
  ret i32 %tmp___1.1, !dbg !389
}

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.list* @get_info(i8* %device_name, i32 %proc_interface) #0 !dbg !390 {
entry:
  call void @llvm.dbg.value(metadata i8* %device_name, metadata !393, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i32 %proc_interface, metadata !395, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.declare(metadata !4, metadata !396, metadata !DIExpression()), !dbg !397
  call void @llvm.dbg.declare(metadata !4, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata !4, metadata !400, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata %struct.list* null, metadata !402, metadata !DIExpression()), !dbg !394
  %tobool = icmp ne i32 %proc_interface, 0, !dbg !403
  br i1 %tobool, label %if.then, label %if.else, !dbg !406

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.file_list* getelementptr inbounds ([5 x %struct.file_list], [5 x %struct.file_list]* @proc_list, i32 0, i32 0), metadata !407, metadata !DIExpression()), !dbg !394
  br label %if.end, !dbg !409

if.else:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.file_list* getelementptr inbounds ([25 x %struct.file_list], [25 x %struct.file_list]* @sys_list, i32 0, i32 0), metadata !407, metadata !DIExpression()), !dbg !394
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %tmp.0 = phi %struct.file_list* [ getelementptr inbounds ([5 x %struct.file_list], [5 x %struct.file_list]* @proc_list, i32 0, i32 0), %if.then ], [ getelementptr inbounds ([25 x %struct.file_list], [25 x %struct.file_list]* @sys_list, i32 0, i32 0), %if.else ], !dbg !411
  call void @llvm.dbg.value(metadata %struct.file_list* %tmp.0, metadata !407, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata %struct.file_list* %tmp.0, metadata !412, metadata !DIExpression()), !dbg !394
  %tobool1 = icmp ne i32 %proc_interface, 0, !dbg !413
  br i1 %tobool1, label %if.then2, label %if.else3, !dbg !415

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 80, metadata !416, metadata !DIExpression()), !dbg !394
  br label %if.end4, !dbg !417

if.else3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 400, metadata !416, metadata !DIExpression()), !dbg !394
  br label %if.end4

if.end4:                                          ; preds = %if.else3, %if.then2
  %tmp___0.0 = phi i64 [ 80, %if.then2 ], [ 400, %if.else3 ], !dbg !419
  call void @llvm.dbg.value(metadata i64 %tmp___0.0, metadata !416, metadata !DIExpression()), !dbg !394
  %div = udiv i64 %tmp___0.0, 16, !dbg !420
  %conv = trunc i64 %div to i32, !dbg !422
  call void @llvm.dbg.value(metadata i32 %conv, metadata !423, metadata !DIExpression()), !dbg !394
  %call = call i32 @strlen(i8* %device_name) #8, !dbg !424
  call void @llvm.dbg.value(metadata i32 %call, metadata !426, metadata !DIExpression()), !dbg !394
  %call5 = call i32 @strlen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.73, i32 0, i32 0)) #8, !dbg !427
  call void @llvm.dbg.value(metadata i32 %call5, metadata !429, metadata !DIExpression()), !dbg !394
  %add = add i32 %call, %call5, !dbg !430
  %call6 = call noalias i8* @malloc(i32 %add) #6, !dbg !432
  call void @llvm.dbg.value(metadata i8* %call6, metadata !433, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata i8* %call6, metadata !434, metadata !DIExpression()), !dbg !394
  %0 = ptrtoint i8* %call6 to i64, !dbg !435
  %cmp = icmp eq i64 %0, 0, !dbg !437
  br i1 %cmp, label %if.then8, label %if.end10, !dbg !438

if.then8:                                         ; preds = %if.end4
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !439
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.74, i32 0, i32 0)), !dbg !443
  br label %return, !dbg !444

if.end10:                                         ; preds = %if.end4
  call void @llvm.dbg.value(metadata i32 0, metadata !445, metadata !DIExpression()), !dbg !394
  br label %while.body, !dbg !446

while.body:                                       ; preds = %if.end14, %if.end10
  %rval.0 = phi %struct.list* [ null, %if.end10 ], [ %call18, %if.end14 ], !dbg !449
  %i.0 = phi i32 [ 0, %if.end10 ], [ %inc, %if.end14 ], !dbg !449
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !445, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata %struct.list* %rval.0, metadata !402, metadata !DIExpression()), !dbg !394
  br label %while_continue___0, !dbg !450

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !450

while_continue:                                   ; preds = %while_continue___0
  %cmp11 = icmp slt i32 %i.0, %conv, !dbg !451
  br i1 %cmp11, label %if.end14, label %if.then13, !dbg !454

if.then13:                                        ; preds = %while_continue
  br label %while_break, !dbg !455

if.end14:                                         ; preds = %while_continue
  %idx.ext = sext i32 %i.0 to i64, !dbg !457
  %add.ptr = getelementptr inbounds %struct.file_list, %struct.file_list* %tmp.0, i64 %idx.ext, !dbg !457
  %file = getelementptr inbounds %struct.file_list, %struct.file_list* %add.ptr, i32 0, i32 0, !dbg !460
  %2 = load i8*, i8** %file, align 8, !dbg !460
  %call15 = call i32 (i8*, i8*, ...) @sprintf(i8* %call6, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.75, i32 0, i32 0), i8* %device_name, i8* %2) #6, !dbg !461
  %idx.ext16 = sext i32 %i.0 to i64, !dbg !462
  %add.ptr17 = getelementptr inbounds %struct.file_list, %struct.file_list* %tmp.0, i64 %idx.ext16, !dbg !462
  %attr = getelementptr inbounds %struct.file_list, %struct.file_list* %add.ptr17, i32 0, i32 1, !dbg !464
  %3 = load i8*, i8** %attr, align 8, !dbg !464
  %call18 = call %struct.list* @parse_info_file(%struct.list* %rval.0, i8* %call6, i8* %3), !dbg !465
  call void @llvm.dbg.value(metadata %struct.list* %call18, metadata !402, metadata !DIExpression()), !dbg !394
  %inc = add nsw i32 %i.0, 1, !dbg !466
  call void @llvm.dbg.value(metadata i32 %inc, metadata !445, metadata !DIExpression()), !dbg !394
  br label %while.body, !dbg !446, !llvm.loop !467

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !469

while_break:                                      ; preds = %while_break___0, %if.then13
  br label %return, !dbg !470

return:                                           ; preds = %while_break, %if.then8
  %retval.0 = phi %struct.list* [ null, %if.then8 ], [ %rval.0, %while_break ], !dbg !449
  ret %struct.list* %retval.0, !dbg !471
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.list* @list_append(%struct.list* %node, i8* %data) #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %node, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.value(metadata i8* %data, metadata !477, metadata !DIExpression()), !dbg !476
  %call = call %struct.list* @list_new(i8* %data), !dbg !478
  call void @llvm.dbg.value(metadata %struct.list* %call, metadata !482, metadata !DIExpression()), !dbg !476
  %next = getelementptr inbounds %struct.list, %struct.list* %call, i32 0, i32 1, !dbg !483
  store %struct.list* %node, %struct.list** %next, align 8, !dbg !484
  ret %struct.list* %call, !dbg !485
}

declare i32 @closedir(%struct.__dirstream*) #3

; Function Attrs: noinline nounwind ssp uwtable
define void @print_battery_information(%struct.list* %batteries, i32 %show_empty_slots, i32 %show_capacity) #0 !dbg !486 {
entry:
  %capacity_unit = alloca [4 x i8], align 1
  call void @llvm.dbg.value(metadata %struct.list* %batteries, metadata !489, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !491, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %show_capacity, metadata !492, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.declare(metadata [4 x i8]* %capacity_unit, metadata !493, metadata !DIExpression()), !dbg !495
  call void @llvm.dbg.declare(metadata !4, metadata !496, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.declare(metadata !4, metadata !498, metadata !DIExpression()), !dbg !499
  call void @llvm.dbg.declare(metadata !4, metadata !500, metadata !DIExpression()), !dbg !501
  call void @llvm.dbg.declare(metadata !4, metadata !502, metadata !DIExpression()), !dbg !503
  call void @llvm.dbg.declare(metadata !4, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata !4, metadata !506, metadata !DIExpression()), !dbg !507
  call void @llvm.dbg.declare(metadata !4, metadata !508, metadata !DIExpression()), !dbg !509
  call void @llvm.dbg.declare(metadata !4, metadata !510, metadata !DIExpression()), !dbg !511
  call void @llvm.dbg.declare(metadata !4, metadata !512, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.declare(metadata !4, metadata !514, metadata !DIExpression()), !dbg !515
  call void @llvm.dbg.declare(metadata !4, metadata !516, metadata !DIExpression()), !dbg !517
  call void @llvm.dbg.declare(metadata !4, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata !4, metadata !520, metadata !DIExpression()), !dbg !521
  call void @llvm.dbg.declare(metadata !4, metadata !522, metadata !DIExpression()), !dbg !523
  call void @llvm.dbg.declare(metadata !4, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata !4, metadata !526, metadata !DIExpression()), !dbg !527
  call void @llvm.dbg.declare(metadata !4, metadata !528, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.declare(metadata !4, metadata !530, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.declare(metadata !4, metadata !532, metadata !DIExpression()), !dbg !533
  call void @llvm.dbg.declare(metadata !4, metadata !534, metadata !DIExpression()), !dbg !535
  call void @llvm.dbg.declare(metadata !4, metadata !536, metadata !DIExpression()), !dbg !537
  call void @llvm.dbg.declare(metadata !4, metadata !538, metadata !DIExpression()), !dbg !539
  call void @llvm.dbg.declare(metadata !4, metadata !540, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.declare(metadata !4, metadata !542, metadata !DIExpression()), !dbg !543
  call void @llvm.dbg.declare(metadata !4, metadata !544, metadata !DIExpression()), !dbg !545
  call void @llvm.dbg.declare(metadata !4, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata !4, metadata !548, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.declare(metadata !4, metadata !550, metadata !DIExpression()), !dbg !551
  call void @llvm.dbg.declare(metadata !4, metadata !552, metadata !DIExpression()), !dbg !553
  call void @llvm.dbg.declare(metadata !4, metadata !554, metadata !DIExpression()), !dbg !555
  call void @llvm.dbg.declare(metadata !4, metadata !556, metadata !DIExpression()), !dbg !557
  call void @llvm.dbg.declare(metadata !4, metadata !558, metadata !DIExpression()), !dbg !559
  call void @llvm.dbg.declare(metadata !4, metadata !560, metadata !DIExpression()), !dbg !561
  call void @llvm.dbg.declare(metadata !4, metadata !562, metadata !DIExpression()), !dbg !563
  call void @llvm.dbg.declare(metadata !4, metadata !564, metadata !DIExpression()), !dbg !565
  call void @llvm.dbg.declare(metadata !4, metadata !566, metadata !DIExpression()), !dbg !567
  call void @llvm.dbg.declare(metadata !4, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata !4, metadata !570, metadata !DIExpression()), !dbg !571
  call void @llvm.dbg.declare(metadata !4, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata !4, metadata !574, metadata !DIExpression()), !dbg !575
  call void @llvm.dbg.value(metadata %struct.list* %batteries, metadata !576, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 1, metadata !577, metadata !DIExpression()), !dbg !490
  br label %while.body, !dbg !578

while.body:                                       ; preds = %if.end298, %entry
  %battery_num.0 = phi i32 [ 1, %entry ], [ %battery_num.1, %if.end298 ], !dbg !582
  %battery.0 = phi %struct.list* [ %batteries, %entry ], [ %call299, %if.end298 ], !dbg !582
  call void @llvm.dbg.value(metadata %struct.list* %battery.0, metadata !576, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %battery_num.0, metadata !577, metadata !DIExpression()), !dbg !490
  br label %while_continue___1, !dbg !583

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !583

while_continue:                                   ; preds = %while_continue___1
  %tobool = icmp ne %struct.list* %battery.0, null, !dbg !584
  br i1 %tobool, label %if.end, label %if.then, !dbg !587

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !588

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i32 -1, metadata !590, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !591, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !592, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !597, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* null, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 1, metadata !599, metadata !DIExpression()), !dbg !490
  %arrayidx = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i64 0, i64 0, !dbg !600
  store i8 109, i8* %arrayidx, align 1, !dbg !601
  %arrayidx1 = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i64 0, i64 1, !dbg !600
  store i8 65, i8* %arrayidx1, align 1, !dbg !601
  %arrayidx2 = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i64 0, i64 2, !dbg !600
  store i8 104, i8* %arrayidx2, align 1, !dbg !601
  %arrayidx3 = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i64 0, i64 3, !dbg !600
  store i8 0, i8* %arrayidx3, align 1, !dbg !601
  %data = getelementptr inbounds %struct.list, %struct.list* %battery.0, i32 0, i32 0, !dbg !602
  %0 = load i8*, i8** %data, align 8, !dbg !602
  %1 = bitcast i8* %0 to %struct.list*, !dbg !603
  call void @llvm.dbg.value(metadata %struct.list* %1, metadata !604, metadata !DIExpression()), !dbg !490
  br label %while.body5, !dbg !605

while.body5:                                      ; preds = %if.end149, %if.end
  %last_capacity_unit.0 = phi i32 [ -1, %if.end ], [ %last_capacity_unit.8, %if.end149 ], !dbg !608
  %last_capacity.0 = phi i32 [ -1, %if.end ], [ %last_capacity.7, %if.end149 ], !dbg !609
  %design_capacity_unit.0 = phi i32 [ -1, %if.end ], [ %design_capacity_unit.10, %if.end149 ], !dbg !610
  %design_capacity.0 = phi i32 [ -1, %if.end ], [ %design_capacity.9, %if.end149 ], !dbg !611
  %voltage.0 = phi i32 [ -1, %if.end ], [ %voltage.15, %if.end149 ], !dbg !612
  %present_rate.0 = phi i32 [ -1, %if.end ], [ %present_rate.5, %if.end149 ], !dbg !613
  %remaining_energy.0 = phi i32 [ -1, %if.end ], [ %remaining_energy.3, %if.end149 ], !dbg !614
  %remaining_capacity.0 = phi i32 [ -1, %if.end ], [ %remaining_capacity.2, %if.end149 ], !dbg !615
  %fields.0 = phi %struct.list* [ %1, %if.end ], [ %call150, %if.end149 ], !dbg !616
  %state.0 = phi i8* [ null, %if.end ], [ %state.19, %if.end149 ], !dbg !617
  %type_battery.0 = phi i32 [ 1, %if.end ], [ %type_battery.11, %if.end149 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.0, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.0, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata %struct.list* %fields.0, metadata !604, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %remaining_capacity.0, metadata !590, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %remaining_energy.0, metadata !591, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.0, metadata !592, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.0, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.0, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.0, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.0, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.0, metadata !597, metadata !DIExpression()), !dbg !490
  br label %while_continue___2, !dbg !619

while_continue___2:                               ; preds = %while.body5
  br label %while_continue___0, !dbg !619

while_continue___0:                               ; preds = %while_continue___2
  %tobool6 = icmp ne %struct.list* %fields.0, null, !dbg !620
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !623

if.then7:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !624

if.end8:                                          ; preds = %while_continue___0
  %data9 = getelementptr inbounds %struct.list, %struct.list* %fields.0, i32 0, i32 0, !dbg !626
  %2 = load i8*, i8** %data9, align 8, !dbg !626
  %3 = bitcast i8* %2 to %struct.field*, !dbg !628
  call void @llvm.dbg.value(metadata %struct.field* %3, metadata !629, metadata !DIExpression()), !dbg !490
  %attr = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !630
  %4 = load i8*, i8** %attr, align 8, !dbg !630
  %call = call i32 @strcasecmp(i8* %4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0)) #8, !dbg !632
  call void @llvm.dbg.value(metadata i32 %call, metadata !633, metadata !DIExpression()), !dbg !490
  %tobool10 = icmp ne i32 %call, 0, !dbg !634
  br i1 %tobool10, label %if.then11, label %if.else142, !dbg !636

if.then11:                                        ; preds = %if.end8
  %attr12 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !637
  %5 = load i8*, i8** %attr12, align 8, !dbg !637
  %call13 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i32 0, i32 0)) #8, !dbg !641
  call void @llvm.dbg.value(metadata i32 %call13, metadata !642, metadata !DIExpression()), !dbg !490
  %tobool14 = icmp ne i32 %call13, 0, !dbg !643
  br i1 %tobool14, label %if.then15, label %if.else133, !dbg !645

if.then15:                                        ; preds = %if.then11
  %attr16 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !646
  %6 = load i8*, i8** %attr16, align 8, !dbg !646
  %call17 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i32 0, i32 0)) #8, !dbg !650
  call void @llvm.dbg.value(metadata i32 %call17, metadata !651, metadata !DIExpression()), !dbg !490
  %tobool18 = icmp ne i32 %call17, 0, !dbg !652
  br i1 %tobool18, label %if.then19, label %if.else124, !dbg !654

if.then19:                                        ; preds = %if.then15
  %attr20 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !655
  %7 = load i8*, i8** %attr20, align 8, !dbg !655
  %call21 = call i32 @strcasecmp(i8* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0)) #8, !dbg !659
  call void @llvm.dbg.value(metadata i32 %call21, metadata !660, metadata !DIExpression()), !dbg !490
  %tobool22 = icmp ne i32 %call21, 0, !dbg !661
  br i1 %tobool22, label %if.then23, label %if.else120, !dbg !663

if.then23:                                        ; preds = %if.then19
  %attr24 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !664
  %8 = load i8*, i8** %attr24, align 8, !dbg !664
  %call25 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0)) #8, !dbg !668
  call void @llvm.dbg.value(metadata i32 %call25, metadata !669, metadata !DIExpression()), !dbg !490
  %tobool26 = icmp ne i32 %call25, 0, !dbg !670
  br i1 %tobool26, label %if.then27, label %if.else115, !dbg !672

if.then27:                                        ; preds = %if.then23
  %attr28 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !673
  %9 = load i8*, i8** %attr28, align 8, !dbg !673
  %call29 = call i32 @strcasecmp(i8* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i32 0, i32 0)) #8, !dbg !677
  call void @llvm.dbg.value(metadata i32 %call29, metadata !678, metadata !DIExpression()), !dbg !490
  %tobool30 = icmp ne i32 %call29, 0, !dbg !679
  br i1 %tobool30, label %if.then31, label %if.else107, !dbg !681

if.then31:                                        ; preds = %if.then27
  %attr32 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !682
  %10 = load i8*, i8** %attr32, align 8, !dbg !682
  %call33 = call i32 @strcmp(i8* %10, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0)) #8, !dbg !686
  call void @llvm.dbg.value(metadata i32 %call33, metadata !687, metadata !DIExpression()), !dbg !490
  %tobool34 = icmp ne i32 %call33, 0, !dbg !688
  br i1 %tobool34, label %if.then35, label %if.else98, !dbg !690

if.then35:                                        ; preds = %if.then31
  %attr36 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !691
  %11 = load i8*, i8** %attr36, align 8, !dbg !691
  %call37 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i32 0, i32 0)) #8, !dbg !695
  call void @llvm.dbg.value(metadata i32 %call37, metadata !696, metadata !DIExpression()), !dbg !490
  %tobool38 = icmp ne i32 %call37, 0, !dbg !697
  br i1 %tobool38, label %if.then39, label %if.else89, !dbg !699

if.then39:                                        ; preds = %if.then35
  %attr40 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !700
  %12 = load i8*, i8** %attr40, align 8, !dbg !700
  %call41 = call i32 @strcmp(i8* %12, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i32 0, i32 0)) #8, !dbg !704
  call void @llvm.dbg.value(metadata i32 %call41, metadata !705, metadata !DIExpression()), !dbg !490
  %tobool42 = icmp ne i32 %call41, 0, !dbg !706
  br i1 %tobool42, label %if.then43, label %if.else84, !dbg !708

if.then43:                                        ; preds = %if.then39
  %attr44 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !709
  %13 = load i8*, i8** %attr44, align 8, !dbg !709
  %call45 = call i32 @strcmp(i8* %13, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0)) #8, !dbg !713
  call void @llvm.dbg.value(metadata i32 %call45, metadata !714, metadata !DIExpression()), !dbg !490
  %tobool46 = icmp ne i32 %call45, 0, !dbg !715
  br i1 %tobool46, label %if.then47, label %if.else79, !dbg !717

if.then47:                                        ; preds = %if.then43
  %attr48 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !718
  %14 = load i8*, i8** %attr48, align 8, !dbg !718
  %call49 = call i32 @strcmp(i8* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !722
  call void @llvm.dbg.value(metadata i32 %call49, metadata !723, metadata !DIExpression()), !dbg !490
  %tobool50 = icmp ne i32 %call49, 0, !dbg !724
  br i1 %tobool50, label %if.then51, label %if.else75, !dbg !726

if.then51:                                        ; preds = %if.then47
  %attr52 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !727
  %15 = load i8*, i8** %attr52, align 8, !dbg !727
  %call53 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i32 0, i32 0)) #8, !dbg !731
  call void @llvm.dbg.value(metadata i32 %call53, metadata !732, metadata !DIExpression()), !dbg !490
  %tobool54 = icmp ne i32 %call53, 0, !dbg !733
  br i1 %tobool54, label %if.then55, label %if.else72, !dbg !735

if.then55:                                        ; preds = %if.then51
  %attr56 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !736
  %16 = load i8*, i8** %attr56, align 8, !dbg !736
  %call57 = call i32 @strcmp(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i32 0, i32 0)) #8, !dbg !740
  call void @llvm.dbg.value(metadata i32 %call57, metadata !741, metadata !DIExpression()), !dbg !490
  %tobool58 = icmp ne i32 %call57, 0, !dbg !742
  br i1 %tobool58, label %if.then59, label %if.else, !dbg !744

if.then59:                                        ; preds = %if.then55
  %attr60 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !745
  %17 = load i8*, i8** %attr60, align 8, !dbg !745
  %call61 = call i32 @strcmp(i8* %17, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0)) #8, !dbg !749
  call void @llvm.dbg.value(metadata i32 %call61, metadata !750, metadata !DIExpression()), !dbg !490
  %tobool62 = icmp ne i32 %call61, 0, !dbg !751
  br i1 %tobool62, label %if.end69, label %if.then63, !dbg !753

if.then63:                                        ; preds = %if.then59
  %value64 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !754
  %18 = load i8*, i8** %value64, align 8, !dbg !754
  %call65 = call i32 @get_unit_value(i8* %18), !dbg !758
  call void @llvm.dbg.value(metadata i32 %call65, metadata !759, metadata !DIExpression()), !dbg !490
  %div = sdiv i32 %call65, 1000, !dbg !760
  call void @llvm.dbg.value(metadata i32 %div, metadata !593, metadata !DIExpression()), !dbg !490
  %tobool66 = icmp ne i32 %div, 0, !dbg !761
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !763

if.then67:                                        ; preds = %if.then63
  call void @llvm.dbg.value(metadata i32 -1, metadata !593, metadata !DIExpression()), !dbg !490
  br label %if.end68, !dbg !764

if.end68:                                         ; preds = %if.then67, %if.then63
  %voltage.1 = phi i32 [ %div, %if.then63 ], [ -1, %if.then67 ], !dbg !766
  call void @llvm.dbg.value(metadata i32 %voltage.1, metadata !593, metadata !DIExpression()), !dbg !490
  br label %if.end69, !dbg !767

if.end69:                                         ; preds = %if.end68, %if.then59
  %voltage.2 = phi i32 [ %voltage.0, %if.then59 ], [ %voltage.1, %if.end68 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %voltage.2, metadata !593, metadata !DIExpression()), !dbg !490
  br label %if.end71, !dbg !768

if.else:                                          ; preds = %if.then55
  %value70 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !769
  %19 = load i8*, i8** %value70, align 8, !dbg !769
  call void @llvm.dbg.value(metadata i8* %19, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end71

if.end71:                                         ; preds = %if.else, %if.end69
  %voltage.3 = phi i32 [ %voltage.2, %if.end69 ], [ %voltage.0, %if.else ], !dbg !612
  %state.1 = phi i8* [ %state.0, %if.end69 ], [ %19, %if.else ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.1, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.3, metadata !593, metadata !DIExpression()), !dbg !490
  br label %if.end74, !dbg !771

if.else72:                                        ; preds = %if.then51
  %value73 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !772
  %20 = load i8*, i8** %value73, align 8, !dbg !772
  call void @llvm.dbg.value(metadata i8* %20, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %if.end71
  %voltage.4 = phi i32 [ %voltage.3, %if.end71 ], [ %voltage.0, %if.else72 ], !dbg !612
  %state.2 = phi i8* [ %state.1, %if.end71 ], [ %20, %if.else72 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.2, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.4, metadata !593, metadata !DIExpression()), !dbg !490
  br label %if.end78, !dbg !774

if.else75:                                        ; preds = %if.then47
  %value76 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !775
  %21 = load i8*, i8** %value76, align 8, !dbg !775
  %call77 = call i32 @strcasecmp(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i32 0, i32 0)) #8, !dbg !779
  call void @llvm.dbg.value(metadata i32 %call77, metadata !780, metadata !DIExpression()), !dbg !490
  %cmp = icmp eq i32 %call77, 0, !dbg !781
  %conv = zext i1 %cmp to i32, !dbg !781
  call void @llvm.dbg.value(metadata i32 %conv, metadata !599, metadata !DIExpression()), !dbg !490
  br label %if.end78

if.end78:                                         ; preds = %if.else75, %if.end74
  %voltage.5 = phi i32 [ %voltage.4, %if.end74 ], [ %voltage.0, %if.else75 ], !dbg !612
  %state.3 = phi i8* [ %state.2, %if.end74 ], [ %state.0, %if.else75 ], !dbg !617
  %type_battery.1 = phi i32 [ %type_battery.0, %if.end74 ], [ %conv, %if.else75 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %type_battery.1, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.3, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.5, metadata !593, metadata !DIExpression()), !dbg !490
  br label %if.end83, !dbg !782

if.else79:                                        ; preds = %if.then43
  %value80 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !783
  %22 = load i8*, i8** %value80, align 8, !dbg !783
  %call81 = call i32 @get_unit_value(i8* %22), !dbg !787
  call void @llvm.dbg.value(metadata i32 %call81, metadata !788, metadata !DIExpression()), !dbg !490
  %div82 = sdiv i32 %call81, 1000, !dbg !789
  call void @llvm.dbg.value(metadata i32 %div82, metadata !595, metadata !DIExpression()), !dbg !490
  br label %if.end83

if.end83:                                         ; preds = %if.else79, %if.end78
  %design_capacity_unit.1 = phi i32 [ %design_capacity_unit.0, %if.end78 ], [ %div82, %if.else79 ], !dbg !616
  %voltage.6 = phi i32 [ %voltage.5, %if.end78 ], [ %voltage.0, %if.else79 ], !dbg !612
  %state.4 = phi i8* [ %state.3, %if.end78 ], [ %state.0, %if.else79 ], !dbg !617
  %type_battery.2 = phi i32 [ %type_battery.1, %if.end78 ], [ %type_battery.0, %if.else79 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.2, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.4, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.6, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.1, metadata !595, metadata !DIExpression()), !dbg !490
  br label %if.end88, !dbg !790

if.else84:                                        ; preds = %if.then39
  %value85 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !791
  %23 = load i8*, i8** %value85, align 8, !dbg !791
  %call86 = call i32 @get_unit_value(i8* %23), !dbg !795
  call void @llvm.dbg.value(metadata i32 %call86, metadata !796, metadata !DIExpression()), !dbg !490
  %div87 = sdiv i32 %call86, 1000, !dbg !797
  call void @llvm.dbg.value(metadata i32 %div87, metadata !594, metadata !DIExpression()), !dbg !490
  br label %if.end88

if.end88:                                         ; preds = %if.else84, %if.end83
  %design_capacity_unit.2 = phi i32 [ %design_capacity_unit.1, %if.end83 ], [ %design_capacity_unit.0, %if.else84 ], !dbg !610
  %design_capacity.1 = phi i32 [ %design_capacity.0, %if.end83 ], [ %div87, %if.else84 ], !dbg !616
  %voltage.7 = phi i32 [ %voltage.6, %if.end83 ], [ %voltage.0, %if.else84 ], !dbg !612
  %state.5 = phi i8* [ %state.4, %if.end83 ], [ %state.0, %if.else84 ], !dbg !617
  %type_battery.3 = phi i32 [ %type_battery.2, %if.end83 ], [ %type_battery.0, %if.else84 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.3, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.5, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.7, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.1, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.2, metadata !595, metadata !DIExpression()), !dbg !490
  br label %if.end97, !dbg !798

if.else89:                                        ; preds = %if.then35
  %value90 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !799
  %24 = load i8*, i8** %value90, align 8, !dbg !799
  %call91 = call i32 @get_unit_value(i8* %24), !dbg !803
  call void @llvm.dbg.value(metadata i32 %call91, metadata !804, metadata !DIExpression()), !dbg !490
  %div92 = sdiv i32 %call91, 1000, !dbg !805
  call void @llvm.dbg.value(metadata i32 %div92, metadata !597, metadata !DIExpression()), !dbg !490
  %tobool93 = icmp ne i8* %state.0, null, !dbg !806
  br i1 %tobool93, label %if.end96, label %if.then94, !dbg !808

if.then94:                                        ; preds = %if.else89
  %call95 = call noalias i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !809
  call void @llvm.dbg.value(metadata i8* %call95, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end96, !dbg !813

if.end96:                                         ; preds = %if.then94, %if.else89
  %state.6 = phi i8* [ %state.0, %if.else89 ], [ %call95, %if.then94 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.6, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end97

if.end97:                                         ; preds = %if.end96, %if.end88
  %last_capacity_unit.1 = phi i32 [ %last_capacity_unit.0, %if.end88 ], [ %div92, %if.end96 ], !dbg !616
  %design_capacity_unit.3 = phi i32 [ %design_capacity_unit.2, %if.end88 ], [ %design_capacity_unit.0, %if.end96 ], !dbg !610
  %design_capacity.2 = phi i32 [ %design_capacity.1, %if.end88 ], [ %design_capacity.0, %if.end96 ], !dbg !611
  %voltage.8 = phi i32 [ %voltage.7, %if.end88 ], [ %voltage.0, %if.end96 ], !dbg !612
  %state.7 = phi i8* [ %state.5, %if.end88 ], [ %state.6, %if.end96 ], !dbg !617
  %type_battery.4 = phi i32 [ %type_battery.3, %if.end88 ], [ %type_battery.0, %if.end96 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.4, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.7, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.8, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.2, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.3, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.1, metadata !597, metadata !DIExpression()), !dbg !490
  br label %if.end106, !dbg !814

if.else98:                                        ; preds = %if.then31
  %value99 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !815
  %25 = load i8*, i8** %value99, align 8, !dbg !815
  %call100 = call i32 @get_unit_value(i8* %25), !dbg !819
  call void @llvm.dbg.value(metadata i32 %call100, metadata !820, metadata !DIExpression()), !dbg !490
  %div101 = sdiv i32 %call100, 1000, !dbg !821
  call void @llvm.dbg.value(metadata i32 %div101, metadata !596, metadata !DIExpression()), !dbg !490
  %tobool102 = icmp ne i8* %state.0, null, !dbg !822
  br i1 %tobool102, label %if.end105, label %if.then103, !dbg !824

if.then103:                                       ; preds = %if.else98
  %call104 = call noalias i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !825
  call void @llvm.dbg.value(metadata i8* %call104, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end105, !dbg !829

if.end105:                                        ; preds = %if.then103, %if.else98
  %state.8 = phi i8* [ %state.0, %if.else98 ], [ %call104, %if.then103 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.8, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end106

if.end106:                                        ; preds = %if.end105, %if.end97
  %last_capacity_unit.2 = phi i32 [ %last_capacity_unit.1, %if.end97 ], [ %last_capacity_unit.0, %if.end105 ], !dbg !608
  %last_capacity.1 = phi i32 [ %last_capacity.0, %if.end97 ], [ %div101, %if.end105 ], !dbg !616
  %design_capacity_unit.4 = phi i32 [ %design_capacity_unit.3, %if.end97 ], [ %design_capacity_unit.0, %if.end105 ], !dbg !610
  %design_capacity.3 = phi i32 [ %design_capacity.2, %if.end97 ], [ %design_capacity.0, %if.end105 ], !dbg !611
  %voltage.9 = phi i32 [ %voltage.8, %if.end97 ], [ %voltage.0, %if.end105 ], !dbg !612
  %state.9 = phi i8* [ %state.7, %if.end97 ], [ %state.8, %if.end105 ], !dbg !617
  %type_battery.5 = phi i32 [ %type_battery.4, %if.end97 ], [ %type_battery.0, %if.end105 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.5, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.9, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.9, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.3, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.4, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.1, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.2, metadata !597, metadata !DIExpression()), !dbg !490
  br label %if.end114, !dbg !830

if.else107:                                       ; preds = %if.then27
  %value108 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !831
  %26 = load i8*, i8** %value108, align 8, !dbg !831
  %call109 = call i32 @get_unit_value(i8* %26), !dbg !835
  call void @llvm.dbg.value(metadata i32 %call109, metadata !596, metadata !DIExpression()), !dbg !490
  %tobool110 = icmp ne i8* %state.0, null, !dbg !836
  br i1 %tobool110, label %if.end113, label %if.then111, !dbg !838

if.then111:                                       ; preds = %if.else107
  %call112 = call noalias i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !839
  call void @llvm.dbg.value(metadata i8* %call112, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end113, !dbg !843

if.end113:                                        ; preds = %if.then111, %if.else107
  %state.10 = phi i8* [ %state.0, %if.else107 ], [ %call112, %if.then111 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.10, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end114

if.end114:                                        ; preds = %if.end113, %if.end106
  %last_capacity_unit.3 = phi i32 [ %last_capacity_unit.2, %if.end106 ], [ %last_capacity_unit.0, %if.end113 ], !dbg !608
  %last_capacity.2 = phi i32 [ %last_capacity.1, %if.end106 ], [ %call109, %if.end113 ], !dbg !616
  %design_capacity_unit.5 = phi i32 [ %design_capacity_unit.4, %if.end106 ], [ %design_capacity_unit.0, %if.end113 ], !dbg !610
  %design_capacity.4 = phi i32 [ %design_capacity.3, %if.end106 ], [ %design_capacity.0, %if.end113 ], !dbg !611
  %voltage.10 = phi i32 [ %voltage.9, %if.end106 ], [ %voltage.0, %if.end113 ], !dbg !612
  %state.11 = phi i8* [ %state.9, %if.end106 ], [ %state.10, %if.end113 ], !dbg !617
  %type_battery.6 = phi i32 [ %type_battery.5, %if.end106 ], [ %type_battery.0, %if.end113 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.6, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.11, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.10, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.4, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.5, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.2, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.3, metadata !597, metadata !DIExpression()), !dbg !490
  br label %if.end119, !dbg !844

if.else115:                                       ; preds = %if.then23
  %value116 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !845
  %27 = load i8*, i8** %value116, align 8, !dbg !845
  %call117 = call i32 @get_unit_value(i8* %27), !dbg !849
  call void @llvm.dbg.value(metadata i32 %call117, metadata !850, metadata !DIExpression()), !dbg !490
  %div118 = sdiv i32 %call117, 1000, !dbg !851
  call void @llvm.dbg.value(metadata i32 %div118, metadata !592, metadata !DIExpression()), !dbg !490
  br label %if.end119

if.end119:                                        ; preds = %if.else115, %if.end114
  %last_capacity_unit.4 = phi i32 [ %last_capacity_unit.3, %if.end114 ], [ %last_capacity_unit.0, %if.else115 ], !dbg !608
  %last_capacity.3 = phi i32 [ %last_capacity.2, %if.end114 ], [ %last_capacity.0, %if.else115 ], !dbg !609
  %design_capacity_unit.6 = phi i32 [ %design_capacity_unit.5, %if.end114 ], [ %design_capacity_unit.0, %if.else115 ], !dbg !610
  %design_capacity.5 = phi i32 [ %design_capacity.4, %if.end114 ], [ %design_capacity.0, %if.else115 ], !dbg !611
  %voltage.11 = phi i32 [ %voltage.10, %if.end114 ], [ %voltage.0, %if.else115 ], !dbg !612
  %present_rate.1 = phi i32 [ %present_rate.0, %if.end114 ], [ %div118, %if.else115 ], !dbg !616
  %state.12 = phi i8* [ %state.11, %if.end114 ], [ %state.0, %if.else115 ], !dbg !617
  %type_battery.7 = phi i32 [ %type_battery.6, %if.end114 ], [ %type_battery.0, %if.else115 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.7, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.12, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.1, metadata !592, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.11, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.5, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.6, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.3, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.4, metadata !597, metadata !DIExpression()), !dbg !490
  br label %if.end123, !dbg !852

if.else120:                                       ; preds = %if.then19
  %value121 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !853
  %28 = load i8*, i8** %value121, align 8, !dbg !853
  %call122 = call i32 @get_unit_value(i8* %28), !dbg !857
  call void @llvm.dbg.value(metadata i32 %call122, metadata !592, metadata !DIExpression()), !dbg !490
  br label %if.end123

if.end123:                                        ; preds = %if.else120, %if.end119
  %last_capacity_unit.5 = phi i32 [ %last_capacity_unit.4, %if.end119 ], [ %last_capacity_unit.0, %if.else120 ], !dbg !608
  %last_capacity.4 = phi i32 [ %last_capacity.3, %if.end119 ], [ %last_capacity.0, %if.else120 ], !dbg !609
  %design_capacity_unit.7 = phi i32 [ %design_capacity_unit.6, %if.end119 ], [ %design_capacity_unit.0, %if.else120 ], !dbg !610
  %design_capacity.6 = phi i32 [ %design_capacity.5, %if.end119 ], [ %design_capacity.0, %if.else120 ], !dbg !611
  %voltage.12 = phi i32 [ %voltage.11, %if.end119 ], [ %voltage.0, %if.else120 ], !dbg !612
  %present_rate.2 = phi i32 [ %present_rate.1, %if.end119 ], [ %call122, %if.else120 ], !dbg !616
  %state.13 = phi i8* [ %state.12, %if.end119 ], [ %state.0, %if.else120 ], !dbg !617
  %type_battery.8 = phi i32 [ %type_battery.7, %if.end119 ], [ %type_battery.0, %if.else120 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.8, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.13, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.2, metadata !592, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.12, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.6, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.7, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.4, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.5, metadata !597, metadata !DIExpression()), !dbg !490
  br label %if.end132, !dbg !858

if.else124:                                       ; preds = %if.then15
  %value125 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !859
  %29 = load i8*, i8** %value125, align 8, !dbg !859
  %call126 = call i32 @get_unit_value(i8* %29), !dbg !863
  call void @llvm.dbg.value(metadata i32 %call126, metadata !864, metadata !DIExpression()), !dbg !490
  %div127 = sdiv i32 %call126, 1000, !dbg !865
  call void @llvm.dbg.value(metadata i32 %div127, metadata !591, metadata !DIExpression()), !dbg !490
  %tobool128 = icmp ne i8* %state.0, null, !dbg !866
  br i1 %tobool128, label %if.end131, label %if.then129, !dbg !868

if.then129:                                       ; preds = %if.else124
  %call130 = call noalias i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !869
  call void @llvm.dbg.value(metadata i8* %call130, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end131, !dbg !873

if.end131:                                        ; preds = %if.then129, %if.else124
  %state.14 = phi i8* [ %state.0, %if.else124 ], [ %call130, %if.then129 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.14, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end132

if.end132:                                        ; preds = %if.end131, %if.end123
  %last_capacity_unit.6 = phi i32 [ %last_capacity_unit.5, %if.end123 ], [ %last_capacity_unit.0, %if.end131 ], !dbg !608
  %last_capacity.5 = phi i32 [ %last_capacity.4, %if.end123 ], [ %last_capacity.0, %if.end131 ], !dbg !609
  %design_capacity_unit.8 = phi i32 [ %design_capacity_unit.7, %if.end123 ], [ %design_capacity_unit.0, %if.end131 ], !dbg !610
  %design_capacity.7 = phi i32 [ %design_capacity.6, %if.end123 ], [ %design_capacity.0, %if.end131 ], !dbg !611
  %voltage.13 = phi i32 [ %voltage.12, %if.end123 ], [ %voltage.0, %if.end131 ], !dbg !612
  %present_rate.3 = phi i32 [ %present_rate.2, %if.end123 ], [ %present_rate.0, %if.end131 ], !dbg !613
  %remaining_energy.1 = phi i32 [ %remaining_energy.0, %if.end123 ], [ %div127, %if.end131 ], !dbg !616
  %state.15 = phi i8* [ %state.13, %if.end123 ], [ %state.14, %if.end131 ], !dbg !617
  %type_battery.9 = phi i32 [ %type_battery.8, %if.end123 ], [ %type_battery.0, %if.end131 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.9, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.15, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %remaining_energy.1, metadata !591, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.3, metadata !592, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.13, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.7, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.8, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.5, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.6, metadata !597, metadata !DIExpression()), !dbg !490
  br label %if.end141, !dbg !874

if.else133:                                       ; preds = %if.then11
  %value134 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !875
  %30 = load i8*, i8** %value134, align 8, !dbg !875
  %call135 = call i32 @get_unit_value(i8* %30), !dbg !879
  call void @llvm.dbg.value(metadata i32 %call135, metadata !880, metadata !DIExpression()), !dbg !490
  %div136 = sdiv i32 %call135, 1000, !dbg !881
  call void @llvm.dbg.value(metadata i32 %div136, metadata !590, metadata !DIExpression()), !dbg !490
  %tobool137 = icmp ne i8* %state.0, null, !dbg !882
  br i1 %tobool137, label %if.end140, label %if.then138, !dbg !884

if.then138:                                       ; preds = %if.else133
  %call139 = call noalias i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !885
  call void @llvm.dbg.value(metadata i8* %call139, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end140, !dbg !889

if.end140:                                        ; preds = %if.then138, %if.else133
  %state.16 = phi i8* [ %state.0, %if.else133 ], [ %call139, %if.then138 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.16, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end141

if.end141:                                        ; preds = %if.end140, %if.end132
  %last_capacity_unit.7 = phi i32 [ %last_capacity_unit.6, %if.end132 ], [ %last_capacity_unit.0, %if.end140 ], !dbg !608
  %last_capacity.6 = phi i32 [ %last_capacity.5, %if.end132 ], [ %last_capacity.0, %if.end140 ], !dbg !609
  %design_capacity_unit.9 = phi i32 [ %design_capacity_unit.8, %if.end132 ], [ %design_capacity_unit.0, %if.end140 ], !dbg !610
  %design_capacity.8 = phi i32 [ %design_capacity.7, %if.end132 ], [ %design_capacity.0, %if.end140 ], !dbg !611
  %voltage.14 = phi i32 [ %voltage.13, %if.end132 ], [ %voltage.0, %if.end140 ], !dbg !612
  %present_rate.4 = phi i32 [ %present_rate.3, %if.end132 ], [ %present_rate.0, %if.end140 ], !dbg !613
  %remaining_energy.2 = phi i32 [ %remaining_energy.1, %if.end132 ], [ %remaining_energy.0, %if.end140 ], !dbg !614
  %remaining_capacity.1 = phi i32 [ %remaining_capacity.0, %if.end132 ], [ %div136, %if.end140 ], !dbg !616
  %state.17 = phi i8* [ %state.15, %if.end132 ], [ %state.16, %if.end140 ], !dbg !617
  %type_battery.10 = phi i32 [ %type_battery.9, %if.end132 ], [ %type_battery.0, %if.end140 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.10, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.17, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %remaining_capacity.1, metadata !590, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %remaining_energy.2, metadata !591, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.4, metadata !592, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.14, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.8, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.9, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.6, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.7, metadata !597, metadata !DIExpression()), !dbg !490
  br label %if.end149, !dbg !890

if.else142:                                       ; preds = %if.end8
  %value143 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !891
  %31 = load i8*, i8** %value143, align 8, !dbg !891
  %call144 = call i32 @get_unit_value(i8* %31), !dbg !895
  call void @llvm.dbg.value(metadata i32 %call144, metadata !590, metadata !DIExpression()), !dbg !490
  %tobool145 = icmp ne i8* %state.0, null, !dbg !896
  br i1 %tobool145, label %if.end148, label %if.then146, !dbg !898

if.then146:                                       ; preds = %if.else142
  %call147 = call noalias i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0)) #6, !dbg !899
  call void @llvm.dbg.value(metadata i8* %call147, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end148, !dbg !903

if.end148:                                        ; preds = %if.then146, %if.else142
  %state.18 = phi i8* [ %state.0, %if.else142 ], [ %call147, %if.then146 ], !dbg !616
  call void @llvm.dbg.value(metadata i8* %state.18, metadata !598, metadata !DIExpression()), !dbg !490
  br label %if.end149

if.end149:                                        ; preds = %if.end148, %if.end141
  %last_capacity_unit.8 = phi i32 [ %last_capacity_unit.7, %if.end141 ], [ %last_capacity_unit.0, %if.end148 ], !dbg !608
  %last_capacity.7 = phi i32 [ %last_capacity.6, %if.end141 ], [ %last_capacity.0, %if.end148 ], !dbg !609
  %design_capacity_unit.10 = phi i32 [ %design_capacity_unit.9, %if.end141 ], [ %design_capacity_unit.0, %if.end148 ], !dbg !610
  %design_capacity.9 = phi i32 [ %design_capacity.8, %if.end141 ], [ %design_capacity.0, %if.end148 ], !dbg !611
  %voltage.15 = phi i32 [ %voltage.14, %if.end141 ], [ %voltage.0, %if.end148 ], !dbg !612
  %present_rate.5 = phi i32 [ %present_rate.4, %if.end141 ], [ %present_rate.0, %if.end148 ], !dbg !613
  %remaining_energy.3 = phi i32 [ %remaining_energy.2, %if.end141 ], [ %remaining_energy.0, %if.end148 ], !dbg !614
  %remaining_capacity.2 = phi i32 [ %remaining_capacity.1, %if.end141 ], [ %call144, %if.end148 ], !dbg !616
  %state.19 = phi i8* [ %state.17, %if.end141 ], [ %state.18, %if.end148 ], !dbg !617
  %type_battery.11 = phi i32 [ %type_battery.10, %if.end141 ], [ %type_battery.0, %if.end148 ], !dbg !618
  call void @llvm.dbg.value(metadata i32 %type_battery.11, metadata !599, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* %state.19, metadata !598, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %remaining_capacity.2, metadata !590, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %remaining_energy.3, metadata !591, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.5, metadata !592, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %voltage.15, metadata !593, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity.9, metadata !594, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.10, metadata !595, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.7, metadata !596, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.8, metadata !597, metadata !DIExpression()), !dbg !490
  %call150 = call %struct.list* @list_next(%struct.list* %fields.0), !dbg !904
  call void @llvm.dbg.value(metadata %struct.list* %call150, metadata !604, metadata !DIExpression()), !dbg !490
  br label %while.body5, !dbg !605, !llvm.loop !907

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !909

while_break___0:                                  ; preds = %while_break___2, %if.then7
  %tobool151 = icmp ne i32 %type_battery.0, 0, !dbg !910
  br i1 %tobool151, label %if.then152, label %if.end298, !dbg !912

if.then152:                                       ; preds = %while_break___0
  %tobool153 = icmp ne i8* %state.0, null, !dbg !913
  br i1 %tobool153, label %if.else159, label %if.then154, !dbg !916

if.then154:                                       ; preds = %if.then152
  %tobool155 = icmp ne i32 %show_empty_slots, 0, !dbg !917
  br i1 %tobool155, label %if.then156, label %if.end158, !dbg !920

if.then156:                                       ; preds = %if.then154
  %sub = sub nsw i32 %battery_num.0, 1, !dbg !921
  %call157 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 %sub), !dbg !925
  br label %if.end158, !dbg !926

if.end158:                                        ; preds = %if.then156, %if.then154
  br label %if.end297, !dbg !927

if.else159:                                       ; preds = %if.then152
  %cmp160 = icmp ne i32 %last_capacity_unit.0, -1, !dbg !928
  br i1 %cmp160, label %if.then162, label %if.end174, !dbg !931

if.then162:                                       ; preds = %if.else159
  %cmp163 = icmp eq i32 %last_capacity.0, -1, !dbg !932
  br i1 %cmp163, label %if.then165, label %if.end173, !dbg !935

if.then165:                                       ; preds = %if.then162
  %cmp166 = icmp ne i32 %voltage.0, -1, !dbg !936
  br i1 %cmp166, label %if.then168, label %if.else170, !dbg !939

if.then168:                                       ; preds = %if.then165
  %mul = mul nsw i32 %last_capacity_unit.0, 1000, !dbg !940
  %div169 = sdiv i32 %mul, %voltage.0, !dbg !942
  call void @llvm.dbg.value(metadata i32 %div169, metadata !596, metadata !DIExpression()), !dbg !490
  br label %if.end172, !dbg !943

if.else170:                                       ; preds = %if.then165
  call void @llvm.dbg.value(metadata i32 %last_capacity_unit.0, metadata !596, metadata !DIExpression()), !dbg !490
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i32 0, i32 0, !dbg !944
  %call171 = call i8* @strcpy(i8* %arraydecay, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #6, !dbg !948
  br label %if.end172

if.end172:                                        ; preds = %if.else170, %if.then168
  %last_capacity.8 = phi i32 [ %div169, %if.then168 ], [ %last_capacity_unit.0, %if.else170 ], !dbg !949
  call void @llvm.dbg.value(metadata i32 %last_capacity.8, metadata !596, metadata !DIExpression()), !dbg !490
  br label %if.end173, !dbg !950

if.end173:                                        ; preds = %if.end172, %if.then162
  %last_capacity.9 = phi i32 [ %last_capacity.8, %if.end172 ], [ %last_capacity.0, %if.then162 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %last_capacity.9, metadata !596, metadata !DIExpression()), !dbg !490
  br label %if.end174, !dbg !951

if.end174:                                        ; preds = %if.end173, %if.else159
  %last_capacity.10 = phi i32 [ %last_capacity.9, %if.end173 ], [ %last_capacity.0, %if.else159 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %last_capacity.10, metadata !596, metadata !DIExpression()), !dbg !490
  %cmp175 = icmp ne i32 %design_capacity_unit.0, -1, !dbg !952
  br i1 %cmp175, label %if.then177, label %if.end191, !dbg !954

if.then177:                                       ; preds = %if.end174
  %cmp178 = icmp eq i32 %design_capacity.0, -1, !dbg !955
  br i1 %cmp178, label %if.then180, label %if.end190, !dbg !958

if.then180:                                       ; preds = %if.then177
  %cmp181 = icmp ne i32 %voltage.0, -1, !dbg !959
  br i1 %cmp181, label %if.then183, label %if.else186, !dbg !962

if.then183:                                       ; preds = %if.then180
  %mul184 = mul nsw i32 %design_capacity_unit.0, 1000, !dbg !963
  %div185 = sdiv i32 %mul184, %voltage.0, !dbg !965
  call void @llvm.dbg.value(metadata i32 %div185, metadata !594, metadata !DIExpression()), !dbg !490
  br label %if.end189, !dbg !966

if.else186:                                       ; preds = %if.then180
  call void @llvm.dbg.value(metadata i32 %design_capacity_unit.0, metadata !594, metadata !DIExpression()), !dbg !490
  %arraydecay187 = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i32 0, i32 0, !dbg !967
  %call188 = call i8* @strcpy(i8* %arraydecay187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0)) #6, !dbg !971
  br label %if.end189

if.end189:                                        ; preds = %if.else186, %if.then183
  %design_capacity.10 = phi i32 [ %div185, %if.then183 ], [ %design_capacity_unit.0, %if.else186 ], !dbg !972
  call void @llvm.dbg.value(metadata i32 %design_capacity.10, metadata !594, metadata !DIExpression()), !dbg !490
  br label %if.end190, !dbg !973

if.end190:                                        ; preds = %if.end189, %if.then177
  %design_capacity.11 = phi i32 [ %design_capacity.10, %if.end189 ], [ %design_capacity.0, %if.then177 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %design_capacity.11, metadata !594, metadata !DIExpression()), !dbg !490
  br label %if.end191, !dbg !974

if.end191:                                        ; preds = %if.end190, %if.end174
  %design_capacity.12 = phi i32 [ %design_capacity.11, %if.end190 ], [ %design_capacity.0, %if.end174 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %design_capacity.12, metadata !594, metadata !DIExpression()), !dbg !490
  %cmp192 = icmp ne i32 %remaining_energy.0, -1, !dbg !975
  br i1 %cmp192, label %if.then194, label %if.end208, !dbg !977

if.then194:                                       ; preds = %if.end191
  %cmp195 = icmp eq i32 %remaining_capacity.0, -1, !dbg !978
  br i1 %cmp195, label %if.then197, label %if.end207, !dbg !981

if.then197:                                       ; preds = %if.then194
  %cmp198 = icmp ne i32 %voltage.0, -1, !dbg !982
  br i1 %cmp198, label %if.then200, label %if.else205, !dbg !985

if.then200:                                       ; preds = %if.then197
  %mul201 = mul nsw i32 %remaining_energy.0, 1000, !dbg !986
  %div202 = sdiv i32 %mul201, %voltage.0, !dbg !988
  call void @llvm.dbg.value(metadata i32 %div202, metadata !590, metadata !DIExpression()), !dbg !490
  %mul203 = mul nsw i32 %present_rate.0, 1000, !dbg !989
  %div204 = sdiv i32 %mul203, %voltage.0, !dbg !990
  call void @llvm.dbg.value(metadata i32 %div204, metadata !592, metadata !DIExpression()), !dbg !490
  br label %if.end206, !dbg !991

if.else205:                                       ; preds = %if.then197
  call void @llvm.dbg.value(metadata i32 %remaining_energy.0, metadata !590, metadata !DIExpression()), !dbg !490
  br label %if.end206

if.end206:                                        ; preds = %if.else205, %if.then200
  %present_rate.6 = phi i32 [ %div204, %if.then200 ], [ %present_rate.0, %if.else205 ], !dbg !616
  %remaining_capacity.3 = phi i32 [ %div202, %if.then200 ], [ %remaining_energy.0, %if.else205 ], !dbg !992
  call void @llvm.dbg.value(metadata i32 %remaining_capacity.3, metadata !590, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.6, metadata !592, metadata !DIExpression()), !dbg !490
  br label %if.end207, !dbg !993

if.end207:                                        ; preds = %if.end206, %if.then194
  %present_rate.7 = phi i32 [ %present_rate.6, %if.end206 ], [ %present_rate.0, %if.then194 ], !dbg !616
  %remaining_capacity.4 = phi i32 [ %remaining_capacity.3, %if.end206 ], [ %remaining_capacity.0, %if.then194 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %remaining_capacity.4, metadata !590, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.7, metadata !592, metadata !DIExpression()), !dbg !490
  br label %if.end208, !dbg !994

if.end208:                                        ; preds = %if.end207, %if.end191
  %present_rate.8 = phi i32 [ %present_rate.7, %if.end207 ], [ %present_rate.0, %if.end191 ], !dbg !616
  %remaining_capacity.5 = phi i32 [ %remaining_capacity.4, %if.end207 ], [ %remaining_capacity.0, %if.end191 ], !dbg !616
  call void @llvm.dbg.value(metadata i32 %remaining_capacity.5, metadata !590, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %present_rate.8, metadata !592, metadata !DIExpression()), !dbg !490
  %conv209 = sitofp i32 %last_capacity.10 to double, !dbg !995
  %cmp210 = fcmp olt double %conv209, 1.000000e-02, !dbg !997
  br i1 %cmp210, label %if.then212, label %if.else213, !dbg !998

if.then212:                                       ; preds = %if.end208
  call void @llvm.dbg.value(metadata i32 0, metadata !999, metadata !DIExpression()), !dbg !490
  br label %if.end216, !dbg !1000

if.else213:                                       ; preds = %if.end208
  %mul214 = mul nsw i32 %remaining_capacity.5, 100, !dbg !1002
  %div215 = sdiv i32 %mul214, %last_capacity.10, !dbg !1004
  call void @llvm.dbg.value(metadata i32 %div215, metadata !999, metadata !DIExpression()), !dbg !490
  br label %if.end216

if.end216:                                        ; preds = %if.else213, %if.then212
  %percentage.0 = phi i32 [ 0, %if.then212 ], [ %div215, %if.else213 ], !dbg !1005
  call void @llvm.dbg.value(metadata i32 %percentage.0, metadata !999, metadata !DIExpression()), !dbg !490
  %cmp217 = icmp sgt i32 %percentage.0, 100, !dbg !1006
  br i1 %cmp217, label %if.then219, label %if.end220, !dbg !1008

if.then219:                                       ; preds = %if.end216
  call void @llvm.dbg.value(metadata i32 100, metadata !999, metadata !DIExpression()), !dbg !490
  br label %if.end220, !dbg !1009

if.end220:                                        ; preds = %if.then219, %if.end216
  %percentage.1 = phi i32 [ 100, %if.then219 ], [ %percentage.0, %if.end216 ], !dbg !1011
  call void @llvm.dbg.value(metadata i32 %percentage.1, metadata !999, metadata !DIExpression()), !dbg !490
  %sub221 = sub nsw i32 %battery_num.0, 1, !dbg !1012
  %call222 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 %sub221, i8* %state.0, i32 %percentage.1), !dbg !1015
  %cmp223 = icmp eq i32 %present_rate.8, -1, !dbg !1016
  br i1 %cmp223, label %if.then225, label %if.else226, !dbg !1018

if.then225:                                       ; preds = %if.end220
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end254, !dbg !1021

if.else226:                                       ; preds = %if.end220
  %call227 = call i32 @strcasecmp(i8* %state.0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i32 0, i32 0)) #8, !dbg !1023
  call void @llvm.dbg.value(metadata i32 %call227, metadata !1027, metadata !DIExpression()), !dbg !490
  %tobool228 = icmp ne i32 %call227, 0, !dbg !1028
  br i1 %tobool228, label %if.then229, label %if.else243, !dbg !1030

if.then229:                                       ; preds = %if.else226
  %call230 = call i32 @strcasecmp(i8* %state.0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i32 0, i32 0)) #8, !dbg !1031
  call void @llvm.dbg.value(metadata i32 %call230, metadata !1035, metadata !DIExpression()), !dbg !490
  %tobool231 = icmp ne i32 %call230, 0, !dbg !1036
  br i1 %tobool231, label %if.then232, label %if.else233, !dbg !1038

if.then232:                                       ; preds = %if.then229
  call void @llvm.dbg.value(metadata i8* null, metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end242, !dbg !1039

if.else233:                                       ; preds = %if.then229
  %conv234 = sitofp i32 %present_rate.8 to double, !dbg !1041
  %cmp235 = fcmp ogt double %conv234, 1.000000e-02, !dbg !1043
  br i1 %cmp235, label %if.then237, label %if.else240, !dbg !1044

if.then237:                                       ; preds = %if.else233
  %mul238 = mul nsw i32 3600, %remaining_capacity.5, !dbg !1045
  %div239 = sdiv i32 %mul238, %present_rate.8, !dbg !1047
  call void @llvm.dbg.value(metadata i32 %div239, metadata !1020, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), metadata !1019, metadata !DIExpression()), !dbg !490
  br label %if.end241, !dbg !1048

if.else240:                                       ; preds = %if.else233
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i32 0, i32 0), metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end241

if.end241:                                        ; preds = %if.else240, %if.then237
  %seconds.0 = phi i32 [ %div239, %if.then237 ], [ -1, %if.else240 ], !dbg !1049
  %poststr.0 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i32 0, i32 0), %if.then237 ], [ getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i32 0, i32 0), %if.else240 ], !dbg !1049
  call void @llvm.dbg.value(metadata i8* %poststr.0, metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %seconds.0, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end242

if.end242:                                        ; preds = %if.end241, %if.then232
  %seconds.1 = phi i32 [ -1, %if.then232 ], [ %seconds.0, %if.end241 ], !dbg !1050
  %poststr.1 = phi i8* [ null, %if.then232 ], [ %poststr.0, %if.end241 ], !dbg !1050
  call void @llvm.dbg.value(metadata i8* %poststr.1, metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %seconds.1, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end253, !dbg !1051

if.else243:                                       ; preds = %if.else226
  %conv244 = sitofp i32 %present_rate.8 to double, !dbg !1052
  %cmp245 = fcmp ogt double %conv244, 1.000000e-02, !dbg !1054
  br i1 %cmp245, label %if.then247, label %if.else251, !dbg !1055

if.then247:                                       ; preds = %if.else243
  %sub248 = sub nsw i32 %last_capacity.10, %remaining_capacity.5, !dbg !1056
  %mul249 = mul nsw i32 3600, %sub248, !dbg !1058
  %div250 = sdiv i32 %mul249, %present_rate.8, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %div250, metadata !1020, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), metadata !1019, metadata !DIExpression()), !dbg !490
  br label %if.end252, !dbg !1060

if.else251:                                       ; preds = %if.else243
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i32 0, i32 0), metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 -1, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end252

if.end252:                                        ; preds = %if.else251, %if.then247
  %seconds.2 = phi i32 [ %div250, %if.then247 ], [ -1, %if.else251 ], !dbg !1061
  %poststr.2 = phi i8* [ getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0), %if.then247 ], [ getelementptr inbounds ([49 x i8], [49 x i8]* @.str.29, i32 0, i32 0), %if.else251 ], !dbg !1061
  call void @llvm.dbg.value(metadata i8* %poststr.2, metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %seconds.2, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end253

if.end253:                                        ; preds = %if.end252, %if.end242
  %seconds.3 = phi i32 [ %seconds.1, %if.end242 ], [ %seconds.2, %if.end252 ], !dbg !1062
  %poststr.3 = phi i8* [ %poststr.1, %if.end242 ], [ %poststr.2, %if.end252 ], !dbg !1062
  call void @llvm.dbg.value(metadata i8* %poststr.3, metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %seconds.3, metadata !1020, metadata !DIExpression()), !dbg !490
  br label %if.end254

if.end254:                                        ; preds = %if.end253, %if.then225
  %seconds.4 = phi i32 [ -1, %if.then225 ], [ %seconds.3, %if.end253 ], !dbg !1063
  %poststr.4 = phi i8* [ getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i32 0, i32 0), %if.then225 ], [ %poststr.3, %if.end253 ], !dbg !1063
  call void @llvm.dbg.value(metadata i8* %poststr.4, metadata !1019, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %seconds.4, metadata !1020, metadata !DIExpression()), !dbg !490
  %cmp255 = icmp sgt i32 %seconds.4, 0, !dbg !1064
  br i1 %cmp255, label %if.then257, label %if.else265, !dbg !1066

if.then257:                                       ; preds = %if.end254
  %div258 = sdiv i32 %seconds.4, 3600, !dbg !1067
  call void @llvm.dbg.value(metadata i32 %div258, metadata !1070, metadata !DIExpression()), !dbg !490
  %mul259 = mul nsw i32 3600, %div258, !dbg !1071
  %sub260 = sub nsw i32 %seconds.4, %mul259, !dbg !1072
  call void @llvm.dbg.value(metadata i32 %sub260, metadata !1020, metadata !DIExpression()), !dbg !490
  %div261 = sdiv i32 %sub260, 60, !dbg !1073
  call void @llvm.dbg.value(metadata i32 %div261, metadata !1074, metadata !DIExpression()), !dbg !490
  %mul262 = mul nsw i32 60, %div261, !dbg !1075
  %sub263 = sub nsw i32 %sub260, %mul262, !dbg !1076
  call void @llvm.dbg.value(metadata i32 %sub263, metadata !1020, metadata !DIExpression()), !dbg !490
  %call264 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i32 0, i32 0), i32 %div258, i32 %div261, i32 %sub263, i8* %poststr.4), !dbg !1077
  br label %if.end271, !dbg !1079

if.else265:                                       ; preds = %if.end254
  %32 = ptrtoint i8* %poststr.4 to i64, !dbg !1080
  %cmp266 = icmp ne i64 %32, 0, !dbg !1082
  br i1 %cmp266, label %if.then268, label %if.end270, !dbg !1083

if.then268:                                       ; preds = %if.else265
  %call269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* %poststr.4), !dbg !1084
  br label %if.end270, !dbg !1088

if.end270:                                        ; preds = %if.then268, %if.else265
  br label %if.end271

if.end271:                                        ; preds = %if.end270, %if.then257
  %call272 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.32, i32 0, i32 0)), !dbg !1089
  %tobool273 = icmp ne i32 %show_capacity, 0, !dbg !1092
  br i1 %tobool273, label %if.then274, label %if.end296, !dbg !1094

if.then274:                                       ; preds = %if.end271
  %cmp275 = icmp sgt i32 %design_capacity.12, 0, !dbg !1095
  br i1 %cmp275, label %if.then277, label %if.end295, !dbg !1098

if.then277:                                       ; preds = %if.then274
  %cmp278 = icmp sle i32 %last_capacity.10, 100, !dbg !1099
  br i1 %cmp278, label %if.then280, label %if.else283, !dbg !1102

if.then280:                                       ; preds = %if.then277
  call void @llvm.dbg.value(metadata i32 %last_capacity.10, metadata !999, metadata !DIExpression()), !dbg !490
  %mul281 = mul nsw i32 %last_capacity.10, %design_capacity.12, !dbg !1103
  %div282 = sdiv i32 %mul281, 100, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %div282, metadata !596, metadata !DIExpression()), !dbg !490
  br label %if.end286, !dbg !1106

if.else283:                                       ; preds = %if.then277
  %mul284 = mul nsw i32 %last_capacity.10, 100, !dbg !1107
  %div285 = sdiv i32 %mul284, %design_capacity.12, !dbg !1109
  call void @llvm.dbg.value(metadata i32 %div285, metadata !999, metadata !DIExpression()), !dbg !490
  br label %if.end286

if.end286:                                        ; preds = %if.else283, %if.then280
  %last_capacity.11 = phi i32 [ %div282, %if.then280 ], [ %last_capacity.10, %if.else283 ], !dbg !1011
  %percentage.2 = phi i32 [ %last_capacity.10, %if.then280 ], [ %div285, %if.else283 ], !dbg !1110
  call void @llvm.dbg.value(metadata i32 %percentage.2, metadata !999, metadata !DIExpression()), !dbg !490
  call void @llvm.dbg.value(metadata i32 %last_capacity.11, metadata !596, metadata !DIExpression()), !dbg !490
  %cmp287 = icmp sgt i32 %percentage.2, 100, !dbg !1111
  br i1 %cmp287, label %if.then289, label %if.end290, !dbg !1113

if.then289:                                       ; preds = %if.end286
  call void @llvm.dbg.value(metadata i32 100, metadata !999, metadata !DIExpression()), !dbg !490
  br label %if.end290, !dbg !1114

if.end290:                                        ; preds = %if.then289, %if.end286
  %percentage.3 = phi i32 [ 100, %if.then289 ], [ %percentage.2, %if.end286 ], !dbg !1116
  call void @llvm.dbg.value(metadata i32 %percentage.3, metadata !999, metadata !DIExpression()), !dbg !490
  %sub291 = sub nsw i32 %battery_num.0, 1, !dbg !1117
  %arraydecay292 = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i32 0, i32 0, !dbg !1120
  %arraydecay293 = getelementptr inbounds [4 x i8], [4 x i8]* %capacity_unit, i32 0, i32 0, !dbg !1121
  %call294 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i32 %sub291, i32 %design_capacity.12, i8* %arraydecay292, i32 %last_capacity.11, i8* %arraydecay293, i32 %percentage.3), !dbg !1122
  br label %if.end295, !dbg !1123

if.end295:                                        ; preds = %if.end290, %if.then274
  br label %if.end296, !dbg !1124

if.end296:                                        ; preds = %if.end295, %if.end271
  br label %if.end297

if.end297:                                        ; preds = %if.end296, %if.end158
  %inc = add nsw i32 %battery_num.0, 1, !dbg !1125
  call void @llvm.dbg.value(metadata i32 %inc, metadata !577, metadata !DIExpression()), !dbg !490
  br label %if.end298, !dbg !1126

if.end298:                                        ; preds = %if.end297, %while_break___0
  %battery_num.1 = phi i32 [ %inc, %if.end297 ], [ %battery_num.0, %while_break___0 ], !dbg !582
  call void @llvm.dbg.value(metadata i32 %battery_num.1, metadata !577, metadata !DIExpression()), !dbg !490
  %call299 = call %struct.list* @list_next(%struct.list* %battery.0), !dbg !1127
  call void @llvm.dbg.value(metadata %struct.list* %call299, metadata !576, metadata !DIExpression()), !dbg !490
  br label %while.body, !dbg !578, !llvm.loop !1130

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1132

while_break:                                      ; preds = %while_break___1, %if.then
  ret void, !dbg !1133
}

; Function Attrs: nounwind readonly
declare i32 @strcasecmp(i8*, i8*) #5

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @get_unit_value(i8* %value) #0 !dbg !1134 {
entry:
  %n = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %value, metadata !1137, metadata !DIExpression()), !dbg !1138
  call void @llvm.dbg.declare(metadata i32* %n, metadata !1139, metadata !DIExpression()), !dbg !1140
  call void @llvm.dbg.declare(metadata !4, metadata !1141, metadata !DIExpression()), !dbg !1142
  store i32 -1, i32* %n, align 4, !dbg !1143
  %call = call i32 (i8*, i8*, ...) @"\01__isoc99_sscanf"(i8* %value, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.92, i32 0, i32 0), i32* %n) #6, !dbg !1146
  %0 = load i32, i32* %n, align 4, !dbg !1148
  ret i32 %0, !dbg !1149
}

; Function Attrs: nounwind
declare noalias i8* @strdup(i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define %struct.list* @list_next(%struct.list* %node) #0 !dbg !1150 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %node, metadata !1153, metadata !DIExpression()), !dbg !1154
  %next = getelementptr inbounds %struct.list, %struct.list* %node, i32 0, i32 1, !dbg !1155
  %0 = load %struct.list*, %struct.list** %next, align 8, !dbg !1155
  ret %struct.list* %0, !dbg !1157
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #2

; Function Attrs: noinline nounwind ssp uwtable
define void @print_ac_adapter_information(%struct.list* %ac_adapters, i32 %show_empty_slots) #0 !dbg !1158 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %ac_adapters, metadata !1161, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !1163, metadata !DIExpression()), !dbg !1162
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
  call void @llvm.dbg.declare(metadata !4, metadata !1184, metadata !DIExpression()), !dbg !1185
  call void @llvm.dbg.value(metadata %struct.list* %ac_adapters, metadata !1186, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 1, metadata !1187, metadata !DIExpression()), !dbg !1162
  br label %while.body, !dbg !1188

while.body:                                       ; preds = %if.end50, %entry
  %adapter_num.0 = phi i32 [ 1, %entry ], [ %adapter_num.1, %if.end50 ], !dbg !1192
  %adapter.0 = phi %struct.list* [ %ac_adapters, %entry ], [ %call51, %if.end50 ], !dbg !1192
  call void @llvm.dbg.value(metadata %struct.list* %adapter.0, metadata !1186, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 %adapter_num.0, metadata !1187, metadata !DIExpression()), !dbg !1162
  br label %while_continue___1, !dbg !1193

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !1193

while_continue:                                   ; preds = %while_continue___1
  %tobool = icmp ne %struct.list* %adapter.0, null, !dbg !1194
  br i1 %tobool, label %if.end, label %if.then, !dbg !1197

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1198

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* null, metadata !1200, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i32 1, metadata !1201, metadata !DIExpression()), !dbg !1162
  %data = getelementptr inbounds %struct.list, %struct.list* %adapter.0, i32 0, i32 0, !dbg !1202
  %0 = load i8*, i8** %data, align 8, !dbg !1202
  %1 = bitcast i8* %0 to %struct.list*, !dbg !1203
  call void @llvm.dbg.value(metadata %struct.list* %1, metadata !1204, metadata !DIExpression()), !dbg !1162
  br label %while.body2, !dbg !1205

while.body2:                                      ; preds = %if.end36, %if.end
  %fields.0 = phi %struct.list* [ %1, %if.end ], [ %call37, %if.end36 ], !dbg !1208
  %state.0 = phi i8* [ null, %if.end ], [ %state.4, %if.end36 ], !dbg !1209
  %type_ac.0 = phi i32 [ 1, %if.end ], [ %type_ac.4, %if.end36 ], !dbg !1210
  call void @llvm.dbg.value(metadata i32 %type_ac.0, metadata !1201, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %state.0, metadata !1200, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata %struct.list* %fields.0, metadata !1204, metadata !DIExpression()), !dbg !1162
  br label %while_continue___2, !dbg !1211

while_continue___2:                               ; preds = %while.body2
  br label %while_continue___0, !dbg !1211

while_continue___0:                               ; preds = %while_continue___2
  %tobool3 = icmp ne %struct.list* %fields.0, null, !dbg !1212
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1215

if.then4:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !1216

if.end5:                                          ; preds = %while_continue___0
  %data6 = getelementptr inbounds %struct.list, %struct.list* %fields.0, i32 0, i32 0, !dbg !1218
  %2 = load i8*, i8** %data6, align 8, !dbg !1218
  %3 = bitcast i8* %2 to %struct.field*, !dbg !1220
  call void @llvm.dbg.value(metadata %struct.field* %3, metadata !1221, metadata !DIExpression()), !dbg !1162
  %attr = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1222
  %4 = load i8*, i8** %attr, align 8, !dbg !1222
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !1224
  call void @llvm.dbg.value(metadata i32 %call, metadata !1225, metadata !DIExpression()), !dbg !1162
  %tobool7 = icmp ne i32 %call, 0, !dbg !1226
  br i1 %tobool7, label %if.then8, label %if.else34, !dbg !1228

if.then8:                                         ; preds = %if.end5
  %attr9 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1229
  %5 = load i8*, i8** %attr9, align 8, !dbg !1229
  %call10 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0)) #8, !dbg !1233
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1234, metadata !DIExpression()), !dbg !1162
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1235
  br i1 %tobool11, label %if.then12, label %if.else31, !dbg !1237

if.then12:                                        ; preds = %if.then8
  %attr13 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1238
  %6 = load i8*, i8** %attr13, align 8, !dbg !1238
  %call14 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.36, i32 0, i32 0)) #8, !dbg !1242
  call void @llvm.dbg.value(metadata i32 %call14, metadata !1243, metadata !DIExpression()), !dbg !1162
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1244
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !1246

if.then16:                                        ; preds = %if.then12
  %attr17 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1247
  %7 = load i8*, i8** %attr17, align 8, !dbg !1247
  %call18 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1251
  call void @llvm.dbg.value(metadata i32 %call18, metadata !1252, metadata !DIExpression()), !dbg !1162
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1253
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !1255

if.then20:                                        ; preds = %if.then16
  %value21 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1256
  %8 = load i8*, i8** %value21, align 8, !dbg !1256
  %call22 = call i32 @strcasecmp(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)) #8, !dbg !1260
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1261, metadata !DIExpression()), !dbg !1162
  %cmp = icmp eq i32 %call22, 0, !dbg !1262
  %conv = zext i1 %cmp to i32, !dbg !1262
  call void @llvm.dbg.value(metadata i32 %conv, metadata !1201, metadata !DIExpression()), !dbg !1162
  br label %if.end23, !dbg !1263

if.end23:                                         ; preds = %if.then20, %if.then16
  %type_ac.1 = phi i32 [ %type_ac.0, %if.then16 ], [ %conv, %if.then20 ], !dbg !1208
  call void @llvm.dbg.value(metadata i32 %type_ac.1, metadata !1201, metadata !DIExpression()), !dbg !1162
  br label %if.end30, !dbg !1264

if.else:                                          ; preds = %if.then12
  %value24 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1265
  %9 = load i8*, i8** %value24, align 8, !dbg !1265
  %call25 = call i32 @get_unit_value(i8* %9), !dbg !1269
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1270, metadata !DIExpression()), !dbg !1162
  %tobool26 = icmp ne i32 %call25, 0, !dbg !1271
  br i1 %tobool26, label %if.then27, label %if.else28, !dbg !1273

if.then27:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), metadata !1200, metadata !DIExpression()), !dbg !1162
  br label %if.end29, !dbg !1274

if.else28:                                        ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), metadata !1200, metadata !DIExpression()), !dbg !1162
  br label %if.end29

if.end29:                                         ; preds = %if.else28, %if.then27
  %state.1 = phi i8* [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), %if.then27 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i32 0, i32 0), %if.else28 ], !dbg !1276
  call void @llvm.dbg.value(metadata i8* %state.1, metadata !1200, metadata !DIExpression()), !dbg !1162
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end23
  %state.2 = phi i8* [ %state.0, %if.end23 ], [ %state.1, %if.end29 ], !dbg !1208
  %type_ac.2 = phi i32 [ %type_ac.1, %if.end23 ], [ %type_ac.0, %if.end29 ], !dbg !1210
  call void @llvm.dbg.value(metadata i32 %type_ac.2, metadata !1201, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %state.2, metadata !1200, metadata !DIExpression()), !dbg !1162
  br label %if.end33, !dbg !1277

if.else31:                                        ; preds = %if.then8
  %value32 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1278
  %10 = load i8*, i8** %value32, align 8, !dbg !1278
  call void @llvm.dbg.value(metadata i8* %10, metadata !1200, metadata !DIExpression()), !dbg !1162
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %if.end30
  %state.3 = phi i8* [ %state.2, %if.end30 ], [ %10, %if.else31 ], !dbg !1208
  %type_ac.3 = phi i32 [ %type_ac.2, %if.end30 ], [ %type_ac.0, %if.else31 ], !dbg !1210
  call void @llvm.dbg.value(metadata i32 %type_ac.3, metadata !1201, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %state.3, metadata !1200, metadata !DIExpression()), !dbg !1162
  br label %if.end36, !dbg !1280

if.else34:                                        ; preds = %if.end5
  %value35 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1281
  %11 = load i8*, i8** %value35, align 8, !dbg !1281
  call void @llvm.dbg.value(metadata i8* %11, metadata !1200, metadata !DIExpression()), !dbg !1162
  br label %if.end36

if.end36:                                         ; preds = %if.else34, %if.end33
  %state.4 = phi i8* [ %state.3, %if.end33 ], [ %11, %if.else34 ], !dbg !1208
  %type_ac.4 = phi i32 [ %type_ac.3, %if.end33 ], [ %type_ac.0, %if.else34 ], !dbg !1210
  call void @llvm.dbg.value(metadata i32 %type_ac.4, metadata !1201, metadata !DIExpression()), !dbg !1162
  call void @llvm.dbg.value(metadata i8* %state.4, metadata !1200, metadata !DIExpression()), !dbg !1162
  %call37 = call %struct.list* @list_next(%struct.list* %fields.0), !dbg !1283
  call void @llvm.dbg.value(metadata %struct.list* %call37, metadata !1204, metadata !DIExpression()), !dbg !1162
  br label %while.body2, !dbg !1205, !llvm.loop !1286

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !1288

while_break___0:                                  ; preds = %while_break___2, %if.then4
  %tobool38 = icmp ne i32 %type_ac.0, 0, !dbg !1289
  br i1 %tobool38, label %if.then39, label %if.end50, !dbg !1291

if.then39:                                        ; preds = %while_break___0
  %tobool40 = icmp ne i8* %state.0, null, !dbg !1292
  br i1 %tobool40, label %if.else46, label %if.then41, !dbg !1295

if.then41:                                        ; preds = %if.then39
  %tobool42 = icmp ne i32 %show_empty_slots, 0, !dbg !1296
  br i1 %tobool42, label %if.then43, label %if.end45, !dbg !1299

if.then43:                                        ; preds = %if.then41
  %sub = sub nsw i32 %adapter_num.0, 1, !dbg !1300
  %call44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 %sub), !dbg !1304
  br label %if.end45, !dbg !1305

if.end45:                                         ; preds = %if.then43, %if.then41
  br label %if.end49, !dbg !1306

if.else46:                                        ; preds = %if.then39
  %sub47 = sub nsw i32 %adapter_num.0, 1, !dbg !1307
  %call48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i32 %sub47, i8* %state.0), !dbg !1311
  br label %if.end49

if.end49:                                         ; preds = %if.else46, %if.end45
  %inc = add nsw i32 %adapter_num.0, 1, !dbg !1312
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1187, metadata !DIExpression()), !dbg !1162
  br label %if.end50, !dbg !1313

if.end50:                                         ; preds = %if.end49, %while_break___0
  %adapter_num.1 = phi i32 [ %inc, %if.end49 ], [ %adapter_num.0, %while_break___0 ], !dbg !1192
  call void @llvm.dbg.value(metadata i32 %adapter_num.1, metadata !1187, metadata !DIExpression()), !dbg !1162
  %call51 = call %struct.list* @list_next(%struct.list* %adapter.0), !dbg !1314
  call void @llvm.dbg.value(metadata %struct.list* %call51, metadata !1186, metadata !DIExpression()), !dbg !1162
  br label %while.body, !dbg !1188, !llvm.loop !1317

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1319

while_break:                                      ; preds = %while_break___1, %if.then
  ret void, !dbg !1320
}

; Function Attrs: noinline nounwind ssp uwtable
define void @print_thermal_information(%struct.list* %thermal, i32 %show_empty_slots, i32 %temp_units, i32 %show_trip_points) #0 !dbg !1321 {
entry:
  %trip = alloca [5 x %struct.__anonstruct_trip_27], align 16
  %str = alloca [20 x i8], align 16
  %scale = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.list* %thermal, metadata !1324, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !1326, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %temp_units, metadata !1327, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %show_trip_points, metadata !1328, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.declare(metadata [5 x %struct.__anonstruct_trip_27]* %trip, metadata !1329, metadata !DIExpression()), !dbg !1335
  call void @llvm.dbg.declare(metadata [20 x i8]* %str, metadata !1336, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.declare(metadata i8** %scale, metadata !1341, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.declare(metadata !4, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @llvm.dbg.declare(metadata !4, metadata !1345, metadata !DIExpression()), !dbg !1346
  call void @llvm.dbg.declare(metadata !4, metadata !1347, metadata !DIExpression()), !dbg !1348
  call void @llvm.dbg.declare(metadata !4, metadata !1349, metadata !DIExpression()), !dbg !1350
  call void @llvm.dbg.declare(metadata !4, metadata !1351, metadata !DIExpression()), !dbg !1352
  call void @llvm.dbg.declare(metadata !4, metadata !1353, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.declare(metadata !4, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata !4, metadata !1357, metadata !DIExpression()), !dbg !1358
  call void @llvm.dbg.declare(metadata !4, metadata !1359, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.declare(metadata !4, metadata !1361, metadata !DIExpression()), !dbg !1362
  call void @llvm.dbg.declare(metadata !4, metadata !1363, metadata !DIExpression()), !dbg !1364
  call void @llvm.dbg.declare(metadata !4, metadata !1365, metadata !DIExpression()), !dbg !1366
  call void @llvm.dbg.declare(metadata !4, metadata !1367, metadata !DIExpression()), !dbg !1368
  call void @llvm.dbg.declare(metadata !4, metadata !1369, metadata !DIExpression()), !dbg !1370
  call void @llvm.dbg.declare(metadata !4, metadata !1371, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.declare(metadata !4, metadata !1373, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.declare(metadata !4, metadata !1375, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.declare(metadata !4, metadata !1377, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.declare(metadata !4, metadata !1379, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.declare(metadata !4, metadata !1381, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata !4, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @llvm.dbg.value(metadata %struct.list* %thermal, metadata !1385, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 1, metadata !1386, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 1, metadata !1387, metadata !DIExpression()), !dbg !1325
  br label %while.body, !dbg !1388

while.body:                                       ; preds = %if.end190, %entry
  %type_zone.0 = phi i32 [ 1, %entry ], [ %type_zone.1, %if.end190 ], !dbg !1392
  %sensor_num.0 = phi i32 [ 1, %entry ], [ %sensor_num.1, %if.end190 ], !dbg !1393
  %sensor.0 = phi %struct.list* [ %thermal, %entry ], [ %call191, %if.end190 ], !dbg !1393
  call void @llvm.dbg.value(metadata %struct.list* %sensor.0, metadata !1385, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %sensor_num.0, metadata !1386, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %type_zone.0, metadata !1387, metadata !DIExpression()), !dbg !1325
  br label %while_continue___4, !dbg !1394

while_continue___4:                               ; preds = %while.body
  br label %while_continue, !dbg !1394

while_continue:                                   ; preds = %while_continue___4
  %tobool = icmp ne %struct.list* %sensor.0, null, !dbg !1395
  br i1 %tobool, label %if.end, label %if.then, !dbg !1398

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1399

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata float -1.000000e+00, metadata !1401, metadata !DIExpression()), !dbg !1325
  %arrayidx = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 0, !dbg !1402
  store i8 116, i8* %arrayidx, align 16, !dbg !1404
  %arrayidx1 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 1, !dbg !1402
  store i8 114, i8* %arrayidx1, align 1, !dbg !1404
  %arrayidx2 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 2, !dbg !1402
  store i8 105, i8* %arrayidx2, align 2, !dbg !1404
  %arrayidx3 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 3, !dbg !1402
  store i8 112, i8* %arrayidx3, align 1, !dbg !1404
  %arrayidx4 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 4, !dbg !1402
  store i8 95, i8* %arrayidx4, align 4, !dbg !1404
  %arrayidx5 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 5, !dbg !1402
  store i8 112, i8* %arrayidx5, align 1, !dbg !1404
  %arrayidx6 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 6, !dbg !1402
  store i8 111, i8* %arrayidx6, align 2, !dbg !1404
  %arrayidx7 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 7, !dbg !1402
  store i8 105, i8* %arrayidx7, align 1, !dbg !1404
  %arrayidx8 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 8, !dbg !1402
  store i8 110, i8* %arrayidx8, align 8, !dbg !1404
  %arrayidx9 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 9, !dbg !1402
  store i8 116, i8* %arrayidx9, align 1, !dbg !1404
  %arrayidx10 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 10, !dbg !1402
  store i8 95, i8* %arrayidx10, align 2, !dbg !1405
  %arrayidx11 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 11, !dbg !1402
  store i8 49, i8* %arrayidx11, align 1, !dbg !1405
  %arrayidx12 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 12, !dbg !1402
  store i8 50, i8* %arrayidx12, align 4, !dbg !1405
  %arrayidx13 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 13, !dbg !1402
  store i8 51, i8* %arrayidx13, align 1, !dbg !1405
  %arrayidx14 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 14, !dbg !1402
  store i8 95, i8* %arrayidx14, align 2, !dbg !1405
  %arrayidx15 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 15, !dbg !1402
  store i8 116, i8* %arrayidx15, align 1, !dbg !1405
  %arrayidx16 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 16, !dbg !1402
  store i8 121, i8* %arrayidx16, align 16, !dbg !1405
  %arrayidx17 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 17, !dbg !1402
  store i8 112, i8* %arrayidx17, align 1, !dbg !1405
  %arrayidx18 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 18, !dbg !1402
  store i8 101, i8* %arrayidx18, align 2, !dbg !1405
  %arrayidx19 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i64 0, i64 19, !dbg !1402
  store i8 0, i8* %arrayidx19, align 1, !dbg !1405
  call void @llvm.dbg.value(metadata i8* null, metadata !1406, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 -1, metadata !1407, metadata !DIExpression()), !dbg !1325
  %arraydecay = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i32 0, i32 0, !dbg !1408
  %0 = bitcast %struct.__anonstruct_trip_27* %arraydecay to i8*, !dbg !1410
  %call = call i8* @memset(i8* %0, i32 80, i32 0) #6, !dbg !1411
  %data = getelementptr inbounds %struct.list, %struct.list* %sensor.0, i32 0, i32 0, !dbg !1412
  %1 = load i8*, i8** %data, align 8, !dbg !1412
  %2 = bitcast i8* %1 to %struct.list*, !dbg !1413
  call void @llvm.dbg.value(metadata %struct.list* %2, metadata !1414, metadata !DIExpression()), !dbg !1325
  br label %while.body21, !dbg !1415

while.body21:                                     ; preds = %if.end121, %if.end
  %temperature.0 = phi float [ -1.000000e+00, %if.end ], [ %temperature.5, %if.end121 ], !dbg !1418
  %type_zone.1 = phi i32 [ %type_zone.0, %if.end ], [ %type_zone.3, %if.end121 ], !dbg !1392
  %state.0 = phi i8* [ null, %if.end ], [ %state.7, %if.end121 ], !dbg !1419
  %fields.0 = phi %struct.list* [ %2, %if.end ], [ %call122, %if.end121 ], !dbg !1420
  %trip_points.0 = phi i32 [ -1, %if.end ], [ %trip_points.7, %if.end121 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %trip_points.0, metadata !1407, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata %struct.list* %fields.0, metadata !1414, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %state.0, metadata !1406, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %type_zone.1, metadata !1387, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata float %temperature.0, metadata !1401, metadata !DIExpression()), !dbg !1325
  br label %while_continue___5, !dbg !1422

while_continue___5:                               ; preds = %while.body21
  br label %while_continue___0, !dbg !1422

while_continue___0:                               ; preds = %while_continue___5
  %tobool22 = icmp ne %struct.list* %fields.0, null, !dbg !1423
  br i1 %tobool22, label %if.end24, label %if.then23, !dbg !1426

if.then23:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !1427

if.end24:                                         ; preds = %while_continue___0
  %data25 = getelementptr inbounds %struct.list, %struct.list* %fields.0, i32 0, i32 0, !dbg !1429
  %3 = load i8*, i8** %data25, align 8, !dbg !1429
  %4 = bitcast i8* %3 to %struct.field*, !dbg !1431
  call void @llvm.dbg.value(metadata %struct.field* %4, metadata !1432, metadata !DIExpression()), !dbg !1325
  %attr = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 0, !dbg !1433
  %5 = load i8*, i8** %attr, align 8, !dbg !1433
  %call26 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.34, i32 0, i32 0)) #8, !dbg !1435
  call void @llvm.dbg.value(metadata i32 %call26, metadata !1436, metadata !DIExpression()), !dbg !1325
  %tobool27 = icmp ne i32 %call26, 0, !dbg !1437
  br i1 %tobool27, label %if.then28, label %if.else119, !dbg !1439

if.then28:                                        ; preds = %if.end24
  %attr29 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 0, !dbg !1440
  %6 = load i8*, i8** %attr29, align 8, !dbg !1440
  %call30 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1444
  call void @llvm.dbg.value(metadata i32 %call30, metadata !1445, metadata !DIExpression()), !dbg !1325
  %tobool31 = icmp ne i32 %call30, 0, !dbg !1446
  br i1 %tobool31, label %if.then32, label %if.else99, !dbg !1448

if.then32:                                        ; preds = %if.then28
  %attr33 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 0, !dbg !1449
  %7 = load i8*, i8** %attr33, align 8, !dbg !1449
  %call34 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i32 0, i32 0)) #8, !dbg !1453
  call void @llvm.dbg.value(metadata i32 %call34, metadata !1454, metadata !DIExpression()), !dbg !1325
  %tobool35 = icmp ne i32 %call34, 0, !dbg !1455
  br i1 %tobool35, label %if.then36, label %if.else82, !dbg !1457

if.then36:                                        ; preds = %if.then32
  %attr37 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 0, !dbg !1458
  %8 = load i8*, i8** %attr37, align 8, !dbg !1458
  %call38 = call i32 @strcmp(i8* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.43, i32 0, i32 0)) #8, !dbg !1462
  call void @llvm.dbg.value(metadata i32 %call38, metadata !1463, metadata !DIExpression()), !dbg !1325
  %tobool39 = icmp ne i32 %call38, 0, !dbg !1464
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !1466

if.then40:                                        ; preds = %if.then36
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while.body42, !dbg !1468

while.body42:                                     ; preds = %if.end71, %if.then40
  %i.0 = phi i32 [ 0, %if.then40 ], [ %inc, %if.end71 ], !dbg !1472
  %trip_points.1 = phi i32 [ %trip_points.0, %if.then40 ], [ %trip_points.3, %if.end71 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %trip_points.1, metadata !1407, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while_continue___6, !dbg !1473

while_continue___6:                               ; preds = %while.body42
  br label %while_continue___1, !dbg !1473

while_continue___1:                               ; preds = %while_continue___6
  %cmp = icmp slt i32 %i.0, 5, !dbg !1474
  br i1 %cmp, label %if.end44, label %if.then43, !dbg !1477

if.then43:                                        ; preds = %while_continue___1
  br label %while_break___1, !dbg !1478

if.end44:                                         ; preds = %while_continue___1
  %arraydecay45 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i32 0, i32 0, !dbg !1480
  %call46 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.44, i32 0, i32 0), i32 %i.0) #6, !dbg !1483
  %attr47 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 0, !dbg !1484
  %9 = load i8*, i8** %attr47, align 8, !dbg !1484
  %arraydecay48 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i32 0, i32 0, !dbg !1486
  %call49 = call i32 @strcmp(i8* %9, i8* %arraydecay48) #8, !dbg !1487
  call void @llvm.dbg.value(metadata i32 %call49, metadata !1488, metadata !DIExpression()), !dbg !1325
  %tobool50 = icmp ne i32 %call49, 0, !dbg !1489
  br i1 %tobool50, label %if.end56, label %if.then51, !dbg !1491

if.then51:                                        ; preds = %if.end44
  %value52 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1492
  %10 = load i8*, i8** %value52, align 8, !dbg !1492
  %call53 = call i32 @get_unit_value(i8* %10), !dbg !1496
  call void @llvm.dbg.value(metadata i32 %call53, metadata !1497, metadata !DIExpression()), !dbg !1325
  %conv = sitofp i32 %call53 to double, !dbg !1498
  %div = fdiv double %conv, 1.000000e+03, !dbg !1499
  %conv54 = fptrunc double %div to float, !dbg !1500
  %idxprom = sext i32 %i.0 to i64, !dbg !1501
  %arrayidx55 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom, !dbg !1501
  %trip_temp = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx55, i32 0, i32 0, !dbg !1502
  store float %conv54, float* %trip_temp, align 16, !dbg !1503
  br label %if.end56, !dbg !1504

if.end56:                                         ; preds = %if.then51, %if.end44
  %arraydecay57 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i32 0, i32 0, !dbg !1505
  %call58 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.45, i32 0, i32 0), i32 %i.0) #6, !dbg !1508
  %attr59 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 0, !dbg !1509
  %11 = load i8*, i8** %attr59, align 8, !dbg !1509
  %arraydecay60 = getelementptr inbounds [20 x i8], [20 x i8]* %str, i32 0, i32 0, !dbg !1511
  %call61 = call i32 @strcmp(i8* %11, i8* %arraydecay60) #8, !dbg !1512
  call void @llvm.dbg.value(metadata i32 %call61, metadata !1513, metadata !DIExpression()), !dbg !1325
  %tobool62 = icmp ne i32 %call61, 0, !dbg !1514
  br i1 %tobool62, label %if.end71, label %if.then63, !dbg !1516

if.then63:                                        ; preds = %if.end56
  %value64 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1517
  %12 = load i8*, i8** %value64, align 8, !dbg !1517
  %idxprom65 = sext i32 %i.0 to i64, !dbg !1519
  %arrayidx66 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom65, !dbg !1519
  %trip_type = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx66, i32 0, i32 1, !dbg !1520
  store i8* %12, i8** %trip_type, align 8, !dbg !1521
  %cmp67 = icmp sgt i32 %i.0, %trip_points.1, !dbg !1522
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !1524

if.then69:                                        ; preds = %if.then63
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1407, metadata !DIExpression()), !dbg !1325
  br label %if.end70, !dbg !1525

if.end70:                                         ; preds = %if.then69, %if.then63
  %trip_points.2 = phi i32 [ %i.0, %if.then69 ], [ %trip_points.1, %if.then63 ], !dbg !1420
  call void @llvm.dbg.value(metadata i32 %trip_points.2, metadata !1407, metadata !DIExpression()), !dbg !1325
  br label %if.end71, !dbg !1527

if.end71:                                         ; preds = %if.end70, %if.end56
  %trip_points.3 = phi i32 [ %trip_points.1, %if.end56 ], [ %trip_points.2, %if.end70 ], !dbg !1420
  call void @llvm.dbg.value(metadata i32 %trip_points.3, metadata !1407, metadata !DIExpression()), !dbg !1325
  %inc = add nsw i32 %i.0, 1, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while.body42, !dbg !1468, !llvm.loop !1529

while_break___6:                                  ; No predecessors!
  br label %while_break___1, !dbg !1531

while_break___1:                                  ; preds = %while_break___6, %if.then43
  br label %if.end81, !dbg !1532

if.else:                                          ; preds = %if.then36
  %value72 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1533
  %13 = load i8*, i8** %value72, align 8, !dbg !1533
  %call73 = call i32 @get_unit_value(i8* %13), !dbg !1537
  call void @llvm.dbg.value(metadata i32 %call73, metadata !1538, metadata !DIExpression()), !dbg !1325
  %conv74 = sitofp i32 %call73 to double, !dbg !1539
  %div75 = fdiv double %conv74, 1.000000e+03, !dbg !1540
  %conv76 = fptrunc double %div75 to float, !dbg !1541
  call void @llvm.dbg.value(metadata float %conv76, metadata !1401, metadata !DIExpression()), !dbg !1325
  %tobool77 = icmp ne i8* %state.0, null, !dbg !1542
  br i1 %tobool77, label %if.end80, label %if.then78, !dbg !1544

if.then78:                                        ; preds = %if.else
  %call79 = call noalias i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)) #6, !dbg !1545
  call void @llvm.dbg.value(metadata i8* %call79, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %if.end80, !dbg !1549

if.end80:                                         ; preds = %if.then78, %if.else
  %state.1 = phi i8* [ %state.0, %if.else ], [ %call79, %if.then78 ], !dbg !1420
  call void @llvm.dbg.value(metadata i8* %state.1, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %while_break___1
  %temperature.1 = phi float [ %temperature.0, %while_break___1 ], [ %conv76, %if.end80 ], !dbg !1420
  %state.2 = phi i8* [ %state.0, %while_break___1 ], [ %state.1, %if.end80 ], !dbg !1419
  %trip_points.4 = phi i32 [ %trip_points.1, %while_break___1 ], [ %trip_points.0, %if.end80 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %trip_points.4, metadata !1407, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %state.2, metadata !1406, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata float %temperature.1, metadata !1401, metadata !DIExpression()), !dbg !1325
  br label %if.end98, !dbg !1550

if.else82:                                        ; preds = %if.then32
  %value83 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1551
  %14 = load i8*, i8** %value83, align 8, !dbg !1551
  %call84 = call i32 @get_unit_value(i8* %14), !dbg !1555
  call void @llvm.dbg.value(metadata i32 %call84, metadata !1556, metadata !DIExpression()), !dbg !1325
  %conv85 = sitofp i32 %call84 to float, !dbg !1557
  call void @llvm.dbg.value(metadata float %conv85, metadata !1401, metadata !DIExpression()), !dbg !1325
  %value86 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1558
  %15 = load i8*, i8** %value86, align 8, !dbg !1558
  %call87 = call i8* @strstr(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.47, i32 0, i32 0)) #8, !dbg !1560
  call void @llvm.dbg.value(metadata i8* %call87, metadata !1561, metadata !DIExpression()), !dbg !1325
  %tobool88 = icmp ne i8* %call87, null, !dbg !1562
  br i1 %tobool88, label %if.then89, label %if.end93, !dbg !1564

if.then89:                                        ; preds = %if.else82
  %div90 = fdiv float %conv85, 1.000000e+01, !dbg !1565
  %conv91 = fpext float %div90 to double, !dbg !1567
  %sub = fsub double %conv91, 2.731000e+02, !dbg !1568
  %conv92 = fptrunc double %sub to float, !dbg !1569
  call void @llvm.dbg.value(metadata float %conv92, metadata !1401, metadata !DIExpression()), !dbg !1325
  br label %if.end93, !dbg !1570

if.end93:                                         ; preds = %if.then89, %if.else82
  %temperature.2 = phi float [ %conv92, %if.then89 ], [ %conv85, %if.else82 ], !dbg !1571
  call void @llvm.dbg.value(metadata float %temperature.2, metadata !1401, metadata !DIExpression()), !dbg !1325
  %tobool94 = icmp ne i8* %state.0, null, !dbg !1572
  br i1 %tobool94, label %if.end97, label %if.then95, !dbg !1574

if.then95:                                        ; preds = %if.end93
  %call96 = call noalias i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)) #6, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %call96, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %if.end97, !dbg !1579

if.end97:                                         ; preds = %if.then95, %if.end93
  %state.3 = phi i8* [ %state.0, %if.end93 ], [ %call96, %if.then95 ], !dbg !1420
  call void @llvm.dbg.value(metadata i8* %state.3, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %if.end98

if.end98:                                         ; preds = %if.end97, %if.end81
  %temperature.3 = phi float [ %temperature.1, %if.end81 ], [ %temperature.2, %if.end97 ], !dbg !1420
  %state.4 = phi i8* [ %state.2, %if.end81 ], [ %state.3, %if.end97 ], !dbg !1419
  %trip_points.5 = phi i32 [ %trip_points.4, %if.end81 ], [ %trip_points.0, %if.end97 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %trip_points.5, metadata !1407, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %state.4, metadata !1406, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata float %temperature.3, metadata !1401, metadata !DIExpression()), !dbg !1325
  br label %if.end118, !dbg !1580

if.else99:                                        ; preds = %if.then28
  %value100 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1581
  %16 = load i8*, i8** %value100, align 8, !dbg !1581
  %call101 = call i8* @strstr(i8* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0)) #8, !dbg !1585
  call void @llvm.dbg.value(metadata i8* %call101, metadata !1586, metadata !DIExpression()), !dbg !1325
  %17 = ptrtoint i8* %call101 to i64, !dbg !1587
  %cmp102 = icmp ne i64 %17, 0, !dbg !1589
  br i1 %cmp102, label %if.then104, label %if.else105, !dbg !1590

if.then104:                                       ; preds = %if.else99
  call void @llvm.dbg.value(metadata i32 1, metadata !1591, metadata !DIExpression()), !dbg !1325
  br label %if.end113, !dbg !1592

if.else105:                                       ; preds = %if.else99
  %value106 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1594
  %18 = load i8*, i8** %value106, align 8, !dbg !1594
  %call107 = call i8* @strstr(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0)) #8, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %call107, metadata !1599, metadata !DIExpression()), !dbg !1325
  %19 = ptrtoint i8* %call107 to i64, !dbg !1600
  %cmp108 = icmp ne i64 %19, 0, !dbg !1602
  br i1 %cmp108, label %if.then110, label %if.else111, !dbg !1603

if.then110:                                       ; preds = %if.else105
  call void @llvm.dbg.value(metadata i32 1, metadata !1591, metadata !DIExpression()), !dbg !1325
  br label %if.end112, !dbg !1604

if.else111:                                       ; preds = %if.else105
  call void @llvm.dbg.value(metadata i32 0, metadata !1591, metadata !DIExpression()), !dbg !1325
  br label %if.end112

if.end112:                                        ; preds = %if.else111, %if.then110
  %tmp___1.0 = phi i32 [ 1, %if.then110 ], [ 0, %if.else111 ], !dbg !1606
  call void @llvm.dbg.value(metadata i32 %tmp___1.0, metadata !1591, metadata !DIExpression()), !dbg !1325
  br label %if.end113

if.end113:                                        ; preds = %if.end112, %if.then104
  %tmp___1.1 = phi i32 [ 1, %if.then104 ], [ %tmp___1.0, %if.end112 ], !dbg !1607
  call void @llvm.dbg.value(metadata i32 %tmp___1.1, metadata !1591, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %tmp___1.1, metadata !1387, metadata !DIExpression()), !dbg !1325
  %tobool114 = icmp ne i8* %state.0, null, !dbg !1608
  br i1 %tobool114, label %if.end117, label %if.then115, !dbg !1610

if.then115:                                       ; preds = %if.end113
  %call116 = call noalias i8* @strdup(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0)) #6, !dbg !1611
  call void @llvm.dbg.value(metadata i8* %call116, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %if.end117, !dbg !1615

if.end117:                                        ; preds = %if.then115, %if.end113
  %state.5 = phi i8* [ %state.0, %if.end113 ], [ %call116, %if.then115 ], !dbg !1420
  call void @llvm.dbg.value(metadata i8* %state.5, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %if.end118

if.end118:                                        ; preds = %if.end117, %if.end98
  %temperature.4 = phi float [ %temperature.3, %if.end98 ], [ %temperature.0, %if.end117 ], !dbg !1418
  %type_zone.2 = phi i32 [ %type_zone.1, %if.end98 ], [ %tmp___1.1, %if.end117 ], !dbg !1393
  %state.6 = phi i8* [ %state.4, %if.end98 ], [ %state.5, %if.end117 ], !dbg !1419
  %trip_points.6 = phi i32 [ %trip_points.5, %if.end98 ], [ %trip_points.0, %if.end117 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %trip_points.6, metadata !1407, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %state.6, metadata !1406, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %type_zone.2, metadata !1387, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata float %temperature.4, metadata !1401, metadata !DIExpression()), !dbg !1325
  br label %if.end121, !dbg !1616

if.else119:                                       ; preds = %if.end24
  %value120 = getelementptr inbounds %struct.field, %struct.field* %4, i32 0, i32 1, !dbg !1617
  %20 = load i8*, i8** %value120, align 8, !dbg !1617
  call void @llvm.dbg.value(metadata i8* %20, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %if.end121

if.end121:                                        ; preds = %if.else119, %if.end118
  %temperature.5 = phi float [ %temperature.4, %if.end118 ], [ %temperature.0, %if.else119 ], !dbg !1418
  %type_zone.3 = phi i32 [ %type_zone.2, %if.end118 ], [ %type_zone.1, %if.else119 ], !dbg !1392
  %state.7 = phi i8* [ %state.6, %if.end118 ], [ %20, %if.else119 ], !dbg !1420
  %trip_points.7 = phi i32 [ %trip_points.6, %if.end118 ], [ %trip_points.0, %if.else119 ], !dbg !1421
  call void @llvm.dbg.value(metadata i32 %trip_points.7, metadata !1407, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i8* %state.7, metadata !1406, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata i32 %type_zone.3, metadata !1387, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.value(metadata float %temperature.5, metadata !1401, metadata !DIExpression()), !dbg !1325
  %call122 = call %struct.list* @list_next(%struct.list* %fields.0), !dbg !1619
  call void @llvm.dbg.value(metadata %struct.list* %call122, metadata !1414, metadata !DIExpression()), !dbg !1325
  br label %while.body21, !dbg !1415, !llvm.loop !1622

while_break___5:                                  ; No predecessors!
  br label %while_break___0, !dbg !1624

while_break___0:                                  ; preds = %while_break___5, %if.then23
  %tobool123 = icmp ne i32 %type_zone.1, 0, !dbg !1625
  br i1 %tobool123, label %if.then124, label %if.end190, !dbg !1627

if.then124:                                       ; preds = %while_break___0
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while.body126, !dbg !1628

while.body126:                                    ; preds = %if.end148, %if.then124
  %i.1 = phi i32 [ 0, %if.then124 ], [ %inc149, %if.end148 ], !dbg !1632
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while_continue___7, !dbg !1633

while_continue___7:                               ; preds = %while.body126
  br label %while_continue___2, !dbg !1633

while_continue___2:                               ; preds = %while_continue___7
  %cmp127 = icmp sle i32 %i.1, %trip_points.0, !dbg !1634
  br i1 %cmp127, label %if.end130, label %if.then129, !dbg !1637

if.then129:                                       ; preds = %while_continue___2
  br label %while_break___2, !dbg !1638

if.end130:                                        ; preds = %while_continue___2
  %idxprom131 = sext i32 %i.1 to i64, !dbg !1640
  %arrayidx132 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom131, !dbg !1640
  %trip_temp133 = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx132, i32 0, i32 0, !dbg !1642
  %21 = load float, float* %trip_temp133, align 16, !dbg !1642
  %cmp134 = fcmp oge float %temperature.0, %21, !dbg !1643
  br i1 %cmp134, label %if.then136, label %if.end148, !dbg !1644

if.then136:                                       ; preds = %if.end130
  %idxprom137 = sext i32 %i.1 to i64, !dbg !1645
  %arrayidx138 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom137, !dbg !1645
  %trip_temp139 = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx138, i32 0, i32 0, !dbg !1648
  %22 = load float, float* %trip_temp139, align 16, !dbg !1648
  %conv140 = fpext float %22 to double, !dbg !1649
  %cmp141 = fcmp oge double %conv140, 1.000000e-02, !dbg !1650
  br i1 %cmp141, label %if.then143, label %if.end147, !dbg !1651

if.then143:                                       ; preds = %if.then136
  %idxprom144 = sext i32 %i.1 to i64, !dbg !1652
  %arrayidx145 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom144, !dbg !1652
  %trip_type146 = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx145, i32 0, i32 1, !dbg !1654
  %23 = load i8*, i8** %trip_type146, align 8, !dbg !1654
  call void @llvm.dbg.value(metadata i8* %23, metadata !1406, metadata !DIExpression()), !dbg !1325
  br label %while_break___2, !dbg !1655

if.end147:                                        ; preds = %if.then136
  br label %if.end148, !dbg !1656

if.end148:                                        ; preds = %if.end147, %if.end130
  %inc149 = add nsw i32 %i.1, 1, !dbg !1657
  call void @llvm.dbg.value(metadata i32 %inc149, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while.body126, !dbg !1628, !llvm.loop !1658

while_break___7:                                  ; No predecessors!
  br label %while_break___2, !dbg !1660

while_break___2:                                  ; preds = %while_break___7, %if.then143, %if.then129
  %state.8 = phi i8* [ %23, %if.then143 ], [ %state.0, %if.then129 ], [ undef, %while_break___7 ], !dbg !1420
  call void @llvm.dbg.value(metadata i8* %state.8, metadata !1406, metadata !DIExpression()), !dbg !1325
  %tobool150 = icmp ne i8* %state.8, null, !dbg !1661
  br i1 %tobool150, label %if.else157, label %if.then151, !dbg !1663

if.then151:                                       ; preds = %while_break___2
  %tobool152 = icmp ne i32 %show_empty_slots, 0, !dbg !1664
  br i1 %tobool152, label %if.then153, label %if.end156, !dbg !1667

if.then153:                                       ; preds = %if.then151
  %sub154 = sub nsw i32 %sensor_num.0, 1, !dbg !1668
  %call155 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 %sub154), !dbg !1672
  br label %if.end156, !dbg !1673

if.end156:                                        ; preds = %if.then153, %if.then151
  br label %if.end188, !dbg !1674

if.else157:                                       ; preds = %while_break___2
  %call158 = call double @get_real_temp(float %temperature.0, i8** %scale, i32 %temp_units), !dbg !1675
  call void @llvm.dbg.value(metadata double %call158, metadata !1679, metadata !DIExpression()), !dbg !1325
  %sub159 = sub nsw i32 %sensor_num.0, 1, !dbg !1680
  %24 = load i8*, i8** %scale, align 8, !dbg !1682
  %call160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 %sub159, i8* %state.8, double %call158, i8* %24), !dbg !1683
  %tobool161 = icmp ne i32 %show_trip_points, 0, !dbg !1684
  br i1 %tobool161, label %if.then162, label %if.end187, !dbg !1686

if.then162:                                       ; preds = %if.else157
  call void @llvm.dbg.value(metadata i32 0, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while.body164, !dbg !1687

while.body164:                                    ; preds = %if.end185, %if.then162
  %i.2 = phi i32 [ 0, %if.then162 ], [ %inc186, %if.end185 ], !dbg !1691
  call void @llvm.dbg.value(metadata i32 %i.2, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while_continue___8, !dbg !1692

while_continue___8:                               ; preds = %while.body164
  br label %while_continue___3, !dbg !1692

while_continue___3:                               ; preds = %while_continue___8
  %cmp165 = icmp sle i32 %i.2, %trip_points.0, !dbg !1693
  br i1 %cmp165, label %if.end168, label %if.then167, !dbg !1696

if.then167:                                       ; preds = %while_continue___3
  br label %while_break___3, !dbg !1697

if.end168:                                        ; preds = %while_continue___3
  %idxprom169 = sext i32 %i.2 to i64, !dbg !1699
  %arrayidx170 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom169, !dbg !1699
  %trip_temp171 = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx170, i32 0, i32 0, !dbg !1701
  %25 = load float, float* %trip_temp171, align 16, !dbg !1701
  %conv172 = fpext float %25 to double, !dbg !1702
  %cmp173 = fcmp oge double %conv172, 1.000000e-02, !dbg !1703
  br i1 %cmp173, label %if.then175, label %if.end185, !dbg !1704

if.then175:                                       ; preds = %if.end168
  %idxprom176 = sext i32 %i.2 to i64, !dbg !1705
  %arrayidx177 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom176, !dbg !1705
  %trip_temp178 = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx177, i32 0, i32 0, !dbg !1709
  %26 = load float, float* %trip_temp178, align 16, !dbg !1709
  %call179 = call double @get_real_temp(float %26, i8** %scale, i32 %temp_units), !dbg !1710
  call void @llvm.dbg.value(metadata double %call179, metadata !1679, metadata !DIExpression()), !dbg !1325
  %sub180 = sub nsw i32 %sensor_num.0, 1, !dbg !1711
  %idxprom181 = sext i32 %i.2 to i64, !dbg !1713
  %arrayidx182 = getelementptr inbounds [5 x %struct.__anonstruct_trip_27], [5 x %struct.__anonstruct_trip_27]* %trip, i64 0, i64 %idxprom181, !dbg !1713
  %trip_type183 = getelementptr inbounds %struct.__anonstruct_trip_27, %struct.__anonstruct_trip_27* %arrayidx182, i32 0, i32 1, !dbg !1714
  %27 = load i8*, i8** %trip_type183, align 8, !dbg !1714
  %28 = load i8*, i8** %scale, align 8, !dbg !1715
  %call184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i32 %sub180, i32 %i.2, i8* %27, double %call179, i8* %28), !dbg !1716
  br label %if.end185, !dbg !1717

if.end185:                                        ; preds = %if.then175, %if.end168
  %inc186 = add nsw i32 %i.2, 1, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %inc186, metadata !1467, metadata !DIExpression()), !dbg !1325
  br label %while.body164, !dbg !1687, !llvm.loop !1719

while_break___8:                                  ; No predecessors!
  br label %while_break___3, !dbg !1721

while_break___3:                                  ; preds = %while_break___8, %if.then167
  br label %if.end187, !dbg !1722

if.end187:                                        ; preds = %while_break___3, %if.else157
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %if.end156
  %inc189 = add nsw i32 %sensor_num.0, 1, !dbg !1723
  call void @llvm.dbg.value(metadata i32 %inc189, metadata !1386, metadata !DIExpression()), !dbg !1325
  br label %if.end190, !dbg !1724

if.end190:                                        ; preds = %if.end188, %while_break___0
  %sensor_num.1 = phi i32 [ %inc189, %if.end188 ], [ %sensor_num.0, %while_break___0 ], !dbg !1393
  call void @llvm.dbg.value(metadata i32 %sensor_num.1, metadata !1386, metadata !DIExpression()), !dbg !1325
  %call191 = call %struct.list* @list_next(%struct.list* %sensor.0), !dbg !1725
  call void @llvm.dbg.value(metadata %struct.list* %call191, metadata !1385, metadata !DIExpression()), !dbg !1325
  br label %while.body, !dbg !1388, !llvm.loop !1728

while_break___4:                                  ; No predecessors!
  br label %while_break, !dbg !1730

while_break:                                      ; preds = %while_break___4, %if.then
  ret void, !dbg !1731
}

; Function Attrs: nounwind
declare i8* @memset(i8*, i32, i32) #2

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal double @get_real_temp(float %temperature, i8** %scale, i32 %temp_units) #0 !dbg !1732 {
entry:
  call void @llvm.dbg.value(metadata float %temperature, metadata !1736, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8** %scale, metadata !1738, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i32 %temp_units, metadata !1739, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.declare(metadata !4, metadata !1740, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.declare(metadata !4, metadata !1742, metadata !DIExpression()), !dbg !1743
  call void @llvm.dbg.declare(metadata !4, metadata !1744, metadata !DIExpression()), !dbg !1745
  %conv = fpext float %temperature to double, !dbg !1746
  call void @llvm.dbg.value(metadata double %conv, metadata !1748, metadata !DIExpression()), !dbg !1737
  %cmp = icmp eq i32 %temp_units, 1, !dbg !1749
  br i1 %cmp, label %if.then, label %if.end, !dbg !1752

if.then:                                          ; preds = %entry
  br label %case_1, !dbg !1753

if.end:                                           ; preds = %entry
  %cmp2 = icmp eq i32 %temp_units, 2, !dbg !1755
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !1757

if.then4:                                         ; preds = %if.end
  br label %case_2, !dbg !1758

if.end5:                                          ; preds = %if.end
  br label %switch_default, !dbg !1760

case_1:                                           ; preds = %if.then
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.93, i32 0, i32 0), i8** %scale, align 8, !dbg !1761
  br label %switch_break, !dbg !1762

case_2:                                           ; preds = %if.then4
  %mul = fmul double %conv, 1.800000e+00, !dbg !1763
  %add = fadd double %mul, 3.200000e+01, !dbg !1764
  call void @llvm.dbg.value(metadata double %add, metadata !1748, metadata !DIExpression()), !dbg !1737
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.94, i32 0, i32 0), i8** %scale, align 8, !dbg !1765
  br label %switch_break, !dbg !1766

switch_default:                                   ; preds = %if.end5
  %add6 = fadd double %conv, 2.731000e+02, !dbg !1767
  call void @llvm.dbg.value(metadata double %add6, metadata !1748, metadata !DIExpression()), !dbg !1737
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.95, i32 0, i32 0), i8** %scale, align 8, !dbg !1768
  br label %switch_break, !dbg !1769

switch_break:                                     ; preds = %switch_default, %case_2, %case_1
  %real_temp.0 = phi double [ %conv, %case_1 ], [ %add, %case_2 ], [ %add6, %switch_default ], !dbg !1770
  call void @llvm.dbg.value(metadata double %real_temp.0, metadata !1748, metadata !DIExpression()), !dbg !1737
  ret double %real_temp.0, !dbg !1771
}

; Function Attrs: noinline nounwind ssp uwtable
define void @print_cooling_information(%struct.list* %cooling, i32 %show_empty_slots) #0 !dbg !1772 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %cooling, metadata !1773, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !1775, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.declare(metadata !4, metadata !1776, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.declare(metadata !4, metadata !1778, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.declare(metadata !4, metadata !1780, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.declare(metadata !4, metadata !1782, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.declare(metadata !4, metadata !1784, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.declare(metadata !4, metadata !1786, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.declare(metadata !4, metadata !1788, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.declare(metadata !4, metadata !1790, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.declare(metadata !4, metadata !1792, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.declare(metadata !4, metadata !1794, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.declare(metadata !4, metadata !1796, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.declare(metadata !4, metadata !1798, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.declare(metadata !4, metadata !1800, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.declare(metadata !4, metadata !1802, metadata !DIExpression()), !dbg !1803
  call void @llvm.dbg.declare(metadata !4, metadata !1804, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.declare(metadata !4, metadata !1806, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata %struct.list* %cooling, metadata !1808, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 1, metadata !1809, metadata !DIExpression()), !dbg !1774
  br label %while.body, !dbg !1810

while.body:                                       ; preds = %if.end77, %entry
  %sensor_num.0 = phi i32 [ 1, %entry ], [ %sensor_num.1, %if.end77 ], !dbg !1814
  %sensor.0 = phi %struct.list* [ %cooling, %entry ], [ %call78, %if.end77 ], !dbg !1814
  call void @llvm.dbg.value(metadata %struct.list* %sensor.0, metadata !1808, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %sensor_num.0, metadata !1809, metadata !DIExpression()), !dbg !1774
  br label %while_continue___1, !dbg !1815

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !1815

while_continue:                                   ; preds = %while_continue___1
  %tobool = icmp ne %struct.list* %sensor.0, null, !dbg !1816
  br i1 %tobool, label %if.end, label %if.then, !dbg !1819

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !1820

if.end:                                           ; preds = %while_continue
  call void @llvm.dbg.value(metadata i8* null, metadata !1822, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* null, metadata !1823, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 -1, metadata !1824, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 -1, metadata !1825, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 1, metadata !1826, metadata !DIExpression()), !dbg !1774
  %data = getelementptr inbounds %struct.list, %struct.list* %sensor.0, i32 0, i32 0, !dbg !1827
  %0 = load i8*, i8** %data, align 8, !dbg !1827
  %1 = bitcast i8* %0 to %struct.list*, !dbg !1828
  call void @llvm.dbg.value(metadata %struct.list* %1, metadata !1829, metadata !DIExpression()), !dbg !1774
  br label %while.body2, !dbg !1830

while.body2:                                      ; preds = %if.end41, %if.end
  %cur_state.0 = phi i32 [ -1, %if.end ], [ %cur_state.3, %if.end41 ], !dbg !1833
  %type.0 = phi i8* [ null, %if.end ], [ %type.2, %if.end41 ], !dbg !1834
  %state.0 = phi i8* [ null, %if.end ], [ %state.1, %if.end41 ], !dbg !1835
  %max_state.0 = phi i32 [ -1, %if.end ], [ %max_state.4, %if.end41 ], !dbg !1833
  %fields.0 = phi %struct.list* [ %1, %if.end ], [ %call42, %if.end41 ], !dbg !1836
  %type_cooling.0 = phi i32 [ 1, %if.end ], [ %type_cooling.2, %if.end41 ], !dbg !1837
  call void @llvm.dbg.value(metadata i32 %type_cooling.0, metadata !1826, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata %struct.list* %fields.0, metadata !1829, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %max_state.0, metadata !1825, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %state.0, metadata !1822, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %type.0, metadata !1823, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %cur_state.0, metadata !1824, metadata !DIExpression()), !dbg !1774
  br label %while_continue___2, !dbg !1838

while_continue___2:                               ; preds = %while.body2
  br label %while_continue___0, !dbg !1838

while_continue___0:                               ; preds = %while_continue___2
  %tobool3 = icmp ne %struct.list* %fields.0, null, !dbg !1839
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !1842

if.then4:                                         ; preds = %while_continue___0
  br label %while_break___0, !dbg !1843

if.end5:                                          ; preds = %while_continue___0
  %data6 = getelementptr inbounds %struct.list, %struct.list* %fields.0, i32 0, i32 0, !dbg !1845
  %2 = load i8*, i8** %data6, align 8, !dbg !1845
  %3 = bitcast i8* %2 to %struct.field*, !dbg !1847
  call void @llvm.dbg.value(metadata %struct.field* %3, metadata !1848, metadata !DIExpression()), !dbg !1774
  %attr = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1849
  %4 = load i8*, i8** %attr, align 8, !dbg !1849
  %call = call i32 @strcmp(i8* %4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0)) #8, !dbg !1851
  call void @llvm.dbg.value(metadata i32 %call, metadata !1852, metadata !DIExpression()), !dbg !1774
  %tobool7 = icmp ne i32 %call, 0, !dbg !1853
  br i1 %tobool7, label %if.then8, label %if.else39, !dbg !1855

if.then8:                                         ; preds = %if.end5
  %attr9 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1856
  %5 = load i8*, i8** %attr9, align 8, !dbg !1856
  %call10 = call i32 @strcmp(i8* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i32 0, i32 0)) #8, !dbg !1860
  call void @llvm.dbg.value(metadata i32 %call10, metadata !1861, metadata !DIExpression()), !dbg !1774
  %tobool11 = icmp ne i32 %call10, 0, !dbg !1862
  br i1 %tobool11, label %if.then12, label %if.else27, !dbg !1864

if.then12:                                        ; preds = %if.then8
  %attr13 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1865
  %6 = load i8*, i8** %attr13, align 8, !dbg !1865
  %call14 = call i32 @strcmp(i8* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.54, i32 0, i32 0)) #8, !dbg !1869
  call void @llvm.dbg.value(metadata i32 %call14, metadata !1870, metadata !DIExpression()), !dbg !1774
  %tobool15 = icmp ne i32 %call14, 0, !dbg !1871
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !1873

if.then16:                                        ; preds = %if.then12
  %attr17 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 0, !dbg !1874
  %7 = load i8*, i8** %attr17, align 8, !dbg !1874
  %call18 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.55, i32 0, i32 0)) #8, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %call18, metadata !1879, metadata !DIExpression()), !dbg !1774
  %tobool19 = icmp ne i32 %call18, 0, !dbg !1880
  br i1 %tobool19, label %if.end23, label %if.then20, !dbg !1882

if.then20:                                        ; preds = %if.then16
  %value21 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1883
  %8 = load i8*, i8** %value21, align 8, !dbg !1883
  %call22 = call i32 @get_unit_value(i8* %8), !dbg !1887
  call void @llvm.dbg.value(metadata i32 %call22, metadata !1825, metadata !DIExpression()), !dbg !1774
  br label %if.end23, !dbg !1888

if.end23:                                         ; preds = %if.then20, %if.then16
  %max_state.1 = phi i32 [ %max_state.0, %if.then16 ], [ %call22, %if.then20 ], !dbg !1836
  call void @llvm.dbg.value(metadata i32 %max_state.1, metadata !1825, metadata !DIExpression()), !dbg !1774
  br label %if.end26, !dbg !1889

if.else:                                          ; preds = %if.then12
  %value24 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1890
  %9 = load i8*, i8** %value24, align 8, !dbg !1890
  %call25 = call i32 @get_unit_value(i8* %9), !dbg !1894
  call void @llvm.dbg.value(metadata i32 %call25, metadata !1824, metadata !DIExpression()), !dbg !1774
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.end23
  %cur_state.1 = phi i32 [ %cur_state.0, %if.end23 ], [ %call25, %if.else ], !dbg !1836
  %max_state.2 = phi i32 [ %max_state.1, %if.end23 ], [ %max_state.0, %if.else ], !dbg !1833
  call void @llvm.dbg.value(metadata i32 %max_state.2, metadata !1825, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %cur_state.1, metadata !1824, metadata !DIExpression()), !dbg !1774
  br label %if.end38, !dbg !1895

if.else27:                                        ; preds = %if.then8
  %value28 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1896
  %10 = load i8*, i8** %value28, align 8, !dbg !1896
  call void @llvm.dbg.value(metadata i8* %10, metadata !1823, metadata !DIExpression()), !dbg !1774
  %call29 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.48, i32 0, i32 0)) #8, !dbg !1899
  call void @llvm.dbg.value(metadata i8* %call29, metadata !1901, metadata !DIExpression()), !dbg !1774
  %11 = ptrtoint i8* %call29 to i64, !dbg !1902
  %cmp = icmp eq i64 %11, 0, !dbg !1904
  br i1 %cmp, label %if.then30, label %if.else36, !dbg !1905

if.then30:                                        ; preds = %if.else27
  %call31 = call i8* @strstr(i8* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.49, i32 0, i32 0)) #8, !dbg !1906
  call void @llvm.dbg.value(metadata i8* %call31, metadata !1910, metadata !DIExpression()), !dbg !1774
  %12 = ptrtoint i8* %call31 to i64, !dbg !1911
  %cmp32 = icmp eq i64 %12, 0, !dbg !1913
  br i1 %cmp32, label %if.then33, label %if.else34, !dbg !1914

if.then33:                                        ; preds = %if.then30
  call void @llvm.dbg.value(metadata i32 1, metadata !1915, metadata !DIExpression()), !dbg !1774
  br label %if.end35, !dbg !1916

if.else34:                                        ; preds = %if.then30
  call void @llvm.dbg.value(metadata i32 0, metadata !1915, metadata !DIExpression()), !dbg !1774
  br label %if.end35

if.end35:                                         ; preds = %if.else34, %if.then33
  %tmp___1.0 = phi i32 [ 1, %if.then33 ], [ 0, %if.else34 ], !dbg !1918
  call void @llvm.dbg.value(metadata i32 %tmp___1.0, metadata !1915, metadata !DIExpression()), !dbg !1774
  br label %if.end37, !dbg !1919

if.else36:                                        ; preds = %if.else27
  call void @llvm.dbg.value(metadata i32 0, metadata !1915, metadata !DIExpression()), !dbg !1774
  br label %if.end37

if.end37:                                         ; preds = %if.else36, %if.end35
  %tmp___1.1 = phi i32 [ %tmp___1.0, %if.end35 ], [ 0, %if.else36 ], !dbg !1920
  call void @llvm.dbg.value(metadata i32 %tmp___1.1, metadata !1915, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %tmp___1.1, metadata !1826, metadata !DIExpression()), !dbg !1774
  br label %if.end38

if.end38:                                         ; preds = %if.end37, %if.end26
  %cur_state.2 = phi i32 [ %cur_state.1, %if.end26 ], [ %cur_state.0, %if.end37 ], !dbg !1833
  %type.1 = phi i8* [ %type.0, %if.end26 ], [ %10, %if.end37 ], !dbg !1836
  %max_state.3 = phi i32 [ %max_state.2, %if.end26 ], [ %max_state.0, %if.end37 ], !dbg !1833
  %type_cooling.1 = phi i32 [ %type_cooling.0, %if.end26 ], [ %tmp___1.1, %if.end37 ], !dbg !1836
  call void @llvm.dbg.value(metadata i32 %type_cooling.1, metadata !1826, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %max_state.3, metadata !1825, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %type.1, metadata !1823, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %cur_state.2, metadata !1824, metadata !DIExpression()), !dbg !1774
  br label %if.end41, !dbg !1921

if.else39:                                        ; preds = %if.end5
  %value40 = getelementptr inbounds %struct.field, %struct.field* %3, i32 0, i32 1, !dbg !1922
  %13 = load i8*, i8** %value40, align 8, !dbg !1922
  call void @llvm.dbg.value(metadata i8* %13, metadata !1822, metadata !DIExpression()), !dbg !1774
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.end38
  %cur_state.3 = phi i32 [ %cur_state.2, %if.end38 ], [ %cur_state.0, %if.else39 ], !dbg !1833
  %type.2 = phi i8* [ %type.1, %if.end38 ], [ %type.0, %if.else39 ], !dbg !1834
  %state.1 = phi i8* [ %state.0, %if.end38 ], [ %13, %if.else39 ], !dbg !1836
  %max_state.4 = phi i32 [ %max_state.3, %if.end38 ], [ %max_state.0, %if.else39 ], !dbg !1833
  %type_cooling.2 = phi i32 [ %type_cooling.1, %if.end38 ], [ %type_cooling.0, %if.else39 ], !dbg !1837
  call void @llvm.dbg.value(metadata i32 %type_cooling.2, metadata !1826, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %max_state.4, metadata !1825, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %state.1, metadata !1822, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8* %type.2, metadata !1823, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i32 %cur_state.3, metadata !1824, metadata !DIExpression()), !dbg !1774
  %call42 = call %struct.list* @list_next(%struct.list* %fields.0), !dbg !1924
  call void @llvm.dbg.value(metadata %struct.list* %call42, metadata !1829, metadata !DIExpression()), !dbg !1774
  br label %while.body2, !dbg !1830, !llvm.loop !1927

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !1929

while_break___0:                                  ; preds = %while_break___2, %if.then4
  %tobool43 = icmp ne i32 %type_cooling.0, 0, !dbg !1930
  br i1 %tobool43, label %if.then44, label %if.end77, !dbg !1932

if.then44:                                        ; preds = %while_break___0
  %tobool45 = icmp ne i8* %state.0, null, !dbg !1933
  br i1 %tobool45, label %if.else55, label %if.then46, !dbg !1936

if.then46:                                        ; preds = %if.then44
  %tobool47 = icmp ne i8* %type.0, null, !dbg !1937
  br i1 %tobool47, label %if.else53, label %if.then48, !dbg !1940

if.then48:                                        ; preds = %if.then46
  %tobool49 = icmp ne i32 %show_empty_slots, 0, !dbg !1941
  br i1 %tobool49, label %if.then50, label %if.end52, !dbg !1944

if.then50:                                        ; preds = %if.then48
  %sub = sub nsw i32 %sensor_num.0, 1, !dbg !1945
  %call51 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 %sub), !dbg !1949
  br label %if.end52, !dbg !1950

if.end52:                                         ; preds = %if.then50, %if.then48
  br label %if.end54, !dbg !1951

if.else53:                                        ; preds = %if.then46
  br label %_L, !dbg !1952

if.end54:                                         ; preds = %if.end52
  br label %if.end76, !dbg !1954

if.else55:                                        ; preds = %if.then44
  br label %_L, !dbg !1954

_L:                                               ; preds = %if.else55, %if.else53
  %tobool56 = icmp ne i8* %state.0, null, !dbg !1955
  br i1 %tobool56, label %if.then57, label %if.else60, !dbg !1957

if.then57:                                        ; preds = %_L
  %sub58 = sub nsw i32 %sensor_num.0, 1, !dbg !1958
  %call59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 %sub58, i8* %state.0), !dbg !1962
  br label %if.end75, !dbg !1963

if.else60:                                        ; preds = %_L
  %cmp61 = icmp slt i32 %cur_state.0, 0, !dbg !1964
  br i1 %cmp61, label %if.then62, label %if.else65, !dbg !1966

if.then62:                                        ; preds = %if.else60
  %sub63 = sub nsw i32 %sensor_num.0, 1, !dbg !1967
  %call64 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 %sub63, i8* %type.0), !dbg !1971
  br label %if.end74, !dbg !1972

if.else65:                                        ; preds = %if.else60
  %cmp66 = icmp slt i32 %max_state.0, 0, !dbg !1973
  br i1 %cmp66, label %if.then67, label %if.else70, !dbg !1975

if.then67:                                        ; preds = %if.else65
  %sub68 = sub nsw i32 %sensor_num.0, 1, !dbg !1976
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 %sub68, i8* %type.0), !dbg !1980
  br label %if.end73, !dbg !1981

if.else70:                                        ; preds = %if.else65
  %sub71 = sub nsw i32 %sensor_num.0, 1, !dbg !1982
  %call72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i32 0, i32 0), i32 %sub71, i8* %type.0, i32 %cur_state.0, i32 %max_state.0), !dbg !1986
  br label %if.end73

if.end73:                                         ; preds = %if.else70, %if.then67
  br label %if.end74

if.end74:                                         ; preds = %if.end73, %if.then62
  br label %if.end75

if.end75:                                         ; preds = %if.end74, %if.then57
  br label %if.end76

if.end76:                                         ; preds = %if.end75, %if.end54
  %inc = add nsw i32 %sensor_num.0, 1, !dbg !1987
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1809, metadata !DIExpression()), !dbg !1774
  br label %if.end77, !dbg !1988

if.end77:                                         ; preds = %if.end76, %while_break___0
  %sensor_num.1 = phi i32 [ %inc, %if.end76 ], [ %sensor_num.0, %while_break___0 ], !dbg !1814
  call void @llvm.dbg.value(metadata i32 %sensor_num.1, metadata !1809, metadata !DIExpression()), !dbg !1774
  %call78 = call %struct.list* @list_next(%struct.list* %sensor.0), !dbg !1989
  call void @llvm.dbg.value(metadata %struct.list* %call78, metadata !1808, metadata !DIExpression()), !dbg !1774
  br label %while.body, !dbg !1810, !llvm.loop !1992

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !1994

while_break:                                      ; preds = %while_break___1, %if.then
  ret void, !dbg !1995
}

; Function Attrs: noinline nounwind ssp uwtable
define i32 @main(i32 %argc, i8** %argv) #0 !dbg !1996 {
entry:
  %option_index = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32 %argc, metadata !1999, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8** %argv, metadata !2001, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.declare(metadata i32* %option_index, metadata !2002, metadata !DIExpression()), !dbg !2003
  call void @llvm.dbg.declare(metadata !4, metadata !2004, metadata !DIExpression()), !dbg !2005
  call void @llvm.dbg.declare(metadata !4, metadata !2006, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.declare(metadata !4, metadata !2008, metadata !DIExpression()), !dbg !2009
  call void @llvm.dbg.declare(metadata !4, metadata !2010, metadata !DIExpression()), !dbg !2011
  call void @llvm.dbg.declare(metadata !4, metadata !2012, metadata !DIExpression()), !dbg !2013
  call void @llvm.dbg.declare(metadata !4, metadata !2014, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 0, metadata !2016, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !2017, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !2018, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !2019, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !2020, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !2021, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 0, metadata !2022, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 1, metadata !2023, metadata !DIExpression()), !dbg !2000
  %call = call noalias i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.67, i32 0, i32 0)) #6, !dbg !2024
  call void @llvm.dbg.value(metadata i8* %call, metadata !2028, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i8* %call, metadata !2029, metadata !DIExpression()), !dbg !2000
  %tobool = icmp ne i8* %call, null, !dbg !2030
  br i1 %tobool, label %if.end, label %if.then, !dbg !2032

if.then:                                          ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2033
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0)), !dbg !2037
  br label %return, !dbg !2038

if.end:                                           ; preds = %entry
  br label %while.body, !dbg !2039

while.body:                                       ; preds = %switch_break, %if.end
  %proc_interface.0 = phi i32 [ 0, %if.end ], [ %proc_interface.1, %switch_break ], !dbg !2042
  %show_details.0 = phi i32 [ 0, %if.end ], [ %show_details.1, %switch_break ], !dbg !2043
  %show_empty_slots.0 = phi i32 [ 0, %if.end ], [ %show_empty_slots.1, %switch_break ], !dbg !2044
  %show_cooling.0 = phi i32 [ 0, %if.end ], [ %show_cooling.1, %switch_break ], !dbg !2043
  %show_thermal.0 = phi i32 [ 0, %if.end ], [ %show_thermal.1, %switch_break ], !dbg !2043
  %show_ac_adapter.0 = phi i32 [ 0, %if.end ], [ %show_ac_adapter.1, %switch_break ], !dbg !2043
  %show_batteries.0 = phi i32 [ 0, %if.end ], [ %show_batteries.1, %switch_break ], !dbg !2043
  %temperature_units.0 = phi i32 [ 1, %if.end ], [ %temperature_units.1, %switch_break ], !dbg !2045
  %acpi_path.0 = phi i8* [ %call, %if.end ], [ %acpi_path.1, %switch_break ], !dbg !2046
  call void @llvm.dbg.value(metadata i8* %acpi_path.0, metadata !2029, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %temperature_units.0, metadata !2023, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_batteries.0, metadata !2016, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_ac_adapter.0, metadata !2017, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_thermal.0, metadata !2018, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_cooling.0, metadata !2019, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_empty_slots.0, metadata !2020, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_details.0, metadata !2021, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %proc_interface.0, metadata !2022, metadata !DIExpression()), !dbg !2000
  br label %while_continue___0, !dbg !2047

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2047

while_continue:                                   ; preds = %while_continue___0
  %call2 = call i32 @getopt_long(i32 %argc, i8** %argv, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.69, i32 0, i32 0), %struct.option* getelementptr inbounds ([16 x %struct.option], [16 x %struct.option]* @long_options, i32 0, i32 0), i32* %option_index) #6, !dbg !2048
  call void @llvm.dbg.value(metadata i32 %call2, metadata !2052, metadata !DIExpression()), !dbg !2000
  %cmp = icmp ne i32 %call2, -1, !dbg !2053
  br i1 %cmp, label %if.end4, label %if.then3, !dbg !2055

if.then3:                                         ; preds = %while_continue
  br label %while_break, !dbg !2056

if.end4:                                          ; preds = %while_continue
  %cmp5 = icmp eq i32 %call2, 86, !dbg !2058
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2061

if.then6:                                         ; preds = %if.end4
  br label %case_86, !dbg !2062

if.end7:                                          ; preds = %if.end4
  %cmp8 = icmp eq i32 %call2, 98, !dbg !2064
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2066

if.then9:                                         ; preds = %if.end7
  br label %case_98, !dbg !2067

if.end10:                                         ; preds = %if.end7
  %cmp11 = icmp eq i32 %call2, 97, !dbg !2069
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !2071

if.then12:                                        ; preds = %if.end10
  br label %case_97, !dbg !2072

if.end13:                                         ; preds = %if.end10
  %cmp14 = icmp eq i32 %call2, 116, !dbg !2074
  br i1 %cmp14, label %if.then15, label %if.end16, !dbg !2076

if.then15:                                        ; preds = %if.end13
  br label %case_116, !dbg !2077

if.end16:                                         ; preds = %if.end13
  %cmp17 = icmp eq i32 %call2, 99, !dbg !2079
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2081

if.then18:                                        ; preds = %if.end16
  br label %case_99, !dbg !2082

if.end19:                                         ; preds = %if.end16
  %cmp20 = icmp eq i32 %call2, 115, !dbg !2084
  br i1 %cmp20, label %if.then21, label %if.end22, !dbg !2086

if.then21:                                        ; preds = %if.end19
  br label %case_115, !dbg !2087

if.end22:                                         ; preds = %if.end19
  %cmp23 = icmp eq i32 %call2, 105, !dbg !2089
  br i1 %cmp23, label %if.then24, label %if.end25, !dbg !2091

if.then24:                                        ; preds = %if.end22
  br label %case_105, !dbg !2092

if.end25:                                         ; preds = %if.end22
  %cmp26 = icmp eq i32 %call2, 118, !dbg !2094
  br i1 %cmp26, label %if.then27, label %if.end28, !dbg !2096

if.then27:                                        ; preds = %if.end25
  br label %case_118, !dbg !2097

if.end28:                                         ; preds = %if.end25
  %cmp29 = icmp eq i32 %call2, 102, !dbg !2099
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !2101

if.then30:                                        ; preds = %if.end28
  br label %case_102, !dbg !2102

if.end31:                                         ; preds = %if.end28
  %cmp32 = icmp eq i32 %call2, 107, !dbg !2104
  br i1 %cmp32, label %if.then33, label %if.end34, !dbg !2106

if.then33:                                        ; preds = %if.end31
  br label %case_107, !dbg !2107

if.end34:                                         ; preds = %if.end31
  %cmp35 = icmp eq i32 %call2, 112, !dbg !2109
  br i1 %cmp35, label %if.then36, label %if.end37, !dbg !2111

if.then36:                                        ; preds = %if.end34
  br label %case_112, !dbg !2112

if.end37:                                         ; preds = %if.end34
  %cmp38 = icmp eq i32 %call2, 100, !dbg !2114
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !2116

if.then39:                                        ; preds = %if.end37
  br label %case_100, !dbg !2117

if.end40:                                         ; preds = %if.end37
  br label %switch_default, !dbg !2119

case_86:                                          ; preds = %if.then6
  call void @llvm.dbg.value(metadata i32 1, metadata !2021, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 1, metadata !2019, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 1, metadata !2018, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 1, metadata !2017, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 1, metadata !2016, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2120

case_98:                                          ; preds = %if.then9
  call void @llvm.dbg.value(metadata i32 1, metadata !2016, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2121

case_97:                                          ; preds = %if.then12
  call void @llvm.dbg.value(metadata i32 1, metadata !2017, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2122

case_116:                                         ; preds = %if.then15
  call void @llvm.dbg.value(metadata i32 1, metadata !2018, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2123

case_99:                                          ; preds = %if.then18
  call void @llvm.dbg.value(metadata i32 1, metadata !2019, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2124

case_115:                                         ; preds = %if.then21
  call void @llvm.dbg.value(metadata i32 1, metadata !2020, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2125

case_105:                                         ; preds = %if.then24
  call void @llvm.dbg.value(metadata i32 1, metadata !2021, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2126

case_118:                                         ; preds = %if.then27
  %call41 = call i32 @version(), !dbg !2127
  call void @llvm.dbg.value(metadata i32 %call41, metadata !2130, metadata !DIExpression()), !dbg !2000
  br label %return, !dbg !2131

case_102:                                         ; preds = %if.then30
  call void @llvm.dbg.value(metadata i32 2, metadata !2023, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2132

case_107:                                         ; preds = %if.then33
  call void @llvm.dbg.value(metadata i32 0, metadata !2023, metadata !DIExpression()), !dbg !2000
  br label %switch_break, !dbg !2133

case_112:                                         ; preds = %if.then36
  call void @llvm.dbg.value(metadata i32 1, metadata !2022, metadata !DIExpression()), !dbg !2000
  call void @free(i8* %acpi_path.0) #6, !dbg !2134
  %call42 = call noalias i8* @strdup(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.70, i32 0, i32 0)) #6, !dbg !2137
  call void @llvm.dbg.value(metadata i8* %call42, metadata !2029, metadata !DIExpression()), !dbg !2000
  %tobool43 = icmp ne i8* %call42, null, !dbg !2139
  br i1 %tobool43, label %if.end46, label %if.then44, !dbg !2141

if.then44:                                        ; preds = %case_112
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2142
  %call45 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0)), !dbg !2146
  br label %return, !dbg !2147

if.end46:                                         ; preds = %case_112
  br label %switch_break, !dbg !2148

case_100:                                         ; preds = %if.then39
  call void @free(i8* %acpi_path.0) #6, !dbg !2149
  %2 = load i8*, i8** @optarg, align 8, !dbg !2152
  %call47 = call noalias i8* @strdup(i8* %2) #6, !dbg !2154
  call void @llvm.dbg.value(metadata i8* %call47, metadata !2029, metadata !DIExpression()), !dbg !2000
  %tobool48 = icmp ne i8* %call47, null, !dbg !2155
  br i1 %tobool48, label %if.end51, label %if.then49, !dbg !2157

if.then49:                                        ; preds = %case_100
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2158
  %call50 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.68, i32 0, i32 0)), !dbg !2162
  br label %return, !dbg !2163

if.end51:                                         ; preds = %case_100
  br label %switch_break, !dbg !2164

switch_default:                                   ; preds = %if.end40
  %call52 = call i32 @usage(i8** %argv), !dbg !2165
  call void @llvm.dbg.value(metadata i32 %call52, metadata !2168, metadata !DIExpression()), !dbg !2000
  br label %return, !dbg !2169

switch_break:                                     ; preds = %if.end51, %if.end46, %case_107, %case_102, %case_105, %case_115, %case_99, %case_116, %case_97, %case_98, %case_86
  %proc_interface.1 = phi i32 [ %proc_interface.0, %case_86 ], [ %proc_interface.0, %case_98 ], [ %proc_interface.0, %case_97 ], [ %proc_interface.0, %case_116 ], [ %proc_interface.0, %case_99 ], [ %proc_interface.0, %case_115 ], [ %proc_interface.0, %case_105 ], [ %proc_interface.0, %case_102 ], [ %proc_interface.0, %case_107 ], [ 1, %if.end46 ], [ %proc_interface.0, %if.end51 ], !dbg !2043
  %show_details.1 = phi i32 [ 1, %case_86 ], [ %show_details.0, %case_98 ], [ %show_details.0, %case_97 ], [ %show_details.0, %case_116 ], [ %show_details.0, %case_99 ], [ %show_details.0, %case_115 ], [ 1, %case_105 ], [ %show_details.0, %case_102 ], [ %show_details.0, %case_107 ], [ %show_details.0, %if.end46 ], [ %show_details.0, %if.end51 ], !dbg !2043
  %show_empty_slots.1 = phi i32 [ %show_empty_slots.0, %case_86 ], [ %show_empty_slots.0, %case_98 ], [ %show_empty_slots.0, %case_97 ], [ %show_empty_slots.0, %case_116 ], [ %show_empty_slots.0, %case_99 ], [ 1, %case_115 ], [ %show_empty_slots.0, %case_105 ], [ %show_empty_slots.0, %case_102 ], [ %show_empty_slots.0, %case_107 ], [ %show_empty_slots.0, %if.end46 ], [ %show_empty_slots.0, %if.end51 ], !dbg !2043
  %show_cooling.1 = phi i32 [ 1, %case_86 ], [ %show_cooling.0, %case_98 ], [ %show_cooling.0, %case_97 ], [ %show_cooling.0, %case_116 ], [ 1, %case_99 ], [ %show_cooling.0, %case_115 ], [ %show_cooling.0, %case_105 ], [ %show_cooling.0, %case_102 ], [ %show_cooling.0, %case_107 ], [ %show_cooling.0, %if.end46 ], [ %show_cooling.0, %if.end51 ], !dbg !2043
  %show_thermal.1 = phi i32 [ 1, %case_86 ], [ %show_thermal.0, %case_98 ], [ %show_thermal.0, %case_97 ], [ 1, %case_116 ], [ %show_thermal.0, %case_99 ], [ %show_thermal.0, %case_115 ], [ %show_thermal.0, %case_105 ], [ %show_thermal.0, %case_102 ], [ %show_thermal.0, %case_107 ], [ %show_thermal.0, %if.end46 ], [ %show_thermal.0, %if.end51 ], !dbg !2043
  %show_ac_adapter.1 = phi i32 [ 1, %case_86 ], [ %show_ac_adapter.0, %case_98 ], [ 1, %case_97 ], [ %show_ac_adapter.0, %case_116 ], [ %show_ac_adapter.0, %case_99 ], [ %show_ac_adapter.0, %case_115 ], [ %show_ac_adapter.0, %case_105 ], [ %show_ac_adapter.0, %case_102 ], [ %show_ac_adapter.0, %case_107 ], [ %show_ac_adapter.0, %if.end46 ], [ %show_ac_adapter.0, %if.end51 ], !dbg !2043
  %show_batteries.1 = phi i32 [ 1, %case_86 ], [ 1, %case_98 ], [ %show_batteries.0, %case_97 ], [ %show_batteries.0, %case_116 ], [ %show_batteries.0, %case_99 ], [ %show_batteries.0, %case_115 ], [ %show_batteries.0, %case_105 ], [ %show_batteries.0, %case_102 ], [ %show_batteries.0, %case_107 ], [ %show_batteries.0, %if.end46 ], [ %show_batteries.0, %if.end51 ], !dbg !2043
  %temperature_units.1 = phi i32 [ %temperature_units.0, %case_86 ], [ %temperature_units.0, %case_98 ], [ %temperature_units.0, %case_97 ], [ %temperature_units.0, %case_116 ], [ %temperature_units.0, %case_99 ], [ %temperature_units.0, %case_115 ], [ %temperature_units.0, %case_105 ], [ 2, %case_102 ], [ 0, %case_107 ], [ %temperature_units.0, %if.end46 ], [ %temperature_units.0, %if.end51 ], !dbg !2043
  %acpi_path.1 = phi i8* [ %acpi_path.0, %case_86 ], [ %acpi_path.0, %case_98 ], [ %acpi_path.0, %case_97 ], [ %acpi_path.0, %case_116 ], [ %acpi_path.0, %case_99 ], [ %acpi_path.0, %case_115 ], [ %acpi_path.0, %case_105 ], [ %acpi_path.0, %case_102 ], [ %acpi_path.0, %case_107 ], [ %call42, %if.end46 ], [ %call47, %if.end51 ], !dbg !2043
  call void @llvm.dbg.value(metadata i8* %acpi_path.1, metadata !2029, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %temperature_units.1, metadata !2023, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_batteries.1, metadata !2016, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_ac_adapter.1, metadata !2017, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_thermal.1, metadata !2018, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_cooling.1, metadata !2019, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_empty_slots.1, metadata !2020, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %show_details.1, metadata !2021, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata i32 %proc_interface.1, metadata !2022, metadata !DIExpression()), !dbg !2000
  br label %while.body, !dbg !2039, !llvm.loop !2170

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2172

while_break:                                      ; preds = %while_break___0, %if.then3
  %tobool53 = icmp ne i32 %show_batteries.0, 0, !dbg !2173
  br i1 %tobool53, label %if.end64, label %if.then54, !dbg !2175

if.then54:                                        ; preds = %while_break
  %tobool55 = icmp ne i32 %show_ac_adapter.0, 0, !dbg !2176
  br i1 %tobool55, label %if.end63, label %if.then56, !dbg !2179

if.then56:                                        ; preds = %if.then54
  %tobool57 = icmp ne i32 %show_thermal.0, 0, !dbg !2180
  br i1 %tobool57, label %if.end62, label %if.then58, !dbg !2183

if.then58:                                        ; preds = %if.then56
  %tobool59 = icmp ne i32 %show_cooling.0, 0, !dbg !2184
  br i1 %tobool59, label %if.end61, label %if.then60, !dbg !2187

if.then60:                                        ; preds = %if.then58
  call void @llvm.dbg.value(metadata i32 1, metadata !2016, metadata !DIExpression()), !dbg !2000
  br label %if.end61, !dbg !2188

if.end61:                                         ; preds = %if.then60, %if.then58
  %show_batteries.2 = phi i32 [ %show_batteries.0, %if.then58 ], [ 1, %if.then60 ], !dbg !2043
  call void @llvm.dbg.value(metadata i32 %show_batteries.2, metadata !2016, metadata !DIExpression()), !dbg !2000
  br label %if.end62, !dbg !2190

if.end62:                                         ; preds = %if.end61, %if.then56
  %show_batteries.3 = phi i32 [ %show_batteries.0, %if.then56 ], [ %show_batteries.2, %if.end61 ], !dbg !2191
  call void @llvm.dbg.value(metadata i32 %show_batteries.3, metadata !2016, metadata !DIExpression()), !dbg !2000
  br label %if.end63, !dbg !2192

if.end63:                                         ; preds = %if.end62, %if.then54
  %show_batteries.4 = phi i32 [ %show_batteries.0, %if.then54 ], [ %show_batteries.3, %if.end62 ], !dbg !2191
  call void @llvm.dbg.value(metadata i32 %show_batteries.4, metadata !2016, metadata !DIExpression()), !dbg !2000
  br label %if.end64, !dbg !2193

if.end64:                                         ; preds = %if.end63, %while_break
  %show_batteries.5 = phi i32 [ %show_batteries.0, %while_break ], [ %show_batteries.4, %if.end63 ], !dbg !2191
  call void @llvm.dbg.value(metadata i32 %show_batteries.5, metadata !2016, metadata !DIExpression()), !dbg !2000
  %tobool65 = icmp ne i32 %show_batteries.5, 0, !dbg !2194
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !2196

if.then66:                                        ; preds = %if.end64
  call void @do_show_batteries(i8* %acpi_path.0, i32 %show_empty_slots.0, i32 %show_details.0, i32 %proc_interface.0), !dbg !2197
  br label %if.end67, !dbg !2201

if.end67:                                         ; preds = %if.then66, %if.end64
  %tobool68 = icmp ne i32 %show_ac_adapter.0, 0, !dbg !2202
  br i1 %tobool68, label %if.then69, label %if.end70, !dbg !2204

if.then69:                                        ; preds = %if.end67
  call void @do_show_ac_adapter(i8* %acpi_path.0, i32 %show_empty_slots.0, i32 %proc_interface.0), !dbg !2205
  br label %if.end70, !dbg !2209

if.end70:                                         ; preds = %if.then69, %if.end67
  %tobool71 = icmp ne i32 %show_thermal.0, 0, !dbg !2210
  br i1 %tobool71, label %if.then72, label %if.end73, !dbg !2212

if.then72:                                        ; preds = %if.end70
  call void @do_show_thermal(i8* %acpi_path.0, i32 %show_empty_slots.0, i32 %temperature_units.0, i32 %show_details.0, i32 %proc_interface.0), !dbg !2213
  br label %if.end73, !dbg !2217

if.end73:                                         ; preds = %if.then72, %if.end70
  %tobool74 = icmp ne i32 %show_cooling.0, 0, !dbg !2218
  br i1 %tobool74, label %if.then75, label %if.end76, !dbg !2220

if.then75:                                        ; preds = %if.end73
  call void @do_show_cooling(i8* %acpi_path.0, i32 %show_empty_slots.0, i32 %proc_interface.0), !dbg !2221
  br label %if.end76, !dbg !2225

if.end76:                                         ; preds = %if.then75, %if.end73
  br label %return, !dbg !2226

return:                                           ; preds = %if.end76, %switch_default, %if.then49, %if.then44, %case_118, %if.then
  %retval.0 = phi i32 [ %call41, %case_118 ], [ -1, %if.then44 ], [ -1, %if.then49 ], [ %call52, %switch_default ], [ 0, %if.end76 ], [ -1, %if.then ], !dbg !2043
  ret i32 %retval.0, !dbg !2227
}

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) #2

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @version() #0 !dbg !2228 {
entry:
  call void @llvm.dbg.declare(metadata !4, metadata !2231, metadata !DIExpression()), !dbg !2232
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([233 x i8], [233 x i8]* @.str.108, i32 0, i32 0)), !dbg !2233
  ret i32 1, !dbg !2237
}

; Function Attrs: noinline nounwind ssp uwtable
define internal i32 @usage(i8** %argv) #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i8** %argv, metadata !2241, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.declare(metadata !4, metadata !2243, metadata !DIExpression()), !dbg !2244
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([1092 x i8], [1092 x i8]* @.str.109, i32 0, i32 0)), !dbg !2245
  ret i32 1, !dbg !2249
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_show_batteries(i8* %acpi_path, i32 %show_empty_slots, i32 %show_details, i32 %proc_interface) #0 !dbg !2250 {
entry:
  call void @llvm.dbg.value(metadata i8* %acpi_path, metadata !2253, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !2255, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %show_details, metadata !2256, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.value(metadata i32 %proc_interface, metadata !2257, metadata !DIExpression()), !dbg !2254
  %call = call %struct.list* @find_devices(i8* %acpi_path, i32 0, i32 %proc_interface), !dbg !2258
  call void @llvm.dbg.value(metadata %struct.list* %call, metadata !2262, metadata !DIExpression()), !dbg !2254
  call void @print_battery_information(%struct.list* %call, i32 %show_empty_slots, i32 %show_details), !dbg !2263
  call void @free_devices(%struct.list* %call), !dbg !2265
  ret void, !dbg !2267
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_show_ac_adapter(i8* %acpi_path, i32 %show_empty_slots, i32 %proc_interface) #0 !dbg !2268 {
entry:
  call void @llvm.dbg.value(metadata i8* %acpi_path, metadata !2271, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !2273, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %proc_interface, metadata !2274, metadata !DIExpression()), !dbg !2272
  %call = call %struct.list* @find_devices(i8* %acpi_path, i32 1, i32 %proc_interface), !dbg !2275
  call void @llvm.dbg.value(metadata %struct.list* %call, metadata !2279, metadata !DIExpression()), !dbg !2272
  call void @print_ac_adapter_information(%struct.list* %call, i32 %show_empty_slots), !dbg !2280
  call void @free_devices(%struct.list* %call), !dbg !2282
  ret void, !dbg !2284
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_show_thermal(i8* %acpi_path, i32 %show_empty_slots, i32 %temperature_units, i32 %show_details, i32 %proc_interface) #0 !dbg !2285 {
entry:
  call void @llvm.dbg.value(metadata i8* %acpi_path, metadata !2288, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !2290, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %temperature_units, metadata !2291, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %show_details, metadata !2292, metadata !DIExpression()), !dbg !2289
  call void @llvm.dbg.value(metadata i32 %proc_interface, metadata !2293, metadata !DIExpression()), !dbg !2289
  %call = call %struct.list* @find_devices(i8* %acpi_path, i32 2, i32 %proc_interface), !dbg !2294
  call void @llvm.dbg.value(metadata %struct.list* %call, metadata !2298, metadata !DIExpression()), !dbg !2289
  call void @print_thermal_information(%struct.list* %call, i32 %show_empty_slots, i32 %temperature_units, i32 %show_details), !dbg !2299
  call void @free_devices(%struct.list* %call), !dbg !2301
  ret void, !dbg !2303
}

; Function Attrs: noinline nounwind ssp uwtable
define internal void @do_show_cooling(i8* %acpi_path, i32 %show_empty_slots, i32 %proc_interface) #0 !dbg !2304 {
entry:
  call void @llvm.dbg.value(metadata i8* %acpi_path, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %show_empty_slots, metadata !2307, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i32 %proc_interface, metadata !2308, metadata !DIExpression()), !dbg !2306
  %call = call %struct.list* @find_devices(i8* %acpi_path, i32 3, i32 %proc_interface), !dbg !2309
  call void @llvm.dbg.value(metadata %struct.list* %call, metadata !2313, metadata !DIExpression()), !dbg !2306
  call void @print_cooling_information(%struct.list* %call, i32 %show_empty_slots), !dbg !2314
  call void @free_devices(%struct.list* %call), !dbg !2316
  ret void, !dbg !2318
}

; Function Attrs: noinline nounwind ssp uwtable
define %struct.list* @list_new(i8* %data) #0 !dbg !2319 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.declare(metadata !4, metadata !2324, metadata !DIExpression()), !dbg !2325
  %call = call noalias i8* @malloc(i32 16) #6, !dbg !2326
  call void @llvm.dbg.value(metadata i8* %call, metadata !2330, metadata !DIExpression()), !dbg !2323
  %0 = bitcast i8* %call to %struct.list*, !dbg !2331
  call void @llvm.dbg.value(metadata %struct.list* %0, metadata !2332, metadata !DIExpression()), !dbg !2323
  %tobool = icmp ne %struct.list* %0, null, !dbg !2333
  br i1 %tobool, label %if.end, label %if.then, !dbg !2335

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2336
  %call1 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.71, i32 0, i32 0)), !dbg !2340
  call void @exit(i32 1) #7, !dbg !2341
  unreachable, !dbg !2341

if.end:                                           ; preds = %entry
  %data2 = getelementptr inbounds %struct.list, %struct.list* %0, i32 0, i32 0, !dbg !2343
  store i8* %data, i8** %data2, align 8, !dbg !2344
  %next = getelementptr inbounds %struct.list, %struct.list* %0, i32 0, i32 1, !dbg !2345
  store %struct.list* null, %struct.list** %next, align 8, !dbg !2346
  ret %struct.list* %0, !dbg !2347
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i32) #2

; Function Attrs: noinline nounwind ssp uwtable
define i32 @list_length(%struct.list* %node) #0 !dbg !2348 {
entry:
  call void @llvm.dbg.value(metadata %struct.list* %node, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 0, metadata !2353, metadata !DIExpression()), !dbg !2352
  br label %while.body, !dbg !2354

while.body:                                       ; preds = %if.end, %entry
  %l.0 = phi i32 [ 0, %entry ], [ %inc, %if.end ], !dbg !2358
  %node.addr.0 = phi %struct.list* [ %node, %entry ], [ %0, %if.end ]
  call void @llvm.dbg.value(metadata %struct.list* %node.addr.0, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.value(metadata i32 %l.0, metadata !2353, metadata !DIExpression()), !dbg !2352
  br label %while_continue___0, !dbg !2359

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2359

while_continue:                                   ; preds = %while_continue___0
  %tobool = icmp ne %struct.list* %node.addr.0, null, !dbg !2360
  br i1 %tobool, label %if.end, label %if.then, !dbg !2363

if.then:                                          ; preds = %while_continue
  br label %while_break, !dbg !2364

if.end:                                           ; preds = %while_continue
  %inc = add i32 %l.0, 1, !dbg !2366
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2353, metadata !DIExpression()), !dbg !2352
  %next = getelementptr inbounds %struct.list, %struct.list* %node.addr.0, i32 0, i32 1, !dbg !2367
  %0 = load %struct.list*, %struct.list** %next, align 8, !dbg !2367
  call void @llvm.dbg.value(metadata %struct.list* %0, metadata !2351, metadata !DIExpression()), !dbg !2352
  br label %while.body, !dbg !2354, !llvm.loop !2368

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2370

while_break:                                      ; preds = %while_break___0, %if.then
  ret i32 %l.0, !dbg !2371
}

; Function Attrs: nounwind readonly
declare i32 @strlen(i8*) #5

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.list* @parse_info_file(%struct.list* %l, i8* %filename, i8* %given_attr) #0 !dbg !2372 {
entry:
  %buf = alloca [1024 x i8], align 16
  call void @llvm.dbg.value(metadata %struct.list* %l, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %filename, metadata !2377, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.value(metadata i8* %given_attr, metadata !2378, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.declare(metadata [1024 x i8]* %buf, metadata !2379, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.declare(metadata !4, metadata !2384, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.declare(metadata !4, metadata !2386, metadata !DIExpression()), !dbg !2387
  %call = call %struct._IO_FILE* @fopen(i8* %filename, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.90, i32 0, i32 0)), !dbg !2388
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %call, metadata !2392, metadata !DIExpression()), !dbg !2376
  %tobool = icmp ne %struct._IO_FILE* %call, null, !dbg !2393
  br i1 %tobool, label %if.end, label %if.then, !dbg !2395

if.then:                                          ; preds = %entry
  br label %return, !dbg !2396

if.end:                                           ; preds = %entry
  br label %while.body, !dbg !2398

while.body:                                       ; preds = %if.end8, %if.end
  %l.addr.0 = phi %struct.list* [ %l, %if.end ], [ %call9, %if.end8 ]
  call void @llvm.dbg.value(metadata %struct.list* %l.addr.0, metadata !2375, metadata !DIExpression()), !dbg !2376
  br label %while_continue___0, !dbg !2401

while_continue___0:                               ; preds = %while.body
  br label %while_continue, !dbg !2401

while_continue:                                   ; preds = %if.then7, %while_continue___0
  %arraydecay = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0, !dbg !2402
  %call1 = call i8* @fgets(i8* %arraydecay, i32 1024, %struct._IO_FILE* %call), !dbg !2406
  call void @llvm.dbg.value(metadata i8* %call1, metadata !2407, metadata !DIExpression()), !dbg !2376
  %0 = ptrtoint i8* %call1 to i64, !dbg !2408
  %cmp = icmp ne i64 %0, 0, !dbg !2410
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !2411

if.then2:                                         ; preds = %while_continue
  br label %while_break, !dbg !2412

if.end3:                                          ; preds = %while_continue
  %arraydecay4 = getelementptr inbounds [1024 x i8], [1024 x i8]* %buf, i32 0, i32 0, !dbg !2414
  %call5 = call %struct.field* @parse_field(i8* %arraydecay4, i8* %given_attr), !dbg !2417
  call void @llvm.dbg.value(metadata %struct.field* %call5, metadata !2418, metadata !DIExpression()), !dbg !2376
  %tobool6 = icmp ne %struct.field* %call5, null, !dbg !2419
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2421

if.then7:                                         ; preds = %if.end3
  br label %while_continue, !dbg !2422

if.end8:                                          ; preds = %if.end3
  %1 = bitcast %struct.field* %call5 to i8*, !dbg !2424
  %call9 = call %struct.list* @list_append(%struct.list* %l.addr.0, i8* %1), !dbg !2427
  call void @llvm.dbg.value(metadata %struct.list* %call9, metadata !2375, metadata !DIExpression()), !dbg !2376
  br label %while.body, !dbg !2398, !llvm.loop !2428

while_break___0:                                  ; No predecessors!
  br label %while_break, !dbg !2430

while_break:                                      ; preds = %while_break___0, %if.then2
  %call10 = call i32 @fclose(%struct._IO_FILE* %call), !dbg !2431
  br label %return, !dbg !2434

return:                                           ; preds = %while_break, %if.then
  %retval.0 = phi %struct.list* [ %l.addr.0, %while_break ], [ %l, %if.then ], !dbg !2435
  ret %struct.list* %retval.0, !dbg !2436
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #3

; Function Attrs: noinline nounwind ssp uwtable
define internal %struct.field* @parse_field(i8* %buf, i8* %given_attr) #0 !dbg !2437 {
entry:
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2440, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %given_attr, metadata !2442, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.declare(metadata !4, metadata !2443, metadata !DIExpression()), !dbg !2444
  call void @llvm.dbg.declare(metadata !4, metadata !2445, metadata !DIExpression()), !dbg !2446
  call void @llvm.dbg.declare(metadata !4, metadata !2447, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i32 0, metadata !2449, metadata !DIExpression()), !dbg !2441
  %call = call noalias i8* @calloc(i32 1024, i32 1) #6, !dbg !2450
  call void @llvm.dbg.value(metadata i8* %call, metadata !2454, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %call, metadata !2455, metadata !DIExpression()), !dbg !2441
  %call1 = call noalias i8* @calloc(i32 1024, i32 1) #6, !dbg !2456
  call void @llvm.dbg.value(metadata i8* %call1, metadata !2458, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i8* %call1, metadata !2459, metadata !DIExpression()), !dbg !2441
  %call2 = call noalias i8* @malloc(i32 16) #6, !dbg !2460
  call void @llvm.dbg.value(metadata i8* %call2, metadata !2462, metadata !DIExpression()), !dbg !2441
  %0 = bitcast i8* %call2 to %struct.field*, !dbg !2463
  call void @llvm.dbg.value(metadata %struct.field* %0, metadata !2464, metadata !DIExpression()), !dbg !2441
  %tobool = icmp ne %struct.field* %0, null, !dbg !2465
  br i1 %tobool, label %if.else, label %if.then, !dbg !2467

if.then:                                          ; preds = %entry
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2468
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %1, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i32 0, i32 0)), !dbg !2472
  call void @exit(i32 1) #7, !dbg !2473
  unreachable, !dbg !2473

if.else:                                          ; preds = %entry
  %tobool4 = icmp ne i8* %call, null, !dbg !2475
  br i1 %tobool4, label %if.else7, label %if.then5, !dbg !2477

if.then5:                                         ; preds = %if.else
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2478
  %call6 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %2, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i32 0, i32 0)), !dbg !2482
  call void @exit(i32 1) #7, !dbg !2483
  unreachable, !dbg !2483

if.else7:                                         ; preds = %if.else
  %tobool8 = icmp ne i8* %call1, null, !dbg !2485
  br i1 %tobool8, label %if.end, label %if.then9, !dbg !2487

if.then9:                                         ; preds = %if.else7
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2488
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %3, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.91, i32 0, i32 0)), !dbg !2492
  call void @exit(i32 1) #7, !dbg !2493
  unreachable, !dbg !2493

if.end:                                           ; preds = %if.else7
  br label %if.end11

if.end11:                                         ; preds = %if.end
  br label %if.end12

if.end12:                                         ; preds = %if.end11
  call void @llvm.dbg.value(metadata i8* %buf, metadata !2495, metadata !DIExpression()), !dbg !2441
  %tobool13 = icmp ne i8* %given_attr, null, !dbg !2496
  br i1 %tobool13, label %if.else42, label %if.then14, !dbg !2498

if.then14:                                        ; preds = %if.end12
  br label %while.body, !dbg !2499

while.body:                                       ; preds = %if.end22, %if.then14
  %p.0 = phi i8* [ %buf, %if.then14 ], [ %incdec.ptr, %if.end22 ], !dbg !2503
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2495, metadata !DIExpression()), !dbg !2441
  br label %while_continue___1, !dbg !2504

while_continue___1:                               ; preds = %while.body
  br label %while_continue, !dbg !2504

while_continue:                                   ; preds = %while_continue___1
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2505, metadata !DIExpression()), !dbg !2441
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i32 1, !dbg !2506
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2495, metadata !DIExpression()), !dbg !2441
  %4 = load i8, i8* %p.0, align 1, !dbg !2508
  %tobool15 = icmp ne i8 %4, 0, !dbg !2508
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2510

if.then16:                                        ; preds = %while_continue
  br label %while_break, !dbg !2511

if.end17:                                         ; preds = %while_continue
  %5 = load i8, i8* %incdec.ptr, align 1, !dbg !2513
  %conv = sext i8 %5 to i32, !dbg !2515
  %cmp = icmp eq i32 %conv, 58, !dbg !2516
  br i1 %cmp, label %if.then19, label %if.end22, !dbg !2517

if.then19:                                        ; preds = %if.end17
  %sub.ptr.lhs.cast = ptrtoint i8* %incdec.ptr to i64, !dbg !2518
  %sub.ptr.rhs.cast = ptrtoint i8* %buf to i64, !dbg !2518
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !2518
  %conv20 = trunc i64 %sub.ptr.sub to i32, !dbg !2522
  %call21 = call i8* @strncpy(i8* %call, i8* %buf, i32 %conv20) #6, !dbg !2523
  call void @llvm.dbg.value(metadata i32 1, metadata !2449, metadata !DIExpression()), !dbg !2441
  br label %while_break, !dbg !2524

if.end22:                                         ; preds = %if.end17
  br label %while.body, !dbg !2499, !llvm.loop !2525

while_break___1:                                  ; No predecessors!
  br label %while_break, !dbg !2527

while_break:                                      ; preds = %while_break___1, %if.then19, %if.then16
  %has_attr.0 = phi i32 [ 1, %if.then19 ], [ 0, %if.then16 ], [ undef, %while_break___1 ], !dbg !2503
  call void @llvm.dbg.value(metadata i32 %has_attr.0, metadata !2449, metadata !DIExpression()), !dbg !2441
  %tobool23 = icmp ne i32 %has_attr.0, 0, !dbg !2528
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !2530

if.then24:                                        ; preds = %while_break
  call void @free(i8* %call) #6, !dbg !2531
  call void @free(i8* %call1) #6, !dbg !2535
  %6 = bitcast %struct.field* %0 to i8*, !dbg !2537
  call void @free(i8* %6) #6, !dbg !2539
  br label %return, !dbg !2540

if.end25:                                         ; preds = %while_break
  %7 = load i8, i8* %incdec.ptr, align 1, !dbg !2541
  %conv26 = sext i8 %7 to i32, !dbg !2543
  %cmp27 = icmp eq i32 %conv26, 32, !dbg !2544
  br i1 %cmp27, label %if.then29, label %if.end31, !dbg !2545

if.then29:                                        ; preds = %if.end25
  %incdec.ptr30 = getelementptr inbounds i8, i8* %incdec.ptr, i32 1, !dbg !2546
  call void @llvm.dbg.value(metadata i8* %incdec.ptr30, metadata !2495, metadata !DIExpression()), !dbg !2441
  br label %if.end31, !dbg !2548

if.end31:                                         ; preds = %if.then29, %if.end25
  %p.1 = phi i8* [ %incdec.ptr30, %if.then29 ], [ %incdec.ptr, %if.end25 ], !dbg !2549
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !2495, metadata !DIExpression()), !dbg !2441
  br label %while.body32, !dbg !2550

while.body32:                                     ; preds = %if.end41, %if.end31
  %p.2 = phi i8* [ %p.1, %if.end31 ], [ %incdec.ptr33, %if.end41 ], !dbg !2549
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !2495, metadata !DIExpression()), !dbg !2441
  br label %while_continue___2, !dbg !2553

while_continue___2:                               ; preds = %while.body32
  br label %while_continue___0, !dbg !2553

while_continue___0:                               ; preds = %while_continue___2
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !2554, metadata !DIExpression()), !dbg !2441
  %incdec.ptr33 = getelementptr inbounds i8, i8* %p.2, i32 1, !dbg !2555
  call void @llvm.dbg.value(metadata i8* %incdec.ptr33, metadata !2495, metadata !DIExpression()), !dbg !2441
  %8 = load i8, i8* %p.2, align 1, !dbg !2557
  %tobool34 = icmp ne i8 %8, 0, !dbg !2557
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !2559

if.then35:                                        ; preds = %while_continue___0
  br label %while_break___0, !dbg !2560

if.end36:                                         ; preds = %while_continue___0
  %9 = load i8, i8* %incdec.ptr33, align 1, !dbg !2562
  %conv37 = sext i8 %9 to i32, !dbg !2564
  %cmp38 = icmp ne i32 %conv37, 32, !dbg !2565
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !2566

if.then40:                                        ; preds = %if.end36
  br label %while_break___0, !dbg !2567

if.end41:                                         ; preds = %if.end36
  br label %while.body32, !dbg !2550, !llvm.loop !2569

while_break___2:                                  ; No predecessors!
  br label %while_break___0, !dbg !2571

while_break___0:                                  ; preds = %while_break___2, %if.then40, %if.then35
  br label %if.end44, !dbg !2572

if.else42:                                        ; preds = %if.end12
  %call43 = call i8* @strncpy(i8* %call, i8* %given_attr, i32 1024) #6, !dbg !2573
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %while_break___0
  %p.3 = phi i8* [ %buf, %if.else42 ], [ %incdec.ptr33, %while_break___0 ], !dbg !2503
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !2495, metadata !DIExpression()), !dbg !2441
  %call45 = call i8* @strncpy(i8* %call1, i8* %p.3, i32 1024) #6, !dbg !2577
  %call46 = call i32 @strlen(i8* %call) #8, !dbg !2580
  call void @llvm.dbg.value(metadata i32 %call46, metadata !2582, metadata !DIExpression()), !dbg !2441
  %sub = sub i32 %call46, 1, !dbg !2583
  %idx.ext = zext i32 %sub to i64, !dbg !2585
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext, !dbg !2585
  %10 = load i8, i8* %add.ptr, align 1, !dbg !2586
  %conv47 = sext i8 %10 to i32, !dbg !2587
  %cmp48 = icmp eq i32 %conv47, 10, !dbg !2588
  br i1 %cmp48, label %if.then50, label %if.end55, !dbg !2589

if.then50:                                        ; preds = %if.end44
  %call51 = call i32 @strlen(i8* %call) #8, !dbg !2590
  call void @llvm.dbg.value(metadata i32 %call51, metadata !2594, metadata !DIExpression()), !dbg !2441
  %sub52 = sub i32 %call51, 1, !dbg !2595
  %idx.ext53 = zext i32 %sub52 to i64, !dbg !2596
  %add.ptr54 = getelementptr inbounds i8, i8* %call, i64 %idx.ext53, !dbg !2596
  store i8 0, i8* %add.ptr54, align 1, !dbg !2597
  br label %if.end55, !dbg !2598

if.end55:                                         ; preds = %if.then50, %if.end44
  %call56 = call i32 @strlen(i8* %call1) #8, !dbg !2599
  call void @llvm.dbg.value(metadata i32 %call56, metadata !2602, metadata !DIExpression()), !dbg !2441
  %sub57 = sub i32 %call56, 1, !dbg !2603
  %idx.ext58 = zext i32 %sub57 to i64, !dbg !2605
  %add.ptr59 = getelementptr inbounds i8, i8* %call1, i64 %idx.ext58, !dbg !2605
  %11 = load i8, i8* %add.ptr59, align 1, !dbg !2606
  %conv60 = sext i8 %11 to i32, !dbg !2607
  %cmp61 = icmp eq i32 %conv60, 10, !dbg !2608
  br i1 %cmp61, label %if.then63, label %if.end68, !dbg !2609

if.then63:                                        ; preds = %if.end55
  %call64 = call i32 @strlen(i8* %call1) #8, !dbg !2610
  call void @llvm.dbg.value(metadata i32 %call64, metadata !2614, metadata !DIExpression()), !dbg !2441
  %sub65 = sub i32 %call64, 1, !dbg !2615
  %idx.ext66 = zext i32 %sub65 to i64, !dbg !2616
  %add.ptr67 = getelementptr inbounds i8, i8* %call1, i64 %idx.ext66, !dbg !2616
  store i8 0, i8* %add.ptr67, align 1, !dbg !2617
  br label %if.end68, !dbg !2618

if.end68:                                         ; preds = %if.then63, %if.end55
  %attr69 = getelementptr inbounds %struct.field, %struct.field* %0, i32 0, i32 0, !dbg !2619
  store i8* %call, i8** %attr69, align 8, !dbg !2620
  %value70 = getelementptr inbounds %struct.field, %struct.field* %0, i32 0, i32 1, !dbg !2621
  store i8* %call1, i8** %value70, align 8, !dbg !2622
  br label %return, !dbg !2623

return:                                           ; preds = %if.end68, %if.then24
  %retval.0 = phi %struct.field* [ %0, %if.end68 ], [ null, %if.then24 ], !dbg !2503
  ret %struct.field* %retval.0, !dbg !2624
}

declare i32 @fclose(%struct._IO_FILE*) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i32, i32) #2

; Function Attrs: nounwind
declare i8* @strncpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare i32 @"\01__isoc99_sscanf"(i8*, i8*, ...) #2

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind ssp uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "darwin-stkchk-strong-link" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "probe-stack"="___chkstk_darwin" "stack-protector-buffer-size"="8" "target-cpu"="penryn" "target-features"="+cx16,+fxsr,+mmx,+sahf,+sse,+sse2,+sse3,+sse4.1,+ssse3,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind readonly }

!llvm.module.flags = !{!131, !132, !133, !134, !135}
!llvm.dbg.cu = !{!2}
!llvm.ident = !{!136}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "device", scope: !2, file: !117, line: 28, type: !121, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Apple clang version 11.0.0 (clang-1100.0.33.17)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !99, nameTableKind: GNU)
!3 = !DIFile(filename: "c/acpi-1.4.c", directory: "/Users/hakjoooh/Documents/llir/pa2020/test")
!4 = !{}
!5 = !{!6, !13, !11, !20, !22, !17, !18, !84, !85, !86, !29, !76, !87, !89}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list", file: !8, line: 23, size: 128, elements: !9)
!8 = !DIFile(filename: "/home/wslee/benchmarks/acpi-1.4/list.h", directory: "")
!9 = !{!10, !12}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !7, file: !8, line: 24, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !8, line: 25, baseType: !6, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "field", file: !8, line: 28, size: 128, elements: !15)
!15 = !{!16, !19}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !14, file: !8, line: 29, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !14, file: !8, line: 30, baseType: !17, size: 64, offset: 64)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !24, line: 49, baseType: !25)
!24 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !26, line: 271, size: 1728, elements: !27)
!26 = !DIFile(filename: "/usr/include/libio.h", directory: "")
!27 = !{!28, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !49, !50, !51, !52, !56, !58, !60, !64, !67, !71, !72, !73, !74, !75, !79, !80}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !25, file: !26, line: 272, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !25, file: !26, line: 273, baseType: !17, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !25, file: !26, line: 274, baseType: !17, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !25, file: !26, line: 275, baseType: !17, size: 64, offset: 192)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !25, file: !26, line: 276, baseType: !17, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !25, file: !26, line: 277, baseType: !17, size: 64, offset: 320)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !25, file: !26, line: 278, baseType: !17, size: 64, offset: 384)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !25, file: !26, line: 279, baseType: !17, size: 64, offset: 448)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !25, file: !26, line: 280, baseType: !17, size: 64, offset: 512)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !25, file: !26, line: 281, baseType: !17, size: 64, offset: 576)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !25, file: !26, line: 282, baseType: !17, size: 64, offset: 640)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !25, file: !26, line: 283, baseType: !17, size: 64, offset: 704)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !25, file: !26, line: 284, baseType: !42, size: 64, offset: 768)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !26, line: 186, size: 192, elements: !44)
!44 = !{!45, !46, !48}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !43, file: !26, line: 187, baseType: !42, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_sbuf", scope: !43, file: !26, line: 188, baseType: !47, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_pos", scope: !43, file: !26, line: 189, baseType: !29, size: 32, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !25, file: !26, line: 285, baseType: !47, size: 64, offset: 832)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !25, file: !26, line: 286, baseType: !29, size: 32, offset: 896)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !25, file: !26, line: 287, baseType: !29, size: 32, offset: 928)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !25, file: !26, line: 288, baseType: !53, size: 64, offset: 960)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !54, line: 141, baseType: !55)
!54 = !DIFile(filename: "/usr/include/bits/types.h", directory: "")
!55 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !25, file: !26, line: 289, baseType: !57, size: 16, offset: 1024)
!57 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !25, file: !26, line: 290, baseType: !59, size: 8, offset: 1040)
!59 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !25, file: !26, line: 291, baseType: !61, size: 8, offset: 1048)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 1)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !25, file: !26, line: 292, baseType: !65, size: 64, offset: 1088)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !26, line: 180, baseType: null)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !25, file: !26, line: 293, baseType: !68, size: 64, offset: 1152)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !54, line: 142, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__quad_t", file: !54, line: 56, baseType: !70)
!70 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !25, file: !26, line: 294, baseType: !11, size: 64, offset: 1216)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !25, file: !26, line: 295, baseType: !11, size: 64, offset: 1280)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !25, file: !26, line: 296, baseType: !11, size: 64, offset: 1344)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !25, file: !26, line: 297, baseType: !11, size: 64, offset: 1408)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !25, file: !26, line: 298, baseType: !76, size: 32, offset: 1472)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 211, baseType: !78)
!77 = !DIFile(filename: "/usr/lib/gcc/i486-linux-gnu/4.4.3/include/stddef.h", directory: "")
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !25, file: !26, line: 299, baseType: !29, size: 32, offset: 1504)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !25, file: !26, line: 300, baseType: !81, size: 192, offset: 1536)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 192, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 24)
!84 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!85 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!86 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !92, line: 106, size: 256, elements: !93)
!92 = !DIFile(filename: "/usr/include/getopt.h", directory: "")
!93 = !{!94, !95, !96, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !91, file: !92, line: 107, baseType: !20, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !91, file: !92, line: 108, baseType: !29, size: 32, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !91, file: !92, line: 109, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !91, file: !92, line: 110, baseType: !29, size: 32, offset: 192)
!99 = !{!0, !100, !110, !115}
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "proc_list", scope: !2, file: !102, line: 152, type: !103, isLocal: true, isDefinition: true)
!102 = !DIFile(filename: "/home/wslee/benchmarks/acpi-1.4/acpi.c", directory: "")
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 640, elements: !108)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_list", file: !102, line: 119, size: 128, elements: !105)
!105 = !{!106, !107}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !104, file: !102, line: 120, baseType: !17, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !104, file: !102, line: 121, baseType: !17, size: 64, offset: 64)
!108 = !{!109}
!109 = !DISubrange(count: 5)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "sys_list", scope: !2, file: !102, line: 124, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !104, size: 3200, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 25)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !117, line: 113, type: !118, isLocal: true, isDefinition: true)
!117 = !DIFile(filename: "/home/wslee/benchmarks/acpi-1.4/main.c", directory: "")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 4096, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 16)
!121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 1024, elements: !129)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !123, line: 51, size: 256, elements: !124)
!123 = !DIFile(filename: "/home/wslee/benchmarks/acpi-1.4/acpi.h", directory: "")
!124 = !{!125, !126, !127, !128}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !122, file: !123, line: 52, baseType: !29, size: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "proc", scope: !122, file: !123, line: 53, baseType: !17, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "sys", scope: !122, file: !123, line: 54, baseType: !17, size: 64, offset: 128)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "sys_dev", scope: !122, file: !123, line: 55, baseType: !17, size: 64, offset: 192)
!129 = !{!130}
!130 = !DISubrange(count: 4)
!131 = !{i32 2, !"SDK Version", [2 x i32] [i32 10, i32 15]}
!132 = !{i32 2, !"Dwarf Version", i32 4}
!133 = !{i32 2, !"Debug Info Version", i32 3}
!134 = !{i32 1, !"wchar_size", i32 4}
!135 = !{i32 7, !"PIC Level", i32 2}
!136 = !{!"Apple clang version 11.0.0 (clang-1100.0.33.17)"}
!137 = distinct !DISubprogram(name: "free_devices", scope: !102, file: !102, line: 180, type: !138, scopeLine: 181, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !6}
!140 = !DILocalVariable(name: "devices", arg: 1, scope: !137, file: !102, line: 180, type: !6)
!141 = !DILocation(line: 0, scope: !137)
!142 = !DILocalVariable(name: "p", scope: !137, file: !102, line: 182, type: !6)
!143 = !DILocation(line: 186, column: 3, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !102, line: 187, column: 3)
!145 = distinct !DILexicalBlock(scope: !146, file: !102, line: 186, column: 3)
!146 = distinct !DILexicalBlock(scope: !137, file: !102, line: 187, column: 3)
!147 = !DILocation(line: 0, scope: !146)
!148 = !DILocation(line: 186, column: 13, scope: !144)
!149 = !DILocation(line: 186, column: 11, scope: !150)
!150 = distinct !DILexicalBlock(scope: !151, file: !102, line: 186, column: 9)
!151 = distinct !DILexicalBlock(scope: !144, file: !102, line: 186, column: 13)
!152 = !DILocation(line: 186, column: 9, scope: !151)
!153 = !DILocation(line: 186, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !102, line: 186, column: 14)
!155 = !DILocation(line: 187, column: 27, scope: !151)
!156 = !DILocation(line: 187, column: 9, scope: !151)
!157 = !DILocalVariable(name: "s", scope: !137, file: !102, line: 184, type: !6)
!158 = !DILocalVariable(name: "r", scope: !137, file: !102, line: 183, type: !6)
!159 = !DILocation(line: 188, column: 5, scope: !160)
!160 = distinct !DILexicalBlock(scope: !161, file: !102, line: 189, column: 5)
!161 = distinct !DILexicalBlock(scope: !151, file: !102, line: 188, column: 5)
!162 = !DILocation(line: 0, scope: !151)
!163 = !DILocation(line: 188, column: 15, scope: !160)
!164 = !DILocation(line: 188, column: 13, scope: !165)
!165 = distinct !DILexicalBlock(scope: !166, file: !102, line: 188, column: 11)
!166 = distinct !DILexicalBlock(scope: !160, file: !102, line: 188, column: 15)
!167 = !DILocation(line: 188, column: 11, scope: !166)
!168 = !DILocation(line: 188, column: 9, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !102, line: 188, column: 16)
!170 = !DILocation(line: 189, column: 30, scope: !171)
!171 = distinct !DILexicalBlock(scope: !166, file: !102, line: 190, column: 7)
!172 = !DILocation(line: 189, column: 11, scope: !171)
!173 = !DILocalVariable(name: "f", scope: !137, file: !102, line: 185, type: !13)
!174 = !DILocation(line: 190, column: 23, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !102, line: 190, column: 7)
!176 = !DILocation(line: 190, column: 7, scope: !175)
!177 = !DILocation(line: 191, column: 23, scope: !178)
!178 = distinct !DILexicalBlock(scope: !171, file: !102, line: 192, column: 7)
!179 = !DILocation(line: 191, column: 7, scope: !178)
!180 = !DILocation(line: 192, column: 12, scope: !181)
!181 = distinct !DILexicalBlock(scope: !171, file: !102, line: 193, column: 7)
!182 = !DILocation(line: 192, column: 7, scope: !181)
!183 = !DILocation(line: 193, column: 14, scope: !171)
!184 = distinct !{!184, !159, !185}
!185 = !DILocation(line: 195, column: 5, scope: !160)
!186 = !DILocation(line: 197, column: 5, scope: !160)
!187 = !DILocation(line: 195, column: 5, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !102, line: 201, column: 5)
!189 = distinct !DILexicalBlock(scope: !151, file: !102, line: 200, column: 5)
!190 = !DILocation(line: 196, column: 12, scope: !189)
!191 = distinct !{!191, !143, !192}
!192 = !DILocation(line: 198, column: 3, scope: !144)
!193 = !DILocation(line: 200, column: 3, scope: !144)
!194 = !DILocation(line: 198, column: 3, scope: !195)
!195 = distinct !DILexicalBlock(scope: !196, file: !102, line: 204, column: 3)
!196 = distinct !DILexicalBlock(scope: !146, file: !102, line: 203, column: 3)
!197 = !DILocation(line: 199, column: 3, scope: !146)
!198 = distinct !DISubprogram(name: "list_free", scope: !199, file: !199, line: 62, type: !138, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!199 = !DIFile(filename: "/home/wslee/benchmarks/acpi-1.4/list.c", directory: "")
!200 = !DILocalVariable(name: "node", arg: 1, scope: !198, file: !199, line: 62, type: !6)
!201 = !DILocation(line: 0, scope: !198)
!202 = !DILocalVariable(name: "p", scope: !198, file: !199, line: 64, type: !6)
!203 = !DILocation(line: 66, column: 3, scope: !204)
!204 = distinct !DILexicalBlock(scope: !205, file: !199, line: 67, column: 3)
!205 = distinct !DILexicalBlock(scope: !206, file: !199, line: 66, column: 3)
!206 = distinct !DILexicalBlock(scope: !198, file: !199, line: 67, column: 3)
!207 = !DILocation(line: 0, scope: !206)
!208 = !DILocation(line: 66, column: 13, scope: !204)
!209 = !DILocation(line: 66, column: 11, scope: !210)
!210 = distinct !DILexicalBlock(scope: !211, file: !199, line: 66, column: 9)
!211 = distinct !DILexicalBlock(scope: !204, file: !199, line: 66, column: 13)
!212 = !DILocation(line: 66, column: 9, scope: !211)
!213 = !DILocation(line: 66, column: 7, scope: !214)
!214 = distinct !DILexicalBlock(scope: !210, file: !199, line: 66, column: 14)
!215 = !DILocation(line: 67, column: 15, scope: !216)
!216 = distinct !DILexicalBlock(scope: !211, file: !199, line: 68, column: 5)
!217 = !DILocalVariable(name: "next", scope: !198, file: !199, line: 65, type: !6)
!218 = !DILocation(line: 68, column: 10, scope: !219)
!219 = distinct !DILexicalBlock(scope: !216, file: !199, line: 68, column: 5)
!220 = !DILocation(line: 68, column: 5, scope: !219)
!221 = distinct !{!221, !203, !222}
!222 = !DILocation(line: 71, column: 3, scope: !204)
!223 = !DILocation(line: 73, column: 3, scope: !204)
!224 = !DILocation(line: 71, column: 3, scope: !206)
!225 = distinct !DISubprogram(name: "find_devices", scope: !102, file: !102, line: 201, type: !226, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!226 = !DISubroutineType(types: !227)
!227 = !{!6, !17, !29, !29}
!228 = !DILocalVariable(name: "acpi_path", arg: 1, scope: !225, file: !102, line: 201, type: !17)
!229 = !DILocation(line: 0, scope: !225)
!230 = !DILocalVariable(name: "device_nr", arg: 2, scope: !225, file: !102, line: 201, type: !29)
!231 = !DILocalVariable(name: "proc_interface", arg: 3, scope: !225, file: !102, line: 201, type: !29)
!232 = !DILocalVariable(name: "__cil_tmp13", scope: !225, file: !102, line: 212, type: !17)
!233 = !DILocation(line: 212, column: 9, scope: !225)
!234 = !DILocalVariable(name: "__cil_tmp14", scope: !225, file: !102, line: 213, type: !17)
!235 = !DILocation(line: 213, column: 9, scope: !225)
!236 = !DILocalVariable(name: "__cil_tmp15", scope: !225, file: !102, line: 214, type: !17)
!237 = !DILocation(line: 214, column: 9, scope: !225)
!238 = !DILocalVariable(name: "rval", scope: !225, file: !102, line: 206, type: !6)
!239 = !DILocation(line: 208, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !102, line: 208, column: 7)
!241 = distinct !DILexicalBlock(scope: !225, file: !102, line: 216, column: 3)
!242 = !DILocation(line: 208, column: 7, scope: !241)
!243 = !DILocation(line: 208, column: 11, scope: !244)
!244 = distinct !DILexicalBlock(scope: !240, file: !102, line: 208, column: 23)
!245 = !DILocation(line: 208, column: 29, scope: !244)
!246 = !DILocalVariable(name: "tmp", scope: !225, file: !102, line: 208, type: !17)
!247 = !DILocation(line: 209, column: 3, scope: !244)
!248 = !DILocation(line: 208, column: 11, scope: !249)
!249 = distinct !DILexicalBlock(scope: !240, file: !102, line: 209, column: 10)
!250 = !DILocation(line: 208, column: 29, scope: !249)
!251 = !DILocation(line: 0, scope: !240)
!252 = !DILocalVariable(name: "device_type", scope: !225, file: !102, line: 207, type: !17)
!253 = !DILocation(line: 210, column: 13, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !102, line: 209, column: 3)
!255 = distinct !DILexicalBlock(scope: !241, file: !102, line: 210, column: 3)
!256 = !DILocalVariable(name: "tmp___0", scope: !225, file: !102, line: 209, type: !29)
!257 = !DILocation(line: 210, column: 15, scope: !258)
!258 = distinct !DILexicalBlock(scope: !241, file: !102, line: 210, column: 7)
!259 = !DILocation(line: 210, column: 7, scope: !241)
!260 = !DILocation(line: 211, column: 38, scope: !261)
!261 = distinct !DILexicalBlock(scope: !262, file: !102, line: 212, column: 5)
!262 = distinct !DILexicalBlock(scope: !263, file: !102, line: 211, column: 5)
!263 = distinct !DILexicalBlock(scope: !258, file: !102, line: 210, column: 20)
!264 = !DILocation(line: 211, column: 5, scope: !261)
!265 = !DILocation(line: 212, column: 5, scope: !266)
!266 = distinct !DILexicalBlock(scope: !262, file: !102, line: 214, column: 5)
!267 = !DILocation(line: 214, column: 13, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !102, line: 217, column: 3)
!269 = distinct !DILexicalBlock(scope: !241, file: !102, line: 216, column: 3)
!270 = !DILocalVariable(name: "tmp___1", scope: !225, file: !102, line: 210, type: !29)
!271 = !DILocation(line: 214, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !241, file: !102, line: 214, column: 7)
!273 = !DILocation(line: 214, column: 7, scope: !241)
!274 = !DILocation(line: 215, column: 38, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !102, line: 216, column: 5)
!276 = distinct !DILexicalBlock(scope: !277, file: !102, line: 215, column: 5)
!277 = distinct !DILexicalBlock(scope: !272, file: !102, line: 214, column: 20)
!278 = !DILocation(line: 215, column: 5, scope: !275)
!279 = !DILocation(line: 216, column: 5, scope: !277)
!280 = !DILocation(line: 218, column: 7, scope: !281)
!281 = distinct !DILexicalBlock(scope: !282, file: !102, line: 219, column: 3)
!282 = distinct !DILexicalBlock(scope: !241, file: !102, line: 218, column: 3)
!283 = !DILocalVariable(name: "d", scope: !225, file: !102, line: 203, type: !284)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !286, line: 128, baseType: !287)
!286 = !DIFile(filename: "/usr/include/dirent.h", directory: "")
!287 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !286, line: 128, flags: DIFlagFwdDecl)
!288 = !DILocation(line: 219, column: 9, scope: !289)
!289 = distinct !DILexicalBlock(scope: !241, file: !102, line: 219, column: 7)
!290 = !DILocation(line: 219, column: 7, scope: !241)
!291 = !DILocation(line: 220, column: 5, scope: !292)
!292 = distinct !DILexicalBlock(scope: !289, file: !102, line: 219, column: 12)
!293 = !DILocation(line: 222, column: 3, scope: !294)
!294 = distinct !DILexicalBlock(scope: !295, file: !102, line: 223, column: 3)
!295 = distinct !DILexicalBlock(scope: !241, file: !102, line: 222, column: 3)
!296 = !DILocation(line: 0, scope: !241)
!297 = !DILocation(line: 222, column: 13, scope: !294)
!298 = !DILocation(line: 222, column: 10, scope: !299)
!299 = distinct !DILexicalBlock(scope: !300, file: !102, line: 226, column: 5)
!300 = distinct !DILexicalBlock(scope: !301, file: !102, line: 225, column: 5)
!301 = distinct !DILexicalBlock(scope: !294, file: !102, line: 222, column: 13)
!302 = !DILocalVariable(name: "de", scope: !225, file: !102, line: 204, type: !303)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !305, line: 23, size: 2240, elements: !306)
!305 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "")
!306 = !{!307, !309, !310, !311, !313}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !304, file: !305, line: 24, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !54, line: 137, baseType: !85)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !304, file: !305, line: 25, baseType: !53, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !304, file: !305, line: 26, baseType: !57, size: 16, offset: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !304, file: !305, line: 27, baseType: !312, size: 8, offset: 144)
!312 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !304, file: !305, line: 28, baseType: !314, size: 2048, offset: 152)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 2048, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 256)
!317 = !DILocation(line: 222, column: 11, scope: !318)
!318 = distinct !DILexicalBlock(scope: !301, file: !102, line: 222, column: 9)
!319 = !DILocation(line: 222, column: 9, scope: !301)
!320 = !DILocation(line: 222, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !318, file: !102, line: 222, column: 15)
!322 = !DILocation(line: 223, column: 15, scope: !323)
!323 = distinct !DILexicalBlock(scope: !324, file: !102, line: 225, column: 5)
!324 = distinct !DILexicalBlock(scope: !301, file: !102, line: 224, column: 5)
!325 = !DILocalVariable(name: "tmp___2", scope: !225, file: !102, line: 211, type: !29)
!326 = !DILocation(line: 223, column: 9, scope: !327)
!327 = distinct !DILexicalBlock(scope: !301, file: !102, line: 223, column: 9)
!328 = !DILocation(line: 223, column: 9, scope: !301)
!329 = !DILocation(line: 224, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !327, file: !102, line: 223, column: 18)
!331 = !DILocation(line: 226, column: 32, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !102, line: 227, column: 5)
!333 = distinct !DILexicalBlock(scope: !301, file: !102, line: 226, column: 5)
!334 = !DILocation(line: 226, column: 28, scope: !332)
!335 = !DILocation(line: 226, column: 19, scope: !332)
!336 = !DILocalVariable(name: "device_info", scope: !225, file: !102, line: 205, type: !6)
!337 = !DILocation(line: 228, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !301, file: !102, line: 228, column: 9)
!339 = !DILocation(line: 228, column: 9, scope: !301)
!340 = !DILocation(line: 229, column: 32, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !102, line: 230, column: 7)
!342 = distinct !DILexicalBlock(scope: !343, file: !102, line: 229, column: 7)
!343 = distinct !DILexicalBlock(scope: !338, file: !102, line: 228, column: 22)
!344 = !DILocation(line: 229, column: 14, scope: !341)
!345 = !DILocation(line: 232, column: 5, scope: !343)
!346 = distinct !{!346, !293, !347}
!347 = !DILocation(line: 233, column: 3, scope: !294)
!348 = !DILocation(line: 235, column: 3, scope: !294)
!349 = !DILocation(line: 231, column: 3, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !102, line: 239, column: 3)
!351 = distinct !DILexicalBlock(scope: !241, file: !102, line: 238, column: 3)
!352 = !DILocation(line: 232, column: 3, scope: !241)
!353 = !DILocation(line: 234, column: 1, scope: !225)
!354 = distinct !DISubprogram(name: "ignore_directory_entry", scope: !102, file: !102, line: 44, type: !355, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!355 = !DISubroutineType(types: !356)
!356 = !{!29, !303}
!357 = !DILocalVariable(name: "de", arg: 1, scope: !354, file: !102, line: 44, type: !303)
!358 = !DILocation(line: 0, scope: !354)
!359 = !DILocalVariable(name: "__cil_tmp5", scope: !354, file: !102, line: 49, type: !17)
!360 = !DILocation(line: 49, column: 9, scope: !354)
!361 = !DILocalVariable(name: "__cil_tmp6", scope: !354, file: !102, line: 50, type: !17)
!362 = !DILocation(line: 50, column: 9, scope: !354)
!363 = !DILocation(line: 46, column: 37, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !102, line: 54, column: 3)
!365 = distinct !DILexicalBlock(scope: !366, file: !102, line: 53, column: 3)
!366 = distinct !DILexicalBlock(scope: !354, file: !102, line: 52, column: 3)
!367 = !DILocation(line: 46, column: 32, scope: !364)
!368 = !DILocation(line: 46, column: 9, scope: !364)
!369 = !DILocalVariable(name: "tmp", scope: !354, file: !102, line: 46, type: !29)
!370 = !DILocation(line: 46, column: 7, scope: !371)
!371 = distinct !DILexicalBlock(scope: !366, file: !102, line: 46, column: 7)
!372 = !DILocation(line: 46, column: 7, scope: !366)
!373 = !DILocation(line: 46, column: 43, scope: !374)
!374 = distinct !DILexicalBlock(scope: !375, file: !102, line: 48, column: 5)
!375 = distinct !DILexicalBlock(scope: !376, file: !102, line: 47, column: 5)
!376 = distinct !DILexicalBlock(scope: !371, file: !102, line: 46, column: 12)
!377 = !DILocation(line: 46, column: 38, scope: !374)
!378 = !DILocation(line: 46, column: 15, scope: !374)
!379 = !DILocalVariable(name: "tmp___0", scope: !354, file: !102, line: 47, type: !29)
!380 = !DILocation(line: 46, column: 9, scope: !381)
!381 = distinct !DILexicalBlock(scope: !376, file: !102, line: 46, column: 9)
!382 = !DILocation(line: 46, column: 9, scope: !376)
!383 = !DILocalVariable(name: "tmp___1", scope: !354, file: !102, line: 48, type: !29)
!384 = !DILocation(line: 47, column: 5, scope: !385)
!385 = distinct !DILexicalBlock(scope: !381, file: !102, line: 46, column: 18)
!386 = !DILocation(line: 0, scope: !381)
!387 = !DILocation(line: 48, column: 3, scope: !376)
!388 = !DILocation(line: 0, scope: !371)
!389 = !DILocation(line: 46, column: 3, scope: !366)
!390 = distinct !DISubprogram(name: "get_info", scope: !102, file: !102, line: 160, type: !391, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!391 = !DISubroutineType(types: !392)
!392 = !{!6, !17, !29}
!393 = !DILocalVariable(name: "device_name", arg: 1, scope: !390, file: !102, line: 160, type: !17)
!394 = !DILocation(line: 0, scope: !390)
!395 = !DILocalVariable(name: "proc_interface", arg: 2, scope: !390, file: !102, line: 160, type: !29)
!396 = !DILocalVariable(name: "__cil_tmp13", scope: !390, file: !102, line: 172, type: !17)
!397 = !DILocation(line: 172, column: 9, scope: !390)
!398 = !DILocalVariable(name: "__cil_tmp14", scope: !390, file: !102, line: 173, type: !17)
!399 = !DILocation(line: 173, column: 9, scope: !390)
!400 = !DILocalVariable(name: "__cil_tmp15", scope: !390, file: !102, line: 174, type: !17)
!401 = !DILocation(line: 174, column: 9, scope: !390)
!402 = !DILocalVariable(name: "rval", scope: !390, file: !102, line: 162, type: !6)
!403 = !DILocation(line: 163, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !102, line: 163, column: 7)
!405 = distinct !DILexicalBlock(scope: !390, file: !102, line: 176, column: 3)
!406 = !DILocation(line: 163, column: 7, scope: !405)
!407 = !DILocalVariable(name: "tmp", scope: !390, file: !102, line: 164, type: !408)
!408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!409 = !DILocation(line: 164, column: 3, scope: !410)
!410 = distinct !DILexicalBlock(scope: !404, file: !102, line: 163, column: 23)
!411 = !DILocation(line: 0, scope: !404)
!412 = !DILocalVariable(name: "list", scope: !390, file: !102, line: 163, type: !408)
!413 = !DILocation(line: 164, column: 7, scope: !414)
!414 = distinct !DILexicalBlock(scope: !405, file: !102, line: 164, column: 7)
!415 = !DILocation(line: 164, column: 7, scope: !405)
!416 = !DILocalVariable(name: "tmp___0", scope: !390, file: !102, line: 167, type: !85)
!417 = !DILocation(line: 165, column: 3, scope: !418)
!418 = distinct !DILexicalBlock(scope: !414, file: !102, line: 164, column: 23)
!419 = !DILocation(line: 0, scope: !414)
!420 = !DILocation(line: 164, column: 22, scope: !421)
!421 = distinct !DILexicalBlock(scope: !405, file: !102, line: 166, column: 3)
!422 = !DILocation(line: 164, column: 7, scope: !421)
!423 = !DILocalVariable(name: "n", scope: !390, file: !102, line: 166, type: !29)
!424 = !DILocation(line: 165, column: 13, scope: !425)
!425 = distinct !DILexicalBlock(scope: !421, file: !102, line: 165, column: 3)
!426 = !DILocalVariable(name: "tmp___1", scope: !390, file: !102, line: 169, type: !76)
!427 = !DILocation(line: 165, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !421, file: !102, line: 167, column: 3)
!429 = !DILocalVariable(name: "tmp___2", scope: !390, file: !102, line: 170, type: !76)
!430 = !DILocation(line: 165, column: 28, scope: !431)
!431 = distinct !DILexicalBlock(scope: !421, file: !102, line: 167, column: 3)
!432 = !DILocation(line: 165, column: 13, scope: !431)
!433 = !DILocalVariable(name: "tmp___3", scope: !390, file: !102, line: 171, type: !11)
!434 = !DILocalVariable(name: "filename", scope: !390, file: !102, line: 168, type: !17)
!435 = !DILocation(line: 167, column: 7, scope: !436)
!436 = distinct !DILexicalBlock(scope: !405, file: !102, line: 167, column: 7)
!437 = !DILocation(line: 167, column: 32, scope: !436)
!438 = !DILocation(line: 167, column: 7, scope: !405)
!439 = !DILocation(line: 168, column: 38, scope: !440)
!440 = distinct !DILexicalBlock(scope: !441, file: !102, line: 169, column: 5)
!441 = distinct !DILexicalBlock(scope: !442, file: !102, line: 168, column: 5)
!442 = distinct !DILexicalBlock(scope: !436, file: !102, line: 167, column: 64)
!443 = !DILocation(line: 168, column: 5, scope: !440)
!444 = !DILocation(line: 169, column: 5, scope: !442)
!445 = !DILocalVariable(name: "i", scope: !390, file: !102, line: 165, type: !29)
!446 = !DILocation(line: 172, column: 3, scope: !447)
!447 = distinct !DILexicalBlock(scope: !448, file: !102, line: 174, column: 3)
!448 = distinct !DILexicalBlock(scope: !405, file: !102, line: 173, column: 3)
!449 = !DILocation(line: 0, scope: !405)
!450 = !DILocation(line: 172, column: 13, scope: !447)
!451 = !DILocation(line: 172, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !102, line: 172, column: 9)
!453 = distinct !DILexicalBlock(scope: !447, file: !102, line: 172, column: 13)
!454 = !DILocation(line: 172, column: 9, scope: !453)
!455 = !DILocation(line: 172, column: 7, scope: !456)
!456 = distinct !DILexicalBlock(scope: !452, file: !102, line: 172, column: 20)
!457 = !DILocation(line: 174, column: 32, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !102, line: 175, column: 5)
!459 = distinct !DILexicalBlock(scope: !453, file: !102, line: 174, column: 5)
!460 = !DILocation(line: 174, column: 38, scope: !458)
!461 = !DILocation(line: 173, column: 5, scope: !458)
!462 = !DILocation(line: 174, column: 50, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !102, line: 176, column: 5)
!464 = !DILocation(line: 174, column: 56, scope: !463)
!465 = !DILocation(line: 174, column: 12, scope: !463)
!466 = !DILocation(line: 172, column: 7, scope: !459)
!467 = distinct !{!467, !446, !468}
!468 = !DILocation(line: 174, column: 3, scope: !447)
!469 = !DILocation(line: 176, column: 3, scope: !447)
!470 = !DILocation(line: 177, column: 3, scope: !405)
!471 = !DILocation(line: 179, column: 1, scope: !390)
!472 = distinct !DISubprogram(name: "list_append", scope: !199, file: !199, line: 38, type: !473, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!473 = !DISubroutineType(types: !474)
!474 = !{!6, !6, !11}
!475 = !DILocalVariable(name: "node", arg: 1, scope: !472, file: !199, line: 38, type: !6)
!476 = !DILocation(line: 0, scope: !472)
!477 = !DILocalVariable(name: "data", arg: 2, scope: !472, file: !199, line: 38, type: !11)
!478 = !DILocation(line: 42, column: 7, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !199, line: 44, column: 3)
!480 = distinct !DILexicalBlock(scope: !481, file: !199, line: 43, column: 3)
!481 = distinct !DILexicalBlock(scope: !472, file: !199, line: 42, column: 3)
!482 = !DILocalVariable(name: "r", scope: !472, file: !199, line: 40, type: !6)
!483 = !DILocation(line: 43, column: 6, scope: !480)
!484 = !DILocation(line: 43, column: 11, scope: !480)
!485 = !DILocation(line: 44, column: 3, scope: !481)
!486 = distinct !DISubprogram(name: "print_battery_information", scope: !102, file: !102, line: 242, type: !487, scopeLine: 243, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!487 = !DISubroutineType(types: !488)
!488 = !{null, !6, !29, !29}
!489 = !DILocalVariable(name: "batteries", arg: 1, scope: !486, file: !102, line: 242, type: !6)
!490 = !DILocation(line: 0, scope: !486)
!491 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !486, file: !102, line: 242, type: !29)
!492 = !DILocalVariable(name: "show_capacity", arg: 3, scope: !486, file: !102, line: 242, type: !29)
!493 = !DILocalVariable(name: "capacity_unit", scope: !486, file: !102, line: 263, type: !494)
!494 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 32, elements: !129)
!495 = !DILocation(line: 263, column: 8, scope: !486)
!496 = !DILocalVariable(name: "__cil_tmp49", scope: !486, file: !102, line: 289, type: !11)
!497 = !DILocation(line: 289, column: 9, scope: !486)
!498 = !DILocalVariable(name: "__cil_tmp50", scope: !486, file: !102, line: 290, type: !17)
!499 = !DILocation(line: 290, column: 9, scope: !486)
!500 = !DILocalVariable(name: "__cil_tmp51", scope: !486, file: !102, line: 291, type: !17)
!501 = !DILocation(line: 291, column: 9, scope: !486)
!502 = !DILocalVariable(name: "__cil_tmp52", scope: !486, file: !102, line: 292, type: !17)
!503 = !DILocation(line: 292, column: 9, scope: !486)
!504 = !DILocalVariable(name: "__cil_tmp53", scope: !486, file: !102, line: 293, type: !17)
!505 = !DILocation(line: 293, column: 9, scope: !486)
!506 = !DILocalVariable(name: "__cil_tmp54", scope: !486, file: !102, line: 294, type: !17)
!507 = !DILocation(line: 294, column: 9, scope: !486)
!508 = !DILocalVariable(name: "__cil_tmp55", scope: !486, file: !102, line: 295, type: !17)
!509 = !DILocation(line: 295, column: 9, scope: !486)
!510 = !DILocalVariable(name: "__cil_tmp56", scope: !486, file: !102, line: 296, type: !17)
!511 = !DILocation(line: 296, column: 9, scope: !486)
!512 = !DILocalVariable(name: "__cil_tmp57", scope: !486, file: !102, line: 297, type: !17)
!513 = !DILocation(line: 297, column: 9, scope: !486)
!514 = !DILocalVariable(name: "__cil_tmp58", scope: !486, file: !102, line: 298, type: !17)
!515 = !DILocation(line: 298, column: 9, scope: !486)
!516 = !DILocalVariable(name: "__cil_tmp59", scope: !486, file: !102, line: 299, type: !17)
!517 = !DILocation(line: 299, column: 9, scope: !486)
!518 = !DILocalVariable(name: "__cil_tmp60", scope: !486, file: !102, line: 300, type: !17)
!519 = !DILocation(line: 300, column: 9, scope: !486)
!520 = !DILocalVariable(name: "__cil_tmp61", scope: !486, file: !102, line: 301, type: !17)
!521 = !DILocation(line: 301, column: 9, scope: !486)
!522 = !DILocalVariable(name: "__cil_tmp62", scope: !486, file: !102, line: 302, type: !17)
!523 = !DILocation(line: 302, column: 9, scope: !486)
!524 = !DILocalVariable(name: "__cil_tmp63", scope: !486, file: !102, line: 303, type: !17)
!525 = !DILocation(line: 303, column: 9, scope: !486)
!526 = !DILocalVariable(name: "__cil_tmp64", scope: !486, file: !102, line: 304, type: !17)
!527 = !DILocation(line: 304, column: 9, scope: !486)
!528 = !DILocalVariable(name: "__cil_tmp65", scope: !486, file: !102, line: 305, type: !17)
!529 = !DILocation(line: 305, column: 9, scope: !486)
!530 = !DILocalVariable(name: "__cil_tmp66", scope: !486, file: !102, line: 306, type: !17)
!531 = !DILocation(line: 306, column: 9, scope: !486)
!532 = !DILocalVariable(name: "__cil_tmp67", scope: !486, file: !102, line: 307, type: !17)
!533 = !DILocation(line: 307, column: 9, scope: !486)
!534 = !DILocalVariable(name: "__cil_tmp68", scope: !486, file: !102, line: 308, type: !17)
!535 = !DILocation(line: 308, column: 9, scope: !486)
!536 = !DILocalVariable(name: "__cil_tmp69", scope: !486, file: !102, line: 309, type: !17)
!537 = !DILocation(line: 309, column: 9, scope: !486)
!538 = !DILocalVariable(name: "__cil_tmp70", scope: !486, file: !102, line: 310, type: !17)
!539 = !DILocation(line: 310, column: 9, scope: !486)
!540 = !DILocalVariable(name: "__cil_tmp71", scope: !486, file: !102, line: 311, type: !17)
!541 = !DILocation(line: 311, column: 9, scope: !486)
!542 = !DILocalVariable(name: "__cil_tmp72", scope: !486, file: !102, line: 312, type: !17)
!543 = !DILocation(line: 312, column: 9, scope: !486)
!544 = !DILocalVariable(name: "__cil_tmp73", scope: !486, file: !102, line: 313, type: !17)
!545 = !DILocation(line: 313, column: 9, scope: !486)
!546 = !DILocalVariable(name: "__cil_tmp74", scope: !486, file: !102, line: 314, type: !17)
!547 = !DILocation(line: 314, column: 9, scope: !486)
!548 = !DILocalVariable(name: "__cil_tmp75", scope: !486, file: !102, line: 315, type: !17)
!549 = !DILocation(line: 315, column: 9, scope: !486)
!550 = !DILocalVariable(name: "__cil_tmp76", scope: !486, file: !102, line: 316, type: !17)
!551 = !DILocation(line: 316, column: 9, scope: !486)
!552 = !DILocalVariable(name: "__cil_tmp77", scope: !486, file: !102, line: 317, type: !17)
!553 = !DILocation(line: 317, column: 9, scope: !486)
!554 = !DILocalVariable(name: "__cil_tmp78", scope: !486, file: !102, line: 318, type: !17)
!555 = !DILocation(line: 318, column: 9, scope: !486)
!556 = !DILocalVariable(name: "__cil_tmp79", scope: !486, file: !102, line: 319, type: !17)
!557 = !DILocation(line: 319, column: 9, scope: !486)
!558 = !DILocalVariable(name: "__cil_tmp80", scope: !486, file: !102, line: 320, type: !17)
!559 = !DILocation(line: 320, column: 9, scope: !486)
!560 = !DILocalVariable(name: "__cil_tmp81", scope: !486, file: !102, line: 321, type: !17)
!561 = !DILocation(line: 321, column: 9, scope: !486)
!562 = !DILocalVariable(name: "__cil_tmp82", scope: !486, file: !102, line: 322, type: !17)
!563 = !DILocation(line: 322, column: 9, scope: !486)
!564 = !DILocalVariable(name: "__cil_tmp83", scope: !486, file: !102, line: 323, type: !17)
!565 = !DILocation(line: 323, column: 9, scope: !486)
!566 = !DILocalVariable(name: "__cil_tmp84", scope: !486, file: !102, line: 324, type: !17)
!567 = !DILocation(line: 324, column: 9, scope: !486)
!568 = !DILocalVariable(name: "__cil_tmp85", scope: !486, file: !102, line: 325, type: !17)
!569 = !DILocation(line: 325, column: 9, scope: !486)
!570 = !DILocalVariable(name: "__cil_tmp86", scope: !486, file: !102, line: 326, type: !17)
!571 = !DILocation(line: 326, column: 9, scope: !486)
!572 = !DILocalVariable(name: "__cil_tmp87", scope: !486, file: !102, line: 327, type: !17)
!573 = !DILocation(line: 327, column: 9, scope: !486)
!574 = !DILocalVariable(name: "__cil_tmp88", scope: !486, file: !102, line: 328, type: !17)
!575 = !DILocation(line: 328, column: 9, scope: !486)
!576 = !DILocalVariable(name: "battery", scope: !486, file: !102, line: 244, type: !6)
!577 = !DILocalVariable(name: "battery_num", scope: !486, file: !102, line: 247, type: !29)
!578 = !DILocation(line: 249, column: 3, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !102, line: 249, column: 3)
!580 = distinct !DILexicalBlock(scope: !581, file: !102, line: 248, column: 3)
!581 = distinct !DILexicalBlock(scope: !486, file: !102, line: 330, column: 3)
!582 = !DILocation(line: 0, scope: !581)
!583 = !DILocation(line: 249, column: 13, scope: !579)
!584 = !DILocation(line: 249, column: 11, scope: !585)
!585 = distinct !DILexicalBlock(scope: !586, file: !102, line: 249, column: 9)
!586 = distinct !DILexicalBlock(scope: !579, file: !102, line: 249, column: 13)
!587 = !DILocation(line: 249, column: 9, scope: !586)
!588 = !DILocation(line: 249, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !102, line: 249, column: 20)
!590 = !DILocalVariable(name: "remaining_capacity", scope: !486, file: !102, line: 248, type: !29)
!591 = !DILocalVariable(name: "remaining_energy", scope: !486, file: !102, line: 249, type: !29)
!592 = !DILocalVariable(name: "present_rate", scope: !486, file: !102, line: 250, type: !29)
!593 = !DILocalVariable(name: "voltage", scope: !486, file: !102, line: 251, type: !29)
!594 = !DILocalVariable(name: "design_capacity", scope: !486, file: !102, line: 252, type: !29)
!595 = !DILocalVariable(name: "design_capacity_unit", scope: !486, file: !102, line: 253, type: !29)
!596 = !DILocalVariable(name: "last_capacity", scope: !486, file: !102, line: 254, type: !29)
!597 = !DILocalVariable(name: "last_capacity_unit", scope: !486, file: !102, line: 255, type: !29)
!598 = !DILocalVariable(name: "state", scope: !486, file: !102, line: 260, type: !17)
!599 = !DILocalVariable(name: "type_battery", scope: !486, file: !102, line: 262, type: !29)
!600 = !DILocation(line: 262, column: 5, scope: !586)
!601 = !DILocation(line: 262, column: 22, scope: !586)
!602 = !DILocation(line: 264, column: 38, scope: !586)
!603 = !DILocation(line: 264, column: 14, scope: !586)
!604 = !DILocalVariable(name: "fields", scope: !486, file: !102, line: 245, type: !6)
!605 = !DILocation(line: 265, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !607, file: !102, line: 266, column: 5)
!607 = distinct !DILexicalBlock(scope: !586, file: !102, line: 265, column: 5)
!608 = !DILocation(line: 257, column: 24, scope: !586)
!609 = !DILocation(line: 256, column: 19, scope: !586)
!610 = !DILocation(line: 255, column: 26, scope: !586)
!611 = !DILocation(line: 254, column: 21, scope: !586)
!612 = !DILocation(line: 253, column: 13, scope: !586)
!613 = !DILocation(line: 252, column: 18, scope: !586)
!614 = !DILocation(line: 251, column: 22, scope: !586)
!615 = !DILocation(line: 250, column: 24, scope: !586)
!616 = !DILocation(line: 0, scope: !586)
!617 = !DILocation(line: 260, column: 11, scope: !586)
!618 = !DILocation(line: 261, column: 18, scope: !586)
!619 = !DILocation(line: 265, column: 15, scope: !606)
!620 = !DILocation(line: 265, column: 13, scope: !621)
!621 = distinct !DILexicalBlock(scope: !622, file: !102, line: 265, column: 11)
!622 = distinct !DILexicalBlock(scope: !606, file: !102, line: 265, column: 15)
!623 = !DILocation(line: 265, column: 11, scope: !622)
!624 = !DILocation(line: 265, column: 9, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !102, line: 265, column: 21)
!626 = !DILocation(line: 266, column: 39, scope: !627)
!627 = distinct !DILexicalBlock(scope: !622, file: !102, line: 267, column: 7)
!628 = !DILocation(line: 266, column: 15, scope: !627)
!629 = !DILocalVariable(name: "value", scope: !486, file: !102, line: 246, type: !13)
!630 = !DILocation(line: 267, column: 52, scope: !631)
!631 = distinct !DILexicalBlock(scope: !627, file: !102, line: 267, column: 7)
!632 = !DILocation(line: 267, column: 18, scope: !631)
!633 = !DILocalVariable(name: "tmp___21", scope: !486, file: !102, line: 286, type: !29)
!634 = !DILocation(line: 267, column: 11, scope: !635)
!635 = distinct !DILexicalBlock(scope: !622, file: !102, line: 267, column: 11)
!636 = !DILocation(line: 267, column: 11, scope: !622)
!637 = !DILocation(line: 271, column: 50, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !102, line: 269, column: 9)
!639 = distinct !DILexicalBlock(scope: !640, file: !102, line: 268, column: 9)
!640 = distinct !DILexicalBlock(scope: !635, file: !102, line: 267, column: 21)
!641 = !DILocation(line: 271, column: 20, scope: !638)
!642 = !DILocalVariable(name: "tmp___20", scope: !486, file: !102, line: 285, type: !29)
!643 = !DILocation(line: 271, column: 13, scope: !644)
!644 = distinct !DILexicalBlock(scope: !640, file: !102, line: 271, column: 13)
!645 = !DILocation(line: 271, column: 13, scope: !640)
!646 = !DILocation(line: 275, column: 52, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !102, line: 273, column: 11)
!648 = distinct !DILexicalBlock(scope: !649, file: !102, line: 272, column: 11)
!649 = distinct !DILexicalBlock(scope: !644, file: !102, line: 271, column: 23)
!650 = !DILocation(line: 275, column: 22, scope: !647)
!651 = !DILocalVariable(name: "tmp___19", scope: !486, file: !102, line: 284, type: !29)
!652 = !DILocation(line: 275, column: 15, scope: !653)
!653 = distinct !DILexicalBlock(scope: !649, file: !102, line: 275, column: 15)
!654 = !DILocation(line: 275, column: 15, scope: !649)
!655 = !DILocation(line: 279, column: 58, scope: !656)
!656 = distinct !DILexicalBlock(scope: !657, file: !102, line: 277, column: 13)
!657 = distinct !DILexicalBlock(scope: !658, file: !102, line: 276, column: 13)
!658 = distinct !DILexicalBlock(scope: !653, file: !102, line: 275, column: 25)
!659 = !DILocation(line: 279, column: 24, scope: !656)
!660 = !DILocalVariable(name: "tmp___18", scope: !486, file: !102, line: 283, type: !29)
!661 = !DILocation(line: 279, column: 17, scope: !662)
!662 = distinct !DILexicalBlock(scope: !658, file: !102, line: 279, column: 17)
!663 = !DILocation(line: 279, column: 17, scope: !658)
!664 = !DILocation(line: 281, column: 56, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !102, line: 281, column: 15)
!666 = distinct !DILexicalBlock(scope: !667, file: !102, line: 280, column: 15)
!667 = distinct !DILexicalBlock(scope: !662, file: !102, line: 279, column: 27)
!668 = !DILocation(line: 281, column: 26, scope: !665)
!669 = !DILocalVariable(name: "tmp___17", scope: !486, file: !102, line: 282, type: !29)
!670 = !DILocation(line: 281, column: 19, scope: !671)
!671 = distinct !DILexicalBlock(scope: !667, file: !102, line: 281, column: 19)
!672 = !DILocation(line: 281, column: 19, scope: !667)
!673 = !DILocation(line: 283, column: 62, scope: !674)
!674 = distinct !DILexicalBlock(scope: !675, file: !102, line: 283, column: 17)
!675 = distinct !DILexicalBlock(scope: !676, file: !102, line: 282, column: 17)
!676 = distinct !DILexicalBlock(scope: !671, file: !102, line: 281, column: 29)
!677 = !DILocation(line: 283, column: 28, scope: !674)
!678 = !DILocalVariable(name: "tmp___16", scope: !486, file: !102, line: 281, type: !29)
!679 = !DILocation(line: 283, column: 21, scope: !680)
!680 = distinct !DILexicalBlock(scope: !676, file: !102, line: 283, column: 21)
!681 = !DILocation(line: 283, column: 21, scope: !676)
!682 = !DILocation(line: 287, column: 60, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !102, line: 285, column: 19)
!684 = distinct !DILexicalBlock(scope: !685, file: !102, line: 284, column: 19)
!685 = distinct !DILexicalBlock(scope: !680, file: !102, line: 283, column: 31)
!686 = !DILocation(line: 287, column: 30, scope: !683)
!687 = !DILocalVariable(name: "tmp___15", scope: !486, file: !102, line: 280, type: !29)
!688 = !DILocation(line: 287, column: 23, scope: !689)
!689 = distinct !DILexicalBlock(scope: !685, file: !102, line: 287, column: 23)
!690 = !DILocation(line: 287, column: 23, scope: !685)
!691 = !DILocation(line: 291, column: 62, scope: !692)
!692 = distinct !DILexicalBlock(scope: !693, file: !102, line: 289, column: 21)
!693 = distinct !DILexicalBlock(scope: !694, file: !102, line: 288, column: 21)
!694 = distinct !DILexicalBlock(scope: !689, file: !102, line: 287, column: 33)
!695 = !DILocation(line: 291, column: 32, scope: !692)
!696 = !DILocalVariable(name: "tmp___14", scope: !486, file: !102, line: 279, type: !29)
!697 = !DILocation(line: 291, column: 25, scope: !698)
!698 = distinct !DILexicalBlock(scope: !694, file: !102, line: 291, column: 25)
!699 = !DILocation(line: 291, column: 25, scope: !694)
!700 = !DILocation(line: 295, column: 64, scope: !701)
!701 = distinct !DILexicalBlock(scope: !702, file: !102, line: 293, column: 23)
!702 = distinct !DILexicalBlock(scope: !703, file: !102, line: 292, column: 23)
!703 = distinct !DILexicalBlock(scope: !698, file: !102, line: 291, column: 35)
!704 = !DILocation(line: 295, column: 34, scope: !701)
!705 = !DILocalVariable(name: "tmp___13", scope: !486, file: !102, line: 278, type: !29)
!706 = !DILocation(line: 295, column: 27, scope: !707)
!707 = distinct !DILexicalBlock(scope: !703, file: !102, line: 295, column: 27)
!708 = !DILocation(line: 295, column: 27, scope: !703)
!709 = !DILocation(line: 297, column: 66, scope: !710)
!710 = distinct !DILexicalBlock(scope: !711, file: !102, line: 297, column: 25)
!711 = distinct !DILexicalBlock(scope: !712, file: !102, line: 296, column: 25)
!712 = distinct !DILexicalBlock(scope: !707, file: !102, line: 295, column: 37)
!713 = !DILocation(line: 297, column: 36, scope: !710)
!714 = !DILocalVariable(name: "tmp___12", scope: !486, file: !102, line: 277, type: !29)
!715 = !DILocation(line: 297, column: 29, scope: !716)
!716 = distinct !DILexicalBlock(scope: !712, file: !102, line: 297, column: 29)
!717 = !DILocation(line: 297, column: 29, scope: !712)
!718 = !DILocation(line: 300, column: 68, scope: !719)
!719 = distinct !DILexicalBlock(scope: !720, file: !102, line: 299, column: 27)
!720 = distinct !DILexicalBlock(scope: !721, file: !102, line: 298, column: 27)
!721 = distinct !DILexicalBlock(scope: !716, file: !102, line: 297, column: 39)
!722 = !DILocation(line: 300, column: 38, scope: !719)
!723 = !DILocalVariable(name: "tmp___11", scope: !486, file: !102, line: 276, type: !29)
!724 = !DILocation(line: 300, column: 31, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !102, line: 300, column: 31)
!726 = !DILocation(line: 300, column: 31, scope: !721)
!727 = !DILocation(line: 302, column: 69, scope: !728)
!728 = distinct !DILexicalBlock(scope: !729, file: !102, line: 302, column: 29)
!729 = distinct !DILexicalBlock(scope: !730, file: !102, line: 301, column: 29)
!730 = distinct !DILexicalBlock(scope: !725, file: !102, line: 300, column: 41)
!731 = !DILocation(line: 302, column: 39, scope: !728)
!732 = !DILocalVariable(name: "tmp___9", scope: !486, file: !102, line: 274, type: !29)
!733 = !DILocation(line: 302, column: 33, scope: !734)
!734 = distinct !DILexicalBlock(scope: !730, file: !102, line: 302, column: 33)
!735 = !DILocation(line: 302, column: 33, scope: !730)
!736 = !DILocation(line: 302, column: 72, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !102, line: 304, column: 31)
!738 = distinct !DILexicalBlock(scope: !739, file: !102, line: 303, column: 31)
!739 = distinct !DILexicalBlock(scope: !734, file: !102, line: 302, column: 42)
!740 = !DILocation(line: 302, column: 42, scope: !737)
!741 = !DILocalVariable(name: "tmp___10", scope: !486, file: !102, line: 275, type: !29)
!742 = !DILocation(line: 302, column: 35, scope: !743)
!743 = distinct !DILexicalBlock(scope: !739, file: !102, line: 302, column: 35)
!744 = !DILocation(line: 302, column: 35, scope: !739)
!745 = !DILocation(line: 304, column: 73, scope: !746)
!746 = distinct !DILexicalBlock(scope: !747, file: !102, line: 304, column: 33)
!747 = distinct !DILexicalBlock(scope: !748, file: !102, line: 303, column: 33)
!748 = distinct !DILexicalBlock(scope: !743, file: !102, line: 302, column: 45)
!749 = !DILocation(line: 304, column: 43, scope: !746)
!750 = !DILocalVariable(name: "tmp___8", scope: !486, file: !102, line: 273, type: !29)
!751 = !DILocation(line: 304, column: 39, scope: !752)
!752 = distinct !DILexicalBlock(scope: !748, file: !102, line: 304, column: 37)
!753 = !DILocation(line: 304, column: 37, scope: !748)
!754 = !DILocation(line: 305, column: 67, scope: !755)
!755 = distinct !DILexicalBlock(scope: !756, file: !102, line: 306, column: 35)
!756 = distinct !DILexicalBlock(scope: !757, file: !102, line: 305, column: 35)
!757 = distinct !DILexicalBlock(scope: !752, file: !102, line: 304, column: 48)
!758 = !DILocation(line: 305, column: 45, scope: !755)
!759 = !DILocalVariable(name: "tmp___7", scope: !486, file: !102, line: 272, type: !29)
!760 = !DILocation(line: 305, column: 53, scope: !756)
!761 = !DILocation(line: 306, column: 41, scope: !762)
!762 = distinct !DILexicalBlock(scope: !757, file: !102, line: 306, column: 39)
!763 = !DILocation(line: 306, column: 39, scope: !757)
!764 = !DILocation(line: 308, column: 35, scope: !765)
!765 = distinct !DILexicalBlock(scope: !762, file: !102, line: 306, column: 50)
!766 = !DILocation(line: 0, scope: !757)
!767 = !DILocation(line: 309, column: 33, scope: !757)
!768 = !DILocation(line: 310, column: 31, scope: !748)
!769 = !DILocation(line: 303, column: 48, scope: !770)
!770 = distinct !DILexicalBlock(scope: !743, file: !102, line: 310, column: 38)
!771 = !DILocation(line: 305, column: 29, scope: !739)
!772 = !DILocation(line: 303, column: 46, scope: !773)
!773 = distinct !DILexicalBlock(scope: !734, file: !102, line: 305, column: 36)
!774 = !DILocation(line: 305, column: 27, scope: !730)
!775 = !DILocation(line: 301, column: 73, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !102, line: 307, column: 29)
!777 = distinct !DILexicalBlock(scope: !778, file: !102, line: 306, column: 29)
!778 = distinct !DILexicalBlock(scope: !725, file: !102, line: 305, column: 34)
!779 = !DILocation(line: 301, column: 39, scope: !776)
!780 = !DILocalVariable(name: "tmp___6", scope: !486, file: !102, line: 271, type: !29)
!781 = !DILocation(line: 301, column: 52, scope: !777)
!782 = !DILocation(line: 304, column: 25, scope: !721)
!783 = !DILocation(line: 298, column: 59, scope: !784)
!784 = distinct !DILexicalBlock(scope: !785, file: !102, line: 306, column: 27)
!785 = distinct !DILexicalBlock(scope: !786, file: !102, line: 305, column: 27)
!786 = distinct !DILexicalBlock(scope: !716, file: !102, line: 304, column: 32)
!787 = !DILocation(line: 298, column: 37, scope: !784)
!788 = !DILocalVariable(name: "tmp___5", scope: !486, file: !102, line: 270, type: !29)
!789 = !DILocation(line: 298, column: 58, scope: !785)
!790 = !DILocation(line: 301, column: 23, scope: !712)
!791 = !DILocation(line: 296, column: 57, scope: !792)
!792 = distinct !DILexicalBlock(scope: !793, file: !102, line: 303, column: 25)
!793 = distinct !DILexicalBlock(scope: !794, file: !102, line: 302, column: 25)
!794 = distinct !DILexicalBlock(scope: !707, file: !102, line: 301, column: 30)
!795 = !DILocation(line: 296, column: 35, scope: !792)
!796 = !DILocalVariable(name: "tmp___4", scope: !486, file: !102, line: 269, type: !29)
!797 = !DILocation(line: 296, column: 51, scope: !793)
!798 = !DILocation(line: 299, column: 21, scope: !703)
!799 = !DILocation(line: 292, column: 55, scope: !800)
!800 = distinct !DILexicalBlock(scope: !801, file: !102, line: 301, column: 23)
!801 = distinct !DILexicalBlock(scope: !802, file: !102, line: 300, column: 23)
!802 = distinct !DILexicalBlock(scope: !698, file: !102, line: 299, column: 28)
!803 = !DILocation(line: 292, column: 33, scope: !800)
!804 = !DILocalVariable(name: "tmp___3", scope: !486, file: !102, line: 268, type: !29)
!805 = !DILocation(line: 292, column: 52, scope: !801)
!806 = !DILocation(line: 293, column: 29, scope: !807)
!807 = distinct !DILexicalBlock(scope: !802, file: !102, line: 293, column: 27)
!808 = !DILocation(line: 293, column: 27, scope: !802)
!809 = !DILocation(line: 294, column: 33, scope: !810)
!810 = distinct !DILexicalBlock(scope: !811, file: !102, line: 295, column: 25)
!811 = distinct !DILexicalBlock(scope: !812, file: !102, line: 294, column: 25)
!812 = distinct !DILexicalBlock(scope: !807, file: !102, line: 293, column: 36)
!813 = !DILocation(line: 297, column: 23, scope: !812)
!814 = !DILocation(line: 299, column: 19, scope: !694)
!815 = !DILocation(line: 288, column: 53, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !102, line: 301, column: 21)
!817 = distinct !DILexicalBlock(scope: !818, file: !102, line: 300, column: 21)
!818 = distinct !DILexicalBlock(scope: !689, file: !102, line: 299, column: 26)
!819 = !DILocation(line: 288, column: 31, scope: !816)
!820 = !DILocalVariable(name: "tmp___2", scope: !486, file: !102, line: 267, type: !29)
!821 = !DILocation(line: 288, column: 45, scope: !817)
!822 = !DILocation(line: 289, column: 27, scope: !823)
!823 = distinct !DILexicalBlock(scope: !818, file: !102, line: 289, column: 25)
!824 = !DILocation(line: 289, column: 25, scope: !818)
!825 = !DILocation(line: 290, column: 31, scope: !826)
!826 = distinct !DILexicalBlock(scope: !827, file: !102, line: 291, column: 23)
!827 = distinct !DILexicalBlock(scope: !828, file: !102, line: 290, column: 23)
!828 = distinct !DILexicalBlock(scope: !823, file: !102, line: 289, column: 34)
!829 = !DILocation(line: 293, column: 21, scope: !828)
!830 = !DILocation(line: 295, column: 17, scope: !685)
!831 = !DILocation(line: 284, column: 57, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !102, line: 297, column: 19)
!833 = distinct !DILexicalBlock(scope: !834, file: !102, line: 296, column: 19)
!834 = distinct !DILexicalBlock(scope: !680, file: !102, line: 295, column: 24)
!835 = !DILocation(line: 284, column: 35, scope: !832)
!836 = !DILocation(line: 285, column: 25, scope: !837)
!837 = distinct !DILexicalBlock(scope: !834, file: !102, line: 285, column: 23)
!838 = !DILocation(line: 285, column: 23, scope: !834)
!839 = !DILocation(line: 286, column: 29, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !102, line: 287, column: 21)
!841 = distinct !DILexicalBlock(scope: !842, file: !102, line: 286, column: 21)
!842 = distinct !DILexicalBlock(scope: !837, file: !102, line: 285, column: 32)
!843 = !DILocation(line: 289, column: 19, scope: !842)
!844 = !DILocation(line: 291, column: 15, scope: !676)
!845 = !DILocation(line: 282, column: 49, scope: !846)
!846 = distinct !DILexicalBlock(scope: !847, file: !102, line: 293, column: 17)
!847 = distinct !DILexicalBlock(scope: !848, file: !102, line: 292, column: 17)
!848 = distinct !DILexicalBlock(scope: !671, file: !102, line: 291, column: 22)
!849 = !DILocation(line: 282, column: 27, scope: !846)
!850 = !DILocalVariable(name: "tmp___1", scope: !486, file: !102, line: 266, type: !29)
!851 = !DILocation(line: 282, column: 40, scope: !847)
!852 = !DILocation(line: 285, column: 13, scope: !667)
!853 = !DILocation(line: 280, column: 52, scope: !854)
!854 = distinct !DILexicalBlock(scope: !855, file: !102, line: 287, column: 15)
!855 = distinct !DILexicalBlock(scope: !856, file: !102, line: 286, column: 15)
!856 = distinct !DILexicalBlock(scope: !662, file: !102, line: 285, column: 20)
!857 = !DILocation(line: 280, column: 30, scope: !854)
!858 = !DILocation(line: 284, column: 11, scope: !658)
!859 = !DILocation(line: 276, column: 45, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !102, line: 286, column: 13)
!861 = distinct !DILexicalBlock(scope: !862, file: !102, line: 285, column: 13)
!862 = distinct !DILexicalBlock(scope: !653, file: !102, line: 284, column: 18)
!863 = !DILocation(line: 276, column: 23, scope: !860)
!864 = !DILocalVariable(name: "tmp___0", scope: !486, file: !102, line: 265, type: !29)
!865 = !DILocation(line: 276, column: 40, scope: !861)
!866 = !DILocation(line: 277, column: 19, scope: !867)
!867 = distinct !DILexicalBlock(scope: !862, file: !102, line: 277, column: 17)
!868 = !DILocation(line: 277, column: 17, scope: !862)
!869 = !DILocation(line: 278, column: 23, scope: !870)
!870 = distinct !DILexicalBlock(scope: !871, file: !102, line: 279, column: 15)
!871 = distinct !DILexicalBlock(scope: !872, file: !102, line: 278, column: 15)
!872 = distinct !DILexicalBlock(scope: !867, file: !102, line: 277, column: 26)
!873 = !DILocation(line: 281, column: 13, scope: !872)
!874 = !DILocation(line: 283, column: 9, scope: !649)
!875 = !DILocation(line: 272, column: 39, scope: !876)
!876 = distinct !DILexicalBlock(scope: !877, file: !102, line: 285, column: 11)
!877 = distinct !DILexicalBlock(scope: !878, file: !102, line: 284, column: 11)
!878 = distinct !DILexicalBlock(scope: !644, file: !102, line: 283, column: 16)
!879 = !DILocation(line: 272, column: 17, scope: !876)
!880 = !DILocalVariable(name: "tmp", scope: !486, file: !102, line: 264, type: !29)
!881 = !DILocation(line: 272, column: 36, scope: !877)
!882 = !DILocation(line: 273, column: 17, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !102, line: 273, column: 15)
!884 = !DILocation(line: 273, column: 15, scope: !878)
!885 = !DILocation(line: 274, column: 21, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !102, line: 275, column: 13)
!887 = distinct !DILexicalBlock(scope: !888, file: !102, line: 274, column: 13)
!888 = distinct !DILexicalBlock(scope: !883, file: !102, line: 273, column: 24)
!889 = !DILocation(line: 277, column: 11, scope: !888)
!890 = !DILocation(line: 279, column: 7, scope: !640)
!891 = !DILocation(line: 268, column: 52, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !102, line: 281, column: 9)
!893 = distinct !DILexicalBlock(scope: !894, file: !102, line: 280, column: 9)
!894 = distinct !DILexicalBlock(scope: !635, file: !102, line: 279, column: 14)
!895 = !DILocation(line: 268, column: 30, scope: !892)
!896 = !DILocation(line: 269, column: 15, scope: !897)
!897 = distinct !DILexicalBlock(scope: !894, file: !102, line: 269, column: 13)
!898 = !DILocation(line: 269, column: 13, scope: !894)
!899 = !DILocation(line: 270, column: 19, scope: !900)
!900 = distinct !DILexicalBlock(scope: !901, file: !102, line: 271, column: 11)
!901 = distinct !DILexicalBlock(scope: !902, file: !102, line: 270, column: 11)
!902 = distinct !DILexicalBlock(scope: !897, file: !102, line: 269, column: 22)
!903 = !DILocation(line: 273, column: 9, scope: !902)
!904 = !DILocation(line: 309, column: 16, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !102, line: 276, column: 7)
!906 = distinct !DILexicalBlock(scope: !622, file: !102, line: 275, column: 7)
!907 = distinct !{!907, !605, !908}
!908 = !DILocation(line: 312, column: 5, scope: !606)
!909 = !DILocation(line: 314, column: 5, scope: !606)
!910 = !DILocation(line: 311, column: 9, scope: !911)
!911 = distinct !DILexicalBlock(scope: !586, file: !102, line: 311, column: 9)
!912 = !DILocation(line: 311, column: 9, scope: !586)
!913 = !DILocation(line: 312, column: 13, scope: !914)
!914 = distinct !DILexicalBlock(scope: !915, file: !102, line: 312, column: 11)
!915 = distinct !DILexicalBlock(scope: !911, file: !102, line: 311, column: 23)
!916 = !DILocation(line: 312, column: 11, scope: !915)
!917 = !DILocation(line: 313, column: 13, scope: !918)
!918 = distinct !DILexicalBlock(scope: !919, file: !102, line: 313, column: 13)
!919 = distinct !DILexicalBlock(scope: !914, file: !102, line: 312, column: 20)
!920 = !DILocation(line: 313, column: 13, scope: !919)
!921 = !DILocation(line: 315, column: 30, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !102, line: 315, column: 11)
!923 = distinct !DILexicalBlock(scope: !924, file: !102, line: 314, column: 11)
!924 = distinct !DILexicalBlock(scope: !918, file: !102, line: 313, column: 31)
!925 = !DILocation(line: 314, column: 11, scope: !922)
!926 = !DILocation(line: 318, column: 9, scope: !924)
!927 = !DILocation(line: 319, column: 7, scope: !919)
!928 = !DILocation(line: 317, column: 32, scope: !929)
!929 = distinct !DILexicalBlock(scope: !930, file: !102, line: 317, column: 13)
!930 = distinct !DILexicalBlock(scope: !914, file: !102, line: 319, column: 14)
!931 = !DILocation(line: 317, column: 13, scope: !930)
!932 = !DILocation(line: 317, column: 29, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !102, line: 317, column: 15)
!934 = distinct !DILexicalBlock(scope: !929, file: !102, line: 317, column: 39)
!935 = !DILocation(line: 317, column: 15, scope: !934)
!936 = !DILocation(line: 318, column: 25, scope: !937)
!937 = distinct !DILexicalBlock(scope: !938, file: !102, line: 318, column: 17)
!938 = distinct !DILexicalBlock(scope: !933, file: !102, line: 317, column: 36)
!939 = !DILocation(line: 318, column: 17, scope: !938)
!940 = !DILocation(line: 319, column: 51, scope: !941)
!941 = distinct !DILexicalBlock(scope: !937, file: !102, line: 318, column: 32)
!942 = !DILocation(line: 319, column: 59, scope: !941)
!943 = !DILocation(line: 320, column: 13, scope: !941)
!944 = !DILocation(line: 322, column: 47, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !102, line: 322, column: 15)
!946 = distinct !DILexicalBlock(scope: !947, file: !102, line: 321, column: 15)
!947 = distinct !DILexicalBlock(scope: !937, file: !102, line: 320, column: 20)
!948 = !DILocation(line: 322, column: 15, scope: !945)
!949 = !DILocation(line: 0, scope: !937)
!950 = !DILocation(line: 326, column: 11, scope: !938)
!951 = !DILocation(line: 327, column: 9, scope: !934)
!952 = !DILocation(line: 325, column: 34, scope: !953)
!953 = distinct !DILexicalBlock(scope: !930, file: !102, line: 325, column: 13)
!954 = !DILocation(line: 325, column: 13, scope: !930)
!955 = !DILocation(line: 325, column: 31, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !102, line: 325, column: 15)
!957 = distinct !DILexicalBlock(scope: !953, file: !102, line: 325, column: 41)
!958 = !DILocation(line: 325, column: 15, scope: !957)
!959 = !DILocation(line: 326, column: 25, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !102, line: 326, column: 17)
!961 = distinct !DILexicalBlock(scope: !956, file: !102, line: 325, column: 38)
!962 = !DILocation(line: 326, column: 17, scope: !961)
!963 = !DILocation(line: 327, column: 55, scope: !964)
!964 = distinct !DILexicalBlock(scope: !960, file: !102, line: 326, column: 32)
!965 = !DILocation(line: 327, column: 63, scope: !964)
!966 = !DILocation(line: 328, column: 13, scope: !964)
!967 = !DILocation(line: 330, column: 47, scope: !968)
!968 = distinct !DILexicalBlock(scope: !969, file: !102, line: 330, column: 15)
!969 = distinct !DILexicalBlock(scope: !970, file: !102, line: 329, column: 15)
!970 = distinct !DILexicalBlock(scope: !960, file: !102, line: 328, column: 20)
!971 = !DILocation(line: 330, column: 15, scope: !968)
!972 = !DILocation(line: 0, scope: !960)
!973 = !DILocation(line: 334, column: 11, scope: !961)
!974 = !DILocation(line: 335, column: 9, scope: !957)
!975 = !DILocation(line: 333, column: 30, scope: !976)
!976 = distinct !DILexicalBlock(scope: !930, file: !102, line: 333, column: 13)
!977 = !DILocation(line: 333, column: 13, scope: !930)
!978 = !DILocation(line: 333, column: 34, scope: !979)
!979 = distinct !DILexicalBlock(scope: !980, file: !102, line: 333, column: 15)
!980 = distinct !DILexicalBlock(scope: !976, file: !102, line: 333, column: 37)
!981 = !DILocation(line: 333, column: 15, scope: !980)
!982 = !DILocation(line: 334, column: 25, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !102, line: 334, column: 17)
!984 = distinct !DILexicalBlock(scope: !979, file: !102, line: 333, column: 41)
!985 = !DILocation(line: 334, column: 17, scope: !984)
!986 = !DILocation(line: 335, column: 54, scope: !987)
!987 = distinct !DILexicalBlock(scope: !983, file: !102, line: 334, column: 32)
!988 = !DILocation(line: 335, column: 62, scope: !987)
!989 = !DILocation(line: 336, column: 44, scope: !987)
!990 = !DILocation(line: 336, column: 52, scope: !987)
!991 = !DILocation(line: 337, column: 13, scope: !987)
!992 = !DILocation(line: 0, scope: !983)
!993 = !DILocation(line: 340, column: 11, scope: !984)
!994 = !DILocation(line: 341, column: 9, scope: !980)
!995 = !DILocation(line: 341, column: 13, scope: !996)
!996 = distinct !DILexicalBlock(scope: !930, file: !102, line: 341, column: 13)
!997 = !DILocation(line: 341, column: 36, scope: !996)
!998 = !DILocation(line: 341, column: 13, scope: !930)
!999 = !DILocalVariable(name: "percentage", scope: !486, file: !102, line: 259, type: !29)
!1000 = !DILocation(line: 343, column: 9, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !996, file: !102, line: 341, column: 44)
!1002 = !DILocation(line: 344, column: 44, scope: !1003)
!1003 = distinct !DILexicalBlock(scope: !996, file: !102, line: 343, column: 16)
!1004 = !DILocation(line: 344, column: 51, scope: !1003)
!1005 = !DILocation(line: 0, scope: !996)
!1006 = !DILocation(line: 346, column: 24, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !930, file: !102, line: 346, column: 13)
!1008 = !DILocation(line: 346, column: 13, scope: !930)
!1009 = !DILocation(line: 348, column: 9, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !102, line: 346, column: 31)
!1011 = !DILocation(line: 0, scope: !930)
!1012 = !DILocation(line: 349, column: 91, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !102, line: 350, column: 9)
!1014 = distinct !DILexicalBlock(scope: !930, file: !102, line: 349, column: 9)
!1015 = !DILocation(line: 349, column: 9, scope: !1013)
!1016 = !DILocation(line: 351, column: 26, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !930, file: !102, line: 351, column: 13)
!1018 = !DILocation(line: 351, column: 13, scope: !930)
!1019 = !DILocalVariable(name: "poststr", scope: !486, file: !102, line: 261, type: !17)
!1020 = !DILocalVariable(name: "seconds", scope: !486, file: !102, line: 258, type: !29)
!1021 = !DILocation(line: 354, column: 9, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !102, line: 351, column: 33)
!1023 = !DILocation(line: 354, column: 22, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1025, file: !102, line: 356, column: 11)
!1025 = distinct !DILexicalBlock(scope: !1026, file: !102, line: 355, column: 11)
!1026 = distinct !DILexicalBlock(scope: !1017, file: !102, line: 354, column: 16)
!1027 = !DILocalVariable(name: "tmp___23", scope: !486, file: !102, line: 288, type: !29)
!1028 = !DILocation(line: 354, column: 15, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !102, line: 354, column: 15)
!1030 = !DILocation(line: 354, column: 15, scope: !1026)
!1031 = !DILocation(line: 362, column: 24, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !102, line: 356, column: 13)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !102, line: 355, column: 13)
!1034 = distinct !DILexicalBlock(scope: !1029, file: !102, line: 354, column: 25)
!1035 = !DILocalVariable(name: "tmp___22", scope: !486, file: !102, line: 287, type: !29)
!1036 = !DILocation(line: 362, column: 17, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1034, file: !102, line: 362, column: 17)
!1038 = !DILocation(line: 362, column: 17, scope: !1034)
!1039 = !DILocation(line: 373, column: 13, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !102, line: 362, column: 27)
!1041 = !DILocation(line: 363, column: 17, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1037, file: !102, line: 363, column: 17)
!1043 = !DILocation(line: 363, column: 39, scope: !1042)
!1044 = !DILocation(line: 363, column: 17, scope: !1037)
!1045 = !DILocation(line: 364, column: 31, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !102, line: 363, column: 47)
!1047 = !DILocation(line: 364, column: 53, scope: !1046)
!1048 = !DILocation(line: 366, column: 13, scope: !1046)
!1049 = !DILocation(line: 0, scope: !1042)
!1050 = !DILocation(line: 0, scope: !1037)
!1051 = !DILocation(line: 370, column: 11, scope: !1034)
!1052 = !DILocation(line: 355, column: 15, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1029, file: !102, line: 355, column: 15)
!1054 = !DILocation(line: 355, column: 37, scope: !1053)
!1055 = !DILocation(line: 355, column: 15, scope: !1029)
!1056 = !DILocation(line: 356, column: 46, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !102, line: 355, column: 45)
!1058 = !DILocation(line: 356, column: 29, scope: !1057)
!1059 = !DILocation(line: 356, column: 69, scope: !1057)
!1060 = !DILocation(line: 358, column: 11, scope: !1057)
!1061 = !DILocation(line: 0, scope: !1053)
!1062 = !DILocation(line: 0, scope: !1029)
!1063 = !DILocation(line: 0, scope: !1017)
!1064 = !DILocation(line: 375, column: 21, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !930, file: !102, line: 375, column: 13)
!1066 = !DILocation(line: 375, column: 13, scope: !930)
!1067 = !DILocation(line: 376, column: 27, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !102, line: 376, column: 11)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !102, line: 375, column: 26)
!1070 = !DILocalVariable(name: "hours", scope: !486, file: !102, line: 256, type: !29)
!1071 = !DILocation(line: 377, column: 27, scope: !1068)
!1072 = !DILocation(line: 377, column: 19, scope: !1068)
!1073 = !DILocation(line: 378, column: 29, scope: !1068)
!1074 = !DILocalVariable(name: "minutes", scope: !486, file: !102, line: 257, type: !29)
!1075 = !DILocation(line: 379, column: 25, scope: !1068)
!1076 = !DILocation(line: 379, column: 19, scope: !1068)
!1077 = !DILocation(line: 380, column: 11, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1068, file: !102, line: 380, column: 11)
!1079 = !DILocation(line: 384, column: 9, scope: !1069)
!1080 = !DILocation(line: 381, column: 13, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1065, file: !102, line: 381, column: 13)
!1082 = !DILocation(line: 381, column: 37, scope: !1081)
!1083 = !DILocation(line: 381, column: 13, scope: !1065)
!1084 = !DILocation(line: 382, column: 11, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !102, line: 383, column: 11)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !102, line: 382, column: 11)
!1087 = distinct !DILexicalBlock(scope: !1081, file: !102, line: 381, column: 69)
!1088 = !DILocation(line: 385, column: 9, scope: !1087)
!1089 = !DILocation(line: 385, column: 9, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1091, file: !102, line: 387, column: 9)
!1091 = distinct !DILexicalBlock(scope: !930, file: !102, line: 386, column: 9)
!1092 = !DILocation(line: 387, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !930, file: !102, line: 387, column: 13)
!1094 = !DILocation(line: 387, column: 13, scope: !930)
!1095 = !DILocation(line: 387, column: 31, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !102, line: 387, column: 15)
!1097 = distinct !DILexicalBlock(scope: !1093, file: !102, line: 387, column: 28)
!1098 = !DILocation(line: 387, column: 15, scope: !1097)
!1099 = !DILocation(line: 388, column: 31, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 388, column: 17)
!1101 = distinct !DILexicalBlock(scope: !1096, file: !102, line: 387, column: 36)
!1102 = !DILocation(line: 388, column: 17, scope: !1101)
!1103 = !DILocation(line: 391, column: 43, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1100, file: !102, line: 388, column: 39)
!1105 = !DILocation(line: 391, column: 62, scope: !1104)
!1106 = !DILocation(line: 392, column: 13, scope: !1104)
!1107 = !DILocation(line: 393, column: 43, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1100, file: !102, line: 392, column: 20)
!1109 = !DILocation(line: 393, column: 50, scope: !1108)
!1110 = !DILocation(line: 0, scope: !1100)
!1111 = !DILocation(line: 395, column: 28, scope: !1112)
!1112 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 395, column: 17)
!1113 = !DILocation(line: 395, column: 17, scope: !1101)
!1114 = !DILocation(line: 397, column: 13, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !102, line: 395, column: 35)
!1116 = !DILocation(line: 0, scope: !1101)
!1117 = !DILocation(line: 399, column: 43, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !102, line: 399, column: 13)
!1119 = distinct !DILexicalBlock(scope: !1101, file: !102, line: 398, column: 13)
!1120 = !DILocation(line: 399, column: 65, scope: !1118)
!1121 = !DILocation(line: 400, column: 20, scope: !1118)
!1122 = !DILocation(line: 398, column: 13, scope: !1118)
!1123 = !DILocation(line: 403, column: 11, scope: !1101)
!1124 = !DILocation(line: 404, column: 9, scope: !1097)
!1125 = !DILocation(line: 402, column: 19, scope: !915)
!1126 = !DILocation(line: 403, column: 5, scope: !915)
!1127 = !DILocation(line: 404, column: 15, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !102, line: 405, column: 5)
!1129 = distinct !DILexicalBlock(scope: !586, file: !102, line: 404, column: 5)
!1130 = distinct !{!1130, !578, !1131}
!1131 = !DILocation(line: 407, column: 3, scope: !579)
!1132 = !DILocation(line: 409, column: 3, scope: !579)
!1133 = !DILocation(line: 406, column: 3, scope: !581)
!1134 = distinct !DISubprogram(name: "get_unit_value", scope: !102, file: !102, line: 235, type: !1135, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!29, !17}
!1137 = !DILocalVariable(name: "value", arg: 1, scope: !1134, file: !102, line: 235, type: !17)
!1138 = !DILocation(line: 0, scope: !1134)
!1139 = !DILocalVariable(name: "n", scope: !1134, file: !102, line: 237, type: !29)
!1140 = !DILocation(line: 237, column: 7, scope: !1134)
!1141 = !DILocalVariable(name: "__cil_tmp3", scope: !1134, file: !102, line: 238, type: !17)
!1142 = !DILocation(line: 238, column: 9, scope: !1134)
!1143 = !DILocation(line: 237, column: 5, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !102, line: 241, column: 3)
!1145 = distinct !DILexicalBlock(scope: !1134, file: !102, line: 240, column: 3)
!1146 = !DILocation(line: 238, column: 3, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1144, file: !102, line: 238, column: 3)
!1148 = !DILocation(line: 239, column: 11, scope: !1145)
!1149 = !DILocation(line: 239, column: 3, scope: !1145)
!1150 = distinct !DISubprogram(name: "list_next", scope: !199, file: !199, line: 47, type: !1151, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1151 = !DISubroutineType(types: !1152)
!1152 = !{!6, !6}
!1153 = !DILocalVariable(name: "node", arg: 1, scope: !1150, file: !199, line: 47, type: !6)
!1154 = !DILocation(line: 0, scope: !1150)
!1155 = !DILocation(line: 49, column: 17, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1150, file: !199, line: 51, column: 3)
!1157 = !DILocation(line: 49, column: 3, scope: !1156)
!1158 = distinct !DISubprogram(name: "print_ac_adapter_information", scope: !102, file: !102, line: 408, type: !1159, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !6, !29}
!1161 = !DILocalVariable(name: "ac_adapters", arg: 1, scope: !1158, file: !102, line: 408, type: !6)
!1162 = !DILocation(line: 0, scope: !1158)
!1163 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !1158, file: !102, line: 408, type: !29)
!1164 = !DILocalVariable(name: "__cil_tmp16", scope: !1158, file: !102, line: 422, type: !17)
!1165 = !DILocation(line: 422, column: 9, scope: !1158)
!1166 = !DILocalVariable(name: "__cil_tmp17", scope: !1158, file: !102, line: 423, type: !17)
!1167 = !DILocation(line: 423, column: 9, scope: !1158)
!1168 = !DILocalVariable(name: "__cil_tmp18", scope: !1158, file: !102, line: 424, type: !17)
!1169 = !DILocation(line: 424, column: 9, scope: !1158)
!1170 = !DILocalVariable(name: "__cil_tmp19", scope: !1158, file: !102, line: 425, type: !17)
!1171 = !DILocation(line: 425, column: 9, scope: !1158)
!1172 = !DILocalVariable(name: "__cil_tmp20", scope: !1158, file: !102, line: 426, type: !17)
!1173 = !DILocation(line: 426, column: 9, scope: !1158)
!1174 = !DILocalVariable(name: "__cil_tmp21", scope: !1158, file: !102, line: 427, type: !17)
!1175 = !DILocation(line: 427, column: 9, scope: !1158)
!1176 = !DILocalVariable(name: "__cil_tmp22", scope: !1158, file: !102, line: 428, type: !17)
!1177 = !DILocation(line: 428, column: 9, scope: !1158)
!1178 = !DILocalVariable(name: "__cil_tmp23", scope: !1158, file: !102, line: 429, type: !17)
!1179 = !DILocation(line: 429, column: 9, scope: !1158)
!1180 = !DILocalVariable(name: "__cil_tmp24", scope: !1158, file: !102, line: 430, type: !17)
!1181 = !DILocation(line: 430, column: 9, scope: !1158)
!1182 = !DILocalVariable(name: "__cil_tmp25", scope: !1158, file: !102, line: 431, type: !17)
!1183 = !DILocation(line: 431, column: 9, scope: !1158)
!1184 = !DILocalVariable(name: "__cil_tmp26", scope: !1158, file: !102, line: 432, type: !17)
!1185 = !DILocation(line: 432, column: 9, scope: !1158)
!1186 = !DILocalVariable(name: "adapter", scope: !1158, file: !102, line: 410, type: !6)
!1187 = !DILocalVariable(name: "adapter_num", scope: !1158, file: !102, line: 413, type: !29)
!1188 = !DILocation(line: 415, column: 3, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !102, line: 415, column: 3)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !102, line: 414, column: 3)
!1191 = distinct !DILexicalBlock(scope: !1158, file: !102, line: 434, column: 3)
!1192 = !DILocation(line: 0, scope: !1191)
!1193 = !DILocation(line: 415, column: 13, scope: !1189)
!1194 = !DILocation(line: 415, column: 11, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !102, line: 415, column: 9)
!1196 = distinct !DILexicalBlock(scope: !1189, file: !102, line: 415, column: 13)
!1197 = !DILocation(line: 415, column: 9, scope: !1196)
!1198 = !DILocation(line: 415, column: 7, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !102, line: 415, column: 20)
!1200 = !DILocalVariable(name: "state", scope: !1158, file: !102, line: 414, type: !17)
!1201 = !DILocalVariable(name: "type_ac", scope: !1158, file: !102, line: 415, type: !29)
!1202 = !DILocation(line: 419, column: 38, scope: !1196)
!1203 = !DILocation(line: 419, column: 14, scope: !1196)
!1204 = !DILocalVariable(name: "fields", scope: !1158, file: !102, line: 411, type: !6)
!1205 = !DILocation(line: 420, column: 5, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !102, line: 421, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1196, file: !102, line: 420, column: 5)
!1208 = !DILocation(line: 0, scope: !1196)
!1209 = !DILocation(line: 416, column: 11, scope: !1196)
!1210 = !DILocation(line: 417, column: 13, scope: !1196)
!1211 = !DILocation(line: 420, column: 15, scope: !1206)
!1212 = !DILocation(line: 420, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !102, line: 420, column: 11)
!1214 = distinct !DILexicalBlock(scope: !1206, file: !102, line: 420, column: 15)
!1215 = !DILocation(line: 420, column: 11, scope: !1214)
!1216 = !DILocation(line: 420, column: 9, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !102, line: 420, column: 21)
!1218 = !DILocation(line: 421, column: 39, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !102, line: 422, column: 7)
!1220 = !DILocation(line: 421, column: 15, scope: !1219)
!1221 = !DILocalVariable(name: "value", scope: !1158, file: !102, line: 412, type: !13)
!1222 = !DILocation(line: 422, column: 47, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1219, file: !102, line: 422, column: 7)
!1224 = !DILocation(line: 422, column: 17, scope: !1223)
!1225 = !DILocalVariable(name: "tmp___4", scope: !1158, file: !102, line: 420, type: !29)
!1226 = !DILocation(line: 422, column: 11, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1214, file: !102, line: 422, column: 11)
!1228 = !DILocation(line: 422, column: 11, scope: !1214)
!1229 = !DILocation(line: 422, column: 49, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1231, file: !102, line: 424, column: 9)
!1231 = distinct !DILexicalBlock(scope: !1232, file: !102, line: 423, column: 9)
!1232 = distinct !DILexicalBlock(scope: !1227, file: !102, line: 422, column: 20)
!1233 = !DILocation(line: 422, column: 19, scope: !1230)
!1234 = !DILocalVariable(name: "tmp___5", scope: !1158, file: !102, line: 421, type: !29)
!1235 = !DILocation(line: 422, column: 13, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1232, file: !102, line: 422, column: 13)
!1237 = !DILocation(line: 422, column: 13, scope: !1232)
!1238 = !DILocation(line: 424, column: 51, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !102, line: 424, column: 11)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !102, line: 423, column: 11)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !102, line: 422, column: 22)
!1242 = !DILocation(line: 424, column: 21, scope: !1239)
!1243 = !DILocalVariable(name: "tmp___3", scope: !1158, file: !102, line: 419, type: !29)
!1244 = !DILocation(line: 424, column: 15, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1241, file: !102, line: 424, column: 15)
!1246 = !DILocation(line: 424, column: 15, scope: !1241)
!1247 = !DILocation(line: 426, column: 53, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !102, line: 426, column: 13)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !102, line: 425, column: 13)
!1250 = distinct !DILexicalBlock(scope: !1245, file: !102, line: 424, column: 24)
!1251 = !DILocation(line: 426, column: 23, scope: !1248)
!1252 = !DILocalVariable(name: "tmp___2", scope: !1158, file: !102, line: 418, type: !29)
!1253 = !DILocation(line: 426, column: 19, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !102, line: 426, column: 17)
!1255 = !DILocation(line: 426, column: 17, scope: !1250)
!1256 = !DILocation(line: 427, column: 59, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !102, line: 428, column: 15)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !102, line: 427, column: 15)
!1259 = distinct !DILexicalBlock(scope: !1254, file: !102, line: 426, column: 28)
!1260 = !DILocation(line: 427, column: 25, scope: !1257)
!1261 = !DILocalVariable(name: "tmp___1", scope: !1158, file: !102, line: 417, type: !29)
!1262 = !DILocation(line: 427, column: 33, scope: !1258)
!1263 = !DILocation(line: 429, column: 13, scope: !1259)
!1264 = !DILocation(line: 430, column: 11, scope: !1250)
!1265 = !DILocation(line: 425, column: 45, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !102, line: 432, column: 13)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !102, line: 431, column: 13)
!1268 = distinct !DILexicalBlock(scope: !1245, file: !102, line: 430, column: 18)
!1269 = !DILocation(line: 425, column: 23, scope: !1266)
!1270 = !DILocalVariable(name: "tmp___0", scope: !1158, file: !102, line: 416, type: !29)
!1271 = !DILocation(line: 425, column: 17, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1268, file: !102, line: 425, column: 17)
!1273 = !DILocation(line: 425, column: 17, scope: !1268)
!1274 = !DILocation(line: 426, column: 13, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1272, file: !102, line: 425, column: 26)
!1276 = !DILocation(line: 0, scope: !1272)
!1277 = !DILocation(line: 428, column: 9, scope: !1241)
!1278 = !DILocation(line: 423, column: 26, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1236, file: !102, line: 428, column: 16)
!1280 = !DILocation(line: 425, column: 7, scope: !1232)
!1281 = !DILocation(line: 423, column: 24, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1227, file: !102, line: 425, column: 14)
!1283 = !DILocation(line: 429, column: 16, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !102, line: 426, column: 7)
!1285 = distinct !DILexicalBlock(scope: !1214, file: !102, line: 425, column: 7)
!1286 = distinct !{!1286, !1205, !1287}
!1287 = !DILocation(line: 432, column: 5, scope: !1206)
!1288 = !DILocation(line: 434, column: 5, scope: !1206)
!1289 = !DILocation(line: 431, column: 9, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1196, file: !102, line: 431, column: 9)
!1291 = !DILocation(line: 431, column: 9, scope: !1196)
!1292 = !DILocation(line: 432, column: 13, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !102, line: 432, column: 11)
!1294 = distinct !DILexicalBlock(scope: !1290, file: !102, line: 431, column: 18)
!1295 = !DILocation(line: 432, column: 11, scope: !1294)
!1296 = !DILocation(line: 433, column: 13, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1298, file: !102, line: 433, column: 13)
!1298 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 432, column: 20)
!1299 = !DILocation(line: 433, column: 13, scope: !1298)
!1300 = !DILocation(line: 435, column: 30, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1302, file: !102, line: 435, column: 11)
!1302 = distinct !DILexicalBlock(scope: !1303, file: !102, line: 434, column: 11)
!1303 = distinct !DILexicalBlock(scope: !1297, file: !102, line: 433, column: 31)
!1304 = !DILocation(line: 434, column: 11, scope: !1301)
!1305 = !DILocation(line: 438, column: 9, scope: !1303)
!1306 = !DILocation(line: 439, column: 7, scope: !1298)
!1307 = !DILocation(line: 436, column: 87, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !102, line: 441, column: 9)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !102, line: 440, column: 9)
!1310 = distinct !DILexicalBlock(scope: !1293, file: !102, line: 439, column: 14)
!1311 = !DILocation(line: 436, column: 9, scope: !1308)
!1312 = !DILocation(line: 439, column: 19, scope: !1294)
!1313 = !DILocation(line: 440, column: 5, scope: !1294)
!1314 = !DILocation(line: 441, column: 15, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !102, line: 442, column: 5)
!1316 = distinct !DILexicalBlock(scope: !1196, file: !102, line: 441, column: 5)
!1317 = distinct !{!1317, !1188, !1318}
!1318 = !DILocation(line: 444, column: 3, scope: !1189)
!1319 = !DILocation(line: 446, column: 3, scope: !1189)
!1320 = !DILocation(line: 443, column: 3, scope: !1191)
!1321 = distinct !DISubprogram(name: "print_thermal_information", scope: !102, file: !102, line: 466, type: !1322, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{null, !6, !29, !29, !29}
!1324 = !DILocalVariable(name: "thermal", arg: 1, scope: !1321, file: !102, line: 466, type: !6)
!1325 = !DILocation(line: 0, scope: !1321)
!1326 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !1321, file: !102, line: 466, type: !29)
!1327 = !DILocalVariable(name: "temp_units", arg: 3, scope: !1321, file: !102, line: 466, type: !29)
!1328 = !DILocalVariable(name: "show_trip_points", arg: 4, scope: !1321, file: !102, line: 467, type: !29)
!1329 = !DILocalVariable(name: "trip", scope: !1321, file: !102, line: 475, type: !1330)
!1330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1331, size: 640, elements: !108)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__anonstruct_trip_27", file: !102, line: 476, size: 128, elements: !1332)
!1332 = !{!1333, !1334}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp", scope: !1331, file: !102, line: 477, baseType: !86, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type", scope: !1331, file: !102, line: 478, baseType: !17, size: 64, offset: 64)
!1335 = !DILocation(line: 475, column: 31, scope: !1321)
!1336 = !DILocalVariable(name: "str", scope: !1321, file: !102, line: 476, type: !1337)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 20)
!1340 = !DILocation(line: 476, column: 8, scope: !1321)
!1341 = !DILocalVariable(name: "scale", scope: !1321, file: !102, line: 478, type: !17)
!1342 = !DILocation(line: 478, column: 9, scope: !1321)
!1343 = !DILocalVariable(name: "__cil_tmp31", scope: !1321, file: !102, line: 495, type: !11)
!1344 = !DILocation(line: 495, column: 9, scope: !1321)
!1345 = !DILocalVariable(name: "__cil_tmp32", scope: !1321, file: !102, line: 496, type: !29)
!1346 = !DILocation(line: 496, column: 7, scope: !1321)
!1347 = !DILocalVariable(name: "__cil_tmp33", scope: !1321, file: !102, line: 497, type: !11)
!1348 = !DILocation(line: 497, column: 9, scope: !1321)
!1349 = !DILocalVariable(name: "__cil_tmp34", scope: !1321, file: !102, line: 498, type: !17)
!1350 = !DILocation(line: 498, column: 9, scope: !1321)
!1351 = !DILocalVariable(name: "__cil_tmp35", scope: !1321, file: !102, line: 499, type: !17)
!1352 = !DILocation(line: 499, column: 9, scope: !1321)
!1353 = !DILocalVariable(name: "__cil_tmp36", scope: !1321, file: !102, line: 500, type: !17)
!1354 = !DILocation(line: 500, column: 9, scope: !1321)
!1355 = !DILocalVariable(name: "__cil_tmp37", scope: !1321, file: !102, line: 501, type: !17)
!1356 = !DILocation(line: 501, column: 9, scope: !1321)
!1357 = !DILocalVariable(name: "__cil_tmp38", scope: !1321, file: !102, line: 502, type: !17)
!1358 = !DILocation(line: 502, column: 9, scope: !1321)
!1359 = !DILocalVariable(name: "__cil_tmp39", scope: !1321, file: !102, line: 503, type: !17)
!1360 = !DILocation(line: 503, column: 9, scope: !1321)
!1361 = !DILocalVariable(name: "__cil_tmp40", scope: !1321, file: !102, line: 504, type: !17)
!1362 = !DILocation(line: 504, column: 9, scope: !1321)
!1363 = !DILocalVariable(name: "__cil_tmp41", scope: !1321, file: !102, line: 505, type: !17)
!1364 = !DILocation(line: 505, column: 9, scope: !1321)
!1365 = !DILocalVariable(name: "__cil_tmp42", scope: !1321, file: !102, line: 506, type: !17)
!1366 = !DILocation(line: 506, column: 9, scope: !1321)
!1367 = !DILocalVariable(name: "__cil_tmp43", scope: !1321, file: !102, line: 507, type: !17)
!1368 = !DILocation(line: 507, column: 9, scope: !1321)
!1369 = !DILocalVariable(name: "__cil_tmp44", scope: !1321, file: !102, line: 508, type: !17)
!1370 = !DILocation(line: 508, column: 9, scope: !1321)
!1371 = !DILocalVariable(name: "__cil_tmp45", scope: !1321, file: !102, line: 509, type: !17)
!1372 = !DILocation(line: 509, column: 9, scope: !1321)
!1373 = !DILocalVariable(name: "__cil_tmp46", scope: !1321, file: !102, line: 510, type: !17)
!1374 = !DILocation(line: 510, column: 9, scope: !1321)
!1375 = !DILocalVariable(name: "__cil_tmp47", scope: !1321, file: !102, line: 511, type: !17)
!1376 = !DILocation(line: 511, column: 9, scope: !1321)
!1377 = !DILocalVariable(name: "__cil_tmp48", scope: !1321, file: !102, line: 512, type: !17)
!1378 = !DILocation(line: 512, column: 9, scope: !1321)
!1379 = !DILocalVariable(name: "__cil_tmp49", scope: !1321, file: !102, line: 513, type: !17)
!1380 = !DILocation(line: 513, column: 9, scope: !1321)
!1381 = !DILocalVariable(name: "__cil_tmp50", scope: !1321, file: !102, line: 514, type: !17)
!1382 = !DILocation(line: 514, column: 9, scope: !1321)
!1383 = !DILocalVariable(name: "__cil_tmp51", scope: !1321, file: !102, line: 515, type: !17)
!1384 = !DILocation(line: 515, column: 9, scope: !1321)
!1385 = !DILocalVariable(name: "sensor", scope: !1321, file: !102, line: 469, type: !6)
!1386 = !DILocalVariable(name: "sensor_num", scope: !1321, file: !102, line: 472, type: !29)
!1387 = !DILocalVariable(name: "type_zone", scope: !1321, file: !102, line: 473, type: !29)
!1388 = !DILocation(line: 474, column: 3, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !102, line: 474, column: 3)
!1390 = distinct !DILexicalBlock(scope: !1391, file: !102, line: 473, column: 3)
!1391 = distinct !DILexicalBlock(scope: !1321, file: !102, line: 517, column: 3)
!1392 = !DILocation(line: 472, column: 13, scope: !1391)
!1393 = !DILocation(line: 0, scope: !1391)
!1394 = !DILocation(line: 474, column: 13, scope: !1389)
!1395 = !DILocation(line: 474, column: 11, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !102, line: 474, column: 9)
!1397 = distinct !DILexicalBlock(scope: !1389, file: !102, line: 474, column: 13)
!1398 = !DILocation(line: 474, column: 9, scope: !1397)
!1399 = !DILocation(line: 474, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !102, line: 474, column: 19)
!1401 = !DILocalVariable(name: "temperature", scope: !1321, file: !102, line: 474, type: !86)
!1402 = !DILocation(line: 480, column: 5, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1397, file: !102, line: 476, column: 5)
!1404 = !DILocation(line: 480, column: 12, scope: !1403)
!1405 = !DILocation(line: 480, column: 13, scope: !1403)
!1406 = !DILocalVariable(name: "state", scope: !1321, file: !102, line: 477, type: !17)
!1407 = !DILocalVariable(name: "trip_points", scope: !1321, file: !102, line: 481, type: !29)
!1408 = !DILocation(line: 485, column: 20, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1403, file: !102, line: 484, column: 5)
!1410 = !DILocation(line: 485, column: 12, scope: !1409)
!1411 = !DILocation(line: 485, column: 5, scope: !1409)
!1412 = !DILocation(line: 486, column: 37, scope: !1403)
!1413 = !DILocation(line: 486, column: 14, scope: !1403)
!1414 = !DILocalVariable(name: "fields", scope: !1321, file: !102, line: 470, type: !6)
!1415 = !DILocation(line: 487, column: 5, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !102, line: 489, column: 5)
!1417 = distinct !DILexicalBlock(scope: !1397, file: !102, line: 488, column: 5)
!1418 = !DILocation(line: 475, column: 17, scope: !1403)
!1419 = !DILocation(line: 481, column: 11, scope: !1403)
!1420 = !DILocation(line: 0, scope: !1397)
!1421 = !DILocation(line: 483, column: 17, scope: !1403)
!1422 = !DILocation(line: 487, column: 15, scope: !1416)
!1423 = !DILocation(line: 487, column: 13, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1425, file: !102, line: 487, column: 11)
!1425 = distinct !DILexicalBlock(scope: !1416, file: !102, line: 487, column: 15)
!1426 = !DILocation(line: 487, column: 11, scope: !1425)
!1427 = !DILocation(line: 487, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1424, file: !102, line: 487, column: 21)
!1429 = !DILocation(line: 488, column: 39, scope: !1430)
!1430 = distinct !DILexicalBlock(scope: !1425, file: !102, line: 489, column: 7)
!1431 = !DILocation(line: 488, column: 15, scope: !1430)
!1432 = !DILocalVariable(name: "value", scope: !1321, file: !102, line: 471, type: !13)
!1433 = !DILocation(line: 489, column: 48, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1430, file: !102, line: 489, column: 7)
!1435 = !DILocation(line: 489, column: 18, scope: !1434)
!1436 = !DILocalVariable(name: "tmp___11", scope: !1321, file: !102, line: 494, type: !29)
!1437 = !DILocation(line: 489, column: 11, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1425, file: !102, line: 489, column: 11)
!1439 = !DILocation(line: 489, column: 11, scope: !1425)
!1440 = !DILocation(line: 491, column: 50, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1442, file: !102, line: 491, column: 9)
!1442 = distinct !DILexicalBlock(scope: !1443, file: !102, line: 490, column: 9)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !102, line: 489, column: 21)
!1444 = !DILocation(line: 491, column: 20, scope: !1441)
!1445 = !DILocalVariable(name: "tmp___10", scope: !1321, file: !102, line: 493, type: !29)
!1446 = !DILocation(line: 491, column: 13, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1443, file: !102, line: 491, column: 13)
!1448 = !DILocation(line: 491, column: 13, scope: !1443)
!1449 = !DILocation(line: 495, column: 51, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1451, file: !102, line: 493, column: 11)
!1451 = distinct !DILexicalBlock(scope: !1452, file: !102, line: 492, column: 11)
!1452 = distinct !DILexicalBlock(scope: !1447, file: !102, line: 491, column: 23)
!1453 = !DILocation(line: 495, column: 21, scope: !1450)
!1454 = !DILocalVariable(name: "tmp___9", scope: !1321, file: !102, line: 492, type: !29)
!1455 = !DILocation(line: 495, column: 15, scope: !1456)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !102, line: 495, column: 15)
!1457 = !DILocation(line: 495, column: 15, scope: !1452)
!1458 = !DILocation(line: 501, column: 53, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !102, line: 497, column: 13)
!1460 = distinct !DILexicalBlock(scope: !1461, file: !102, line: 496, column: 13)
!1461 = distinct !DILexicalBlock(scope: !1456, file: !102, line: 495, column: 24)
!1462 = !DILocation(line: 501, column: 23, scope: !1459)
!1463 = !DILocalVariable(name: "tmp___8", scope: !1321, file: !102, line: 491, type: !29)
!1464 = !DILocation(line: 501, column: 17, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1461, file: !102, line: 501, column: 17)
!1466 = !DILocation(line: 501, column: 17, scope: !1461)
!1467 = !DILocalVariable(name: "i", scope: !1321, file: !102, line: 480, type: !29)
!1468 = !DILocation(line: 506, column: 15, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1470, file: !102, line: 508, column: 15)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !102, line: 507, column: 15)
!1471 = distinct !DILexicalBlock(scope: !1465, file: !102, line: 501, column: 26)
!1472 = !DILocation(line: 0, scope: !1471)
!1473 = !DILocation(line: 506, column: 25, scope: !1469)
!1474 = !DILocation(line: 506, column: 26, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !102, line: 506, column: 21)
!1476 = distinct !DILexicalBlock(scope: !1469, file: !102, line: 506, column: 25)
!1477 = !DILocation(line: 506, column: 21, scope: !1476)
!1478 = !DILocation(line: 506, column: 19, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1475, file: !102, line: 506, column: 32)
!1480 = !DILocation(line: 508, column: 50, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1482, file: !102, line: 509, column: 17)
!1482 = distinct !DILexicalBlock(scope: !1476, file: !102, line: 508, column: 17)
!1483 = !DILocation(line: 508, column: 17, scope: !1481)
!1484 = !DILocation(line: 509, column: 57, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !102, line: 511, column: 17)
!1486 = !DILocation(line: 509, column: 79, scope: !1485)
!1487 = !DILocation(line: 509, column: 27, scope: !1485)
!1488 = !DILocalVariable(name: "tmp___6", scope: !1321, file: !102, line: 489, type: !29)
!1489 = !DILocation(line: 509, column: 23, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1476, file: !102, line: 509, column: 21)
!1491 = !DILocation(line: 509, column: 21, scope: !1476)
!1492 = !DILocation(line: 510, column: 51, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !102, line: 511, column: 19)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !102, line: 510, column: 19)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !102, line: 509, column: 32)
!1496 = !DILocation(line: 510, column: 29, scope: !1493)
!1497 = !DILocalVariable(name: "tmp___5", scope: !1321, file: !102, line: 488, type: !29)
!1498 = !DILocation(line: 510, column: 48, scope: !1494)
!1499 = !DILocation(line: 510, column: 65, scope: !1494)
!1500 = !DILocation(line: 510, column: 39, scope: !1494)
!1501 = !DILocation(line: 510, column: 19, scope: !1494)
!1502 = !DILocation(line: 510, column: 27, scope: !1494)
!1503 = !DILocation(line: 510, column: 37, scope: !1494)
!1504 = !DILocation(line: 512, column: 17, scope: !1495)
!1505 = !DILocation(line: 512, column: 50, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !102, line: 514, column: 17)
!1507 = distinct !DILexicalBlock(scope: !1476, file: !102, line: 513, column: 17)
!1508 = !DILocation(line: 512, column: 17, scope: !1506)
!1509 = !DILocation(line: 513, column: 57, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1507, file: !102, line: 515, column: 17)
!1511 = !DILocation(line: 513, column: 79, scope: !1510)
!1512 = !DILocation(line: 513, column: 27, scope: !1510)
!1513 = !DILocalVariable(name: "tmp___7", scope: !1321, file: !102, line: 490, type: !29)
!1514 = !DILocation(line: 513, column: 23, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1476, file: !102, line: 513, column: 21)
!1516 = !DILocation(line: 513, column: 21, scope: !1476)
!1517 = !DILocation(line: 514, column: 46, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !102, line: 513, column: 32)
!1519 = !DILocation(line: 514, column: 19, scope: !1518)
!1520 = !DILocation(line: 514, column: 27, scope: !1518)
!1521 = !DILocation(line: 514, column: 37, scope: !1518)
!1522 = !DILocation(line: 515, column: 25, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1518, file: !102, line: 515, column: 23)
!1524 = !DILocation(line: 515, column: 23, scope: !1518)
!1525 = !DILocation(line: 517, column: 19, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !102, line: 515, column: 40)
!1527 = !DILocation(line: 518, column: 17, scope: !1518)
!1528 = !DILocation(line: 506, column: 19, scope: !1476)
!1529 = distinct !{!1529, !1468, !1530}
!1530 = !DILocation(line: 507, column: 15, scope: !1469)
!1531 = !DILocation(line: 509, column: 15, scope: !1469)
!1532 = !DILocation(line: 512, column: 13, scope: !1471)
!1533 = !DILocation(line: 502, column: 47, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !102, line: 514, column: 15)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !102, line: 513, column: 15)
!1536 = distinct !DILexicalBlock(scope: !1465, file: !102, line: 512, column: 20)
!1537 = !DILocation(line: 502, column: 25, scope: !1534)
!1538 = !DILocalVariable(name: "tmp___4", scope: !1321, file: !102, line: 487, type: !29)
!1539 = !DILocation(line: 502, column: 38, scope: !1535)
!1540 = !DILocation(line: 502, column: 55, scope: !1535)
!1541 = !DILocation(line: 502, column: 29, scope: !1535)
!1542 = !DILocation(line: 503, column: 21, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1536, file: !102, line: 503, column: 19)
!1544 = !DILocation(line: 503, column: 19, scope: !1536)
!1545 = !DILocation(line: 504, column: 25, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !102, line: 505, column: 17)
!1547 = distinct !DILexicalBlock(scope: !1548, file: !102, line: 504, column: 17)
!1548 = distinct !DILexicalBlock(scope: !1543, file: !102, line: 503, column: 28)
!1549 = !DILocation(line: 507, column: 15, scope: !1548)
!1550 = !DILocation(line: 509, column: 11, scope: !1461)
!1551 = !DILocation(line: 496, column: 45, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !102, line: 511, column: 13)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !102, line: 510, column: 13)
!1554 = distinct !DILexicalBlock(scope: !1456, file: !102, line: 509, column: 18)
!1555 = !DILocation(line: 496, column: 23, scope: !1552)
!1556 = !DILocalVariable(name: "tmp___2", scope: !1321, file: !102, line: 485, type: !29)
!1557 = !DILocation(line: 496, column: 27, scope: !1553)
!1558 = !DILocation(line: 497, column: 53, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1553, file: !102, line: 497, column: 13)
!1560 = !DILocation(line: 497, column: 23, scope: !1559)
!1561 = !DILocalVariable(name: "tmp___3", scope: !1321, file: !102, line: 486, type: !17)
!1562 = !DILocation(line: 497, column: 17, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1554, file: !102, line: 497, column: 17)
!1564 = !DILocation(line: 497, column: 17, scope: !1554)
!1565 = !DILocation(line: 498, column: 60, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1563, file: !102, line: 497, column: 26)
!1567 = !DILocation(line: 498, column: 38, scope: !1566)
!1568 = !DILocation(line: 498, column: 74, scope: !1566)
!1569 = !DILocation(line: 498, column: 29, scope: !1566)
!1570 = !DILocation(line: 499, column: 13, scope: !1566)
!1571 = !DILocation(line: 0, scope: !1554)
!1572 = !DILocation(line: 499, column: 19, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1554, file: !102, line: 499, column: 17)
!1574 = !DILocation(line: 499, column: 17, scope: !1554)
!1575 = !DILocation(line: 500, column: 23, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !102, line: 501, column: 15)
!1577 = distinct !DILexicalBlock(scope: !1578, file: !102, line: 500, column: 15)
!1578 = distinct !DILexicalBlock(scope: !1573, file: !102, line: 499, column: 26)
!1579 = !DILocation(line: 503, column: 13, scope: !1578)
!1580 = !DILocation(line: 505, column: 9, scope: !1452)
!1581 = !DILocation(line: 492, column: 47, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !102, line: 507, column: 11)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !102, line: 506, column: 11)
!1584 = distinct !DILexicalBlock(scope: !1447, file: !102, line: 505, column: 16)
!1585 = !DILocation(line: 492, column: 17, scope: !1582)
!1586 = !DILocalVariable(name: "tmp", scope: !1321, file: !102, line: 482, type: !17)
!1587 = !DILocation(line: 492, column: 15, scope: !1588)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !102, line: 492, column: 15)
!1589 = !DILocation(line: 492, column: 35, scope: !1588)
!1590 = !DILocation(line: 492, column: 15, scope: !1584)
!1591 = !DILocalVariable(name: "tmp___1", scope: !1321, file: !102, line: 484, type: !29)
!1592 = !DILocation(line: 493, column: 11, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1588, file: !102, line: 492, column: 67)
!1594 = !DILocation(line: 492, column: 53, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1596, file: !102, line: 495, column: 13)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !102, line: 494, column: 13)
!1597 = distinct !DILexicalBlock(scope: !1588, file: !102, line: 493, column: 18)
!1598 = !DILocation(line: 492, column: 23, scope: !1595)
!1599 = !DILocalVariable(name: "tmp___0", scope: !1321, file: !102, line: 483, type: !17)
!1600 = !DILocation(line: 492, column: 17, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1597, file: !102, line: 492, column: 17)
!1602 = !DILocation(line: 492, column: 41, scope: !1601)
!1603 = !DILocation(line: 492, column: 17, scope: !1597)
!1604 = !DILocation(line: 493, column: 13, scope: !1605)
!1605 = distinct !DILexicalBlock(scope: !1601, file: !102, line: 492, column: 73)
!1606 = !DILocation(line: 0, scope: !1601)
!1607 = !DILocation(line: 0, scope: !1588)
!1608 = !DILocation(line: 493, column: 17, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1584, file: !102, line: 493, column: 15)
!1610 = !DILocation(line: 493, column: 15, scope: !1584)
!1611 = !DILocation(line: 494, column: 21, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !102, line: 495, column: 13)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !102, line: 494, column: 13)
!1614 = distinct !DILexicalBlock(scope: !1609, file: !102, line: 493, column: 24)
!1615 = !DILocation(line: 497, column: 11, scope: !1614)
!1616 = !DILocation(line: 499, column: 7, scope: !1443)
!1617 = !DILocation(line: 490, column: 24, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1438, file: !102, line: 499, column: 14)
!1619 = !DILocation(line: 520, column: 16, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !102, line: 493, column: 7)
!1621 = distinct !DILexicalBlock(scope: !1425, file: !102, line: 492, column: 7)
!1622 = distinct !{!1622, !1415, !1623}
!1623 = !DILocation(line: 523, column: 5, scope: !1416)
!1624 = !DILocation(line: 525, column: 5, scope: !1416)
!1625 = !DILocation(line: 522, column: 9, scope: !1626)
!1626 = distinct !DILexicalBlock(scope: !1397, file: !102, line: 522, column: 9)
!1627 = !DILocation(line: 522, column: 9, scope: !1397)
!1628 = !DILocation(line: 523, column: 7, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !102, line: 525, column: 7)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !102, line: 524, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1626, file: !102, line: 522, column: 20)
!1632 = !DILocation(line: 0, scope: !1631)
!1633 = !DILocation(line: 523, column: 17, scope: !1629)
!1634 = !DILocation(line: 523, column: 18, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !102, line: 523, column: 13)
!1636 = distinct !DILexicalBlock(scope: !1629, file: !102, line: 523, column: 17)
!1637 = !DILocation(line: 523, column: 13, scope: !1636)
!1638 = !DILocation(line: 523, column: 11, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1635, file: !102, line: 523, column: 35)
!1640 = !DILocation(line: 525, column: 28, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !102, line: 525, column: 13)
!1642 = !DILocation(line: 525, column: 36, scope: !1641)
!1643 = !DILocation(line: 525, column: 25, scope: !1641)
!1644 = !DILocation(line: 525, column: 13, scope: !1636)
!1645 = !DILocation(line: 525, column: 24, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1647, file: !102, line: 525, column: 15)
!1647 = distinct !DILexicalBlock(scope: !1641, file: !102, line: 525, column: 47)
!1648 = !DILocation(line: 525, column: 32, scope: !1646)
!1649 = !DILocation(line: 525, column: 15, scope: !1646)
!1650 = !DILocation(line: 525, column: 42, scope: !1646)
!1651 = !DILocation(line: 525, column: 15, scope: !1647)
!1652 = !DILocation(line: 526, column: 21, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1646, file: !102, line: 525, column: 51)
!1654 = !DILocation(line: 526, column: 29, scope: !1653)
!1655 = !DILocation(line: 527, column: 13, scope: !1653)
!1656 = !DILocation(line: 529, column: 9, scope: !1647)
!1657 = !DILocation(line: 523, column: 11, scope: !1636)
!1658 = distinct !{!1658, !1628, !1659}
!1659 = !DILocation(line: 524, column: 7, scope: !1629)
!1660 = !DILocation(line: 526, column: 7, scope: !1629)
!1661 = !DILocation(line: 530, column: 13, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1631, file: !102, line: 530, column: 11)
!1663 = !DILocation(line: 530, column: 11, scope: !1631)
!1664 = !DILocation(line: 531, column: 13, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !102, line: 531, column: 13)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !102, line: 530, column: 20)
!1667 = !DILocation(line: 531, column: 13, scope: !1666)
!1668 = !DILocation(line: 533, column: 29, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !102, line: 533, column: 11)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !102, line: 532, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1665, file: !102, line: 531, column: 31)
!1672 = !DILocation(line: 532, column: 11, scope: !1669)
!1673 = !DILocation(line: 536, column: 9, scope: !1671)
!1674 = !DILocation(line: 537, column: 7, scope: !1666)
!1675 = !DILocation(line: 534, column: 21, scope: !1676)
!1676 = distinct !DILexicalBlock(scope: !1677, file: !102, line: 539, column: 9)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !102, line: 538, column: 9)
!1678 = distinct !DILexicalBlock(scope: !1662, file: !102, line: 537, column: 14)
!1679 = !DILocalVariable(name: "real_temp", scope: !1321, file: !102, line: 479, type: !84)
!1680 = !DILocation(line: 536, column: 27, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1677, file: !102, line: 536, column: 9)
!1682 = !DILocation(line: 536, column: 50, scope: !1681)
!1683 = !DILocation(line: 535, column: 9, scope: !1681)
!1684 = !DILocation(line: 536, column: 13, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1678, file: !102, line: 536, column: 13)
!1686 = !DILocation(line: 536, column: 13, scope: !1678)
!1687 = !DILocation(line: 537, column: 11, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !102, line: 539, column: 11)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !102, line: 538, column: 11)
!1690 = distinct !DILexicalBlock(scope: !1685, file: !102, line: 536, column: 31)
!1691 = !DILocation(line: 0, scope: !1690)
!1692 = !DILocation(line: 537, column: 21, scope: !1688)
!1693 = !DILocation(line: 537, column: 22, scope: !1694)
!1694 = distinct !DILexicalBlock(scope: !1695, file: !102, line: 537, column: 17)
!1695 = distinct !DILexicalBlock(scope: !1688, file: !102, line: 537, column: 21)
!1696 = !DILocation(line: 537, column: 17, scope: !1695)
!1697 = !DILocation(line: 537, column: 15, scope: !1698)
!1698 = distinct !DILexicalBlock(scope: !1694, file: !102, line: 537, column: 39)
!1699 = !DILocation(line: 539, column: 26, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1695, file: !102, line: 539, column: 17)
!1701 = !DILocation(line: 539, column: 34, scope: !1700)
!1702 = !DILocation(line: 539, column: 17, scope: !1700)
!1703 = !DILocation(line: 539, column: 44, scope: !1700)
!1704 = !DILocation(line: 539, column: 17, scope: !1695)
!1705 = !DILocation(line: 540, column: 41, scope: !1706)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !102, line: 541, column: 15)
!1707 = distinct !DILexicalBlock(scope: !1708, file: !102, line: 540, column: 15)
!1708 = distinct !DILexicalBlock(scope: !1700, file: !102, line: 539, column: 53)
!1709 = !DILocation(line: 540, column: 49, scope: !1706)
!1710 = !DILocation(line: 540, column: 27, scope: !1706)
!1711 = !DILocation(line: 542, column: 44, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1707, file: !102, line: 542, column: 15)
!1713 = !DILocation(line: 542, column: 52, scope: !1712)
!1714 = !DILocation(line: 542, column: 60, scope: !1712)
!1715 = !DILocation(line: 542, column: 82, scope: !1712)
!1716 = !DILocation(line: 541, column: 15, scope: !1712)
!1717 = !DILocation(line: 545, column: 13, scope: !1708)
!1718 = !DILocation(line: 537, column: 15, scope: !1695)
!1719 = distinct !{!1719, !1687, !1720}
!1720 = !DILocation(line: 538, column: 11, scope: !1688)
!1721 = !DILocation(line: 540, column: 11, scope: !1688)
!1722 = !DILocation(line: 543, column: 9, scope: !1690)
!1723 = !DILocation(line: 547, column: 18, scope: !1631)
!1724 = !DILocation(line: 548, column: 5, scope: !1631)
!1725 = !DILocation(line: 549, column: 14, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1727, file: !102, line: 550, column: 5)
!1727 = distinct !DILexicalBlock(scope: !1397, file: !102, line: 549, column: 5)
!1728 = distinct !{!1728, !1388, !1729}
!1729 = !DILocation(line: 552, column: 3, scope: !1389)
!1730 = !DILocation(line: 554, column: 3, scope: !1389)
!1731 = !DILocation(line: 551, column: 3, scope: !1391)
!1732 = distinct !DISubprogram(name: "get_real_temp", scope: !102, file: !102, line: 445, type: !1733, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1733 = !DISubroutineType(types: !1734)
!1734 = !{!84, !86, !1735, !29}
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!1736 = !DILocalVariable(name: "temperature", arg: 1, scope: !1732, file: !102, line: 445, type: !86)
!1737 = !DILocation(line: 0, scope: !1732)
!1738 = !DILocalVariable(name: "scale", arg: 2, scope: !1732, file: !102, line: 445, type: !1735)
!1739 = !DILocalVariable(name: "temp_units", arg: 3, scope: !1732, file: !102, line: 445, type: !29)
!1740 = !DILocalVariable(name: "__cil_tmp5", scope: !1732, file: !102, line: 448, type: !17)
!1741 = !DILocation(line: 448, column: 9, scope: !1732)
!1742 = !DILocalVariable(name: "__cil_tmp6", scope: !1732, file: !102, line: 449, type: !17)
!1743 = !DILocation(line: 449, column: 9, scope: !1732)
!1744 = !DILocalVariable(name: "__cil_tmp7", scope: !1732, file: !102, line: 450, type: !17)
!1745 = !DILocation(line: 450, column: 9, scope: !1732)
!1746 = !DILocation(line: 447, column: 15, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1732, file: !102, line: 452, column: 3)
!1748 = !DILocalVariable(name: "real_temp", scope: !1732, file: !102, line: 447, type: !84)
!1749 = !DILocation(line: 450, column: 18, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !102, line: 450, column: 7)
!1751 = distinct !DILexicalBlock(scope: !1747, file: !102, line: 448, column: 3)
!1752 = !DILocation(line: 450, column: 7, scope: !1751)
!1753 = !DILocation(line: 450, column: 5, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1750, file: !102, line: 450, column: 24)
!1755 = !DILocation(line: 453, column: 18, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1751, file: !102, line: 453, column: 7)
!1757 = !DILocation(line: 453, column: 7, scope: !1751)
!1758 = !DILocation(line: 453, column: 5, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !102, line: 453, column: 24)
!1760 = !DILocation(line: 458, column: 3, scope: !1751)
!1761 = !DILocation(line: 451, column: 10, scope: !1751)
!1762 = !DILocation(line: 452, column: 3, scope: !1751)
!1763 = !DILocation(line: 454, column: 25, scope: !1751)
!1764 = !DILocation(line: 454, column: 31, scope: !1751)
!1765 = !DILocation(line: 455, column: 10, scope: !1751)
!1766 = !DILocation(line: 456, column: 3, scope: !1751)
!1767 = !DILocation(line: 459, column: 13, scope: !1751)
!1768 = !DILocation(line: 460, column: 10, scope: !1751)
!1769 = !DILocation(line: 461, column: 3, scope: !1751)
!1770 = !DILocation(line: 0, scope: !1747)
!1771 = !DILocation(line: 463, column: 3, scope: !1747)
!1772 = distinct !DISubprogram(name: "print_cooling_information", scope: !102, file: !102, line: 553, type: !1159, scopeLine: 554, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1773 = !DILocalVariable(name: "cooling", arg: 1, scope: !1772, file: !102, line: 553, type: !6)
!1774 = !DILocation(line: 0, scope: !1772)
!1775 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !1772, file: !102, line: 553, type: !29)
!1776 = !DILocalVariable(name: "__cil_tmp19", scope: !1772, file: !102, line: 571, type: !17)
!1777 = !DILocation(line: 571, column: 9, scope: !1772)
!1778 = !DILocalVariable(name: "__cil_tmp20", scope: !1772, file: !102, line: 572, type: !17)
!1779 = !DILocation(line: 572, column: 9, scope: !1772)
!1780 = !DILocalVariable(name: "__cil_tmp21", scope: !1772, file: !102, line: 573, type: !17)
!1781 = !DILocation(line: 573, column: 9, scope: !1772)
!1782 = !DILocalVariable(name: "__cil_tmp22", scope: !1772, file: !102, line: 574, type: !17)
!1783 = !DILocation(line: 574, column: 9, scope: !1772)
!1784 = !DILocalVariable(name: "__cil_tmp23", scope: !1772, file: !102, line: 575, type: !17)
!1785 = !DILocation(line: 575, column: 9, scope: !1772)
!1786 = !DILocalVariable(name: "__cil_tmp24", scope: !1772, file: !102, line: 576, type: !17)
!1787 = !DILocation(line: 576, column: 9, scope: !1772)
!1788 = !DILocalVariable(name: "__cil_tmp25", scope: !1772, file: !102, line: 577, type: !17)
!1789 = !DILocation(line: 577, column: 9, scope: !1772)
!1790 = !DILocalVariable(name: "__cil_tmp26", scope: !1772, file: !102, line: 578, type: !17)
!1791 = !DILocation(line: 578, column: 9, scope: !1772)
!1792 = !DILocalVariable(name: "__cil_tmp27", scope: !1772, file: !102, line: 579, type: !17)
!1793 = !DILocation(line: 579, column: 9, scope: !1772)
!1794 = !DILocalVariable(name: "__cil_tmp28", scope: !1772, file: !102, line: 580, type: !17)
!1795 = !DILocation(line: 580, column: 9, scope: !1772)
!1796 = !DILocalVariable(name: "__cil_tmp29", scope: !1772, file: !102, line: 581, type: !17)
!1797 = !DILocation(line: 581, column: 9, scope: !1772)
!1798 = !DILocalVariable(name: "__cil_tmp30", scope: !1772, file: !102, line: 582, type: !17)
!1799 = !DILocation(line: 582, column: 9, scope: !1772)
!1800 = !DILocalVariable(name: "__cil_tmp31", scope: !1772, file: !102, line: 583, type: !17)
!1801 = !DILocation(line: 583, column: 9, scope: !1772)
!1802 = !DILocalVariable(name: "__cil_tmp32", scope: !1772, file: !102, line: 584, type: !17)
!1803 = !DILocation(line: 584, column: 9, scope: !1772)
!1804 = !DILocalVariable(name: "__cil_tmp33", scope: !1772, file: !102, line: 585, type: !17)
!1805 = !DILocation(line: 585, column: 9, scope: !1772)
!1806 = !DILocalVariable(name: "__cil_tmp34", scope: !1772, file: !102, line: 586, type: !17)
!1807 = !DILocation(line: 586, column: 9, scope: !1772)
!1808 = !DILocalVariable(name: "sensor", scope: !1772, file: !102, line: 555, type: !6)
!1809 = !DILocalVariable(name: "sensor_num", scope: !1772, file: !102, line: 558, type: !29)
!1810 = !DILocation(line: 560, column: 3, scope: !1811)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !102, line: 560, column: 3)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !102, line: 559, column: 3)
!1813 = distinct !DILexicalBlock(scope: !1772, file: !102, line: 588, column: 3)
!1814 = !DILocation(line: 0, scope: !1813)
!1815 = !DILocation(line: 560, column: 13, scope: !1811)
!1816 = !DILocation(line: 560, column: 11, scope: !1817)
!1817 = distinct !DILexicalBlock(scope: !1818, file: !102, line: 560, column: 9)
!1818 = distinct !DILexicalBlock(scope: !1811, file: !102, line: 560, column: 13)
!1819 = !DILocation(line: 560, column: 9, scope: !1818)
!1820 = !DILocation(line: 560, column: 7, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1817, file: !102, line: 560, column: 19)
!1822 = !DILocalVariable(name: "state", scope: !1772, file: !102, line: 559, type: !17)
!1823 = !DILocalVariable(name: "type", scope: !1772, file: !102, line: 560, type: !17)
!1824 = !DILocalVariable(name: "cur_state", scope: !1772, file: !102, line: 561, type: !29)
!1825 = !DILocalVariable(name: "max_state", scope: !1772, file: !102, line: 562, type: !29)
!1826 = !DILocalVariable(name: "type_cooling", scope: !1772, file: !102, line: 563, type: !29)
!1827 = !DILocation(line: 565, column: 37, scope: !1818)
!1828 = !DILocation(line: 565, column: 14, scope: !1818)
!1829 = !DILocalVariable(name: "fields", scope: !1772, file: !102, line: 556, type: !6)
!1830 = !DILocation(line: 566, column: 5, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !102, line: 567, column: 5)
!1832 = distinct !DILexicalBlock(scope: !1818, file: !102, line: 566, column: 5)
!1833 = !DILocation(line: 562, column: 15, scope: !1818)
!1834 = !DILocation(line: 561, column: 10, scope: !1818)
!1835 = !DILocation(line: 561, column: 11, scope: !1818)
!1836 = !DILocation(line: 0, scope: !1818)
!1837 = !DILocation(line: 563, column: 18, scope: !1818)
!1838 = !DILocation(line: 566, column: 15, scope: !1831)
!1839 = !DILocation(line: 566, column: 13, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1841, file: !102, line: 566, column: 11)
!1841 = distinct !DILexicalBlock(scope: !1831, file: !102, line: 566, column: 15)
!1842 = !DILocation(line: 566, column: 11, scope: !1841)
!1843 = !DILocation(line: 566, column: 9, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1840, file: !102, line: 566, column: 21)
!1845 = !DILocation(line: 567, column: 39, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1841, file: !102, line: 568, column: 7)
!1847 = !DILocation(line: 567, column: 15, scope: !1846)
!1848 = !DILocalVariable(name: "value", scope: !1772, file: !102, line: 557, type: !13)
!1849 = !DILocation(line: 568, column: 47, scope: !1850)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !102, line: 568, column: 7)
!1851 = !DILocation(line: 568, column: 17, scope: !1850)
!1852 = !DILocalVariable(name: "tmp___5", scope: !1772, file: !102, line: 570, type: !29)
!1853 = !DILocation(line: 568, column: 11, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1841, file: !102, line: 568, column: 11)
!1855 = !DILocation(line: 568, column: 11, scope: !1841)
!1856 = !DILocation(line: 570, column: 49, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !102, line: 570, column: 9)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !102, line: 569, column: 9)
!1859 = distinct !DILexicalBlock(scope: !1854, file: !102, line: 568, column: 20)
!1860 = !DILocation(line: 570, column: 19, scope: !1857)
!1861 = !DILocalVariable(name: "tmp___4", scope: !1772, file: !102, line: 569, type: !29)
!1862 = !DILocation(line: 570, column: 13, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1859, file: !102, line: 570, column: 13)
!1864 = !DILocation(line: 570, column: 13, scope: !1859)
!1865 = !DILocation(line: 573, column: 51, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !102, line: 572, column: 11)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !102, line: 571, column: 11)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !102, line: 570, column: 22)
!1869 = !DILocation(line: 573, column: 21, scope: !1866)
!1870 = !DILocalVariable(name: "tmp___3", scope: !1772, file: !102, line: 568, type: !29)
!1871 = !DILocation(line: 573, column: 15, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1868, file: !102, line: 573, column: 15)
!1873 = !DILocation(line: 573, column: 15, scope: !1868)
!1874 = !DILocation(line: 575, column: 53, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !102, line: 575, column: 13)
!1876 = distinct !DILexicalBlock(scope: !1877, file: !102, line: 574, column: 13)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !102, line: 573, column: 24)
!1878 = !DILocation(line: 575, column: 23, scope: !1875)
!1879 = !DILocalVariable(name: "tmp___2", scope: !1772, file: !102, line: 567, type: !29)
!1880 = !DILocation(line: 575, column: 19, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1877, file: !102, line: 575, column: 17)
!1882 = !DILocation(line: 575, column: 17, scope: !1877)
!1883 = !DILocation(line: 576, column: 49, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1885, file: !102, line: 577, column: 15)
!1885 = distinct !DILexicalBlock(scope: !1886, file: !102, line: 576, column: 15)
!1886 = distinct !DILexicalBlock(scope: !1881, file: !102, line: 575, column: 28)
!1887 = !DILocation(line: 576, column: 27, scope: !1884)
!1888 = !DILocation(line: 579, column: 13, scope: !1886)
!1889 = !DILocation(line: 580, column: 11, scope: !1877)
!1890 = !DILocation(line: 574, column: 47, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !102, line: 582, column: 13)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !102, line: 581, column: 13)
!1893 = distinct !DILexicalBlock(scope: !1872, file: !102, line: 580, column: 18)
!1894 = !DILocation(line: 574, column: 25, scope: !1891)
!1895 = !DILocation(line: 578, column: 9, scope: !1868)
!1896 = !DILocation(line: 571, column: 25, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !102, line: 579, column: 11)
!1898 = distinct !DILexicalBlock(scope: !1863, file: !102, line: 578, column: 16)
!1899 = !DILocation(line: 572, column: 17, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !102, line: 572, column: 11)
!1901 = !DILocalVariable(name: "tmp", scope: !1772, file: !102, line: 564, type: !17)
!1902 = !DILocation(line: 572, column: 15, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1898, file: !102, line: 572, column: 15)
!1904 = !DILocation(line: 572, column: 35, scope: !1903)
!1905 = !DILocation(line: 572, column: 15, scope: !1898)
!1906 = !DILocation(line: 572, column: 23, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1908, file: !102, line: 574, column: 13)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 573, column: 13)
!1909 = distinct !DILexicalBlock(scope: !1903, file: !102, line: 572, column: 67)
!1910 = !DILocalVariable(name: "tmp___0", scope: !1772, file: !102, line: 565, type: !17)
!1911 = !DILocation(line: 572, column: 17, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1909, file: !102, line: 572, column: 17)
!1913 = !DILocation(line: 572, column: 41, scope: !1912)
!1914 = !DILocation(line: 572, column: 17, scope: !1909)
!1915 = !DILocalVariable(name: "tmp___1", scope: !1772, file: !102, line: 566, type: !29)
!1916 = !DILocation(line: 573, column: 13, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1912, file: !102, line: 572, column: 73)
!1918 = !DILocation(line: 0, scope: !1912)
!1919 = !DILocation(line: 574, column: 11, scope: !1909)
!1920 = !DILocation(line: 0, scope: !1903)
!1921 = !DILocation(line: 574, column: 7, scope: !1859)
!1922 = !DILocation(line: 569, column: 24, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1854, file: !102, line: 574, column: 14)
!1924 = !DILocation(line: 578, column: 16, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !102, line: 572, column: 7)
!1926 = distinct !DILexicalBlock(scope: !1841, file: !102, line: 571, column: 7)
!1927 = distinct !{!1927, !1830, !1928}
!1928 = !DILocation(line: 581, column: 5, scope: !1831)
!1929 = !DILocation(line: 583, column: 5, scope: !1831)
!1930 = !DILocation(line: 580, column: 9, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1818, file: !102, line: 580, column: 9)
!1932 = !DILocation(line: 580, column: 9, scope: !1818)
!1933 = !DILocation(line: 581, column: 13, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1935, file: !102, line: 581, column: 11)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !102, line: 580, column: 23)
!1936 = !DILocation(line: 581, column: 11, scope: !1935)
!1937 = !DILocation(line: 581, column: 15, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !102, line: 581, column: 13)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !102, line: 581, column: 20)
!1940 = !DILocation(line: 581, column: 13, scope: !1939)
!1941 = !DILocation(line: 582, column: 15, scope: !1942)
!1942 = distinct !DILexicalBlock(scope: !1943, file: !102, line: 582, column: 15)
!1943 = distinct !DILexicalBlock(scope: !1938, file: !102, line: 581, column: 21)
!1944 = !DILocation(line: 582, column: 15, scope: !1943)
!1945 = !DILocation(line: 584, column: 31, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !102, line: 584, column: 13)
!1947 = distinct !DILexicalBlock(scope: !1948, file: !102, line: 583, column: 13)
!1948 = distinct !DILexicalBlock(scope: !1942, file: !102, line: 582, column: 33)
!1949 = !DILocation(line: 583, column: 13, scope: !1946)
!1950 = !DILocation(line: 587, column: 11, scope: !1948)
!1951 = !DILocation(line: 588, column: 9, scope: !1943)
!1952 = !DILocation(line: 581, column: 11, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1938, file: !102, line: 588, column: 16)
!1954 = !DILocation(line: 583, column: 7, scope: !1939)
!1955 = !DILocation(line: 584, column: 11, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1934, file: !102, line: 584, column: 11)
!1957 = !DILocation(line: 584, column: 11, scope: !1934)
!1958 = !DILocation(line: 585, column: 86, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !102, line: 586, column: 9)
!1960 = distinct !DILexicalBlock(scope: !1961, file: !102, line: 585, column: 9)
!1961 = distinct !DILexicalBlock(scope: !1956, file: !102, line: 584, column: 18)
!1962 = !DILocation(line: 585, column: 9, scope: !1959)
!1963 = !DILocation(line: 589, column: 7, scope: !1961)
!1964 = !DILocation(line: 586, column: 21, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1956, file: !102, line: 586, column: 11)
!1966 = !DILocation(line: 586, column: 11, scope: !1956)
!1967 = !DILocation(line: 588, column: 38, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !102, line: 588, column: 9)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !102, line: 587, column: 9)
!1970 = distinct !DILexicalBlock(scope: !1965, file: !102, line: 586, column: 26)
!1971 = !DILocation(line: 587, column: 9, scope: !1968)
!1972 = !DILocation(line: 591, column: 7, scope: !1970)
!1973 = !DILocation(line: 586, column: 21, scope: !1974)
!1974 = distinct !DILexicalBlock(scope: !1965, file: !102, line: 586, column: 11)
!1975 = !DILocation(line: 586, column: 11, scope: !1965)
!1976 = !DILocation(line: 588, column: 38, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1978, file: !102, line: 588, column: 9)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !102, line: 587, column: 9)
!1979 = distinct !DILexicalBlock(scope: !1974, file: !102, line: 586, column: 26)
!1980 = !DILocation(line: 587, column: 9, scope: !1977)
!1981 = !DILocation(line: 591, column: 7, scope: !1979)
!1982 = !DILocation(line: 590, column: 27, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !102, line: 593, column: 9)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !102, line: 592, column: 9)
!1985 = distinct !DILexicalBlock(scope: !1974, file: !102, line: 591, column: 14)
!1986 = !DILocation(line: 589, column: 9, scope: !1983)
!1987 = !DILocation(line: 592, column: 18, scope: !1935)
!1988 = !DILocation(line: 593, column: 5, scope: !1935)
!1989 = !DILocation(line: 595, column: 14, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1991, file: !102, line: 595, column: 5)
!1991 = distinct !DILexicalBlock(scope: !1818, file: !102, line: 594, column: 5)
!1992 = distinct !{!1992, !1810, !1993}
!1993 = !DILocation(line: 598, column: 3, scope: !1811)
!1994 = !DILocation(line: 600, column: 3, scope: !1811)
!1995 = !DILocation(line: 597, column: 3, scope: !1813)
!1996 = distinct !DISubprogram(name: "main", scope: !117, file: !117, line: 132, type: !1997, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!29, !29, !1735}
!1999 = !DILocalVariable(name: "argc", arg: 1, scope: !1996, file: !117, line: 132, type: !29)
!2000 = !DILocation(line: 0, scope: !1996)
!2001 = !DILocalVariable(name: "argv", arg: 2, scope: !1996, file: !117, line: 132, type: !1735)
!2002 = !DILocalVariable(name: "option_index", scope: !1996, file: !117, line: 143, type: !29)
!2003 = !DILocation(line: 143, column: 7, scope: !1996)
!2004 = !DILocalVariable(name: "__cil_tmp17", scope: !1996, file: !117, line: 148, type: !17)
!2005 = !DILocation(line: 148, column: 9, scope: !1996)
!2006 = !DILocalVariable(name: "__cil_tmp18", scope: !1996, file: !117, line: 149, type: !17)
!2007 = !DILocation(line: 149, column: 9, scope: !1996)
!2008 = !DILocalVariable(name: "__cil_tmp19", scope: !1996, file: !117, line: 150, type: !17)
!2009 = !DILocation(line: 150, column: 9, scope: !1996)
!2010 = !DILocalVariable(name: "__cil_tmp20", scope: !1996, file: !117, line: 151, type: !17)
!2011 = !DILocation(line: 151, column: 9, scope: !1996)
!2012 = !DILocalVariable(name: "__cil_tmp21", scope: !1996, file: !117, line: 152, type: !17)
!2013 = !DILocation(line: 152, column: 9, scope: !1996)
!2014 = !DILocalVariable(name: "__cil_tmp22", scope: !1996, file: !117, line: 153, type: !17)
!2015 = !DILocation(line: 153, column: 9, scope: !1996)
!2016 = !DILocalVariable(name: "show_batteries", scope: !1996, file: !117, line: 134, type: !29)
!2017 = !DILocalVariable(name: "show_ac_adapter", scope: !1996, file: !117, line: 135, type: !29)
!2018 = !DILocalVariable(name: "show_thermal", scope: !1996, file: !117, line: 136, type: !29)
!2019 = !DILocalVariable(name: "show_cooling", scope: !1996, file: !117, line: 137, type: !29)
!2020 = !DILocalVariable(name: "show_empty_slots", scope: !1996, file: !117, line: 138, type: !29)
!2021 = !DILocalVariable(name: "show_details", scope: !1996, file: !117, line: 139, type: !29)
!2022 = !DILocalVariable(name: "proc_interface", scope: !1996, file: !117, line: 140, type: !29)
!2023 = !DILocalVariable(name: "temperature_units", scope: !1996, file: !117, line: 141, type: !29)
!2024 = !DILocation(line: 143, column: 9, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !117, line: 142, column: 3)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 156, column: 3)
!2027 = distinct !DILexicalBlock(scope: !1996, file: !117, line: 155, column: 3)
!2028 = !DILocalVariable(name: "tmp", scope: !1996, file: !117, line: 145, type: !17)
!2029 = !DILocalVariable(name: "acpi_path", scope: !1996, file: !117, line: 144, type: !17)
!2030 = !DILocation(line: 145, column: 9, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 145, column: 7)
!2032 = !DILocation(line: 145, column: 7, scope: !2027)
!2033 = !DILocation(line: 146, column: 38, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !2035, file: !117, line: 147, column: 5)
!2035 = distinct !DILexicalBlock(scope: !2036, file: !117, line: 146, column: 5)
!2036 = distinct !DILexicalBlock(scope: !2031, file: !117, line: 145, column: 20)
!2037 = !DILocation(line: 146, column: 5, scope: !2034)
!2038 = !DILocation(line: 147, column: 5, scope: !2036)
!2039 = !DILocation(line: 150, column: 3, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !2041, file: !117, line: 150, column: 3)
!2041 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 149, column: 3)
!2042 = !DILocation(line: 140, column: 18, scope: !2026)
!2043 = !DILocation(line: 0, scope: !2027)
!2044 = !DILocation(line: 138, column: 20, scope: !2026)
!2045 = !DILocation(line: 141, column: 21, scope: !2026)
!2046 = !DILocation(line: 143, column: 13, scope: !2026)
!2047 = !DILocation(line: 150, column: 13, scope: !2040)
!2048 = !DILocation(line: 150, column: 10, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2050, file: !117, line: 154, column: 5)
!2050 = distinct !DILexicalBlock(scope: !2051, file: !117, line: 153, column: 5)
!2051 = distinct !DILexicalBlock(scope: !2040, file: !117, line: 150, column: 13)
!2052 = !DILocalVariable(name: "ch", scope: !1996, file: !117, line: 142, type: !29)
!2053 = !DILocation(line: 150, column: 15, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2051, file: !117, line: 150, column: 9)
!2055 = !DILocation(line: 150, column: 9, scope: !2051)
!2056 = !DILocation(line: 150, column: 7, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2054, file: !117, line: 150, column: 23)
!2058 = !DILocation(line: 152, column: 12, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 152, column: 9)
!2060 = distinct !DILexicalBlock(scope: !2051, file: !117, line: 152, column: 5)
!2061 = !DILocation(line: 152, column: 9, scope: !2060)
!2062 = !DILocation(line: 152, column: 7, scope: !2063)
!2063 = distinct !DILexicalBlock(scope: !2059, file: !117, line: 152, column: 19)
!2064 = !DILocation(line: 155, column: 12, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 155, column: 9)
!2066 = !DILocation(line: 155, column: 9, scope: !2060)
!2067 = !DILocation(line: 155, column: 7, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !117, line: 155, column: 19)
!2069 = !DILocation(line: 158, column: 12, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 158, column: 9)
!2071 = !DILocation(line: 158, column: 9, scope: !2060)
!2072 = !DILocation(line: 158, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2070, file: !117, line: 158, column: 19)
!2074 = !DILocation(line: 161, column: 12, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 161, column: 9)
!2076 = !DILocation(line: 161, column: 9, scope: !2060)
!2077 = !DILocation(line: 161, column: 7, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !117, line: 161, column: 20)
!2079 = !DILocation(line: 164, column: 12, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 164, column: 9)
!2081 = !DILocation(line: 164, column: 9, scope: !2060)
!2082 = !DILocation(line: 164, column: 7, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2080, file: !117, line: 164, column: 19)
!2084 = !DILocation(line: 167, column: 12, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 167, column: 9)
!2086 = !DILocation(line: 167, column: 9, scope: !2060)
!2087 = !DILocation(line: 167, column: 7, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !117, line: 167, column: 20)
!2089 = !DILocation(line: 170, column: 12, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 170, column: 9)
!2091 = !DILocation(line: 170, column: 9, scope: !2060)
!2092 = !DILocation(line: 170, column: 7, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2090, file: !117, line: 170, column: 20)
!2094 = !DILocation(line: 173, column: 12, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 173, column: 9)
!2096 = !DILocation(line: 173, column: 9, scope: !2060)
!2097 = !DILocation(line: 173, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2095, file: !117, line: 173, column: 20)
!2099 = !DILocation(line: 176, column: 12, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 176, column: 9)
!2101 = !DILocation(line: 176, column: 9, scope: !2060)
!2102 = !DILocation(line: 176, column: 7, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2100, file: !117, line: 176, column: 20)
!2104 = !DILocation(line: 179, column: 12, scope: !2105)
!2105 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 179, column: 9)
!2106 = !DILocation(line: 179, column: 9, scope: !2060)
!2107 = !DILocation(line: 179, column: 7, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2105, file: !117, line: 179, column: 20)
!2109 = !DILocation(line: 182, column: 12, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 182, column: 9)
!2111 = !DILocation(line: 182, column: 9, scope: !2060)
!2112 = !DILocation(line: 182, column: 7, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2110, file: !117, line: 182, column: 20)
!2114 = !DILocation(line: 191, column: 12, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 191, column: 9)
!2116 = !DILocation(line: 191, column: 9, scope: !2060)
!2117 = !DILocation(line: 191, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2115, file: !117, line: 191, column: 20)
!2119 = !DILocation(line: 200, column: 5, scope: !2060)
!2120 = !DILocation(line: 154, column: 5, scope: !2060)
!2121 = !DILocation(line: 157, column: 5, scope: !2060)
!2122 = !DILocation(line: 160, column: 5, scope: !2060)
!2123 = !DILocation(line: 163, column: 5, scope: !2060)
!2124 = !DILocation(line: 166, column: 5, scope: !2060)
!2125 = !DILocation(line: 169, column: 5, scope: !2060)
!2126 = !DILocation(line: 172, column: 5, scope: !2060)
!2127 = !DILocation(line: 174, column: 15, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2129, file: !117, line: 175, column: 5)
!2129 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 174, column: 5)
!2130 = !DILocalVariable(name: "tmp___0", scope: !1996, file: !117, line: 146, type: !29)
!2131 = !DILocation(line: 174, column: 5, scope: !2060)
!2132 = !DILocation(line: 178, column: 5, scope: !2060)
!2133 = !DILocation(line: 181, column: 5, scope: !2060)
!2134 = !DILocation(line: 184, column: 5, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2136, file: !117, line: 184, column: 5)
!2136 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 183, column: 5)
!2137 = !DILocation(line: 185, column: 17, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2136, file: !117, line: 186, column: 5)
!2139 = !DILocation(line: 186, column: 11, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 186, column: 9)
!2141 = !DILocation(line: 186, column: 9, scope: !2060)
!2142 = !DILocation(line: 187, column: 40, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2144, file: !117, line: 188, column: 7)
!2144 = distinct !DILexicalBlock(scope: !2145, file: !117, line: 187, column: 7)
!2145 = distinct !DILexicalBlock(scope: !2140, file: !117, line: 186, column: 22)
!2146 = !DILocation(line: 187, column: 7, scope: !2143)
!2147 = !DILocation(line: 188, column: 7, scope: !2145)
!2148 = !DILocation(line: 190, column: 5, scope: !2060)
!2149 = !DILocation(line: 192, column: 5, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !117, line: 193, column: 5)
!2151 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 192, column: 5)
!2152 = !DILocation(line: 193, column: 40, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2151, file: !117, line: 194, column: 5)
!2154 = !DILocation(line: 193, column: 17, scope: !2153)
!2155 = !DILocation(line: 194, column: 11, scope: !2156)
!2156 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 194, column: 9)
!2157 = !DILocation(line: 194, column: 9, scope: !2060)
!2158 = !DILocation(line: 195, column: 40, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !117, line: 196, column: 7)
!2160 = distinct !DILexicalBlock(scope: !2161, file: !117, line: 195, column: 7)
!2161 = distinct !DILexicalBlock(scope: !2156, file: !117, line: 194, column: 22)
!2162 = !DILocation(line: 195, column: 7, scope: !2159)
!2163 = !DILocation(line: 196, column: 7, scope: !2161)
!2164 = !DILocation(line: 198, column: 5, scope: !2060)
!2165 = !DILocation(line: 201, column: 15, scope: !2166)
!2166 = distinct !DILexicalBlock(scope: !2167, file: !117, line: 201, column: 5)
!2167 = distinct !DILexicalBlock(scope: !2060, file: !117, line: 200, column: 5)
!2168 = !DILocalVariable(name: "tmp___1", scope: !1996, file: !117, line: 147, type: !29)
!2169 = !DILocation(line: 201, column: 5, scope: !2060)
!2170 = distinct !{!2170, !2039, !2171}
!2171 = !DILocation(line: 204, column: 3, scope: !2040)
!2172 = !DILocation(line: 206, column: 3, scope: !2040)
!2173 = !DILocation(line: 206, column: 9, scope: !2174)
!2174 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 206, column: 7)
!2175 = !DILocation(line: 206, column: 7, scope: !2027)
!2176 = !DILocation(line: 206, column: 11, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !117, line: 206, column: 9)
!2178 = distinct !DILexicalBlock(scope: !2174, file: !117, line: 206, column: 25)
!2179 = !DILocation(line: 206, column: 9, scope: !2178)
!2180 = !DILocation(line: 206, column: 13, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !117, line: 206, column: 11)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !117, line: 206, column: 28)
!2183 = !DILocation(line: 206, column: 11, scope: !2182)
!2184 = !DILocation(line: 206, column: 15, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !117, line: 206, column: 13)
!2186 = distinct !DILexicalBlock(scope: !2181, file: !117, line: 206, column: 27)
!2187 = !DILocation(line: 206, column: 13, scope: !2186)
!2188 = !DILocation(line: 208, column: 9, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2185, file: !117, line: 206, column: 29)
!2190 = !DILocation(line: 209, column: 7, scope: !2186)
!2191 = !DILocation(line: 134, column: 18, scope: !2026)
!2192 = !DILocation(line: 210, column: 5, scope: !2182)
!2193 = !DILocation(line: 211, column: 3, scope: !2178)
!2194 = !DILocation(line: 209, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 209, column: 7)
!2196 = !DILocation(line: 209, column: 7, scope: !2027)
!2197 = !DILocation(line: 210, column: 5, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2199, file: !117, line: 211, column: 5)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !117, line: 210, column: 5)
!2200 = distinct !DILexicalBlock(scope: !2195, file: !117, line: 209, column: 23)
!2201 = !DILocation(line: 213, column: 3, scope: !2200)
!2202 = !DILocation(line: 212, column: 7, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 212, column: 7)
!2204 = !DILocation(line: 212, column: 7, scope: !2027)
!2205 = !DILocation(line: 213, column: 5, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2207, file: !117, line: 214, column: 5)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !117, line: 213, column: 5)
!2208 = distinct !DILexicalBlock(scope: !2203, file: !117, line: 212, column: 24)
!2209 = !DILocation(line: 216, column: 3, scope: !2208)
!2210 = !DILocation(line: 215, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 215, column: 7)
!2212 = !DILocation(line: 215, column: 7, scope: !2027)
!2213 = !DILocation(line: 216, column: 5, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2215, file: !117, line: 217, column: 5)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !117, line: 216, column: 5)
!2216 = distinct !DILexicalBlock(scope: !2211, file: !117, line: 215, column: 21)
!2217 = !DILocation(line: 220, column: 3, scope: !2216)
!2218 = !DILocation(line: 218, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2027, file: !117, line: 218, column: 7)
!2220 = !DILocation(line: 218, column: 7, scope: !2027)
!2221 = !DILocation(line: 219, column: 5, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2223, file: !117, line: 220, column: 5)
!2223 = distinct !DILexicalBlock(scope: !2224, file: !117, line: 219, column: 5)
!2224 = distinct !DILexicalBlock(scope: !2219, file: !117, line: 218, column: 21)
!2225 = !DILocation(line: 222, column: 3, scope: !2224)
!2226 = !DILocation(line: 221, column: 3, scope: !2027)
!2227 = !DILocation(line: 223, column: 1, scope: !1996)
!2228 = distinct !DISubprogram(name: "version", scope: !117, file: !117, line: 69, type: !2229, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{!29}
!2231 = !DILocalVariable(name: "__cil_tmp1", scope: !2228, file: !117, line: 71, type: !17)
!2232 = !DILocation(line: 71, column: 9, scope: !2228)
!2233 = !DILocation(line: 71, column: 3, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !117, line: 75, column: 3)
!2235 = distinct !DILexicalBlock(scope: !2236, file: !117, line: 74, column: 3)
!2236 = distinct !DILexicalBlock(scope: !2228, file: !117, line: 73, column: 3)
!2237 = !DILocation(line: 78, column: 3, scope: !2236)
!2238 = distinct !DISubprogram(name: "usage", scope: !117, file: !117, line: 81, type: !2239, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!29, !1735}
!2241 = !DILocalVariable(name: "argv", arg: 1, scope: !2238, file: !117, line: 81, type: !1735)
!2242 = !DILocation(line: 0, scope: !2238)
!2243 = !DILocalVariable(name: "__cil_tmp2", scope: !2238, file: !117, line: 83, type: !17)
!2244 = !DILocation(line: 83, column: 9, scope: !2238)
!2245 = !DILocation(line: 83, column: 3, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2247, file: !117, line: 87, column: 3)
!2247 = distinct !DILexicalBlock(scope: !2248, file: !117, line: 86, column: 3)
!2248 = distinct !DILexicalBlock(scope: !2238, file: !117, line: 85, column: 3)
!2249 = !DILocation(line: 110, column: 3, scope: !2248)
!2250 = distinct !DISubprogram(name: "do_show_batteries", scope: !117, file: !117, line: 35, type: !2251, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{null, !17, !29, !29, !29}
!2253 = !DILocalVariable(name: "acpi_path", arg: 1, scope: !2250, file: !117, line: 35, type: !17)
!2254 = !DILocation(line: 0, scope: !2250)
!2255 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !2250, file: !117, line: 35, type: !29)
!2256 = !DILocalVariable(name: "show_details", arg: 3, scope: !2250, file: !117, line: 35, type: !29)
!2257 = !DILocalVariable(name: "proc_interface", arg: 4, scope: !2250, file: !117, line: 36, type: !29)
!2258 = !DILocation(line: 39, column: 15, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2260, file: !117, line: 42, column: 3)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !117, line: 41, column: 3)
!2261 = distinct !DILexicalBlock(scope: !2250, file: !117, line: 40, column: 3)
!2262 = !DILocalVariable(name: "batteries", scope: !2250, file: !117, line: 38, type: !6)
!2263 = !DILocation(line: 40, column: 3, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !117, line: 41, column: 3)
!2265 = !DILocation(line: 41, column: 3, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2260, file: !117, line: 42, column: 3)
!2267 = !DILocation(line: 42, column: 3, scope: !2261)
!2268 = distinct !DISubprogram(name: "do_show_ac_adapter", scope: !117, file: !117, line: 44, type: !2269, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2269 = !DISubroutineType(types: !2270)
!2270 = !{null, !17, !29, !29}
!2271 = !DILocalVariable(name: "acpi_path", arg: 1, scope: !2268, file: !117, line: 44, type: !17)
!2272 = !DILocation(line: 0, scope: !2268)
!2273 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !2268, file: !117, line: 44, type: !29)
!2274 = !DILocalVariable(name: "proc_interface", arg: 3, scope: !2268, file: !117, line: 44, type: !29)
!2275 = !DILocation(line: 48, column: 16, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !117, line: 50, column: 3)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !117, line: 49, column: 3)
!2278 = distinct !DILexicalBlock(scope: !2268, file: !117, line: 48, column: 3)
!2279 = !DILocalVariable(name: "ac_adapter", scope: !2268, file: !117, line: 46, type: !6)
!2280 = !DILocation(line: 49, column: 3, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2277, file: !117, line: 50, column: 3)
!2282 = !DILocation(line: 50, column: 3, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2277, file: !117, line: 51, column: 3)
!2284 = !DILocation(line: 51, column: 3, scope: !2278)
!2285 = distinct !DISubprogram(name: "do_show_thermal", scope: !117, file: !117, line: 53, type: !2286, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2286 = !DISubroutineType(types: !2287)
!2287 = !{null, !17, !29, !29, !29, !29}
!2288 = !DILocalVariable(name: "acpi_path", arg: 1, scope: !2285, file: !117, line: 53, type: !17)
!2289 = !DILocation(line: 0, scope: !2285)
!2290 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !2285, file: !117, line: 53, type: !29)
!2291 = !DILocalVariable(name: "temperature_units", arg: 3, scope: !2285, file: !117, line: 53, type: !29)
!2292 = !DILocalVariable(name: "show_details", arg: 4, scope: !2285, file: !117, line: 54, type: !29)
!2293 = !DILocalVariable(name: "proc_interface", arg: 5, scope: !2285, file: !117, line: 54, type: !29)
!2294 = !DILocation(line: 56, column: 13, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2296, file: !117, line: 60, column: 3)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !117, line: 59, column: 3)
!2297 = distinct !DILexicalBlock(scope: !2285, file: !117, line: 58, column: 3)
!2298 = !DILocalVariable(name: "thermal", scope: !2285, file: !117, line: 56, type: !6)
!2299 = !DILocation(line: 57, column: 3, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2296, file: !117, line: 58, column: 3)
!2301 = !DILocation(line: 58, column: 3, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !117, line: 59, column: 3)
!2303 = !DILocation(line: 59, column: 3, scope: !2297)
!2304 = distinct !DISubprogram(name: "do_show_cooling", scope: !117, file: !117, line: 61, type: !2269, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2305 = !DILocalVariable(name: "acpi_path", arg: 1, scope: !2304, file: !117, line: 61, type: !17)
!2306 = !DILocation(line: 0, scope: !2304)
!2307 = !DILocalVariable(name: "show_empty_slots", arg: 2, scope: !2304, file: !117, line: 61, type: !29)
!2308 = !DILocalVariable(name: "proc_interface", arg: 3, scope: !2304, file: !117, line: 61, type: !29)
!2309 = !DILocation(line: 64, column: 13, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !117, line: 67, column: 3)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !117, line: 66, column: 3)
!2312 = distinct !DILexicalBlock(scope: !2304, file: !117, line: 65, column: 3)
!2313 = !DILocalVariable(name: "cooling", scope: !2304, file: !117, line: 63, type: !6)
!2314 = !DILocation(line: 65, column: 3, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2311, file: !117, line: 66, column: 3)
!2316 = !DILocation(line: 66, column: 3, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2311, file: !117, line: 67, column: 3)
!2318 = !DILocation(line: 67, column: 3, scope: !2312)
!2319 = distinct !DISubprogram(name: "list_new", scope: !199, file: !199, line: 24, type: !2320, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!6, !11}
!2322 = !DILocalVariable(name: "data", arg: 1, scope: !2319, file: !199, line: 24, type: !11)
!2323 = !DILocation(line: 0, scope: !2319)
!2324 = !DILocalVariable(name: "__cil_tmp4", scope: !2319, file: !199, line: 28, type: !17)
!2325 = !DILocation(line: 28, column: 9, scope: !2319)
!2326 = !DILocation(line: 28, column: 9, scope: !2327)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !199, line: 32, column: 3)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !199, line: 31, column: 3)
!2329 = distinct !DILexicalBlock(scope: !2319, file: !199, line: 30, column: 3)
!2330 = !DILocalVariable(name: "tmp", scope: !2319, file: !199, line: 27, type: !11)
!2331 = !DILocation(line: 28, column: 7, scope: !2328)
!2332 = !DILocalVariable(name: "r", scope: !2319, file: !199, line: 26, type: !6)
!2333 = !DILocation(line: 29, column: 9, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2329, file: !199, line: 29, column: 7)
!2335 = !DILocation(line: 29, column: 7, scope: !2329)
!2336 = !DILocation(line: 30, column: 38, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !199, line: 31, column: 5)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !199, line: 30, column: 5)
!2339 = distinct !DILexicalBlock(scope: !2334, file: !199, line: 29, column: 12)
!2340 = !DILocation(line: 30, column: 5, scope: !2337)
!2341 = !DILocation(line: 31, column: 5, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2338, file: !199, line: 32, column: 5)
!2343 = !DILocation(line: 33, column: 6, scope: !2329)
!2344 = !DILocation(line: 33, column: 11, scope: !2329)
!2345 = !DILocation(line: 34, column: 6, scope: !2329)
!2346 = !DILocation(line: 34, column: 11, scope: !2329)
!2347 = !DILocation(line: 35, column: 3, scope: !2329)
!2348 = distinct !DISubprogram(name: "list_length", scope: !199, file: !199, line: 52, type: !2349, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!78, !6}
!2351 = !DILocalVariable(name: "node", arg: 1, scope: !2348, file: !199, line: 52, type: !6)
!2352 = !DILocation(line: 0, scope: !2348)
!2353 = !DILocalVariable(name: "l", scope: !2348, file: !199, line: 54, type: !78)
!2354 = !DILocation(line: 55, column: 3, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2356, file: !199, line: 56, column: 3)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !199, line: 55, column: 3)
!2357 = distinct !DILexicalBlock(scope: !2348, file: !199, line: 56, column: 3)
!2358 = !DILocation(line: 0, scope: !2357)
!2359 = !DILocation(line: 55, column: 13, scope: !2355)
!2360 = !DILocation(line: 55, column: 11, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2362, file: !199, line: 55, column: 9)
!2362 = distinct !DILexicalBlock(scope: !2355, file: !199, line: 55, column: 13)
!2363 = !DILocation(line: 55, column: 9, scope: !2362)
!2364 = !DILocation(line: 55, column: 7, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2361, file: !199, line: 55, column: 17)
!2366 = !DILocation(line: 56, column: 7, scope: !2362)
!2367 = !DILocation(line: 57, column: 18, scope: !2362)
!2368 = distinct !{!2368, !2354, !2369}
!2369 = !DILocation(line: 58, column: 3, scope: !2355)
!2370 = !DILocation(line: 60, column: 3, scope: !2355)
!2371 = !DILocation(line: 59, column: 3, scope: !2357)
!2372 = distinct !DISubprogram(name: "parse_info_file", scope: !102, file: !102, line: 99, type: !2373, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!6, !6, !17, !17}
!2375 = !DILocalVariable(name: "l", arg: 1, scope: !2372, file: !102, line: 99, type: !6)
!2376 = !DILocation(line: 0, scope: !2372)
!2377 = !DILocalVariable(name: "filename", arg: 2, scope: !2372, file: !102, line: 99, type: !17)
!2378 = !DILocalVariable(name: "given_attr", arg: 3, scope: !2372, file: !102, line: 99, type: !17)
!2379 = !DILocalVariable(name: "buf", scope: !2372, file: !102, line: 102, type: !2380)
!2380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8192, elements: !2381)
!2381 = !{!2382}
!2382 = !DISubrange(count: 1024)
!2383 = !DILocation(line: 102, column: 8, scope: !2372)
!2384 = !DILocalVariable(name: "__cil_tmp8", scope: !2372, file: !102, line: 105, type: !11)
!2385 = !DILocation(line: 105, column: 9, scope: !2372)
!2386 = !DILocalVariable(name: "__cil_tmp9", scope: !2372, file: !102, line: 106, type: !17)
!2387 = !DILocation(line: 106, column: 9, scope: !2372)
!2388 = !DILocation(line: 104, column: 8, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2390, file: !102, line: 110, column: 3)
!2390 = distinct !DILexicalBlock(scope: !2391, file: !102, line: 109, column: 3)
!2391 = distinct !DILexicalBlock(scope: !2372, file: !102, line: 108, column: 3)
!2392 = !DILocalVariable(name: "fd", scope: !2372, file: !102, line: 101, type: !22)
!2393 = !DILocation(line: 105, column: 9, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2391, file: !102, line: 105, column: 7)
!2395 = !DILocation(line: 105, column: 7, scope: !2391)
!2396 = !DILocation(line: 106, column: 5, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2394, file: !102, line: 105, column: 13)
!2398 = !DILocation(line: 108, column: 3, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !102, line: 109, column: 3)
!2400 = distinct !DILexicalBlock(scope: !2391, file: !102, line: 108, column: 3)
!2401 = !DILocation(line: 108, column: 13, scope: !2399)
!2402 = !DILocation(line: 108, column: 42, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !102, line: 112, column: 5)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !102, line: 111, column: 5)
!2405 = distinct !DILexicalBlock(scope: !2399, file: !102, line: 108, column: 13)
!2406 = !DILocation(line: 108, column: 11, scope: !2403)
!2407 = !DILocalVariable(name: "tmp", scope: !2372, file: !102, line: 104, type: !17)
!2408 = !DILocation(line: 108, column: 12, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2405, file: !102, line: 108, column: 9)
!2410 = !DILocation(line: 108, column: 32, scope: !2409)
!2411 = !DILocation(line: 108, column: 9, scope: !2405)
!2412 = !DILocation(line: 108, column: 7, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !102, line: 108, column: 65)
!2414 = !DILocation(line: 110, column: 21, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2416, file: !102, line: 111, column: 5)
!2416 = distinct !DILexicalBlock(scope: !2405, file: !102, line: 110, column: 5)
!2417 = !DILocation(line: 110, column: 9, scope: !2415)
!2418 = !DILocalVariable(name: "f", scope: !2372, file: !102, line: 103, type: !13)
!2419 = !DILocation(line: 111, column: 11, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2405, file: !102, line: 111, column: 9)
!2421 = !DILocation(line: 111, column: 9, scope: !2405)
!2422 = !DILocation(line: 112, column: 7, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2420, file: !102, line: 111, column: 14)
!2424 = !DILocation(line: 113, column: 24, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !102, line: 115, column: 5)
!2426 = distinct !DILexicalBlock(scope: !2405, file: !102, line: 114, column: 5)
!2427 = !DILocation(line: 113, column: 9, scope: !2425)
!2428 = distinct !{!2428, !2398, !2429}
!2429 = !DILocation(line: 116, column: 3, scope: !2399)
!2430 = !DILocation(line: 118, column: 3, scope: !2399)
!2431 = !DILocation(line: 115, column: 3, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !102, line: 122, column: 3)
!2433 = distinct !DILexicalBlock(scope: !2391, file: !102, line: 121, column: 3)
!2434 = !DILocation(line: 116, column: 3, scope: !2391)
!2435 = !DILocation(line: 0, scope: !2391)
!2436 = !DILocation(line: 118, column: 1, scope: !2372)
!2437 = distinct !DISubprogram(name: "parse_field", scope: !102, file: !102, line: 49, type: !2438, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!2438 = !DISubroutineType(types: !2439)
!2439 = !{!13, !17, !17}
!2440 = !DILocalVariable(name: "buf", arg: 1, scope: !2437, file: !102, line: 49, type: !17)
!2441 = !DILocation(line: 0, scope: !2437)
!2442 = !DILocalVariable(name: "given_attr", arg: 2, scope: !2437, file: !102, line: 49, type: !17)
!2443 = !DILocalVariable(name: "__cil_tmp17", scope: !2437, file: !102, line: 65, type: !17)
!2444 = !DILocation(line: 65, column: 9, scope: !2437)
!2445 = !DILocalVariable(name: "__cil_tmp18", scope: !2437, file: !102, line: 66, type: !17)
!2446 = !DILocation(line: 66, column: 9, scope: !2437)
!2447 = !DILocalVariable(name: "__cil_tmp19", scope: !2437, file: !102, line: 67, type: !17)
!2448 = !DILocation(line: 67, column: 9, scope: !2437)
!2449 = !DILocalVariable(name: "has_attr", scope: !2437, file: !102, line: 55, type: !29)
!2450 = !DILocation(line: 57, column: 9, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2452, file: !102, line: 56, column: 3)
!2452 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 70, column: 3)
!2453 = distinct !DILexicalBlock(scope: !2437, file: !102, line: 69, column: 3)
!2454 = !DILocalVariable(name: "tmp", scope: !2437, file: !102, line: 56, type: !11)
!2455 = !DILocalVariable(name: "attr", scope: !2437, file: !102, line: 53, type: !17)
!2456 = !DILocation(line: 58, column: 13, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2452, file: !102, line: 58, column: 3)
!2458 = !DILocalVariable(name: "tmp___0", scope: !2437, file: !102, line: 57, type: !11)
!2459 = !DILocalVariable(name: "value", scope: !2437, file: !102, line: 54, type: !17)
!2460 = !DILocation(line: 59, column: 13, scope: !2461)
!2461 = distinct !DILexicalBlock(scope: !2452, file: !102, line: 59, column: 3)
!2462 = !DILocalVariable(name: "tmp___1", scope: !2437, file: !102, line: 58, type: !11)
!2463 = !DILocation(line: 59, column: 10, scope: !2452)
!2464 = !DILocalVariable(name: "rval", scope: !2437, file: !102, line: 51, type: !13)
!2465 = !DILocation(line: 60, column: 9, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 60, column: 7)
!2467 = !DILocation(line: 60, column: 7, scope: !2453)
!2468 = !DILocation(line: 61, column: 38, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2470, file: !102, line: 62, column: 5)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !102, line: 61, column: 5)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !102, line: 60, column: 15)
!2472 = !DILocation(line: 61, column: 5, scope: !2469)
!2473 = !DILocation(line: 62, column: 5, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2470, file: !102, line: 63, column: 5)
!2475 = !DILocation(line: 60, column: 9, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2466, file: !102, line: 60, column: 7)
!2477 = !DILocation(line: 60, column: 7, scope: !2466)
!2478 = !DILocation(line: 61, column: 38, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !102, line: 62, column: 5)
!2480 = distinct !DILexicalBlock(scope: !2481, file: !102, line: 61, column: 5)
!2481 = distinct !DILexicalBlock(scope: !2476, file: !102, line: 60, column: 15)
!2482 = !DILocation(line: 61, column: 5, scope: !2479)
!2483 = !DILocation(line: 62, column: 5, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2480, file: !102, line: 63, column: 5)
!2485 = !DILocation(line: 60, column: 9, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2476, file: !102, line: 60, column: 7)
!2487 = !DILocation(line: 60, column: 7, scope: !2476)
!2488 = !DILocation(line: 61, column: 38, scope: !2489)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !102, line: 62, column: 5)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !102, line: 61, column: 5)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !102, line: 60, column: 16)
!2492 = !DILocation(line: 61, column: 5, scope: !2489)
!2493 = !DILocation(line: 62, column: 5, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2490, file: !102, line: 63, column: 5)
!2495 = !DILocalVariable(name: "p", scope: !2437, file: !102, line: 52, type: !17)
!2496 = !DILocation(line: 66, column: 9, scope: !2497)
!2497 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 66, column: 7)
!2498 = !DILocation(line: 66, column: 7, scope: !2453)
!2499 = !DILocation(line: 67, column: 5, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !102, line: 68, column: 5)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !102, line: 67, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2497, file: !102, line: 66, column: 21)
!2503 = !DILocation(line: 0, scope: !2453)
!2504 = !DILocation(line: 67, column: 15, scope: !2500)
!2505 = !DILocalVariable(name: "tmp___2", scope: !2437, file: !102, line: 59, type: !17)
!2506 = !DILocation(line: 67, column: 9, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2500, file: !102, line: 67, column: 15)
!2508 = !DILocation(line: 67, column: 13, scope: !2509)
!2509 = distinct !DILexicalBlock(scope: !2507, file: !102, line: 67, column: 11)
!2510 = !DILocation(line: 67, column: 11, scope: !2507)
!2511 = !DILocation(line: 67, column: 9, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2509, file: !102, line: 67, column: 23)
!2513 = !DILocation(line: 68, column: 17, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2507, file: !102, line: 68, column: 11)
!2515 = !DILocation(line: 68, column: 11, scope: !2514)
!2516 = !DILocation(line: 68, column: 20, scope: !2514)
!2517 = !DILocation(line: 68, column: 11, scope: !2507)
!2518 = !DILocation(line: 70, column: 29, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2520, file: !102, line: 70, column: 9)
!2520 = distinct !DILexicalBlock(scope: !2521, file: !102, line: 69, column: 9)
!2521 = distinct !DILexicalBlock(scope: !2514, file: !102, line: 68, column: 27)
!2522 = !DILocation(line: 70, column: 17, scope: !2519)
!2523 = !DILocation(line: 69, column: 9, scope: !2519)
!2524 = !DILocation(line: 71, column: 9, scope: !2521)
!2525 = distinct !{!2525, !2499, !2526}
!2526 = !DILocation(line: 73, column: 5, scope: !2500)
!2527 = !DILocation(line: 75, column: 5, scope: !2500)
!2528 = !DILocation(line: 74, column: 11, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2502, file: !102, line: 74, column: 9)
!2530 = !DILocation(line: 74, column: 9, scope: !2502)
!2531 = !DILocation(line: 75, column: 7, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2533, file: !102, line: 76, column: 7)
!2533 = distinct !DILexicalBlock(scope: !2534, file: !102, line: 75, column: 7)
!2534 = distinct !DILexicalBlock(scope: !2529, file: !102, line: 74, column: 21)
!2535 = !DILocation(line: 76, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2533, file: !102, line: 77, column: 7)
!2537 = !DILocation(line: 77, column: 12, scope: !2538)
!2538 = distinct !DILexicalBlock(scope: !2533, file: !102, line: 78, column: 7)
!2539 = !DILocation(line: 77, column: 7, scope: !2538)
!2540 = !DILocation(line: 78, column: 7, scope: !2534)
!2541 = !DILocation(line: 80, column: 15, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2502, file: !102, line: 80, column: 9)
!2543 = !DILocation(line: 80, column: 9, scope: !2542)
!2544 = !DILocation(line: 80, column: 18, scope: !2542)
!2545 = !DILocation(line: 80, column: 9, scope: !2502)
!2546 = !DILocation(line: 81, column: 9, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2542, file: !102, line: 80, column: 25)
!2548 = !DILocation(line: 82, column: 5, scope: !2547)
!2549 = !DILocation(line: 0, scope: !2502)
!2550 = !DILocation(line: 82, column: 5, scope: !2551)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !102, line: 84, column: 5)
!2552 = distinct !DILexicalBlock(scope: !2502, file: !102, line: 83, column: 5)
!2553 = !DILocation(line: 82, column: 15, scope: !2551)
!2554 = !DILocalVariable(name: "tmp___3", scope: !2437, file: !102, line: 60, type: !17)
!2555 = !DILocation(line: 82, column: 9, scope: !2556)
!2556 = distinct !DILexicalBlock(scope: !2551, file: !102, line: 82, column: 15)
!2557 = !DILocation(line: 82, column: 13, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2556, file: !102, line: 82, column: 11)
!2559 = !DILocation(line: 82, column: 11, scope: !2556)
!2560 = !DILocation(line: 82, column: 9, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2558, file: !102, line: 82, column: 23)
!2562 = !DILocation(line: 83, column: 17, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2556, file: !102, line: 83, column: 11)
!2564 = !DILocation(line: 83, column: 11, scope: !2563)
!2565 = !DILocation(line: 83, column: 20, scope: !2563)
!2566 = !DILocation(line: 83, column: 11, scope: !2556)
!2567 = !DILocation(line: 84, column: 9, scope: !2568)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !102, line: 83, column: 27)
!2569 = distinct !{!2569, !2550, !2570}
!2570 = !DILocation(line: 86, column: 5, scope: !2551)
!2571 = !DILocation(line: 88, column: 5, scope: !2551)
!2572 = !DILocation(line: 91, column: 3, scope: !2502)
!2573 = !DILocation(line: 87, column: 5, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !102, line: 93, column: 5)
!2575 = distinct !DILexicalBlock(scope: !2576, file: !102, line: 92, column: 5)
!2576 = distinct !DILexicalBlock(scope: !2497, file: !102, line: 91, column: 10)
!2577 = !DILocation(line: 89, column: 3, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2579, file: !102, line: 93, column: 3)
!2579 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 92, column: 3)
!2580 = !DILocation(line: 90, column: 13, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2579, file: !102, line: 91, column: 3)
!2582 = !DILocalVariable(name: "tmp___5", scope: !2437, file: !102, line: 62, type: !76)
!2583 = !DILocation(line: 90, column: 31, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 90, column: 7)
!2585 = !DILocation(line: 90, column: 20, scope: !2584)
!2586 = !DILocation(line: 90, column: 13, scope: !2584)
!2587 = !DILocation(line: 90, column: 7, scope: !2584)
!2588 = !DILocation(line: 90, column: 38, scope: !2584)
!2589 = !DILocation(line: 90, column: 7, scope: !2453)
!2590 = !DILocation(line: 91, column: 15, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2592, file: !102, line: 92, column: 5)
!2592 = distinct !DILexicalBlock(scope: !2593, file: !102, line: 91, column: 5)
!2593 = distinct !DILexicalBlock(scope: !2584, file: !102, line: 90, column: 45)
!2594 = !DILocalVariable(name: "tmp___4", scope: !2437, file: !102, line: 61, type: !76)
!2595 = !DILocation(line: 91, column: 23, scope: !2592)
!2596 = !DILocation(line: 91, column: 12, scope: !2592)
!2597 = !DILocation(line: 91, column: 30, scope: !2592)
!2598 = !DILocation(line: 93, column: 3, scope: !2593)
!2599 = !DILocation(line: 92, column: 13, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2601, file: !102, line: 95, column: 3)
!2601 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 94, column: 3)
!2602 = !DILocalVariable(name: "tmp___7", scope: !2437, file: !102, line: 64, type: !76)
!2603 = !DILocation(line: 92, column: 32, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2453, file: !102, line: 92, column: 7)
!2605 = !DILocation(line: 92, column: 21, scope: !2604)
!2606 = !DILocation(line: 92, column: 13, scope: !2604)
!2607 = !DILocation(line: 92, column: 7, scope: !2604)
!2608 = !DILocation(line: 92, column: 39, scope: !2604)
!2609 = !DILocation(line: 92, column: 7, scope: !2453)
!2610 = !DILocation(line: 93, column: 15, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !102, line: 94, column: 5)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !102, line: 93, column: 5)
!2613 = distinct !DILexicalBlock(scope: !2604, file: !102, line: 92, column: 46)
!2614 = !DILocalVariable(name: "tmp___6", scope: !2437, file: !102, line: 63, type: !76)
!2615 = !DILocation(line: 93, column: 24, scope: !2612)
!2616 = !DILocation(line: 93, column: 13, scope: !2612)
!2617 = !DILocation(line: 93, column: 31, scope: !2612)
!2618 = !DILocation(line: 95, column: 3, scope: !2613)
!2619 = !DILocation(line: 94, column: 9, scope: !2453)
!2620 = !DILocation(line: 94, column: 14, scope: !2453)
!2621 = !DILocation(line: 95, column: 9, scope: !2453)
!2622 = !DILocation(line: 95, column: 15, scope: !2453)
!2623 = !DILocation(line: 96, column: 3, scope: !2453)
!2624 = !DILocation(line: 98, column: 1, scope: !2437)
