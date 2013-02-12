#!/bin/sh
### ====================================================================== ###
##                                                                          ##
##  JGroups Startup Application Startup Script                              ##
##                                                                          ##
### ====================================================================== ###



JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Xms32m -Xmx32m -Dfile.encoding=UTF-8"

### $Id: run.sh $ ###

DIRNAME=`dirname $0`
PROGNAME=`basename $0`
GREP="grep"

# Setup the Monitor HOME
if [ "x$RUN_HOME" = "x" ]; then
    RUN_HOME=`cd ../$DIRNAME/..; pwd`
fi
export RUN_HOME

# Setup the JVM
if [ "x$JAVA" = "x" ]; then
    if [ "x$JAVA_HOME" != "x" ]; then
    JAVA="$JAVA_HOME/bin/java"
    else
    JAVA="java"
    fi
fi

# Setup the classpath
RUN_CLASSPATH=../conf
for FILENAME in ../lib/*.jar
do
RUN_CLASSPATH=${RUN_CLASSPATH}:${FILENAME}
done
RUN_CLASSPATH=${RUN_CLASSPATH}:${CLASSPATH}

# Setup the startup class
STARTUP_CLASS=com.tedwon.pilot.jgroups.JGroupsAppStarter

# Display our environment
echo "========================================================================="
echo ""
echo "  JGroups Startup Bootstrap Environment"
echo ""
echo "  RUN_HOME: $RUN_HOME"
echo ""
echo "  JAVA: $JAVA"
echo ""
echo "  JAVA_OPTS: $JAVA_OPTS"
echo ""
echo "  CLASSPATH: $RUN_CLASSPATH"
echo ""
echo "  STARTUP_CLASS: STARTUP_CLASS"
echo ""
echo "========================================================================="
echo ""

#${JAVA} ${JAVA_OPTS} -classpath ${RUN_CLASSPATH} ${STARTUP_CLASS} 2>&1 &
${JAVA} ${JAVA_OPTS} -classpath ${RUN_CLASSPATH} ${STARTUP_CLASS}

#sleep 2

#tail -f ../logs/jgroups.log
