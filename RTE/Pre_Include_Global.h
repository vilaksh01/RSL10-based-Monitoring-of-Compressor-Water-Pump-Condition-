/*
 * Auto generated Run-Time-Environment Component Configuration File
 *      *** Do not modify ! ***
 *
 * Project: RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition
 * RTE configuration: RSL10-based-Monitoring-of-Compressor-Water-Pump-Condition.rteconfig
*/
#ifndef PRE_INCLUDE_GLOBAL_H
#define PRE_INCLUDE_GLOBAL_H

/* ONSemiconductor.BDK::BLE.Peripheral Server.BASS */
#ifndef CFG_PRF_BASS
    #define CFG_PRF_BASS
#endif
/* ONSemiconductor::Device.BDK.HAL */
#ifndef RSL10_CID
    #define RSL10_CID 101
#endif
/* Set BLE stack configuration if not set in project properties already. */
#ifndef CFG_BLE
	#define CFG_BLE
	#define CFG_ALLPRF /* BLE stack supports all profiles. */
	#define CFG_ALLROLES /* BLE stack supports all device roles. */
	#define CFG_APP /* Application task has control over BLE stack. */
	#define CFG_ATTS
	#define CFG_CHNL_ASSESS
	#define CFG_CON 1 /* Maximum number of active connections. */
	#define CFG_EMB /* Enable Baseband Exchange Memory. */
	#define CFG_EXT_DB
	#define CFG_HOST
	#define CFG_NB_PRF 2 /* Number of profiles managed by BLE stack. */
	#define CFG_PRF
	#define CFG_RF_ATLAS
	#define CFG_SEC_CON /* Enable secure BLE connections. */
#endif /* ifndef CFG_BLE */

#endif /* PRE_INCLUDE_GLOBAL_H */
