TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = baseSoftIOC
# baseSoftIOC.dbd will be created and installed
DBD += baseSoftIOC.dbd

# baseSoftIOC.dbd will be made up from these files:
baseSoftIOC_DBD += base.dbd
baseSoftIOC_DBD += calc.dbd
baseSoftIOC_DBD += devIocStats.dbd
baseSoftIOC_DBD += asSupport.dbd
baseSoftIOC_DBD += reccaster.dbd

# Add all the support libraries needed by this IOC
baseSoftIOC_LIBS += calc autosave devIocStats reccaster

# baseSoftIOC_registerRecordDeviceDriver.cpp derives from baseSoftIOC.dbd
baseSoftIOC_SRCS += baseSoftIOC_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
baseSoftIOC_SRCS_DEFAULT += baseSoftIOCMain.cpp
baseSoftIOC_SRCS_vxWorks += -nil-

# Finally link to the EPICS Base libraries
baseSoftIOC_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

