#!/bin/bash

data_name=$1
xml_file=$2


echo "===CWE-014==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-014/MemsetMayBeDeleted.ql --output=$xml_file.xml

echo "===CWE-020==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/CountUntrustedDataToExternalAPI.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/IRCountUntrustedDataToExternalAPI.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/IRUntrustedDataToExternalAPI.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-020/UntrustedDataToExternalAPI.ql --output=$xml_file.xml

echo "===CWE-022==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-022/TaintedPath.ql --output=$xml_file.xml

echo "===CWE-078==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-078/ExecTainted.ql --output=$xml_file.xml

echo "===CWE-079==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-079/CgiXss.ql --output=$xml_file.xml

echo "===CWE-089==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-089/SqlTainted.ql --output=$xml_file.xml

echo "===CWE-114==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-114/UncontrolledProcessOperation.ql --output=$xml_file.xml

echo "===CWE-119==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-119/OverflowBuffer.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-119/OverrunWriteProductFlow.ql --output=$xml_file.xml

echo "===CWE-120==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/BadlyBoundedWrite.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/OverrunWrite.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/OverrunWriteFloat.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/UnboundedWrite.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-120/VeryLikelyOverrunWrite.ql --output=$xml_file.xml

echo "===CWE-121==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-121/UnterminatedVarargsCall.ql --output=$xml_file.xml

echo "===CWE-129==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-129/ImproperArrayIndexValidation.ql --output=$xml_file.xml

echo "===CWE-131==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-131/NoSpaceForZeroTerminator.ql --output=$xml_file.xml

echo "===CWE-134==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-134/UncontrolledFormatString.ql --output=$xml_file.xml

echo "===CWE-170==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-170/ImproperNullTerminationTainted.ql --output=$xml_file.xml

echo "===CWE-190==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ArithmeticTainted.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ArithmeticUncontrolled.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ArithmeticWithExtremeValues.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/ComparisonWithWiderType.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/IntegerOverflowTainted.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-190/TaintedAllocationSize.ql --output=$xml_file.xml

echo "===CWE-191==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-191/UnsignedDifferenceExpressionComparedZero.ql --output=$xml_file.xml

echo "===CWE-193==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-193/InvalidPointerDeref.ql --output=$xml_file.xml

echo "===CWE-253==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-253/HResultBooleanConversion.ql --output=$xml_file.xml

echo "===CWE-290==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-290/AuthenticationBypass.ql --output=$xml_file.xml

echo "===CWE-295==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-295/SSLResultConflation.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-295/SSLResultNotChecked.ql --output=$xml_file.xml

echo "===CWE-311==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-311/CleartextBufferWrite.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-311/CleartextFileWrite.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-311/CleartextTransmission.ql --output=$xml_file.xml

echo "===CWE-313==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-313/CleartextSqliteDatabase.ql --output=$xml_file.xml

echo "===CWE-319==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-319/UseOfHttp.ql --output=$xml_file.xml

echo "===CWE-326==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-326/InsufficientKeySize.ql --output=$xml_file.xml

echo "===CWE-327==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-327/BrokenCryptoAlgorithm.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-327/OpenSslHeartbleed.ql --output=$xml_file.xml

echo "===CWE-367==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-367/TOCTOUFilesystemRace.ql --output=$xml_file.xml

echo "===CWE-416==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-416/UseOfStringAfterLifetimeEnds.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-416/UseOfUniquePointerAfterLifetimeEnds.ql --output=$xml_file.xml

echo "===CWE-428==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-428/UnsafeCreateProcessCall.ql --output=$xml_file.xml

echo "===CWE-457==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-457/ConditionallyUninitializedVariable.ql --output=$xml_file.xml

echo "===CWE-468==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScaling.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScalingChar.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/IncorrectPointerScalingVoid.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-468/SuspiciousAddWithSizeof.ql --output=$xml_file.xml

echo "===CWE-497==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-497/ExposedSystemData.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-497/PotentiallyExposedSystemData.ql --output=$xml_file.xml

echo "===CWE-570==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-570/IncorrectAllocationErrorHandling.ql --output=$xml_file.xml

echo "===CWE-611==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-611/XXE.ql --output=$xml_file.xml

echo "===CWE-676==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-676/DangerousFunctionOverflow.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-676/DangerousUseOfCin.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-676/PotentiallyDangerousFunction.ql --output=$xml_file.xml

echo "===CWE-704==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-704/WcharCharConversion.ql --output=$xml_file.xml

echo "===CWE-732==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-732/DoNotCreateWorldWritable.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-732/OpenCallMissingModeArgument.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-732/UnsafeDaclSecurityDescriptor.ql --output=$xml_file.xml

echo "===CWE-764==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-764/LockOrderCycle.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-764/TwiceLocked.ql --output=$xml_file.xml
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-764/UnreleasedLock.ql --output=$xml_file.xml

echo "===CWE-807==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-807/TaintedCondition.ql --output=$xml_file.xml

echo "===CWE-835==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-835/InfiniteLoopWithUnsatisfiableExitCondition.ql --output=$xml_file.xml

echo "===CWE-843==="
codeql query run --database="databases/$data_name" codeql-repo/cpp/ql/src/Security/CWE/CWE-843/TypeConfusion.ql --output=$xml_file.xml