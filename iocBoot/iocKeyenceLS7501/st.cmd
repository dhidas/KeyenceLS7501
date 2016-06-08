#!../../bin/linux-x86_64/KeyenceLS7501

< envPaths
cd ${TOP}


# Set epics env variables
epicsEnvSet("ENGINEER", "Dean Andrew Hidas is not an engineer. <dhidas@bnl.gov>")
epicsEnvSet("MOXA_IP", "192.168.127.254:4001")
epicsEnvSet("sys", "SR:C99-ID:G1")
epicsEnvSet("dev", "NYX:1")
epicsEnvSet ("STREAM_PROTOCOL_PATH", "${TOP}/protocols")




## Register all support components
dbLoadDatabase("dbd/KeyenceLS7501.dbd")
KeyenceLS7501_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure("MOXA_KEYENCE", "$(MOXA_IP)")
dbLoadRecords("db/KeyenceLS7501.db","SYS=$(sys),DEV=$(dev),PORT=MOXA_KEYENCE")
dbLoadRecords("db/asynRecord.db","P=$(sys),R={$(dev)},ADDR=1,PORT=MOXA_KEYENCE,IMAX=128,OMAX=128")





cd ${TOP}/iocBoot/${IOC}
iocInit

