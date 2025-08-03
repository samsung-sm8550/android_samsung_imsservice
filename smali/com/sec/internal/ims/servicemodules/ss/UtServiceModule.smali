.class public Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "UtServiceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;


# static fields
.field private static final EVENT_SIM_READY:I = 0x4

.field private static final EVENT_SOFTPHONE_RESPONSE:I = 0x5

.field private static final EVENT_TRIGGER_CONFIG:I = 0x1

.field private static final EXEMPT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "UtServiceModule"

.field private static final MAX_RETRY_SIM_SERV_DOC:I = 0x3

.field public static final NAME:Ljava/lang/String; = "UtServiceModule"

.field private static final XCAP_ROOT_URI_PREF_IMSI:I = 0x2

.field private static final XCAP_ROOT_URI_PREF_MSISDN:I = 0x1

.field private static final XCAP_ROOT_URI_PREF_MSISDN_WITH_DOMAIN:I = 0x3

.field private static mUtIdCounter:I


# instance fields
.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field protected mCWDBChangeObserver:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field protected mContext:Landroid/content/Context;

.field protected final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private mIsConfigured:[Z

.field private mIsEpdgAvailable:[Z

.field private mIsRunningRequest:Z

.field private mLastUri:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ss/IImsUtEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLooper:Landroid/os/Looper;

.field mMnoUpdateObserver:Landroid/database/ContentObserver;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private final mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

.field private mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

.field private mPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/ss/UtProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

.field private mSentSimServDoc:[Z

.field private mSentSimServDocCount:[I

.field private mSoftPhoneAccountId:Ljava/lang/String;

.field private mSoftPhoneClientId:I

.field private mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

.field private mSoftphoneBound:Z

.field private mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

.field private final mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

.field private mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

.field private mUtSwitch:[Z

.field private smUtMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsConfigured(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPdnController(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetsmUtMap(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)Ljava/util/HashMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSoftphoneBound(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSoftphoneService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/vsim/attsoftphone/ISoftphoneService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformExemptUtService(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->performExemptUtService()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 4

    .line 140
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    .line 100
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 102
    new-array v3, v2, [Z

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    .line 103
    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    .line 106
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 121
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    .line 123
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDoc:[Z

    .line 124
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    .line 127
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    const/4 v2, -0x1

    .line 128
    iput v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    .line 129
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    .line 130
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    .line 133
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 136
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 137
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    .line 207
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$3;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    .line 1240
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$4;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 1251
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$5;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1475
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$6;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    .line 1555
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$7;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$7;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    .line 142
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    .line 143
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 144
    new-instance p1, Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "UtServiceModule"

    const/16 v2, 0x12c

    invoke-direct {p1, p2, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    .line 146
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    const/4 p3, 0x4

    .line 149
    invoke-interface {p2, p0, p3, v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->registerForSimReady(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p2, "Create UtServiceModule"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->add(Ljava/lang/String;)V

    .line 153
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$1;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    .line 172
    new-instance p1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;

    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$2;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private checkEpdgApnExist(ILjava/lang/String;)Z
    .locals 5

    .line 1047
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1048
    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v0

    .line 1049
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkEpdgApnExist(): mnoName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1052
    const-string p0, "checkEpdgApnExist(): There is no mnoName"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 1056
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnoname = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\' AND apnname = \'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1057
    const-string v3, "content://iwlansettings/todos"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1059
    invoke-direct {p0, p1, v0, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryEpdgApnExist(ILjava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 1063
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkEpdgApnExist(): There is no apntype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method private checkSpecificPolicy(I)Z
    .locals 7

    .line 1095
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1097
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 1098
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 1100
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v1, v4

    .line 1101
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "mmtel"

    .line 1102
    invoke-virtual {v5, v6}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1103
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v6

    if-nez v6, :cond_3

    .line 1104
    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 1105
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    return v3

    .line 1107
    :cond_0
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 1109
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/constants/ims/os/VoPsIndication;->NOT_SUPPORTED:Lcom/sec/internal/constants/ims/os/VoPsIndication;

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private createRequestId()I
    .locals 1

    .line 684
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    const/16 v0, 0xff

    if-lt p0, v0, :cond_0

    const/4 p0, 0x0

    .line 685
    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    .line 687
    :cond_0
    sget p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtIdCounter:I

    return p0
.end method

.method private ctcOperator(I)Ljava/lang/String;
    .locals 0

    .line 955
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    .line 957
    sget-object p1, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_0

    .line 958
    const-string p0, "46003"

    return-object p0

    .line 959
    :cond_0
    sget-object p1, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne p0, p1, :cond_1

    .line 960
    const-string p0, "45502"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getApnExist(ILjava/lang/String;)Z
    .locals 5

    .line 1018
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->ctcOperator(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1023
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v1

    .line 1024
    sget-object v2, Landroid/provider/Telephony$Carriers;->SIM_APN_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filtered/subId/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1025
    const-string v2, "EUR"

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isMultiSimSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    .line 1027
    const-string v2, "current = 1"

    goto :goto_0

    .line 1029
    :cond_0
    const-string v2, "current1 = 1"

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1033
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'and (type LIKE \'%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1034
    const-string v1, "content://telephony/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1037
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getApnExist(): operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selection("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "), contentURI = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "UtServiceModule"

    invoke-static {v3, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1038
    invoke-direct {p0, p1, v2, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->queryApnExist(ILjava/lang/String;Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    .line 1042
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getApnExist(): There is no apntype="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private getUa(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 4

    .line 564
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 565
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 568
    const-string v1, "mmtel"

    invoke-interface {p0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    .line 569
    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    aget-object v2, v1, v3

    if-nez v2, :cond_2

    .line 570
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->KOODO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 573
    :cond_0
    const-string/jumbo v0, "ss"

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    goto :goto_1

    .line 571
    :cond_1
    :goto_0
    const-string/jumbo v0, "smsip"

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getUserAgentByPhoneId(ILjava/lang/String;)[Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    .line 576
    :cond_2
    :goto_1
    array-length p0, v1

    if-nez p0, :cond_3

    const/4 p0, 0x0

    return-object p0

    .line 580
    :cond_3
    array-length p0, v1

    move p1, v3

    :goto_2
    if-ge p1, p0, :cond_6

    aget-object v0, v1, p1

    if-nez v0, :cond_4

    goto :goto_3

    .line 585
    :cond_4
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v2

    if-ne v2, p2, :cond_5

    return-object v0

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 589
    :cond_6
    aget-object p0, v1, v3

    return-object p0
.end method

.method private getUtImpi(I)Ljava/lang/String;
    .locals 1

    .line 593
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 598
    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImpi(Lcom/sec/ims/settings/ImsProfile;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 601
    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private handleSoftPhoneEvent(Landroid/os/Message;)V
    .locals 10

    .line 746
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;

    .line 747
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    .line 748
    iget v2, p1, Landroid/os/Message;->arg1:I

    const-string/jumbo v3, "status"

    const/4 v4, 0x1

    const/16 v5, 0x198

    const-string v6, "errorCode"

    const/4 v7, 0x0

    const-string v8, "UtServiceModule"

    packed-switch v2, :pswitch_data_0

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 751
    :pswitch_0
    iget-boolean v2, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz v2, :cond_0

    .line 752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success to set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 755
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". reason = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 757
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    goto/16 :goto_2

    .line 777
    :pswitch_1
    iget-boolean p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz p1, :cond_4

    .line 778
    const-string p1, "Success to get CallForwardingInfo"

    invoke-static {v8, v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 780
    new-array p1, v4, [Landroid/os/Bundle;

    .line 781
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 783
    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallForwardingInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    .line 784
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget v9, v5, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardCondition:I

    if-ne v6, v9, :cond_1

    .line 785
    iget-boolean v6, v5, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mActive:Z

    if-eqz v6, :cond_2

    .line 786
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 788
    :cond_2
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 790
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v6, v6, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    const-string v9, "condition"

    invoke-virtual {v2, v9, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 791
    const-string/jumbo v6, "number"

    iget-object v5, v5, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;->mForwardNumber:Ljava/lang/String;

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    const-string/jumbo v5, "serviceClass"

    const/16 v6, 0x11

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 795
    :cond_3
    aput-object v2, p1, v7

    .line 796
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    goto/16 :goto_2

    .line 798
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get CallForwardingInfo. reason = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 800
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 801
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    goto :goto_2

    .line 762
    :pswitch_2
    iget-boolean p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mSuccess:Z

    if-eqz p1, :cond_5

    iget-object p1, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    if-eqz p1, :cond_5

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallWaitingInfo: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean v2, v2, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    new-array p1, v4, [Landroid/os/Bundle;

    .line 765
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    aput-object v2, p1, v7

    .line 766
    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mCallWaitingInfo:Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean v0, v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;->mActive:Z

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 767
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifySuccessResult(III[Landroid/os/Bundle;)V

    goto :goto_2

    .line 769
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get CallWaitingInfo. reason = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/sec/vsim/attsoftphone/data/SupplementaryServiceNotify;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, v1, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 771
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 772
    invoke-virtual {p1, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->notifyFailResult(IIILandroid/os/Bundle;)V

    .line 808
    :goto_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 809
    const-string p1, "Process next request..."

    invoke-static {v8, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->dequeueRequest()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    goto :goto_3

    .line 812
    :cond_6
    iput-boolean v7, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isPsDataOffForUssd(I)Z
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPsDataOffForXcap(I)Z
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 914
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "xcap"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkEpdgApnExist(ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPsRegistered(I)Z
    .locals 2

    .line 1419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 1423
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isUssdExempt(I)Z
    .locals 2

    .line 939
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtStateMachineInit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    return v1

    .line 947
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ussdExempt:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUtExempt(I)Z
    .locals 2

    .line 901
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtStateMachineInit(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 905
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    return v1

    .line 909
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->mFeature:Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtFeatureData;->ssXcapConfigExempt:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isUtStateMachineInit(I)Z
    .locals 1

    .line 897
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onEpdgAvailabilityChanged(ZI)V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aput-boolean p1, v0, p2

    .line 715
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    .line 716
    sget-object v0, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean p1, p1, p2

    if-nez p1, :cond_0

    .line 717
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean p0, p0, p2

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->handleEpdgAvailabilityChanged(Z)V

    :cond_0
    return-void
.end method

.method private performExemptUtService()V
    .locals 2

    const/4 v0, 0x0

    .line 1136
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1137
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtExempt(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1138
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 3

    .line 1597
    const-string v0, "UtServiceModule"

    if-nez p2, :cond_0

    .line 1598
    const-string p0, "UtProfile is null."

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1602
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UtXcap["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->requestId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractLogFromUtProfile(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1603
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtLog;->extractCrLogFromUtProfile(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Ljava/lang/String;

    move-result-object p2

    .line 1605
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1606
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    const p0, 0x31000005

    .line 1607
    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void
.end method

.method private processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 10

    .line 1431
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_0

    return-void

    .line 1434
    :cond_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftProfile:Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x1

    .line 1435
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 1437
    :try_start_0
    iget v2, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v3, 0x72

    if-ne v2, v3, :cond_1

    .line 1438
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v0, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallWaitingInfo(I)V

    goto/16 :goto_3

    :cond_1
    const/16 v3, 0x73

    if-ne v2, v3, :cond_2

    .line 1440
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;

    iget-boolean p1, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->enable:Z

    invoke-direct {v0, p1}, Lcom/sec/vsim/attsoftphone/data/CallWaitingInfo;-><init>(Z)V

    .line 1441
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {p1, p0, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallWaitingInfo(ILcom/sec/vsim/attsoftphone/data/CallWaitingInfo;)V

    goto :goto_3

    :cond_2
    const/16 v3, 0x64

    if-ne v2, v3, :cond_3

    .line 1443
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {v0, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getCallForwardingInfo(I)V

    goto :goto_3

    :cond_3
    const/16 v0, 0x65

    if-ne v2, v0, :cond_8

    .line 1448
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_5

    .line 1450
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_0
    move v5, v1

    :goto_1
    move v6, v5

    goto :goto_2

    :cond_4
    move v5, v1

    move v6, v3

    goto :goto_2

    :cond_5
    const/4 v2, 0x4

    if-ne v0, v2, :cond_6

    move v6, v1

    move v5, v3

    goto :goto_2

    :cond_6
    if-ne v0, v1, :cond_7

    .line 1458
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_7
    if-nez v0, :cond_4

    move v5, v3

    goto :goto_1

    .line 1465
    :goto_2
    new-instance v0, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;

    iget v7, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->timeSeconds:I

    iget v8, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->condition:I

    iget-object v9, p1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/sec/vsim/attsoftphone/data/CallForwardingInfo;-><init>(ZZIILjava/lang/String;)V

    .line 1467
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    invoke-interface {p1, p0, v0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->setCallForwardingInfo(ILcom/sec/vsim/attsoftphone/data/CallForwardingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1470
    :catch_0
    const-string p0, "UtServiceModule"

    const-string p1, "RemoteException happen"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    return-void
.end method

.method private queryApnExist(ILjava/lang/String;Landroid/net/Uri;)Z
    .locals 8

    .line 988
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "UtServiceModule"

    if-nez p0, :cond_0

    .line 989
    const-string/jumbo p0, "queryApnExist(): There is no ImsContext"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 993
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v7, "_id"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 995
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-lez p2, :cond_3

    .line 996
    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 997
    invoke-static {p0}, Landroid/telephony/data/ApnSetting;->makeApnSetting(Landroid/database/Cursor;)Landroid/telephony/data/ApnSetting;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 1001
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryApnExist("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")::getApnName = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1002
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", getApnTypeBitmask() = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1001
    invoke-static {v1, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1004
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result p2

    const/16 p3, 0x800

    and-int/2addr p2, p3

    if-ne p2, p3, :cond_1

    .line 1005
    const-string/jumbo p2, "queryApnExist: have Xcap !!!!!"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1010
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 993
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2

    :cond_3
    if-eqz p0, :cond_4

    .line 1010
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 1011
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "queryApnExist(): exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_3
    return v0
.end method

.method private queryEpdgApnExist(ILjava/lang/String;Landroid/net/Uri;)Z
    .locals 8

    .line 967
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const-string v1, "UtServiceModule"

    if-nez p0, :cond_0

    .line 968
    const-string/jumbo p0, "queryEpdgApnExist(): There is no ImsContext"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v0

    .line 972
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object v3, p3

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 975
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p3

    if-lez p3, :cond_1

    .line 976
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "queryEpdgApnExist(): count("

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), selection = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 980
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 972
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p2, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p2

    :cond_1
    if-eqz p0, :cond_2

    .line 980
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 981
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "queryEpdgApnExist(): exception = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_2
    :goto_2
    return v0
.end method

.method private registerAirplaneModeObserver()V
    .locals 3

    .line 1122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerMobileDataObserver()V
    .locals 3

    .line 1131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->MOBILE_DATA:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private registerObserver()V
    .locals 3

    .line 1217
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.ims.settings/mno"

    .line 1218
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mMnoUpdateObserver:Landroid/database/ContentObserver;

    .line 1217
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 6

    .line 473
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->printLog(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 474
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    .line 475
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x0

    .line 476
    :goto_0
    const-string v3, "UtServiceModule"

    if-ge v2, v1, :cond_1

    if-eq v2, p1, :cond_0

    .line 477
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->hasConnection()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 478
    const-string v4, "already connected on another slot"

    invoke-static {v3, p1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 482
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 483
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 484
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    if-eqz v0, :cond_2

    .line 485
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->enqueueRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    .line 486
    const-string p0, "Other request is processing now..."

    invoke-static {v3, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 488
    :cond_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->processSpUtRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    goto :goto_1

    .line 491
    :cond_3
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->query(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    :goto_1
    return-void
.end method

.method private updateConfig(Landroid/os/Message;)V
    .locals 4

    .line 817
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 818
    invoke-static {v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 823
    :cond_0
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 824
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->updateConfig(Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;)V

    .line 825
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    .line 826
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    const/4 v2, 0x0

    aput v2, p1, v1

    .line 827
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    .line 828
    invoke-virtual {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->enableUt(IZ)V

    .line 829
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->needToGetSimservDocOnBootup(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 830
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->querySimServDoc(I)I

    goto :goto_0

    .line 833
    :cond_1
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasNoSim()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 834
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x2710

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public bindSoftPhoneService()V
    .locals 3

    .line 1535
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    if-nez v0, :cond_0

    .line 1536
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1537
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.entitlement.softphone.SoftphoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1539
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 1541
    :cond_0
    const-string v0, "UtServiceModule"

    const-string v1, "mSoftphoneService is not null"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1542
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->connected()V

    :goto_0
    return-void
.end method

.method public checkAvailabilityError(I)I
    .locals 6

    .line 514
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 515
    const-string v1, "UtServiceModule"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 521
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 523
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    .line 524
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMnoName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, p1}, Lcom/sec/internal/ims/settings/ImsProfileLoaderInternal;->getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 528
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 529
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasVsim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    if-eqz p0, :cond_1

    return v3

    .line 532
    :cond_1
    const-string p0, "checkAvailabilityError(): no matched profile with SIM"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ee

    return p0

    .line 536
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean p0, p0, p1

    if-nez p0, :cond_3

    .line 537
    const-string p0, "checkAvailabilityError(): UtStateMachine is not configured"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ef

    return p0

    :cond_3
    return v3

    :catchall_0
    move-exception p0

    .line 526
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 527
    throw p0

    .line 516
    :cond_4
    :goto_0
    const-string p0, "checkAvailabilityError(): SIM is not ready"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p0, 0x3ec

    return p0
.end method

.method public checkXcapApn(I)Z
    .locals 3

    .line 1070
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v0

    .line 1072
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsConfigured:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->getConfig()Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    goto :goto_0

    .line 1072
    :cond_0
    const-string/jumbo v1, "xcap"

    :goto_0
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1076
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1080
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1081
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkEpdgApnExist(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getMobileDataRegState(I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 1086
    const-string p0, "UtServiceModule"

    const-string v0, "checkXcapApn(): ePDG XCAP APN not exist. PS also not registered."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 1091
    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getApnExist(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public connected()V
    .locals 3

    .line 1493
    const-string v0, "connected is started"

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1496
    const-string p0, "no active account, supplementary service is not available, grey out."

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1498
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAccountId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerSupplementaryServiceListener(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public deRegisterForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 0

    .line 1308
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected dequeueRequest()Lcom/sec/internal/ims/servicemodules/ss/UtProfile;
    .locals 2

    .line 1591
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    .line 1592
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0
.end method

.method public dump()V
    .locals 2

    .line 1576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dump of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1578
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1579
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public enableUt(IZ)V
    .locals 3

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UtSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1169
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    aput-boolean p2, v0, p1

    .line 1171
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateCapabilities(I)V

    return-void
.end method

.method protected enqueueRequest(Lcom/sec/internal/ims/servicemodules/ss/UtProfile;)V
    .locals 0

    .line 1587
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1504
    const-string p0, "getActiveAccount is started"

    const-string v0, "UtServiceModule"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    invoke-static {}, Lcom/sec/internal/constants/ims/entitilement/SoftphoneContract$SoftphoneAccount;->buildActiveAccountUri()Landroid/net/Uri;

    move-result-object v2

    .line 1507
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 1509
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " active users"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1513
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1514
    const-string p1, "account_id"

    .line 1515
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 1514
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1507
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 1519
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;
    .locals 3

    if-eqz p1, :cond_2

    .line 459
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 460
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_0

    .line 461
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublicId for ATT : registered IMPU = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 461
    const-string v1, "UtServiceModule"

    invoke-static {v1, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    .line 467
    :cond_1
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPublicId(I)Ljava/lang/String;
    .locals 4

    .line 631
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 632
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 635
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 637
    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    .line 638
    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v3, :cond_1

    if-eqz v2, :cond_2

    .line 640
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getImpuOfType(Lcom/sec/ims/ImsRegistration;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 642
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 645
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_2

    if-eqz v2, :cond_2

    .line 647
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 649
    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 655
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getimpi(I)Ljava/lang/String;

    move-result-object v2

    .line 656
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_3

    .line 657
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 658
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v0, :cond_5

    .line 664
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p0

    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    const/4 v2, 0x0

    invoke-interface {p0, p1, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getIsimImpuAtIndex(II)Ljava/lang/String;

    move-result-object p0

    .line 667
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 668
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpu()Ljava/lang/String;

    move-result-object p0

    .line 670
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-ne v1, p1, :cond_6

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getMsisdn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 671
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpuFromMsisdn()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_5
    const/4 p0, 0x0

    .line 675
    :cond_6
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 676
    const-string p0, ""

    :cond_7
    return-object p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 698
    const-string/jumbo p0, "ss"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;
    .locals 1

    const/4 v0, 0x0

    .line 560
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(II)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p0

    return-object p0
.end method

.method protected getimpi(I)Ljava/lang/String;
    .locals 2

    .line 606
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUtImpi(I)Ljava/lang/String;

    move-result-object p0

    .line 608
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 610
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->hasIsim()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 612
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImpi()Ljava/lang/String;

    move-result-object p0

    .line 615
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getDerivedImpi()Ljava/lang/String;

    move-result-object p0

    .line 619
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 621
    const-string p0, "UtServiceModule"

    const-string v0, "There is no impi"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, ""

    :cond_2
    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 725
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->handleSoftPhoneEvent(Landroid/os/Message;)V

    goto :goto_0

    .line 730
    :cond_1
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lcom/sec/internal/helper/AsyncResult;

    .line 731
    iget-object p0, p0, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 732
    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 733
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 734
    invoke-static {}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->getInstance()Lcom/sec/internal/ims/util/httpclient/GbaHttpController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/util/httpclient/GbaHttpController;->clearLastAuthInfo(I)V

    goto :goto_0

    .line 727
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->updateConfig(Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public init()V
    .locals 11

    .line 182
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 183
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 184
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getPhoneCount()I

    move-result v0

    .line 186
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 187
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsRunningRequest:Z

    .line 188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPendingRequests:Ljava/util/List;

    .line 189
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 191
    new-instance v10, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UtMachine"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLooper:Landroid/os/Looper;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    move-object v4, v10

    move-object v7, p0

    invoke-direct/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Lcom/sec/internal/interfaces/ims/IImsFramework;Landroid/content/Context;)V

    .line 192
    invoke-virtual {v10, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->init(I)V

    .line 193
    invoke-virtual {v10}, Lcom/sec/internal/helper/StateMachine;->start()V

    .line 194
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aput-boolean v2, v4, v3

    .line 196
    invoke-virtual {p0, v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    .line 197
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aput v2, v4, v3

    .line 198
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mRegistrationListener:Lcom/sec/ims/IImsRegistrationListener;

    invoke-interface {v1, v4, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->registerListener(Lcom/sec/ims/IImsRegistrationListener;I)V

    .line 199
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {p0, v5, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerObserver()V

    .line 202
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerAirplaneModeObserver()V

    .line 203
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerMobileDataObserver()V

    .line 204
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mNetworkStateListener:Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V

    return-void
.end method

.method public isInvalidUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z
    .locals 2

    .line 545
    iget p0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 v0, 0x65

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    .line 547
    :cond_0
    iget p0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->action:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    iget-object p0, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->number:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 548
    const-string p0, "UtServiceModule"

    const-string p2, "Invalid request - Registration should have number."

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isSentSimServDoc(I)Z
    .locals 0

    .line 1175
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDoc:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method protected isTerminalRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)Z
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v1, "ss_clip_clir_by_network"

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v0

    .line 497
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "ss_callbarring_by_network"

    const/4 v4, 0x1

    invoke-interface {v1, p1, v3, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result v1

    .line 498
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string/jumbo v3, "ss_callwaiting_by_network"

    invoke-interface {p0, p1, v3, v2}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getInt(ILjava/lang/String;I)I

    move-result p0

    .line 500
    iget p1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isCallBarringType(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v1, :cond_0

    move v2, v4

    :cond_0
    return v2

    .line 502
    :cond_1
    iget p1, p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;->type:I

    const/16 p2, 0x72

    if-eq p1, p2, :cond_4

    const/16 p2, 0x73

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/16 p0, 0x6a

    if-lt p1, p0, :cond_3

    const/16 p0, 0x6d

    if-gt p1, p0, :cond_3

    if-nez v0, :cond_3

    move v2, v4

    :cond_3
    return v2

    :cond_4
    :goto_0
    if-nez p0, :cond_5

    move v2, v4

    :cond_5
    return v2
.end method

.method public isUssdEnabled(I)Z
    .locals 5

    .line 920
    const-string/jumbo v0, "ussd_domain_setting"

    const-string v1, "CS"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    const-string v1, "PS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "PSCS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    .line 923
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkSpecificPolicy(I)Z

    move-result v1

    .line 926
    :goto_1
    const-string v3, "UtServiceModule"

    if-eqz v1, :cond_2

    .line 927
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUssdExempt(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsDataOffForUssd(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 928
    const-string p0, "isUssdEnabled : USSI is not exempted."

    invoke-static {v3, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v2

    .line 933
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUssdEnabled with policy : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " enabled = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isUtEnabled(I)Z
    .locals 9

    .line 841
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtStateMachineInit(I)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "UtServiceModule"

    if-nez v0, :cond_0

    .line 842
    const-string p0, "UtStateMachine is not initialized yet"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtSwitch:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_1

    .line 847
    const-string p0, "UtService is disabled"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 851
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 852
    sget-object v3, Lcom/sec/internal/constants/Mno;->GLOBE_PH:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->checkXcapApn(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 853
    const-string p0, "Doesn\'t have any XCAP apn"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 858
    :cond_2
    const-string/jumbo v3, "ss_domain_setting"

    const-string v4, "CS"

    invoke-static {p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 860
    const-string v4, "PS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    const-string v4, "PS_ALWAYS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 862
    :cond_3
    const-string v4, "PSCS"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "PS_ONLY_VOLTEREGIED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    .line 864
    :cond_4
    const-string v4, "PS_ONLY_PSREGIED"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 865
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsRegistered(I)Z

    move-result v4

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_2

    .line 863
    :cond_6
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isVolteServiceRegistered(I)Z

    move-result v4

    goto :goto_2

    :cond_7
    :goto_1
    move v4, v5

    :goto_2
    if-eqz v4, :cond_8

    .line 869
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtExempt(I)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsDataOffForXcap(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 870
    const-string p0, "isUtEnabled : UtService is not exempted."

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 875
    :cond_8
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->isForbidden()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 876
    const-string v4, "Ut Request is blocked by previous 403 Error"

    invoke-static {v2, p1, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    move v4, v1

    .line 880
    :cond_9
    sget-object v6, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v6, :cond_a

    sget-object v6, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v6, :cond_b

    .line 881
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ril.ICC_TYPE"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 882
    const-string/jumbo v6, "ril.IsCSIM"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 883
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "iccType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isCsim = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, p1, v7}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 884
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 885
    const-string v7, "4"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    array-length v0, v6

    if-le v0, p1, :cond_b

    const-string v0, "0"

    aget-object v6, v6, p1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 886
    const-string v0, "RUIM did not support UT interface"

    invoke-static {v2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 887
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->smUtMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/servicemodules/ss/UtStateMachine;->setForce403Error(Z)V

    goto :goto_3

    :cond_b
    move v1, v4

    .line 892
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUtEnabled with policy : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " enabled = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method protected isVolteServiceRegistered(I)Z
    .locals 3

    .line 1398
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1402
    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getPendingRegistration(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 1406
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;

    .line 1407
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdnType()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_2

    .line 1408
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1409
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v1

    if-nez v1, :cond_2

    .line 1410
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getImsRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method protected makeConfig(I)Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;
    .locals 5

    .line 238
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;-><init>()V

    .line 239
    const-string v1, "http_username"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->username:Ljava/lang/String;

    .line 240
    const-string v1, "http_password"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->passwd:Ljava/lang/String;

    .line 241
    const-string/jumbo v1, "xcap_root_uri_pref"

    const/4 v3, 0x2

    invoke-static {p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;I)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v3, 0x3

    if-eq v1, v3, :cond_0

    .line 250
    const-string v1, "auth_proxy_ip"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    .line 251
    const-string v1, "bsf_ip"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getNAFDomain(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafServer:Ljava/lang/String;

    .line 247
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getBSFDomain(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfServer:Ljava/lang/String;

    .line 255
    :goto_0
    const-string v1, "auth_proxy_port"

    const/16 v3, 0x50

    invoke-static {p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->nafPort:I

    .line 256
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->impu:Ljava/lang/String;

    .line 257
    const-string v1, "bsf_port"

    invoke-static {p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->bsfPort:I

    .line 258
    const-string/jumbo v1, "user_agent"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->userAgent:Ljava/lang/String;

    .line 259
    const-string/jumbo v1, "xcap_root_uri"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xcapRootUri:Ljava/lang/String;

    .line 260
    const-string v1, "apn_selection"

    const-string/jumbo v2, "xcap"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->apnSelection:Ljava/lang/String;

    .line 261
    const-string/jumbo v1, "xdm_user_agent"

    const-string v2, "3gpp-gba"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->makeXcapUserAgentHeader(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/ss/UtConfigData;->xdmUserAgent:Ljava/lang/String;

    .line 264
    const-string/jumbo v1, "ss_domain_setting"

    const-string v2, "CS"

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->getSetting(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CS_ALWAYS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 268
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->unregisterCwdbObserver(I)V

    goto :goto_2

    .line 266
    :cond_2
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->registerCwdbObserver(I)V

    .line 271
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getPublicId(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "UtServiceModule"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method protected needToGetSimservDocOnBootup(I)Z
    .locals 3

    .line 1144
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1145
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isTmobile()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/sec/internal/constants/Mno;->TELEKOM_ALBANIA:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v2

    .line 1146
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isSentSimServDoc(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1150
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsRegistered(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget v0, v0, p1

    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 p0, 0x1

    return p0

    .line 1152
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needToQuerySimservDocOnBootup : isUtEnabled(phoneId) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isPsRegistered() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1153
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isPsRegistered(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SimUtil.getActiveDataPhoneId() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPdnController.isVoiceRoaming(phoneId) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mPdnController:Lcom/sec/internal/interfaces/ims/core/IPdnController;

    .line 1155
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isVoiceRoaming(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSentSimServDocCount[phoneId]) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1152
    const-string v0, "UtServiceModule"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method protected declared-synchronized notifyFailResult(IIILandroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    .line 1365
    :try_start_0
    const-string v0, "UtServiceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFailResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " requestType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->isPutRequest(I)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 1368
    :try_start_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationUpdateFailed(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1370
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1374
    :cond_0
    :try_start_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationQueryFailed(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1376
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1379
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized notifySuccessResult(III[Landroid/os/Bundle;)V
    .locals 3

    monitor-enter p0

    .line 1312
    :try_start_0
    const-string v0, "UtServiceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifySuccessResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 1331
    :pswitch_0
    :try_start_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    aget-object p2, p4, v0

    const-string/jumbo p4, "status"

    invoke-virtual {p2, p4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    invoke-interface {p1, p3, p2}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallWaitingQueried(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1333
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1341
    :pswitch_1
    :try_start_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    aget-object p2, p4, v0

    invoke-interface {p1, p3, p2}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationQueried(ILandroid/os/Bundle;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1343
    :try_start_4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1324
    :pswitch_2
    :try_start_5
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallBarringQueried(I[Landroid/os/Bundle;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1326
    :try_start_6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1355
    :pswitch_3
    :try_start_7
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationUpdated(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    :catch_3
    move-exception p1

    .line 1357
    :try_start_8
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    .line 1316
    :pswitch_4
    :try_start_9
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/ims/ss/IImsUtEventListener;

    invoke-interface {p1, p3, p4}, Lcom/sec/ims/ss/IImsUtEventListener;->onUtConfigurationCallForwardQueried(I[Landroid/os/Bundle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_0

    :catch_4
    move-exception p1

    .line 1318
    :try_start_a
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1362
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V
    .locals 2

    .line 705
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onNetworkChanged(Lcom/sec/internal/constants/ims/os/NetworkEvent;I)V

    .line 706
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNetworkChanged to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtServiceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 707
    iget-boolean p1, p1, Lcom/sec/internal/constants/ims/os/NetworkEvent;->isEpdgAvailable:Z

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mIsEpdgAvailable:[Z

    aget-boolean v0, v0, p2

    if-eq p1, v0, :cond_0

    .line 708
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->onEpdgAvailabilityChanged(ZI)V

    :cond_0
    return-void
.end method

.method public queryCLIP(I)I
    .locals 3

    .line 332
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 334
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6a

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 335
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCLIR(I)I
    .locals 3

    .line 322
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 324
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6c

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 325
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCOLP(I)I
    .locals 3

    .line 352
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 354
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6e

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 355
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCOLR(I)I
    .locals 3

    .line 342
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 344
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x70

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 345
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCallBarring(III)I
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result p3

    .line 304
    new-instance v0, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/4 v1, 0x0

    invoke-static {v1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCBType(ZI)I

    move-result v1

    invoke-direct {v0, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return p3
.end method

.method public queryCallForward(IILjava/lang/String;)I
    .locals 3

    .line 312
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 314
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x64

    invoke-direct {v1, v2, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IILjava/lang/String;I)V

    .line 315
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCallWaiting(I)I
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 294
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x72

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 295
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public queryCapabilityStatus(I)Landroid/telephony/ims/feature/ImsFeature$Capabilities;
    .locals 1

    .line 1388
    new-instance v0, Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    invoke-direct {v0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 1390
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->isUtEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    .line 1391
    invoke-virtual {v0, p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    :cond_0
    return-object v0
.end method

.method public querySimServDoc(I)I
    .locals 4

    .line 280
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    const/4 v1, 0x1

    .line 281
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->setSentSimServDoc(IZ)V

    .line 282
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDocCount:[I

    aget v3, v2, p1

    add-int/2addr v3, v1

    aput v3, v2, p1

    .line 284
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x74

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(II)V

    .line 285
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public registerCwdbObserver(I)V
    .locals 3

    .line 1223
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;

    invoke-direct {v1, p0, p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule$CWDBContentObserver;-><init>(Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;Landroid/os/Handler;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 1227
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volte_call_waiting"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 1229
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "volte_call_waiting_slot2"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public registerForUtEvent(ILcom/sec/ims/ss/IImsUtEventListener;)V
    .locals 0

    .line 1304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mListeners:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public registerSupplementaryServiceListener(Ljava/lang/String;)V
    .locals 1

    .line 1524
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneAccountId:Ljava/lang/String;

    .line 1526
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    invoke-interface {v0, p1}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->getClientId(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftPhoneClientId:I

    .line 1527
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneService:Lcom/sec/vsim/attsoftphone/ISoftphoneService;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSupplementaryServiceListener:Lcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;

    invoke-interface {v0, p1, p0}, Lcom/sec/vsim/attsoftphone/ISoftphoneService;->registerSupplementaryServiceListener(ILcom/sec/vsim/attsoftphone/ISupplementaryServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1530
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected setImsCallWaiting(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 1204
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volte_call_waiting_slot2"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    .line 1207
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "volte_call_waiting"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 1210
    :cond_1
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImsCallWaiting(): activate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UtServiceModule"

    invoke-static {v2, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    const-string v1, "enable_call_wait"

    invoke-static {p0, p1, v1, v0}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    return v0
.end method

.method protected setLastUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 1583
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mLastUri:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setSentSimServDoc(IZ)V
    .locals 0

    .line 1179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSentSimServDoc:[Z

    aput-boolean p2, p0, p1

    return-void
.end method

.method public unbindSoftPhoneService()V
    .locals 2

    .line 1547
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1549
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    .line 1550
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 1552
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is bind"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mSoftphoneBound:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UtServiceModule"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterCwdbObserver(I)V
    .locals 2

    .line 1234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1236
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mCWDBChangeObserver:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return-void
.end method

.method public updateCLIP(IZ)I
    .locals 3

    .line 429
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 431
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6b

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZI)V

    .line 432
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCLIR(II)I
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 421
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6d

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 422
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCOLP(IZ)I
    .locals 3

    .line 449
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 451
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x6f

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZI)V

    .line 452
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCOLR(II)I
    .locals 3

    .line 439
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 441
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x71

    invoke-direct {v1, v2, p2, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(III)V

    .line 442
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCallBarring(IIIILjava/lang/String;[Ljava/lang/String;)I
    .locals 9

    .line 362
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v8

    .line 363
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    if-ne p2, v2, :cond_0

    move p2, v3

    .line 368
    :cond_0
    sget-object v1, Lcom/sec/internal/constants/Mno;->CMHK:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_2

    const/4 p2, 0x2

    :cond_1
    move v2, p2

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    if-ne p2, v0, :cond_3

    :goto_0
    move v2, v3

    goto :goto_1

    :cond_3
    if-ne p2, v2, :cond_1

    goto :goto_0

    .line 377
    :goto_1
    new-instance p2, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    invoke-static {v3, v2}, Lcom/sec/internal/ims/servicemodules/ss/UtUtils;->doconvertCBType(ZI)I

    move-result v1

    move-object v0, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    move v6, v8

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IIII[Ljava/lang/String;ILjava/lang/String;)V

    .line 378
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v8
.end method

.method public updateCallForward(IIILjava/lang/String;II)I
    .locals 9

    .line 386
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v8

    .line 387
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 388
    sget-object v1, Lcom/sec/internal/constants/Mno;->TELSTRA:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->SINGTEL:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_2

    :cond_0
    if-ne p3, v3, :cond_2

    if-gtz p6, :cond_2

    const/16 p6, 0x14

    :cond_1
    :goto_0
    move v6, p6

    goto :goto_1

    .line 391
    :cond_2
    sget-object v1, Lcom/sec/internal/constants/Mno;->FET:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    if-ne p2, v2, :cond_1

    if-gtz p6, :cond_1

    if-eq p3, v3, :cond_3

    const/4 v1, 0x4

    if-eq p3, v1, :cond_3

    const/4 v1, 0x5

    if-ne p3, v1, :cond_1

    :cond_3
    const/16 p6, 0x28

    goto :goto_0

    .line 396
    :goto_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->getUa(I)Lcom/sec/internal/interfaces/ims/core/IUserAgent;

    move-result-object p6

    .line 397
    sget-object v1, Lcom/sec/internal/constants/Mno;->GCF:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_4

    if-eqz p6, :cond_4

    invoke-interface {p6}, Lcom/sec/internal/interfaces/ims/core/IUserAgent;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p6

    invoke-virtual {p6}, Lcom/sec/ims/settings/ImsProfile;->getReplaceCFNL()Z

    move-result p6

    if-eqz p6, :cond_4

    if-ne p3, v2, :cond_4

    const/4 p3, 0x6

    :cond_4
    move v3, p3

    .line 401
    new-instance p3, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v1, 0x65

    move-object v0, p3

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v7, v8

    invoke-direct/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IIILjava/lang/String;III)V

    .line 402
    invoke-direct {p0, p1, p3}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v8
.end method

.method public updateCallWaiting(IZI)I
    .locals 3

    .line 409
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->createRequestId()I

    move-result v0

    .line 411
    new-instance v1, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;

    const/16 v2, 0x73

    invoke-direct {v1, v2, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/ss/UtProfile;-><init>(IZII)V

    .line 412
    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->startUtRequest(ILcom/sec/internal/ims/servicemodules/ss/UtProfile;)V

    return v0
.end method

.method public updateCapabilities(I)V
    .locals 0

    .line 1383
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->updateCapabilities(I)V

    return-void
.end method

.method protected writeDump(ILjava/lang/String;)V
    .locals 0

    .line 1611
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/ss/UtServiceModule;->mUtServiceHistory:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    return-void
.end method
