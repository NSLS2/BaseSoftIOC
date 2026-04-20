#!../../bin/linux-x86_64/baseSoftIOC

#- You may have to change baseSoftIOC to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase("../../dbd/baseSoftIOC.dbd",0,0)
baseSoftIOC_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/baseSoftIOC.db","user=dgavrilov")

iocInit()

## Start any sequence programs
#seq sncbaseSoftIOC,"user=dgavrilov"
