#!/bin/sh
### ====================================================================== ###
##                                                                          ##
##  JGroups Startup Application Startup Script: McastSenderTest             ##
##                                                                          ##
### ====================================================================== ###

java  -Djava.net.preferIPv4Stack=true -Xms32m -Xmx32m -Dfile.encoding=UTF-8 -classpath ../conf:../lib/jgroups-2.12.1.3.Final.jar:../lib/jgroups-startup-1.0.0-SNAPSHOT.jar:../lib/log4j-1.2.16.jar: org.jgroups.tests.McastSenderTest -mcast_addr 231.12.21.132 -port 45588 -ttl 250 -send_on_all_interfaces
