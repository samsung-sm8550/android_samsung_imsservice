.class public interface abstract Lcom/sec/internal/interfaces/ims/config/IConfigModule;
.super Ljava/lang/Object;
.source "IConfigModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field public static final HANDLE_AUTO_CONFIG_CHANGE_OPMODE:I = 0x8

.field public static final HANDLE_AUTO_CONFIG_COMPLETE:I = 0x3

.field public static final HANDLE_AUTO_CONFIG_DUALSIM:I = 0x9

.field public static final HANDLE_AUTO_CONFIG_FORCE:I = 0x1

.field public static final HANDLE_AUTO_CONFIG_FORCE_SMS_PUSH:I = 0x4

.field public static final HANDLE_AUTO_CONFIG_INIT:I = 0x0

.field public static final HANDLE_AUTO_CONFIG_REGISTER_LISTENER:I = 0x5

.field public static final HANDLE_AUTO_CONFIG_RESTART:I = 0x13

.field public static final HANDLE_AUTO_CONFIG_SEND_IID_TOKEN:I = 0x1b

.field public static final HANDLE_AUTO_CONFIG_SEND_MSISDN_NUMBER:I = 0x14

.field public static final HANDLE_AUTO_CONFIG_SEND_VERIFICATION_CODE:I = 0x7

.field public static final HANDLE_AUTO_CONFIG_SHOW_MSIDN_DIALOG:I = 0x10

.field public static final HANDLE_AUTO_CONFIG_SMS_PUSH:I = 0x15

.field public static final HANDLE_AUTO_CONFIG_START:I = 0x2

.field public static final HANDLE_AUTO_CONFIG_START_WITH_SUITABLE_NETWORK:I = 0x11

.field public static final HANDLE_AUTO_CONFIG_UNREGISTER_LISTENER:I = 0x6

.field public static final HANDLE_EVENT_ADS_CHANGED:I = 0xa

.field public static final HANDLE_EVENT_BOOT_COMPLETED:I = 0x17

.field public static final HANDLE_EVENT_CLEAR_WORKFLOW:I = 0x1c

.field public static final HANDLE_EVENT_CONFIGURATION_COMPLETED:I = 0xd

.field public static final HANDLE_EVENT_DEFAULT_MSG_APP_CHANGED:I = 0x12

.field public static final HANDLE_EVENT_FORBIDDEN_ERROR_OCCURRED:I = 0x16

.field public static final HANDLE_EVENT_NETWORK_AVAILABLE:I = 0x18

.field public static final HANDLE_EVENT_NETWORK_LOST:I = 0x19

.field public static final HANDLE_EVENT_NEW_CONFIGURATION_REQUIRED:I = 0xf

.field public static final HANDLE_EVENT_SEND_AUTOCONFIG_START:I = 0x1a

.field public static final HANDLE_EVENT_SIM_READY:I = 0xb

.field public static final HANDLE_EVENT_SIM_REFRESH:I = 0xc

.field public static final HANDLE_EVENT_TELEPHONY_CALL_STATUS_CHANGED:I = 0xe

.field public static final KEY_OMCNW_CODE:Ljava/lang/String; = "CODE"

.field public static final MSISDN_FROM_PAU:Ljava/lang/String; = "msisdn_from_pau"

.field public static final PREF_OMCNW_CODE:Ljava/lang/String; = "OMCNW_CODE"

.field public static final RCS_CONFIG_SOURCE_LOCAL_FILE:I = 0x2

.field public static final RCS_CONFIG_SOURCE_LOCAL_FILE_FROM_SDCARD:I = 0x3

.field public static final RCS_CONFIG_SOURCE_LOCAL_SERVER:I = 0x1

.field public static final RCS_CONFIG_SOURCE_REMOTE_SERVER:I = 0x0

.field public static final RECONFIGURE_REQUEST_ACCEPTED:I = 0x1

.field public static final RECONFIGURE_REQUEST_REJECTED:I


# virtual methods
.method public abstract changeOpMode(ZII)V
.end method

.method public abstract clearWorkflowByDmaChange(I)Z
.end method

.method public abstract getAcsConfig(I)Lcom/sec/internal/ims/config/params/ACSConfig;
.end method

.method public abstract getAcsTryReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;
.end method

.method public abstract getAvailableNetwork(I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Landroid/net/Network;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAvailableNetworkForNetworkType(II)Landroid/net/Network;
.end method

.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract getRcsConfVersion(I)Ljava/lang/Integer;
.end method

.method public abstract getRcsConfigMark(I)Ljava/lang/String;
.end method

.method public abstract getRcsProfile(I)Ljava/lang/String;
.end method

.method public abstract getStorage(I)Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
.end method

.method public abstract getTokenDeletedReason(I)Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;
.end method

.method public abstract isConfigModuleBootUp()Z
.end method

.method public abstract isMessagingReady()Z
.end method

.method public abstract isRcsEnabled(I)Z
.end method

.method public abstract isValidAcsVersion(I)Z
.end method

.method public abstract isValidConfigDb(I)Z
.end method

.method public abstract isWaitAutoconfig(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
.end method

.method public abstract obtainConfigMessage(ILandroid/os/Bundle;)Landroid/os/Message;
.end method

.method public abstract onNewRcsConfigurationNeeded(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
.end method

.method public abstract onRegistrationStatusChanged(ZILcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract resetAcsTryReason(I)V
.end method

.method public abstract resetReadyStateCommand(I)V
.end method

.method public abstract resetTokenDeletedReason(I)V
.end method

.method public abstract sendConfigMessage(II)V
.end method

.method public abstract sendConfigMessageDelayed(III)V
.end method

.method public abstract sendConfigMessageDelayed(IILjava/lang/Object;I)V
.end method

.method public abstract setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V
.end method

.method public abstract setDualSimRcsAutoConfig(Z)V
.end method

.method public abstract setMsisdnFromPau(Lcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract setRcsClientConfiguration(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setRegisterFromApp(ZI)V
.end method

.method public abstract setTokenDeletedReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)V
.end method

.method public abstract showMSIDSNDialog()V
.end method

.method public abstract startAcs(I)V
.end method

.method public abstract startAutoConfig(ZLandroid/os/Message;I)V
.end method

.method public abstract startAutoConfigDualsim(ILandroid/os/Message;)V
.end method

.method public abstract triggerAutoConfig(ZILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/util/List<",
            "Lcom/sec/internal/interfaces/ims/core/IRegisterTask;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract triggerAutoConfiguration(I)V
.end method

.method public abstract tryAutoconfiguration(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;)Z
.end method

.method public abstract updateMobileNetworkforDualRcs(I)Z
.end method

.method public abstract updateTelephonyCallStatus(II)V
.end method
