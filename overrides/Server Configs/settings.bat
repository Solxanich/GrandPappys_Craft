REM Don't edit these values unless you know what you are doing.
set INSTALL_JAR=forge-1.12.2-14.23.5.2847-installer.jar
set SERVER_JAR=forge-1.12.2-14.23.5.2847-universal.jar

REM You can edit these values if you wish.
set MIN_RAM=1024M
set MAX_RAM=8G
set JAVA_PARAMETERS=-version:1.8 -d64 -server -XX:+AggressiveOpts -XX:ParallelGCThreads=4 -XX:+UseConcMarkSweepGC -XX:+UnlockExperimentalVMOptions -XX:+UseParNewGC -XX:MaxGCPauseMillis=10 -XX:GCPauseIntervalMillis=50 -XX:+UseFastAccessorMethods -XX:+OptimizeStringConcat -XX:NewSize=84m -XX:+UseAdaptiveGCBoundary -XX:NewRatio=3 -Dfml.readTimeout=90 -Ddeployment.trace=true -Ddeployment.log=true -Ddeployment.trace.level=all -XX:+DisableExplicitGC