#!/bin/sh
### ====================================================================== ###
##                                                                          ##
##  JGroups Startup Application Startup Script                              ##
##                                                                          ##
### ====================================================================== ###

echo /System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/java  -Djava.net.preferIPv4Stack=true -Xms32m -Xmx32m -Dfile.encoding=UTF-8 -classpath ../conf:../lib/jgroups-2.12.1.3.Final.jar:../lib/jgroups-startup-1.0.0-SNAPSHOT.jar:../lib/log4j-1.2.16.jar: com.tedwon.pilot.jgroups.JGroupsAppStarter
/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home/bin/java  -Djava.net.preferIPv4Stack=true -Xms32m -Xmx32m -Dfile.encoding=UTF-8 -classpath ../conf:../lib/jgroups-2.12.1.3.Final.jar:../lib/jgroups-startup-1.0.0-SNAPSHOT.jar:../lib/log4j-1.2.16.jar: com.tedwon.pilot.jgroups.JGroupsAppStarter
