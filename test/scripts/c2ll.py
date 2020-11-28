import os
import sys

c_file = sys.argv[1]
ll_file = sys.argv[2]

os.system("clang -c -emit-llvm -S -fno-discard-value-names -Xclang -disable-O0-optnone -o /tmp/tmp.ll -g " + c_file)
os.system("opt -mem2reg -S -o " + ll_file + " /tmp/tmp.ll")
