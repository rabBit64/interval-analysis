import os
import sys

c_path = sys.argv[1]
ll_path = sys.argv[2]

for c_file in os.listdir(c_path):
    os.system("clang -c -emit-llvm -S -fno-discard-value-names -Xclang -disable-O0-optnone -o /tmp/tmp.ll -g " + c_path + "/" + c_file)
    ll_file = os.path.splitext(c_file)[0] + ".ll"
    os.system("opt -mem2reg -S -o " + ll_path + "/" + ll_file + " /tmp/tmp.ll")
