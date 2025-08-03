.class public Lcom/sec/internal/constants/ims/ImsConstants$Intents;
.super Ljava/lang/Object;
.source "ImsConstants.java"


# static fields
.field public static final ACTION_AIRPLANE_MODE:Ljava/lang/String; = "android.intent.action.AIRPLANE_MODE"

.field public static final ACTION_AKA_CHALLENGE_COMPLETE:Ljava/lang/String; = "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

.field public static final ACTION_AKA_CHALLENGE_FAILED:Ljava/lang/String; = "com.sec.imsservice.AKA_CHALLENGE_FAILED"

.field public static final ACTION_CALL_STATE_CHANGED:Ljava/lang/String; = "com.samsung.rcs.CALL_STATE_CHANGED"

.field public static final ACTION_CHECK_REGISTRATION_DAILY:Ljava/lang/String; = "com.samsung.intent.ACTION_CHECK_REGISTRATION_DAILY"

.field public static final ACTION_DATAUSAGE_REACH_TO_LIMIT:Ljava/lang/String; = "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

.field public static final ACTION_DCN_TRIGGERED:Ljava/lang/String; = "com.samsung.intent.action.UPDATE_IMS_REGISTRATION"

.field public static final ACTION_DEVICE_STORAGE_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_FULL"

.field public static final ACTION_DEVICE_STORAGE_NOT_FULL:Ljava/lang/String; = "android.intent.action.DEVICE_STORAGE_NOT_FULL"

.field public static final ACTION_DM_CHANGED:Ljava/lang/String; = "com.samsung.ims.dm.DM_CHANGED"

.field public static final ACTION_DSAC_MODE_SWITCH:Ljava/lang/String; = "android.ims.hvolte.MODE_SWITCH"

.field public static final ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final ACTION_EMM_ERROR:Ljava/lang/String; = "com.samsung.intent.action.EMM_ERROR"

.field public static final ACTION_FACTORY_RESET:Ljava/lang/String; = "android.intent.action.FACTORY_RESET"

.field public static final ACTION_FLIGHT_MODE:Ljava/lang/String; = "com.sec.android.internal.ims.FLIGHT_MODE"

.field public static final ACTION_FLIGHT_MODE_BY_POWEROFF:Ljava/lang/String; = "powerofftriggered"

.field public static final ACTION_FORCED_UPDATE_RESET:Ljava/lang/String; = "com.samsung.intent.action.update_reset"

.field public static final ACTION_FORCED_UPDATE_TRIGGER:Ljava/lang/String; = "com.samsung.intent.action.update_ims"

.field public static final ACTION_IMS_ON_SIMLOADED:Ljava/lang/String; = "com.samsung.ims.action.onsimloaded"

.field public static final ACTION_IMS_PROFILE_LOADED:Ljava/lang/String; = "com.sec.imsservice.action.IMS_PROFILE_LOADED"

.field public static final ACTION_IMS_STATE:Ljava/lang/String; = "com.samsung.ims.action.IMS_REGISTRATION"

.field public static final ACTION_INSTALL_SESSION_STATE_CHANGED:Ljava/lang/String; = "com.samsung.intent.action.imsservice.install_session_state_changed"

.field public static final ACTION_PERIODIC_POLLING_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.imsservice.dm_polling_timeout"

.field public static final ACTION_REQUEST_AKA_CHALLENGE:Ljava/lang/String; = "com.sec.imsservice.REQUEST_AKA_CHALLENGE"

.field public static final ACTION_RESET_NETWORK_SETTINGS:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

.field public static final ACTION_RETRYTIME_EXPIRED:Ljava/lang/String; = "android.intent.action.retryTimeExpired"

.field public static final ACTION_SERVICE_DOWN:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_DOWN"

.field public static final ACTION_SERVICE_UP:Ljava/lang/String; = "com.android.ims.IMS_SERVICE_UP"

.field public static final ACTION_SIM_ICCID_CHANGED:Ljava/lang/String; = "com.samsung.action.SIM_ICCID_CHANGED"

.field public static final ACTION_SIM_ISIM_LOADED:Ljava/lang/String; = "android.intent.action.ISIM_LOADED"

.field public static final ACTION_SIM_REFRESH:Ljava/lang/String; = "com.android.intent.isim_refresh"

.field public static final ACTION_SIM_REFRESH_FAIL_RECOVERY:Ljava/lang/String; = "com.samsung.intent.action.isim_refresh_fail_recovery"

.field public static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final ACTION_SMS_CALLBACK_MODE_CHANGED_INTERNAL:Ljava/lang/String; = "com.samsung.intent.action.SMS_CALLBACK_MODE_CHANGED_INTERNAL"

.field public static final ACTION_SOFT_RESET:Ljava/lang/String; = "com.samsung.intent.action.SETTINGS_SOFT_RESET"

