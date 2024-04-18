!/bin/bash

data_name='RetroArch'


echo "===CWE-014==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-014/MemsetMayBeDeleted.ql

echo "===CWE-020==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/CountUntrustedDataToExternalAPI.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/IRCountUntrustedDataToExternalAPI.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/IRUntrustedDataToExternalAPI.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/UntrustedDataToExternalAPI.ql

echo "===CWE-022==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-022/TaintedPath.ql

echo "===CWE-078==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-078/ExecTainted.ql

echo "===CWE-079==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-079/CgiXss.ql

echo "===CWE-089==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-089/SqlTainted.ql

echo "===CWE-114==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-114/UncontrolledProcessOperation.ql

echo "===CWE-119==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-119/OverflowBuffer.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-119/OverrunWriteProductFlow.ql

echo "===CWE-120==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/BadlyBoundedWrite.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/OverrunWrite.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/OverrunWriteFloat.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/UnboundedWrite.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/VeryLikelyOverrunWrite.ql

echo "===CWE-121==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-121/UnterminatedVarargsCall.ql

echo "===CWE-129==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-129/ImproperArrayIndexValidation.ql

echo "===CWE-131==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-131/NoSpaceForZeroTerminator.ql

echo "===CWE-134==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-134/UncontrolledFormatString.ql

echo "===CWE-170==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-170/ImproperNullTerminationTainted.ql

echo "===CWE-190==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ArithmeticTainted.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ArithmeticUncontrolled.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ArithmeticWithExtremeValues.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ComparisonWithWiderType.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/IntegerOverflowTainted.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/TaintedAllocationSize.ql

echo "===CWE-191==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-191/UnsignedDifferenceExpressionComparedZero.ql

echo "===CWE-193==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-193/InvalidPointerDeref.ql

echo "===CWE-253==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-253/HResultBooleanConversion.ql

echo "===CWE-290==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-290/AuthenticationBypass.ql

echo "===CWE-295==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-295/SSLResultConflation.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-295/SSLResultNotChecked.ql

echo "===CWE-311==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-311/CleartextBufferWrite.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-311/CleartextFileWrite.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-311/CleartextTransmission.ql

echo "===CWE-313==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-313/CleartextSqliteDatabase.ql

echo "===CWE-319==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-319/UseOfHttp.ql

echo "===CWE-326==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-326/InsufficientKeySize.ql

echo "===CWE-327==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-327/BrokenCryptoAlgorithm.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-327/OpenSslHeartbleed.ql

echo "===CWE-367==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-367/TOCTOUFilesystemRace.ql

echo "===CWE-416==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-416/UseOfStringAfterLifetimeEnds.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-416/UseOfUniquePointerAfterLifetimeEnds.ql

echo "===CWE-428==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-428/UnsafeCreateProcessCall.ql

echo "===CWE-457==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-457/ConditionallyUninitializedVariable.ql

echo "===CWE-468==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScaling.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScalingChar.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScalingVoid.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/SuspiciousAddWithSizeof.ql

echo "===CWE-497==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-497/ExposedSystemData.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-497/PotentiallyExposedSystemData.ql

echo "===CWE-570==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-570/IncorrectAllocationErrorHandling.ql

echo "===CWE-611==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-611/XXE.ql

echo "===CWE-676==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-676/DangerousFunctionOverflow.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-676/DangerousUseOfCin.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-676/PotentiallyDangerousFunction.ql

echo "===CWE-704==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-704/WcharCharConversion.ql

echo "===CWE-732==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-732/DoNotCreateWorldWritable.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-732/OpenCallMissingModeArgument.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-732/UnsafeDaclSecurityDescriptor.ql

echo "===CWE-764==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-764/LockOrderCycle.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-764/TwiceLocked.ql
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-764/UnreleasedLock.ql

echo "===CWE-807==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-807/TaintedCondition.ql

echo "===CWE-835==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-835/InfiniteLoopWithUnsatisfiableExitCondition.ql

echo "===CWE-843==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-843/TypeConfusion.ql