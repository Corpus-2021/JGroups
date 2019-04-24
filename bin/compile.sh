#!/bin/bash

## Creates a native image using the GraalVM compiler (needs to be on the path)


OPTIONS="-H:+ReportUnsupportedElementsAtRuntime -H:+JNI \
         --no-server -H:+ReportExceptionStackTraces"

OPTIONS="$OPTIONS -H:+AllowVMInspection"

# OPTIONS="$OPTIONS -H:ReflectionConfigurationFiles=JGroups/conf/reflection.json"

# OPTIONS="$OPTIONS -H:+PrintAnalysisCallTree"


OPTIONS="$OPTIONS -Dgraal.CompilationFailureAction=Diagnose"

# OPTIONS="$OPTIONS -H:IncludeResources=/home/bela/logging.properties -Dfoo=bar -Dcom.sun.management.jmxremote"

# OPTIONS="$OPTIONS --debug-attach=5005"

native-image -cp $CLASSPATH $OPTIONS $*