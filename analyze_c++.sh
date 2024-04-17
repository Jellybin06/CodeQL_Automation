!/bin/bash

data_name='RetroArch'


echo "===CWE-78==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-078/ExecTainted.ql

echo "===CWE-134==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-134/UncontrolledFormatString.ql

echo "===CWE-242==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-676/DangerousFunctionOverflow.ql

echo "===CWE-401==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Critical/MemoryNeverFreed.ql

echo "===CWE-415==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Critical/DoubleFree.ql

echo "===CWE-457==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-457/ConditionallyUninitializedVariable.ql

echo "===CWE-467==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Likely\ Bugs/Memory\ Management/SuspiciousSizeof.ql

echo "===CWE-468==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScaling.ql

echo "===CWE-468(Char)==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScalingChar.ql

echo "===CWE-468(Void)==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScalingVoid.ql

echo "===CWE-468(Sizeof)==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-468/SuspiciousAddWithSizeof.ql

echo "===CWE-476==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Critical/MissingNullTest.ql

echo "===CWE-676==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-676/DangerousFunctionOverflow.ql

echo "===CWE-758==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/experimental/Security/CWE/CWE-758/UndefinedOrImplementationDefinedBehavior.ql

echo "===CWE-789==="
codeql query run --database="/codeql-root/databases/$data_name" /codeql-root/codeql-repo/cpp/ql/src/Security/CWE/CWE-190/TaintedAllocationSize.ql