.field public static final ACTION_T3396_EXPIRED:Ljava/lang/String; = "android.intent.action.retrySetupData"

.field public static final ACTION_UPDATE_PCSCF_RESTORATION:Ljava/lang/String; = "com.samsung.intent.action.UPDATE_PCSCF_RESTORATION"

.field public static final ACTION_WFC_SWITCH_PROFILE:Ljava/lang/String; = "action_wfc_switch_profile_broadcast"

.field public static final EXTRA_AIRPLANE_KEY:Ljava/lang/String; = "state"

.field public static final EXTRA_ANDORID_PHONE_ID:Ljava/lang/String; = "android:phone_id"

.field public static final EXTRA_CALL_CALLREASON:Ljava/lang/String; = "EXTRA_CALL_CALLREASON"

.field public static final EXTRA_CALL_EVENT:Ljava/lang/String; = "EXTRA_CALL_EVENT"

.field public static final EXTRA_CALL_IMAGE:Ljava/lang/String; = "EXTRA_CALL_IMAGE"

.field public static final EXTRA_CALL_IMPORTANCE:Ljava/lang/String; = "EXTRA_CALL_IMPORTANCE"

.field public static final EXTRA_CALL_LATITUDE:Ljava/lang/String; = "EXTRA_CALL_LATITUDE"

.field public static final EXTRA_CALL_LONGITUDE:Ljava/lang/String; = "EXTRA_CALL_LONGITUDE"

.field public static final EXTRA_CALL_RADIUS:Ljava/lang/String; = "EXTRA_CALL_RADIUS"

.field public static final EXTRA_CALL_SUBJECT:Ljava/lang/String; = "EXTRA_CALL_SUBJECT"

.field public static final EXTRA_CAUSE_KEY:Ljava/lang/String; = "CAUSE"

.field public static final EXTRA_DCN_PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final EXTRA_DSAC_MODE:Ljava/lang/String; = "modeType"

.field public static final EXTRA_IS_CMC_CALL:Ljava/lang/String; = "EXTRA_IS_CMC_CALL"

.field public static final EXTRA_IS_CMC_CONNECTED:Ljava/lang/String; = "EXTRA_IS_CMC_CONNECTED"

.field public static final EXTRA_IS_INCOMING:Ljava/lang/String; = "EXTRA_IS_INCOMING"

.field public static final EXTRA_LIMIT_POLICY:Ljava/lang/String; = "policyData"

.field public static final EXTRA_PCSCF_RESTORATION_PHONEID:Ljava/lang/String; = "PhoneId"

.field public static final EXTRA_PCSCF_RESTORATION_V4:Ljava/lang/String; = "V4"

.field public static final EXTRA_PCSCF_RESTORATION_V6:Ljava/lang/String; = "V6"

.field public static final EXTRA_PHONE_ID:Ljava/lang/String; = "EXTRA_PHONE_ID"

.field public static final EXTRA_POWEROFF_TRIGGERED:Ljava/lang/String; = "powerofftriggered"

.field public static final EXTRA_REGISTERED:Ljava/lang/String; = "REGISTERED"

.field public static final EXTRA_REGISTERED_SERVICES:Ljava/lang/String; = "SERVICE"

.field public static final EXTRA_REGI_PHONE_ID:Ljava/lang/String; = "PHONE_ID"

.field public static final EXTRA_RESET_NETWORK_SUBID:Ljava/lang/String; = "subId"

.field public static final EXTRA_SIMMOBILITY:Ljava/lang/String; = "SIMMO"

.field public static final EXTRA_SIP_ERROR_CODE:Ljava/lang/String; = "SIP_ERROR"

.field public static final EXTRA_SIP_ERROR_REASON:Ljava/lang/String; = "ERROR_REASON"

.field public static final EXTRA_TEL_NUMBER:Ljava/lang/String; = "EXTRA_TEL_NUMBER"

.field public static final EXTRA_UICC_MOBILITY_SPEC_VER:Ljava/lang/String; = "IMS_CONFIG_UICC_MOBILITY_SPEC_VER"

.field public static final EXTRA_UPDATED_ITEM:Ljava/lang/String; = "item"

.field public static final EXTRA_UPDATED_PHONE_ID:Ljava/lang/String; = "phoneId"

.field public static final EXTRA_UPDATED_VALUE:Ljava/lang/String; = "value"

.field public static final EXTRA_VOWIFI:Ljava/lang/String; = "VOWIFI"

.field public static final EXTRA_WFC_REQUEST:Ljava/lang/String; = "oem_request"

.field public static final INTENT_ACTION_LTE_REJECT:Ljava/lang/String; = "com.samsung.intent.action.LTE_REJECT"

.field public static final INTENT_ACTION_REGIST_REJECT:Ljava/lang/String; = "com.samsung.intent.action.regist_reject"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
