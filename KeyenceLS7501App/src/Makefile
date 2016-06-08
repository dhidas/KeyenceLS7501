TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE

#=============================
# Build the IOC support library


#=============================
# Build the IOC application

PROD_IOC = KeyenceLS7501
# KeyenceLS7501.dbd will be created and installed
DBD += KeyenceLS7501.dbd

# KeyenceLS7501.dbd will be made up from these files:

KeyenceLS7501_DBD += base.dbd
KeyenceLS7501_DBD += asyn.dbd
KeyenceLS7501_DBD += drvAsynIPPort.dbd
KeyenceLS7501_DBD += drvAsynSerialPort.dbd
KeyenceLS7501_DBD += stream.dbd
KeyenceLS7501_DBD += devIocStats.dbd


KeyenceLS7501_LIBS += asyn
KeyenceLS7501_LIBS += autosave
KeyenceLS7501_LIBS += stream
KeyenceLS7501_LIBS += devIocStats




KeyenceLS7501_SRCS += KeyenceLS7501_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
KeyenceLS7501_SRCS_DEFAULT += KeyenceLS7501Main.cpp
KeyenceLS7501_SRCS_vxWorks += -nil-


# Link in the code from the support library
KeyenceLS7501_LIBS += asyn
#KeyenceLS7501_LIBS += stream
#KeyenceLS7501_LIBS += autosave

#KeyenceLS7501_LIBS += devIocStats
#KeyenceLS7501_LIBS += caPutLog

#KeyenceLS7501_LIBS += stream




# Finally link to the EPICS Base libraries
KeyenceLS7501_LIBS += $(EPICS_BASE_IOC_LIBS)

#=============================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

