.class public Lcom/sec/internal/ims/core/ImsIconManager;
.super Ljava/lang/Object;
.source "ImsIconManager.java"


# static fields
.field private static final CMCC_HD_NEW_CALL_5G_MESSAGE_ICON_NAME:Ljava/lang/String; = "stat_sys_data_hd_volte_plus"

.field private static final CMC_SD_ICON:Ljava/lang/String; = "stat_sys_phone_call_skt"

.field private static final CROSS_SIM_ICON_NAME:[Ljava/lang/String;

.field public static final DEFAULT_VOLTE_REGI_ICON_ID:Ljava/lang/String; = "stat_notify_volte_service_avaliable"

.field private static final DUAL_IMS_NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_hd"

.field private static final INTENT_ACTION_CONFIGURATION_CHANGED:Ljava/lang/String; = "android.intent.action.CONFIGURATION_CHANGED"

.field private static final INTENT_ACTION_SILENT_REDIAL:Ljava/lang/String; = "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

.field private static final LOG_TAG:Ljava/lang/String; = "ImsIconManager"

.field private static final NOTIFICATION_BUILDER_ID:I = -0x6687

.field private static final NO_CTC_VOLTE_ICON_NAME:Ljava/lang/String; = "stat_sys_phone_no_volte_chn_ctc"

.field private static final PRIMARY_CHANNEL:Ljava/lang/String; = "imsicon_channel"

.field private static final RCS_ICON_DESCRIPTION:Ljava/lang/String; = "RCS"

.field protected static final RCS_ICON_NAME:Ljava/lang/String; = "stat_notify_rcs_service_avaliable"

.field protected static final RCS_ICON_NAME_CHN:Ljava/lang/String; = "stat_notify_rcs"

.field protected static final RCS_ICON_NAME_DUAL:[Ljava/lang/String;

.field protected static final RCS_ICON_SLOT:Ljava/lang/String; = "com.samsung.rcs"

.field protected static final VOLTE_ICON_SLOT_HEAD:Ljava/lang/String; = "ims_volte"

.field private static final VoLTE_ICON_WFC_WARNING_NAME:Ljava/lang/String; = "stat_notify_wfc_warning"

.field static mShowVoWIFILabel:[Z

.field static mVowifiOperatorLabel:[Ljava/lang/String;

.field static mVowifiOperatorLabelOngoing:[I

.field static mWifiSubTextOnLockScreen:[Ljava/lang/String;


# instance fields
.field protected VOLTE_ICON_SLOT:Ljava/lang/String;

.field mConnectivityManager:Landroid/net/ConnectivityManager;

.field mContext:Landroid/content/Context;

.field protected mCurrentInRoaming:Z

.field protected mCurrentNetworkType:I

.field mCurrentPhoneState:I

.field protected mCurrentServiceState:I

.field protected mCurrentVoiceRatType:I

.field mDisplayDensity:I

.field mForceRefreshIcon:Z

.field final mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected mIsDebuggable:Z

.field mIsDuringEmergencyCall:Z

.field mIsFirstVoLTEIconShown:Z

.field mIsSilentRedialInProgress:Z

.field mIsVonrEnabled:Z

.field mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mLastVoLTEResourceId:I

.field mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

.field mMno:Lcom/sec/internal/constants/Mno;

.field mNotificationManager:Landroid/app/NotificationManager;

.field mOmcCode:Ljava/lang/String;

.field mPackageName:Ljava/lang/String;

.field mPdnController:Lcom/sec/internal/ims/core/PdnController;

.field mPhoneId:I

.field mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field mUseDualVolteIcon:Z

.field final mVolteNotiObserver:Landroid/database/ContentObserver;

.field private final simSwitchChangeObserver:Landroid/database/ContentObserver;


# direct methods
.method public static synthetic $r8$lambda$7SMh80kw2km51W4tFBqF-SXh0a4(Lcom/sec/internal/ims/core/ImsIconManager;Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->lambda$isCounterSlotRcsTransferable$1(Lcom/sec/ims/ImsRegistration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ObmRLzV1xSMPFnfYDVgqsv-hbq8(Landroid/net/NetworkCapabilities;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->lambda$isSuspend$0(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 76
    const-string/jumbo v0, "stat_notify_rcs_service_avaliable_2"

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable_dual"

    const-string/jumbo v2, "stat_notify_rcs_service_avaliable_1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    .line 83
    const-string/jumbo v0, "stat_sys_cross_sim_calling1_spr"

    const-string/jumbo v1, "stat_sys_cross_sim_calling2_spr"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 133
    new-array v1, v1, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    .line 134
    filled-new-array {v0, v0}, [I

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    .line 135
    const-string v0, ""

    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 136
    filled-new-array {v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/constants/Mno;I)V
    .locals 5

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const/4 v0, -0x1

    .line 128
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 129
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->UNKNOWN:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    .line 130
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const/4 v1, 0x0

    .line 131
    iput v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 138
    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 142
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 143
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 145
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mDisplayDensity:I

    .line 146
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    .line 274
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$1;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->simSwitchChangeObserver:Landroid/database/ContentObserver;

    .line 1330
    new-instance v1, Lcom/sec/internal/ims/core/ImsIconManager$2;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/ImsIconManager$2;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    iput-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIconBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1368
    new-instance v2, Lcom/sec/internal/ims/core/ImsIconManager$3;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$3;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mVolteNotiObserver:Landroid/database/ContentObserver;

    .line 235
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    .line 238
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 240
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 241
    iput-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 243
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    .line 244
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 246
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 249
    iput p5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 250
    new-instance p1, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p5, p2}, Lcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;ILcom/sec/internal/ims/core/ImsIconManager$TelephonyCallbackImpl-IA;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 253
    const-string/jumbo p1, "volte_noti_settings"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 256
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 257
    const-string p2, "com.samsung.intent.action.PHONE_NEED_SILENT_REDIAL"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 258
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 259
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-virtual {p2, v1, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 261
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "phone1_on"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 263
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "phone2_on"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 265
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "esim_phone_on_1"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, p3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 268
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string p2, "notification"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 271
    invoke-virtual {p0, p4, p5}, Lcom/sec/internal/ims/core/ImsIconManager;->initConfiguration(Lcom/sec/internal/constants/Mno;I)V

    return-void
.end method

.method private isSuspend(Landroid/net/Network;)Z
    .locals 0

    .line 691
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda0;-><init>()V

    .line 692
    invoke-virtual {p0, p1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    .line 693
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$isCounterSlotRcsTransferable$1(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 933
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isSuspend(Landroid/net/Network;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$isSuspend$0(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    const/16 v0, 0x15

    .line 692
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method checkKORVolteIcon()Z
    .locals 8

    .line 1126
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1128
    array-length v3, v0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v6, v0, v4

    .line 1129
    const-string v7, "mmtel"

    invoke-virtual {v6, v7}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1130
    invoke-virtual {v6}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-nez v6, :cond_0

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 1131
    invoke-static {v6}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v5, v2

    .line 1136
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1138
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : SimManager is null"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1141
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v0

    invoke-interface {v3, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getSimState(I)I

    move-result v0

    if-eqz v0, :cond_8

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 1148
    :cond_4
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    if-nez v0, :cond_5

    .line 1149
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : network is unknown."

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1152
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "ril.currentplmn"

    const-string v4, ""

    invoke-interface {v0, v1, v3, v4}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oversea"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1153
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_6

    .line 1154
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : on roaming. Hide VoLTE icon"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 1157
    :cond_6
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkKORVolteIcon : on roaming. Volte featuremask = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    .line 1162
    :cond_7
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIconOperatorSpecifics(Z)Z

    move-result p0

    return p0

    .line 1144
    :cond_8
    :goto_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "checkKORVolteIcon : SIM state is unknown or absent"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method checkKORVolteIconOperatorSpecifics(Z)Z
    .locals 8

    .line 1166
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 1168
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "checkKORVolteIconOperatorSpecifics : subId is invalid, return false"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1171
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v2, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v0

    .line 1172
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_5

    .line 1173
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v4, -0x1

    invoke-static {p1, v4, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 1177
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$UserHandle;->myUserId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 1178
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v4, "checkKORVolteIconOperatorSpecifics : Settings not found, return VOLTE_PREFERRED"

    invoke-static {p1, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    goto :goto_0

    .line 1182
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "checkKORVolteIconOperatorSpecifics : Settings not found"

    invoke-static {p1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    move v4, p1

    .line 1186
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkKORVolteIconOperatorSpecifics : KT device and KT sim, ServiceState = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", voicecall_type = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    const/4 p0, 0x2

    if-ne v4, p0, :cond_4

    :cond_3
    move v1, v3

    :cond_4
    return v1

    .line 1189
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->LGU:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_6

    .line 1190
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "checkKORVolteIconOperatorSpecifics : SIM card is LGT, return false"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1192
    :cond_6
    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1195
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SKT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_8

    .line 1196
    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 1199
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1202
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "volte_noti_settings"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1205
    :catch_0
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "checkKORVolteIconOperatorSpecifics : volte_noti_settings is not exists"

    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    goto :goto_2

    :cond_7
    :goto_1
    move v4, v3

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_1

    .line 1212
    :goto_2
    sget-object v5, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkKORVolteIconOperatorSpecifics : volte_noti_settings = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isVolteFeatureEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isHide = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", ServiceState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, p0, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-ne v4, v3, :cond_9

    if-eqz p1, :cond_9

    if-nez v2, :cond_9

    if-nez v0, :cond_9

    move v1, v3

    :cond_9
    return v1
.end method

.method checkSameVoWIFILabel()Z
    .locals 4

    .line 903
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    .line 905
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget v3, v1, v2

    aget v1, v1, v0

    if-ne v3, v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v1, v2

    aget-object v1, v1, v0

    .line 906
    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p0, v1, p0

    aget-object v0, v1, v0

    .line 907
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method clearIcon(I)V
    .locals 1

    .line 329
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowRcsIcon(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 330
    const-string p1, "com.samsung.rcs"

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    .line 332
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, -0x1

    .line 333
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    .line 334
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    :cond_1
    return-void
.end method

.method fillWifiLabel()V
    .locals 8

    .line 881
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 882
    const-string/jumbo v2, "vowifi_operator_label_ongoing"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v4

    aput v4, v0, v1

    .line 884
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 885
    const-string/jumbo v4, "vowifi_subtext_on_lockscreen"

    const-string v5, ""

    invoke-static {v1, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v1

    .line 887
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 888
    const-string/jumbo v6, "vowifi_operator_label"

    invoke-static {v1, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 890
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    .line 892
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    .line 893
    invoke-static {p0, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v1

    aput v1, v0, p0

    .line 895
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    .line 896
    invoke-static {p0, v4, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    .line 898
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    .line 899
    invoke-static {p0, v6, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, p0

    return-void
.end method

.method getCrossSimIconName()Ljava/lang/String;
    .locals 4

    .line 1221
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->CROSS_SIM_ICON_NAME:[Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object v0, v0, p0

    .line 1222
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCrossSimIconName() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;
    .locals 4

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    const-string v1, "ims_volte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1264
    :goto_0
    iget-boolean v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-eqz v3, :cond_8

    .line 1266
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v3, ""

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    move-object p1, v3

    goto :goto_1

    .line 1274
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vo5g_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1271
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vowifi_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 1268
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "volte_regi_icon_id"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1281
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1282
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0, p1, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1286
    :cond_4
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 1289
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1290
    const-string/jumbo v3, "stat_sys_phone_call"

    goto :goto_2

    .line 1291
    :cond_5
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 1292
    const-string/jumbo v3, "stat_sys_phone_call_skt"

    goto :goto_2

    .line 1293
    :cond_6
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 1294
    const-string/jumbo v3, "stat_sys_phone_call_kt"

    goto :goto_2

    .line 1296
    :cond_7
    const-string/jumbo v3, "stat_sys_phone_call_lgt"

    goto :goto_2

    .line 1264
    :cond_8
    const-string/jumbo v3, "stat_notify_volte_service_avaliable"

    :cond_9
    :goto_2
    return-object v3
.end method

.method public getDuringEmergencyCall()Z
    .locals 0

    .line 1406
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    return p0
.end method

.method getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 0

    .line 790
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method protected getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method getVo5gIconName()Ljava/lang/String;
    .locals 2

    .line 1231
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vo5g_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVolteIconName()Ljava/lang/String;
    .locals 2

    .line 1237
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1240
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOmcCode()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1241
    const-string/jumbo p0, "stat_sys_phone_call"

    goto :goto_0

    .line 1242
    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1243
    const-string/jumbo p0, "stat_sys_phone_call_skt"

    goto :goto_0

    .line 1244
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKTTOmcCode()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1245
    const-string/jumbo p0, "stat_sys_phone_call_kt"

    goto :goto_0

    .line 1247
    :cond_2
    const-string/jumbo p0, "stat_sys_phone_call_lgt"

    goto :goto_0

    .line 1250
    :cond_3
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "volte_regi_icon_id"

    const-string v1, ""

    .line 1251
    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "stat_notify_volte_service_avaliable"

    :goto_0
    return-object p0
.end method

.method getVolteIconSlot()Ljava/lang/String;
    .locals 7

    .line 300
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getESimCount()I

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    .line 302
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVolteIconSlot: eSIM Count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", active SIM count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 304
    const-string v2, "ims_volte"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    if-ne v1, v3, :cond_0

    return-object v2

    :cond_0
    const/4 v4, 0x2

    .line 308
    const-string v5, ""

    const-string v6, "2"

    if-ne v0, v3, :cond_2

    if-ne v1, v4, :cond_2

    .line 311
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/sec/internal/helper/SimUtil$$ExternalSyntheticLambda2;-><init>()V

    .line 312
    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_1

    move-object v5, v6

    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-ne v0, v4, :cond_4

    .line 317
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 318
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result p0

    .line 319
    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p0

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ge v0, p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v5, v6

    :goto_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v6

    :goto_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;
    .locals 1

    .line 785
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    .line 786
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p0

    if-nez p0, :cond_3

    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->HIDE:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    :goto_0
    return-object p0
.end method

.method getVowifiIconName()Ljava/lang/String;
    .locals 2

    .line 1227
    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "vowifi_regi_icon_id"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method hasDataChannelService(Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 876
    const-string p0, "datachannel"

    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method hasVolteService(Lcom/sec/ims/ImsRegistration;)Z
    .locals 2

    .line 867
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 868
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-eq p0, v1, :cond_1

    if-eqz v0, :cond_0

    const-string p0, "GenericIR92_US:Cellcom"

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 872
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result p0

    return p0

    .line 869
    :cond_1
    :goto_0
    const-string p0, "mmtel"

    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "mmtel-video"

    .line 870
    invoke-virtual {p1, p0}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public initConfiguration(Lcom/sec/internal/constants/Mno;I)V
    .locals 2

    .line 287
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/constants/Mno;

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    .line 288
    iput p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 p1, 0x0

    .line 289
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    .line 290
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 291
    const-string/jumbo v0, "separate_vo5g_icon"

    invoke-static {p2, v0, p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 292
    invoke-interface {v0, p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->semIsVoNrEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    .line 293
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->registerPhoneStateListener()V

    .line 294
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->clearIcon(I)V

    .line 295
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconSlot()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    .line 296
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initConfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method isCounterSlotRcsTransferable()Z
    .locals 4

    .line 930
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 931
    :goto_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v3, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 932
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/core/ImsIconManager$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/ImsIconManager;)V

    .line 933
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    .line 935
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    .line 936
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isInSvcAndOtherSimIdle()Z

    move-result p0

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 717
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    .line 718
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result p1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 719
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 720
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isInSvcAndOtherSimIdle()Z
    .locals 7

    .line 943
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 944
    :goto_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isOtherSimInCallStatus()Z

    move-result p0

    xor-int/2addr p0, v2

    .line 945
    sget-object v3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 946
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    .line 945
    const-string v6, "isInSvcAndOtherSimIdle: In SVC %s, Other SIM Idle %s"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method isOtherSimInCallStatus()Z
    .locals 3

    .line 951
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDSDACapableDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v2, "isOtherSimInCallStatus: DSDA not need to check"

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 956
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 957
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    if-ne p0, v2, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method isServiceAvailable(Ljava/lang/String;)Z
    .locals 7

    .line 339
    const-string v0, "ATT"

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "mmtel-video"

    const-string v2, "mmtel"

    const/16 v3, 0x12

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_7

    const-string v0, "APP"

    iget-object v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->BOG:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->ORANGE_POLAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->DIGI:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELECOM_ITALY:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    .line 359
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->VODAFONE_NEWZEALAND:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/sec/internal/constants/Mno;->WINDTRE:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_1

    goto :goto_0

    :cond_1
    return v5

    .line 363
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v6, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v6}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v0

    .line 364
    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v6

    if-nez v6, :cond_4

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 366
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    return v4

    .line 367
    :cond_4
    :goto_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 368
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    move v4, v5

    :cond_6
    return v4

    .line 341
    :cond_7
    :goto_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    return v5

    .line 345
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result p0

    .line 346
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_a

    if-eq p0, v3, :cond_a

    .line 348
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    .line 349
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    move v4, v5

    :cond_9
    return v4

    :cond_a
    return v5
.end method

.method isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z
    .locals 1

    .line 697
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->hasVolteService(Lcom/sec/ims/ImsRegistration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "mmtel"

    .line 698
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "mmtel-video"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z
    .locals 5

    .line 702
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    .line 703
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetwork(I)I

    move-result v0

    .line 704
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegiRat()I

    move-result p1

    .line 705
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRegiRat ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], getCurrentNetwork ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-ne v0, v2, :cond_1

    .line 706
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 707
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 708
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v0, Lcom/sec/internal/constants/Mno;->CHT:Lcom/sec/internal/constants/Mno;

    if-ne p0, v0, :cond_0

    if-eq p1, v2, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method isVoWiFiRegistered(I)Z
    .locals 6

    .line 911
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 913
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 914
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "mmtel"

    .line 915
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mmtel-video"

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->isServiceAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 916
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v4, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCurrentNetworkByPhoneId(I)I

    move-result v4

    const/16 v5, 0x12

    if-ne v4, v5, :cond_1

    .line 917
    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 918
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->getEpdgPhysicalInterface(I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 919
    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/core/PdnController;->isEpdgConnected(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 920
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "isVoWIFIRegistered"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method needDisplayVo5gIcon()Z
    .locals 3

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->AIRTEL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v0, "separate_vo5g_icon"

    .line 725
    invoke-static {p0, v0, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method needShowCmccNewCall5gMessageIcon(Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Z
    .locals 5

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CMCC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 403
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isDataChannelRegistered()Z

    move-result v1

    .line 404
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result p1

    .line 405
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needShowCmccNewCall5gMessageIcon: isCmccOperator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isDataChannelRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isRcsRegistered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method needShowNoCTCVoLTEIcon()Z
    .locals 5

    .line 380
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 381
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getRilSimOperator(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CTC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 382
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 383
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v2, v3, v4}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v2

    .line 385
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v2, :cond_1

    .line 387
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 388
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 390
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    .line 391
    invoke-interface {v0, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 397
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needShowNoCTCVoLTEIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method needShowRcsIcon(I)Z
    .locals 1

    .line 1410
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1411
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1412
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v0, "needShowRcsIcon: true"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerPhoneStateListener()V
    .locals 3

    .line 1304
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v2, "registerPhoneStateListener:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1306
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-interface {v0, v1, v2, p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public setCurrentNetworkType(I)V
    .locals 0

    .line 1315
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    return-void
.end method

.method public setCurrentRoamingState(Z)V
    .locals 0

    .line 1327
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentInRoaming:Z

    return-void
.end method

.method public setCurrentServiceState(I)V
    .locals 0

    .line 1319
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    return-void
.end method

.method public setCurrentVoiceRatType(I)V
    .locals 0

    .line 1323
    iput p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentVoiceRatType:I

    return-void
.end method

.method public setDuringEmergencyCall(Z)V
    .locals 3

    .line 1394
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1395
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDuringEmergencyCall:Z

    .line 1396
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    :cond_0
    return-void
.end method

.method protected setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1039
    const-string v0, "drawable"

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1042
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1043
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    if-eq v1, v0, :cond_0

    .line 1044
    iput v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEResourceId:I

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_0

    .line 1047
    :cond_1
    const-string p3, "com.samsung.rcs"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1049
    const-string p3, "RCS"

    :goto_0
    if-nez v2, :cond_2

    .line 1055
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_3

    .line 1057
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1059
    invoke-virtual {v1, p1, v0, v3, p3}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 1061
    sget-object p3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIconSlot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (id: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1064
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    .line 1051
    :cond_4
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Wrong slot name: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method protected setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V
    .locals 7

    .line 1078
    const-string v0, "!@Boot: "

    .line 1079
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_0

    .line 1081
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastVoLTEVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v2

    goto :goto_1

    :cond_0
    move v1, v3

    goto :goto_1

    .line 1084
    :cond_1
    const-string v1, "com.samsung.rcs"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1085
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq v1, p2, :cond_2

    .line 1086
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mLastRcsVisiblity:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_0
    if-nez v1, :cond_3

    .line 1089
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-eq p2, v4, :cond_3

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v4, :cond_3

    .line 1091
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "RCS not registered on this SIM. Skip refresh."

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    :goto_1
    if-nez v1, :cond_4

    .line 1099
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mForceRefreshIcon:Z

    if-eqz v1, :cond_7

    .line 1101
    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "statusbar"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 1102
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p2, v4, :cond_5

    move v3, v2

    :cond_5
    invoke-virtual {v1, p1, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 1104
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "]"

    const-string v5, ": ["

    const-string/jumbo v6, "setIconVisibility: "

    if-eqz v1, :cond_6

    .line 1105
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    if-nez v1, :cond_6

    if-ne p2, v4, :cond_6

    .line 1106
    iput-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsFirstVoLTEIconShown:Z

    .line 1107
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_3

    .line 1111
    :cond_6
    :goto_2
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 1114
    :goto_3
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void

    .line 1095
    :cond_8
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong slot name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setVo5gIcon(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1401
    :goto_0
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    .line 1402
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationIcon()V

    return-void
.end method

.method showDualVolteIcon()Z
    .locals 7

    .line 1377
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v0

    .line 1378
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getActiveSimCount(Landroid/content/Context;)I

    move-result v1

    .line 1379
    const-string/jumbo v2, "persist.ril.esim.slotswitch"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tsds2"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1380
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v3

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_EMBEDDED_SIM"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 1381
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v4, "android.hardware.telephony.euicc"

    invoke-virtual {p0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 1382
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "supportDualVolte: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", activeSimCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", configESimSlotSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", ESim Features - floating: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", eUicc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-lt v1, v0, :cond_1

    if-eqz v3, :cond_0

    if-nez v2, :cond_0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v4, 0x1

    :cond_1
    return v4
.end method

.method declared-synchronized showWifiRegistrationStateQuickPanel(IZ)V
    .locals 8

    monitor-enter p0

    .line 971
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    add-int/lit8 v1, p1, 0x1

    aget-boolean v2, v0, v1

    if-ne v2, p2, :cond_0

    .line 972
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need to update mShowVoWIFILabel["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]  aready ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 973
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 978
    :try_start_1
    const-string v3, "imsicon_channel_both"

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 980
    const-string v3, "imsicon_channel_0"

    goto :goto_0

    .line 982
    :cond_2
    const-string v3, "imsicon_channel_1"

    :goto_0
    const/16 v4, -0x6687

    const/4 v5, 0x0

    if-eq p1, v2, :cond_3

    .line 985
    aget-boolean v0, v0, v5

    if-eqz v0, :cond_3

    .line 986
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v2, "imsicon_channel_both"

    invoke-virtual {v0, v2, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 989
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "show notification VoWiFi tag["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "] in quick panel ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 990
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager;->mShowVoWIFILabel:[Z

    aput-boolean p2, v0, v1

    const/4 v0, 0x1

    if-gtz p1, :cond_4

    move p1, v5

    goto :goto_1

    :cond_4
    move p1, v0

    .line 999
    :goto_1
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "imsicon_channel"

    const/4 v6, 0x2

    invoke-direct {v1, v2, v3, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1001
    invoke-virtual {v1, v5}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 1002
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    if-eqz p2, :cond_7

    .line 1005
    new-instance p2, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    const-string v2, "imsicon_channel"

    invoke-direct {p2, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1006
    const-string v1, "drawable"

    const-string/jumbo v2, "stat_notify_wfc_warning"

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1007
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabel:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    const-wide/16 v1, 0x0

    .line 1008
    invoke-virtual {p2, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 1009
    invoke-virtual {p2, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1011
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1012
    const-string/jumbo v1, "string"

    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->mWifiSubTextOnLockScreen:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 1013
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1015
    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v2, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1018
    :cond_5
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->mVowifiOperatorLabelOngoing:[I

    aget p1, v1, p1

    if-ne p1, v0, :cond_6

    .line 1019
    invoke-virtual {p2, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 1022
    :cond_6
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 1023
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2, v3, v4, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    goto :goto_2

    .line 1025
    :cond_7
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p1, v3, v4}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1027
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 6

    .line 794
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "show_rcs_regi_icon"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v0

    .line 796
    sget-object v1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRcsIconVisible: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 798
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 803
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getRcsIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    .line 804
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    const/4 v0, 0x0

    const-string v3, "com.samsung.rcs"

    if-eqz p2, :cond_1

    .line 805
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_7

    .line 806
    const-string/jumbo p2, "stat_notify_rcs"

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 808
    :cond_1
    iget-boolean p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz p2, :cond_7

    .line 809
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->refreshDualRcsReg(Landroid/content/Context;)V

    .line 810
    iget p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    .line 811
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 812
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    if-ne p1, p2, :cond_4

    .line 813
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 814
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 816
    :cond_3
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    aget-object p2, p2, v1

    invoke-virtual {p0, v3, p2, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 819
    :cond_4
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 820
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->RCS_ICON_NAME_DUAL:[Ljava/lang/String;

    aget-object p1, p1, v2

    invoke-virtual {p0, v3, p1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object p1, p2

    goto :goto_2

    .line 825
    :cond_5
    sget-object p2, Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;->SHOW:Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    const-string/jumbo v1, "stat_notify_rcs_service_avaliable"

    if-ne p1, p2, :cond_6

    .line 826
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 828
    :cond_6
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    if-eq v2, v4, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isCounterSlotRcsTransferable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 829
    invoke-virtual {p0, v3, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 835
    :cond_7
    :goto_2
    invoke-virtual {p0, v3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method

.method public updateRegistrationIcon()V
    .locals 9

    .line 531
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->showDualVolteIcon()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getVoiceCallType(Landroid/content/Context;II)I

    move-result v0

    .line 534
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    move-result-object v1

    .line 536
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v4, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v3

    .line 537
    invoke-virtual {p0, v3, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;I)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    move-result-object v0

    .line 539
    sget-object v4, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateRegistrationIcon: VoLTE [show: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] VoWiFi [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, "] RCS [show: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowRcsIcon()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] CROSS SIM [regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] DataChannel [regi: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isDataChannelRegistered()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, "] (RcsNetworkSuspended: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isRcsNetworkSuspended()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ") (VoNREnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsVonrEnabled:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 539
    invoke-static {v4, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 548
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCmcRegistered()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v2, v4

    .line 549
    :cond_0
    invoke-virtual {p0, v1, v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V

    .line 550
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateRcsIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    .line 551
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V

    return-void
.end method

.method updateRegistrationStatus([Lcom/sec/ims/ImsRegistration;I)Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;
    .locals 9

    .line 624
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;-><init>()V

    .line 625
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    .line 626
    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 628
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo p2, "updateRegistrationStatus : subId is invalid"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0

    .line 631
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v3, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getServiceStateForSubscriber(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 633
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    :cond_1
    if-nez p1, :cond_2

    return-object v0

    .line 641
    :cond_2
    array-length v1, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_b

    aget-object v5, p1, v4

    .line 644
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoImsRegistered(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 645
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    .line 646
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isCrossSimConnected(Lcom/sec/ims/ImsRegistration;)Z

    move-result v7

    if-nez v6, :cond_3

    if-nez v7, :cond_3

    move v8, v2

    goto :goto_1

    :cond_3
    move v8, v3

    .line 648
    :goto_1
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 649
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    .line 650
    invoke-virtual {v0, v7}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCrossSimRegistered(Z)V

    .line 651
    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->hasDataChannelService(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setDataChannelRegistered(Z)V

    .line 654
    :cond_4
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    .line 655
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    .line 656
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_6

    .line 657
    :cond_5
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setCmcRegistered(Z)V

    .line 660
    :cond_6
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->hasRcsService()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 661
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/sec/internal/ims/core/ImsIconManager;->isSuspend(Landroid/net/Network;)Z

    move-result v5

    xor-int/lit8 v6, v5, 0x1

    .line 662
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsNetworkSuspended(Z)V

    .line 664
    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-static {v5}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v6, :cond_7

    .line 665
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->isInSvcAndOtherSimIdle()Z

    move-result v5

    if-eqz v5, :cond_7

    move v6, v2

    goto :goto_2

    :cond_7
    move v6, v3

    .line 667
    :cond_8
    :goto_2
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setRcsRegistered(Z)V

    .line 670
    :cond_9
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isAllRegistered()Z

    move-result v5

    if-eqz v5, :cond_a

    goto :goto_3

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 675
    :cond_b
    :goto_3
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDuringEmergencyCall()Z

    move-result p1

    if-eqz p1, :cond_e

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 676
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->APT:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_d

    .line 677
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "APT special requirement"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p2, :cond_c

    move v3, v2

    .line 679
    :cond_c
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    xor-int/lit8 p0, v3, 0x1

    .line 680
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    goto :goto_4

    .line 681
    :cond_d
    sget-object p2, Lcom/sec/internal/constants/Mno;->VODAFONE_AUSTRALIA:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_e

    .line 682
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string p2, "Vodafone AUS special requirement"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 683
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVowifiRegistered(Z)V

    :cond_e
    :goto_4
    return-object v0
.end method

.method updateShowIconSettings(I)Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;
    .locals 10

    .line 556
    new-instance v0, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;-><init>()V

    const/4 v1, 0x1

    .line 557
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 558
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_vowifi_regi_icon"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 559
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 561
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v3, "show_volte_regi_icon"

    invoke-static {v2, v3, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    .line 562
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v3

    .line 564
    const-string/jumbo v5, "ro.product.first_api_level"

    invoke-static {v5, v4}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const/16 v6, 0x20

    if-lt v5, v6, :cond_2

    if-eqz v3, :cond_0

    const-string v5, "GenericIR92_US:Cellcom"

    .line 565
    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->DPAC:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->GTA:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->ITE:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->ASTCA_US:Lcom/sec/internal/constants/Mno;

    filled-new-array {v5, v6, v7, v8, v9}, [Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 566
    invoke-virtual {v3, v5}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 567
    :cond_1
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "Volte RegistrationIcon: need to turn off"

    invoke-static {v2, v3, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v2, v4

    .line 570
    :cond_2
    iget v3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v5, "remove_icon_nosvc"

    invoke-static {v3, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result v3

    .line 572
    iget-boolean v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-nez v5, :cond_4

    if-nez v2, :cond_3

    .line 574
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "Volte/RCS RegistrationIcon: turned off."

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 575
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 577
    :cond_3
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowRcsIcon(Z)V

    .line 580
    :cond_4
    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "hide_vowifi_icon_when_cs_call"

    invoke-static {v2, v5, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 581
    invoke-virtual {v0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsSilentRedialInProgress:Z

    if-eqz v2, :cond_5

    .line 582
    sget-object v2, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v6, "VoWIFI Special Req.: Hide vowifi icon when CSFB"

    invoke-static {v2, v5, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVoWiFiIcon(Z)V

    .line 587
    :cond_5
    const-string v2, "DCM"

    iget-object v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mOmcCode:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 588
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v5, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/core/PdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne v2, v5, :cond_6

    .line 589
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 593
    :cond_6
    iget-object v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 594
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKOROmcCode()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 595
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkKORVolteIcon()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    return-object v0

    :cond_7
    if-eqz p1, :cond_8

    .line 598
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v5, "KOR requirement"

    invoke-static {p1, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 599
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_8
    if-ne v3, v1, :cond_a

    .line 604
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentServiceState:I

    if-nez p1, :cond_9

    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    .line 605
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p1

    if-nez p1, :cond_a

    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mCurrentNetworkType:I

    const/16 v1, 0x12

    if-eq p1, v1, :cond_a

    .line 607
    :cond_9
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    .line 611
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getUsingNonTerrestrialNetwork()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 613
    iget-object p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getNetworkEvent(I)Lcom/sec/internal/constants/ims/os/NetworkEvent;

    move-result-object p1

    iget-object p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->operatorNumeric:Ljava/lang/String;

    .line 614
    const-string v1, "50559|310830|53013|50511"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 615
    sget-object p1, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string v1, "Hide Volte icon when usingNonTerrestrialNetwork"

    invoke-static {p1, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 616
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->setShowVolteIcon(Z)V

    :cond_b
    return-object v0
.end method

.method updateVoWifiLabel(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)V
    .locals 3

    .line 842
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    const-string/jumbo v1, "vowifi_operator_label"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 844
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->fillWifiLabel()V

    .line 845
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->checkSameVoWIFILabel()Z

    move-result p1

    .line 846
    iget v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getOppositeSimSlot(I)I

    move-result v0

    if-eqz p1, :cond_2

    .line 849
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->isVoWiFiRegistered(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/4 p2, -0x1

    .line 850
    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    return-void

    .line 853
    :cond_2
    iget p1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->showWifiRegistrationStateQuickPanel(IZ)V

    :cond_3
    return-void
.end method

.method protected updateVolteIcon(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;Z)V
    .locals 7

    .line 730
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 735
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mUseDualVolteIcon:Z

    const/high16 v1, 0x7f090000

    const-string/jumbo v2, "stat_sys_data_hd_volte_plus"

    const v3, 0x7f090001

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_6

    .line 736
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOWIFI:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v4

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v6, v4

    move-object v4, v0

    move-object v0, v6

    goto/16 :goto_6

    .line 739
    :cond_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 740
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VO5G:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/sec/internal/ims/core/ImsIconManager$Icon;->VOLTE:Lcom/sec/internal/ims/core/ImsIconManager$Icon;

    .line 741
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/ImsIconManager;->getDualIMSIconName(Lcom/sec/internal/ims/core/ImsIconManager$Icon;)Ljava/lang/String;

    move-result-object v0

    .line 742
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowCmccNewCall5gMessageIcon(Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v0

    .line 743
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_3
    move-object v0, v2

    goto/16 :goto_6

    .line 744
    :cond_4
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 745
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stat_sys_phone_no_volte_chn_hd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    .line 747
    :cond_5
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isCrossSimRegistered()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 748
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getCrossSimIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 750
    :cond_6
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVolteRegistered()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 751
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needDisplayVo5gIcon()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVo5gIconName()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconName()Ljava/lang/String;

    move-result-object v0

    .line 752
    :goto_4
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowCmccNewCall5gMessageIcon(Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, v0

    .line 753
    :goto_5
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 754
    :cond_9
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->isVowifiRegistered()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVowiFiIcon()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 755
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->getVowifiIconName()Ljava/lang/String;

    move-result-object v4

    .line 756
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 758
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;->isShowVolteIcon()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/ImsIconManager;->needShowNoCTCVoLTEIcon()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 759
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    .line 760
    const-string/jumbo v0, "stat_sys_phone_no_volte_chn_ctc"

    goto :goto_6

    :cond_b
    move-object v0, v4

    :goto_6
    if-nez v4, :cond_c

    .line 766
    const-string v4, ""

    .line 769
    :cond_c
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mIsDebuggable:Z

    if-eqz v1, :cond_d

    if-eqz p3, :cond_d

    .line 771
    invoke-virtual {p2, v5}, Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;->setVolteRegistered(Z)V

    const-string/jumbo v0, "stat_sys_phone_call_skt"

    .line 773
    :cond_d
    sget-object p3, Lcom/sec/internal/ims/core/ImsIconManager;->LOG_TAG:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/ImsIconManager;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVolteIcon: iconNametoSet="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 774
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_e

    .line 775
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p3, v0, v4}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconSlot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    :cond_e
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsIconManager;->VOLTE_ICON_SLOT:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/core/ImsIconManager;->getVolteIconVisibility(Lcom/sec/internal/ims/core/ImsIconManager$IconVisiblities;Lcom/sec/internal/ims/core/ImsIconManager$RegistrationStatus;)Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lcom/sec/internal/ims/core/ImsIconManager;->setIconVisibility(Ljava/lang/String;Lcom/sec/internal/ims/core/ImsIconManager$IconVisibility;)V

    return-void
.end method
