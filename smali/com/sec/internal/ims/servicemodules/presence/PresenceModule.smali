.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;
.super Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;
.source "PresenceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;


# static fields
.field private static final DEFAULT_WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static final LOG_TAG:Ljava/lang/String; = "PresenceModule"

.field static final NAME:Ljava/lang/String; = "PresenceModule"


# instance fields
.field mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

.field mContext:Landroid/content/Context;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

.field protected mModuleHandler:Landroid/os/Handler;

.field private mPhoneCount:I

.field private mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

.field private mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceRegiInfoUpdater:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

.field protected mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

.field private final mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

.field mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

.field private mServiceTupleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribeRetryList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field private mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sec/internal/helper/PhoneIdKeyMap<",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private mUrisToSubscribe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation
.end field

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$16E_v0c78yiOoKb1Gr6CiQ7xm1g(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processDeregistering$2(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WD0go2vPs6jICea1WPvJNnS6k74(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processRegistered$1(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qj9GGZJ_cnFc3o04LUJiuIPpTFw(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processDeregistered$3(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4HnB_-s8yJ40P02wi2gKnxkHaU(Lcom/sec/ims/presence/ServiceTuple;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$setOwnCapabilities$4(Lcom/sec/ims/presence/ServiceTuple;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xo_r_NLRBBoApaqJNmJGdzbMpZE(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->lambda$processConfigured$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 5

    .line 179
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;-><init>(Landroid/os/Looper;)V

    .line 110
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    const/4 p1, 0x0

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 113
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 114
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 161
    new-instance v1, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v1}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    .line 163
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    .line 164
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    .line 173
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    .line 181
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 182
    new-instance v1, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->NAME:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v1, p2, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 183
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    .line 185
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    .line 186
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    .line 187
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    .line 189
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    new-instance v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 190
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    invoke-direct {v1, v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 191
    new-instance v1, Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    invoke-direct {v1, v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 193
    new-instance p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;)V

    .line 194
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 195
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->mSubscribeRetryIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceIntentReceiver;->getSubscribeRetryIntentFilter()Landroid/content/IntentFilter;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move p1, v0

    .line 197
    :goto_0
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge p1, v1, :cond_0

    .line 198
    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;-><init>()V

    .line 199
    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 200
    new-instance v2, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v2, p1}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 201
    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;-><init>(Landroid/content/Context;I)V

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPresenceCache:Lcom/sec/internal/ims/servicemodules/presence/PresenceCache;

    .line 202
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 203
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 204
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v2, p1, v3}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(ILcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 208
    :cond_0
    const-string/jumbo p1, "power"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 209
    const-string p2, "PresenceModule"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 210
    invoke-virtual {p1, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 211
    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 214
    :cond_1
    const-string p0, "created"

    invoke-static {p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private acquireWakeLock()V
    .locals 4

    .line 1685
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    return-void

    .line 1689
    :cond_0
    monitor-enter v0

    .line 1690
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    const/16 v1, 0xd

    .line 1691
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1692
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1693
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getPublishTimerValue(I)J
    .locals 1

    .line 1086
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    .line 1087
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method private handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 6

    .line 1878
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1879
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleExpBackOffRetry: EXP_BACKOFF_RETRY count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1886
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const-wide/16 v4, 0x0

    if-ne v1, v3, :cond_1

    .line 1887
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 1888
    const-string v1, "handleExpBackOffRetry: notifying polling failure"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1889
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1891
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getListSubscribeExpBackOffRetryTime(II)J

    move-result-wide v1

    goto :goto_0

    .line 1892
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v1, v2, :cond_2

    .line 1893
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getSubscribeExpBackOffRetryTime(II)J

    move-result-wide v1

    goto :goto_0

    :cond_2
    move-wide v1, v4

    :goto_0
    cmp-long v3, v1, v4

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    .line 1896
    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 1897
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startSubscribeRetryTimer(JLjava/lang/String;I)V

    goto :goto_1

    :cond_3
    const/4 p0, 0x4

    .line 1899
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    :goto_1
    return-void
.end method

.method private initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .locals 1

    .line 1379
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RETRY_EXP_BACKOFF:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    const/4 v0, 0x0

    if-eq p2, p0, :cond_0

    .line 1380
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1382
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, p0, :cond_1

    .line 1383
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1385
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq p2, p0, :cond_2

    .line 1386
    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    :cond_2
    return-object p1
.end method

.method private isProvisionedValueAvailable(I)Z
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsPresenceEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1093
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isProvisionedValueAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method private synthetic lambda$processConfigured$0(I)V
    .locals 4

    .line 292
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v0, p1, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 293
    const-string v1, "PresenceModule"

    if-eqz v0, :cond_1

    const-string/jumbo v2, "presence"

    invoke-virtual {v0, v2}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 298
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigured: mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 302
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkAndClearPresencePreferences(Ljava/lang/String;I)V

    return-void

    .line 294
    :cond_1
    :goto_0
    const-string/jumbo p0, "processConfigured: no Presence support."

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$processDeregistered$3(Lcom/sec/ims/ImsRegistration;)V
    .locals 8

    .line 404
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 405
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v1

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processDeregistered: profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceModule"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 408
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 410
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 411
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x10

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x11

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0xf

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v2, 0x0

    .line 416
    invoke-virtual {p0, v2, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 417
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v5, 0x0

    .line 418
    iput-object v5, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 419
    iget-object v6, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_0

    .line 420
    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v1, v5}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 424
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 425
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 428
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, p0, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    return-void
.end method

.method private synthetic lambda$processDeregistering$2(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 379
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "processDeregistering:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 385
    :cond_0
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 386
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 388
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getDeregiReason()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(II)V

    :cond_1
    return-void
.end method

.method private synthetic lambda$processRegistered$1(Lcom/sec/ims/ImsRegistration;)V
    .locals 6

    .line 329
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    .line 330
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 331
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mSimCardManager:Lcom/sec/internal/interfaces/ims/core/ISimManager;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processRegistered: mno = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PresenceModule"

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 334
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->readConfig(I)V

    .line 335
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    .line 336
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v4, :cond_0

    .line 338
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->isPublishGzipEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 340
    :cond_0
    iput-object p1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 341
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processRegistered: profile "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 352
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 353
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v3, v1, v4}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    .line 356
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "use_sipuri_for_urigenerator"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 357
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/NameAddr;

    .line 358
    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v2

    sget-object v3, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v2, v3, :cond_1

    .line 359
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-static {}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->getInstance()Lcom/sec/internal/ims/util/UriGeneratorFactory;

    move-result-object p1

    invoke-virtual {v1}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/util/UriGeneratorFactory;->get(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 365
    :cond_2
    const-string/jumbo p0, "processRegistered: impus is empty !!!"

    invoke-static {v3, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static synthetic lambda$setOwnCapabilities$4(Lcom/sec/ims/presence/ServiceTuple;)Z
    .locals 1

    .line 484
    iget-object p0, p0, Lcom/sec/ims/presence/ServiceTuple;->description:Ljava/lang/String;

    const-string v0, "MmtelCallComposer"

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyProvisionedValue(I)V
    .locals 5

    .line 1098
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1101
    :cond_0
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "notifyProvisionedValue"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1102
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1103
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0xf

    .line 1102
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1104
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1105
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    const/16 v2, 0x10

    .line 1104
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1106
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1107
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v1

    long-to-int v1, v1

    mul-int/lit16 v1, v1, 0x3e8

    const/16 v2, 0x15

    .line 1106
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1108
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1109
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v1

    const/16 v2, 0x16

    .line 1108
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1110
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1111
    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result v1

    const/16 v2, 0x17

    .line 1110
    invoke-virtual {v0, p1, v2, v1}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    .line 1112
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v0

    .line 1113
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isGzipEnabled()Z

    move-result p0

    const/16 v1, 0x18

    .line 1112
    invoke-virtual {v0, p1, v1, p0}, Lcom/sec/internal/google/SecImsNotifier;->notifyProvisionedIntValueChanged(III)V

    return-void
.end method

.method private notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .locals 2

    .line 1512
    iget-object p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz p0, :cond_2

    .line 1513
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    .line 1514
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v0

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1516
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_RE_REGISTRATION:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-ne p2, v0, :cond_1

    .line 1517
    iget-boolean p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    if-nez p2, :cond_0

    .line 1518
    sget-object p2, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    const/4 p0, 0x1

    .line 1519
    iput-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_0

    .line 1521
    :cond_0
    const-string p0, "PresenceModule"

    const-string/jumbo p2, "notifyPublishError: maintain last IMS registration"

    invoke-static {p0, p4, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1522
    iput-boolean p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    goto :goto_0

    .line 1525
    :cond_1
    new-instance p1, Lcom/sec/ims/util/SipError;

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onPublishError(Lcom/sec/ims/util/SipError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 1

    .line 2019
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getPhoneId()I

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityAndAvailabilityPublished(II)V

    return-void
.end method

.method private onPublishDisableMode(I)V
    .locals 1

    .line 1506
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V
    .locals 9

    .line 1277
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 1278
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v2, 0x0

    .line 1279
    iput-boolean v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 1280
    const-string v3, "PresenceModule"

    if-nez v0, :cond_0

    .line 1281
    const-string/jumbo p0, "onPublishFailed: mnoStrategy is null."

    invoke-static {v3, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1285
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v4

    const/4 v5, 0x1

    .line 1286
    invoke-interface {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v0

    .line 1288
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPublishFailed - statusCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1289
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1290
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const v7, 0x12090004

    .line 1289
    invoke-static {v7, v6}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1292
    invoke-direct {p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->initPublishFailedInfos(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    move-result-object v1

    .line 1294
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    if-eq v4, v6, :cond_1

    .line 1295
    const-string/jumbo v6, "onPublishFailed - remain etag for Kor"

    invoke-static {v3, p2, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1297
    :cond_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v6, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 1300
    :goto_0
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v6, v7, :cond_2

    .line 1301
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v6, v2}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 1303
    :cond_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v2, v2, v6

    const-wide/16 v6, 0x3e8

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 1366
    :pswitch_0
    const-string/jumbo v2, "onPublishFailed: need to perform IMS re-registration"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 1360
    :pswitch_1
    const-string/jumbo v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH_AFTER"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1361
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    goto/16 :goto_1

    .line 1355
    :pswitch_2
    const-string/jumbo v2, "onPublishFailed: PRESENCE_REQUIRE_RETRY_PUBLISH"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1356
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_1

    .line 1348
    :pswitch_3
    const-string/jumbo v2, "onPublishFailed: vzw default case... "

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1349
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishDisableMode(I)V

    goto :goto_1

    .line 1344
    :pswitch_4
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V

    goto :goto_1

    .line 1340
    :pswitch_5
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getRetryAfter()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V

    goto :goto_1

    .line 1335
    :pswitch_6
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v2

    mul-long/2addr v2, v6

    invoke-direct {p0, v2, v3, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 1336
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    goto :goto_1

    .line 1323
    :pswitch_7
    invoke-direct {p0, v1, v4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 1328
    :cond_3
    :pswitch_8
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v2

    if-lez v2, :cond_4

    .line 1329
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setMinExpires(J)V

    .line 1331
    :cond_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1319
    :pswitch_9
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    goto :goto_1

    .line 1314
    :pswitch_a
    const-string/jumbo v2, "onPublishFailed: PRESENCE_NOT_FOUND"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1315
    invoke-virtual {p0, v5, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    goto :goto_1

    .line 1310
    :pswitch_b
    const-string/jumbo v2, "onPublishFailed: PRESENCE_AT_NOT_REGISTERED"

    invoke-static {v3, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 1305
    :pswitch_c
    invoke-direct {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V

    .line 1373
    :goto_1
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->notifyPublishError(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1375
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPPubInfoToHQM(Landroid/content/Context;ILjava/lang/String;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onPublishNoResponse(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;ZI)V
    .locals 3

    if-nez p2, :cond_1

    .line 1414
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    .line 1416
    const-string/jumbo p2, "ro.ril.svlte1x"

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPublishNoResponse: count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isSVLTE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "PresenceModule"

    invoke-static {v0, p3, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1419
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    invoke-static {p3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 1421
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1423
    :cond_0
    const-string/jumbo p0, "onPublishNoResponse: retry time end for NoResponse... "

    invoke-static {v0, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onPublishNotProvisioned(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .locals 3

    .line 1493
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPublishNotProvisioned: NOT_PROVISIONED count = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PresenceModule"

    invoke-static {v2, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1497
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 1498
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1499
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1500
    invoke-virtual {p0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    const/4 p0, 0x0

    .line 1501
    iput p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    :cond_0
    return-void
.end method

.method private onPublishRequestTimeout(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;I)V
    .locals 8

    .line 1392
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPublishRequestTimeout: PRESENCE_REQUEST_TIMEOUT count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1396
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    invoke-static {p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v2

    .line 1398
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1399
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    const-wide/16 v6, 0x3e8

    if-eqz p1, :cond_1

    mul-long/2addr v2, v6

    .line 1401
    invoke-direct {p0, v2, v3, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1403
    :cond_1
    const-string/jumbo p1, "onPublishRequestTimeout: starting error retry ... "

    invoke-static {v1, p2, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1404
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-eqz p1, :cond_2

    .line 1405
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v0

    mul-long/2addr v0, v6

    invoke-direct {p0, v0, v1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1406
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    :cond_2
    :goto_0
    return-void
.end method

.method private onPublishRequireFull(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;I)Z
    .locals 3

    .line 1429
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1430
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPublishRequireFull: oldError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newError = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1432
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 1433
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1434
    const-string/jumbo p1, "onPublishRequireFull: retry after publish timer expires"

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1435
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    const/4 p0, 0x0

    return p0

    .line 1438
    :cond_1
    iput-boolean v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    .line 1439
    iput-object p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    :cond_2
    return v2
.end method

.method private onPublishRetryAfter(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const-wide/16 v1, 0x3e8

    if-lez v0, :cond_0

    .line 1447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPublishRetryAfter: retry publish after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PresenceModule"

    invoke-static {v0, p4, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    mul-long/2addr p2, v1

    .line 1448
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1450
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_1

    .line 1451
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p1

    mul-long/2addr p1, v1

    long-to-double p1, p1

    const-wide v0, 0x3feb333333333333L    # 0.85

    mul-double/2addr p1, v0

    double-to-long p1, p1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    goto :goto_0

    .line 1453
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide p1

    mul-long/2addr p1, v1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    :goto_0
    return-void
.end method

.method private onPublishRetryExpBackoff(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;JI)V
    .locals 8

    .line 1459
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    const-string v3, "PresenceModule"

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_0

    cmp-long v0, p2, v4

    if-lez v0, :cond_0

    .line 1461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onPublishRetryExpBackoff: Use retryAfter, Retry publish after "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, p4, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    mul-long/2addr p2, v1

    .line 1462
    invoke-direct {p0, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    const/4 p0, 0x0

    .line 1463
    iput p0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    return-void

    .line 1468
    :cond_0
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    const/4 p3, 0x1

    add-int/2addr p2, p3

    iput p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1469
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onPublishRetryExpBackoff: count = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p4, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1471
    iget p2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    invoke-static {p4, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPublishExpBackOffRetryTime(II)J

    move-result-wide v6

    .line 1473
    invoke-static {p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-interface {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1474
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    cmp-long p2, v6, v4

    if-eqz p2, :cond_2

    mul-long/2addr v6, v1

    .line 1476
    invoke-direct {p0, v6, v7, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1477
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    goto :goto_0

    .line 1478
    :cond_2
    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p1, p2, :cond_3

    .line 1479
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p2, "onPublishRetryExpBackoff: no more retry"

    invoke-virtual {p1, p4, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 1480
    invoke-direct {p0, p3, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    goto :goto_0

    .line 1482
    :cond_3
    const-string/jumbo p1, "onPublishRetryExpBackoff: starting error retry ... "

    invoke-static {v3, p4, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1484
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide p1

    cmp-long p1, p1, v4

    if-eqz p1, :cond_4

    .line 1485
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide p1

    mul-long/2addr p1, v1

    invoke-direct {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startRetryPublishTimer(JI)V

    .line 1487
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    :cond_4
    :goto_0
    return-void
.end method

.method private onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 9

    .line 1772
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1773
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    .line 1774
    const-string v2, "PresenceModule"

    if-nez v1, :cond_0

    .line 1775
    const-string/jumbo p0, "onSubscribeFailed: mnoStrategy is null."

    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1779
    :cond_0
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handlePresenceFailure(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;Z)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    move-result-object v1

    .line 1780
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-object v1, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastSubscribeStatusCode:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    .line 1782
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSubscribeFailed - statusCode: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1784
    new-instance v3, Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Lcom/sec/ims/presence/PresenceInfo;-><init>(Ljava/lang/String;I)V

    .line 1785
    new-instance v5, Lcom/sec/ims/presence/ServiceTuple;

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v6, v6

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1786
    invoke-virtual {v3, v4}, Lcom/sec/ims/presence/PresenceInfo;->setFetchState(Z)V

    .line 1788
    sget-object v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$presence$PresenceResponse$PresenceStatusCode:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7

    const/4 v7, 0x2

    if-eq v5, v7, :cond_6

    const/4 v7, 0x3

    if-eq v5, v7, :cond_4

    const/4 v7, 0x4

    if-eq v5, v7, :cond_3

    const/4 v7, 0x6

    if-eq v5, v7, :cond_1

    const/16 v4, 0xf

    if-eq v5, v4, :cond_8

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_1

    .line 1831
    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1850
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeNoResponse(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_1

    .line 1835
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v5, :cond_2

    .line 1836
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_2

    .line 1837
    invoke-interface {v2, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    :cond_2
    const/4 v2, 0x5

    .line 1840
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1841
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getRetryTime()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    const/16 v2, 0x8

    .line 1842
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_1

    .line 1792
    :cond_3
    :pswitch_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->retrySubscription()V

    .line 1793
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->handleExpBackOffRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto/16 :goto_1

    .line 1799
    :cond_4
    :pswitch_3
    invoke-virtual {v3}, Lcom/sec/ims/presence/PresenceInfo;->clearService()V

    .line 1800
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSubscribeFailed - PRESENCE_NO_SUBSCRIBE: code : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1801
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " errorReason : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1800
    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1802
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v2

    const/16 v4, 0x194

    if-ne v2, v4, :cond_5

    const-string v2, "isbot"

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1804
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-direct {v2, v4, v5, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_0

    .line 1806
    :cond_5
    new-instance v2, Lcom/sec/ims/presence/ServiceTuple;

    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_NON_RCS_USER:I

    int-to-long v4, v4

    invoke-direct {v2, v4, v5, v8, v8}, Lcom/sec/ims/presence/ServiceTuple;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 1809
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 1846
    :cond_6
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addPendingSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    goto :goto_1

    .line 1813
    :cond_7
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_8

    .line 1814
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->clearCapabilitiesCache(I)V

    .line 1815
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1816
    invoke-virtual {p0, v6, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1817
    const-string/jumbo v4, "trigger OMA sync for 403 not provisioned"

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1818
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    goto :goto_1

    .line 1823
    :cond_8
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_9

    .line 1824
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->triggerOmadmTreeSync(Landroid/content/Context;I)V

    .line 1826
    :cond_9
    const-string/jumbo v4, "onSubscribeFailed: for 403 forbidden response"

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1827
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    .line 1857
    :goto_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_a

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;->PRESENCE_NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceStatusCode;

    if-eq v1, v2, :cond_a

    .line 1859
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetSubscribeRetryCount(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;I)V

    .line 1862
    :cond_a
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_b

    .line 1863
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v2

    .line 1864
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1866
    new-instance v4, Lcom/sec/ims/util/SipError;

    .line 1867
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v5

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v7}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    .line 1866
    invoke-interface {v2, v6, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->onSubscribeError(ILcom/sec/ims/util/SipError;)V

    .line 1871
    :cond_b
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-virtual {v2, v3, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;->onNewPresenceInformation(Lcom/sec/ims/presence/PresenceInfo;ILcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 1873
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p1

    invoke-static {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->sendRCSPSubInfoToHQM(Landroid/content/Context;II)V

    .line 1874
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x12090005

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private onSubscribeNoResponse(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 9

    .line 1928
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1929
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1931
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result v1

    const-string v2, "PresenceModule"

    if-nez v1, :cond_2

    const/4 v1, 0x5

    .line 1932
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1933
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->retrySubscription()V

    .line 1935
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_0

    .line 1936
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getTimestamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 1937
    invoke-virtual {v7, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v7

    .line 1936
    invoke-interface {v1, v5, v6, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calThrottledPublishRetryDelayTime(JJ)J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v3

    .line 1938
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onSubscribeNoResponse: retry in "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    cmp-long v0, v5, v3

    const/16 v1, 0x8

    if-lez v0, :cond_1

    .line 1940
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 1942
    :cond_1
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1945
    :cond_2
    const-string/jumbo p0, "onSubscribeNoResponse: no more retry"

    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x4

    .line 1946
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    const/4 p0, 0x0

    .line 1947
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRetryCount(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private processConfigured(I)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processDeregistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private processRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/ims/ImsRegistration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetPublishErrorHandling(I)V
    .locals 3

    .line 2158
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    .line 2159
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitReRegistration:Z

    .line 2160
    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLimitImmediateRetry:Z

    const/4 v2, 0x0

    .line 2161
    iput-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOldPublishError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 2162
    invoke-direct {p0, v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    return-void
.end method

.method private resetSubscribeRetryCount(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;I)V
    .locals 1

    .line 1953
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRetryCount()I

    move-result p0

    if-lez p0, :cond_0

    .line 1954
    const-string p0, "PresenceModule"

    const-string/jumbo v0, "resetSubscribeRetryCount"

    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    .line 1955
    invoke-virtual {p1, p0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRetryCount(I)V

    :cond_0
    return-void
.end method

.method private setBadEventProgress(ZI)V
    .locals 2

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBadEventProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2095
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    return-void
.end method

.method private setPublishNotFoundProgress(ZI)V
    .locals 2

    .line 2107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 2108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPublishNotFoundProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotFoundProgress:Z

    .line 2113
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    :cond_1
    return-void
.end method

.method private setServiceVersion(I)V
    .locals 4

    .line 1983
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1984
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v1

    .line 1985
    iget-object v2, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    const-string/jumbo v3, "xbotmessage"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1986
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-interface {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->updateServiceVersion(ILjava/util/HashMap;)V

    .line 1987
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setServiceVersion: xbotmessage "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PresenceModule"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private startBadEventTimer(JZI)V
    .locals 5

    .line 1532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startBadEventTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p4, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1534
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1535
    const-string/jumbo p0, "startBadEventTimer: BadEvent in progress"

    invoke-static {v1, p4, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1539
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1540
    invoke-direct {p0, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1544
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.bad_event_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1545
    const-string/jumbo v1, "sim_slot_id"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 1546
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1547
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1548
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x2000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    .line 1551
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p4}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    const/4 p1, 0x1

    .line 1553
    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    if-eqz p3, :cond_2

    .line 1555
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    :cond_2
    return-void
.end method

.method private startPublishTimer(I)V
    .locals 7

    .line 646
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-eqz v0, :cond_0

    .line 647
    const-string/jumbo v0, "startPublishTimer: PublishTimer is already running. Stopping it."

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 648
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 651
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v2

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 654
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide v2

    .line 657
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startPublishTimer: PublishTimer "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 660
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.publish_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 661
    const-string/jumbo v1, "sim_slot_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x2000000

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    .line 666
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v0, p0, v2, v3}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    return-void
.end method

.method private startRetryPublishTimer(JI)V
    .locals 7

    .line 1600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRetryPublishTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1602
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 1604
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1605
    invoke-direct {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    .line 1609
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    cmp-long v3, p1, v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    iput-boolean v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    .line 1611
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.internal.ims.servicemodules.presence.retry_publish"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v3, "sim_slot_id"

    invoke-virtual {v2, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1613
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/high16 v6, 0x2000000

    invoke-static {v5, v4, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    .line 1617
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v2, v3, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1620
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1621
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    :cond_2
    return-void
.end method

.method private startSubscribeRetryTimer(JLjava/lang/String;I)V
    .locals 3

    .line 1638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startSubscribeRetryTimer: millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subscriptionId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1642
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.presence.retry_subscribe"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "urn:subscriptionid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1649
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1650
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1651
    const-string v1, "KEY_SUBSCRIPTION_ID"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1652
    const-string v1, "KEY_PHONE_ID"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1654
    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x2000000

    invoke-static {p4, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p4

    .line 1657
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v0, p4, p1, p2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    .line 1658
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {p0, p3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private stopBadEventTimer(I)V
    .locals 2

    .line 1561
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 1563
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 1564
    const-string/jumbo p0, "stopBadEventTimer: BadEventExitTimer is not running."

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1568
    :cond_0
    const-string/jumbo v0, "stopBadEventTimer"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1570
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1571
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    .line 1573
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 1574
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    return-void
.end method

.method private stopPublishTimer(I)V
    .locals 3

    .line 670
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    .line 671
    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 672
    const-string/jumbo p0, "stopPublishTimer: PublishTimer is not running."

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 675
    :cond_0
    const-string/jumbo v2, "stopPublishTimer:"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 678
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPollingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private stopRetryPublishTimer(I)V
    .locals 2

    .line 1627
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 1628
    const-string/jumbo p0, "stopRetryPublishTimer: mRetryPublishIntent is null."

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1631
    :cond_0
    const-string/jumbo v0, "stopRetryPublishTimer"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 1634
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private stopSubscribeRetryTimer(I)V
    .locals 4

    .line 1662
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1663
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1665
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1666
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1667
    invoke-static {v1, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1668
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 1669
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mSubscribeRetryList:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1670
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v1, 0x4

    .line 1671
    invoke-virtual {v2, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1672
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1675
    :cond_1
    const-string p0, "PresenceModule"

    const-string/jumbo v0, "stopSubscribeRetryTimer"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private subscribe(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "II)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move/from16 v9, p4

    move/from16 v10, p5

    .line 757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: uri list "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v11, "PresenceModule"

    invoke-static {v11, v9, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 758
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "subscribe: request type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v9, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 764
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v2, v3, :cond_0

    const/16 v3, 0x8

    .line 765
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 766
    invoke-direct {v0, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 769
    :cond_0
    invoke-virtual {v0, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 773
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 776
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 777
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 778
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/util/ImsUri;

    .line 779
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->hasSubscription(Lcom/sec/ims/util/ImsUri;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 780
    const-string/jumbo v4, "subscribe: subscription has been already sent"

    invoke-static {v11, v9, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "subscribe: subscribed uri "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v11, v9, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 782
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 785
    :cond_2
    invoke-static/range {p4 .. p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    const-string v5, "list_sub_uri_translation"

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 786
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v4

    invoke-virtual {v0, v3, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v5

    iget-object v6, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 787
    invoke-virtual {v7, v9}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/util/UriGenerator;

    move/from16 v8, p4

    .line 786
    invoke-static/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    .line 785
    :cond_3
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 790
    :cond_4
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 791
    invoke-interface {v1, v14}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 794
    :cond_5
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_6

    .line 795
    const-string/jumbo v0, "subscribe: no URI to subscribe."

    invoke-static {v11, v9, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 799
    :cond_6
    new-instance v3, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUriAll(Ljava/util/Set;)V

    .line 801
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setExpiry(I)V

    .line 802
    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    const/4 v2, 0x0

    .line 803
    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setSingleFetch(Z)V

    .line 804
    invoke-virtual {v3, v9}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 806
    iget-object v2, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v2, v4, :cond_7

    .line 807
    invoke-virtual {v3, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addDropUriAll(Ljava/util/Set;)V

    .line 809
    :cond_7
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->clear()V

    .line 811
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    .line 813
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe internalRequestId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v9, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz v10, :cond_8

    .line 816
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->replaceSubscribeResponseCbSubsId(ILjava/lang/String;)V

    .line 819
    :cond_8
    iget-object v1, v12, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v1, :cond_9

    .line 820
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    .line 821
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 822
    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v6

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v7

    move-object v0, v2

    move-object v1, v13

    move/from16 v2, p2

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, p4

    .line 821
    invoke-interface/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    :cond_9
    return-void
.end method

.method private unpublish(II)V
    .locals 6

    .line 952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unpublish: deregiReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 953
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 954
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 955
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {p0, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 957
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    .line 958
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    if-eqz v0, :cond_1

    .line 960
    invoke-static {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->isRegProhibited(Lcom/sec/ims/ImsRegistration;I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    .line 961
    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1

    .line 962
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-interface {p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->unpublish(I)V

    .line 965
    :cond_1
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    const-wide/16 v3, 0x0

    if-eqz p2, :cond_2

    .line 966
    const-string/jumbo p2, "unpublish: remain etag for Kor"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 967
    iget-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    .line 968
    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_0

    .line 970
    :cond_2
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne p2, v5, :cond_4

    if-eqz v0, :cond_5

    .line 972
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p2

    .line 973
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 974
    invoke-interface {p2, v0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isPdnConnected(Lcom/sec/ims/settings/ImsProfile;I)Z

    move-result p2

    if-nez p2, :cond_3

    .line 975
    const-string/jumbo p2, "unpublish: PDN already disconnected"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 976
    iget-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    cmp-long p2, v0, v3

    if-lez p2, :cond_5

    .line 977
    iput-wide v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    goto :goto_0

    .line 980
    :cond_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    goto :goto_0

    .line 984
    :cond_4
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    .line 987
    :cond_5
    :goto_0
    iget-boolean p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-eqz p2, :cond_6

    .line 988
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "UnPublish"

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 989
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",UNPUB"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const v0, 0x12090002

    invoke-static {v0, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    :cond_6
    const/4 p2, 0x0

    .line 991
    iput-boolean p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 993
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p2

    if-nez p2, :cond_7

    .line 994
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, v3, v4, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 997
    :cond_7
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/google/SecImsNotifier;->onUnPublish(I)V

    return-void
.end method

.method private updateFeatures(I)V
    .locals 4

    .line 309
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    const-wide/16 v1, 0x0

    aput-wide v1, v0, p1

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "presence"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 311
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getDefaultDisc()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PRESENCE_DISCOVERY:I

    int-to-long v1, v1

    aput-wide v1, v0, p1

    .line 314
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isSocialPresenceSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide v0, p0, p1

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_SOCIAL_PRESENCE:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    aput-wide v0, p0, p1

    :cond_0
    return-void
.end method


# virtual methods
.method public addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V
    .locals 0

    .line 827
    invoke-static {p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->addPublishResponseCallback(ILandroid/telephony/ims/stub/RcsCapabilityExchangeImplBase$PublishResponseCallback;)V

    return-void
.end method

.method public buildPresenceInfoForThirdParty(I)V
    .locals 4

    .line 2080
    const-string v0, "PresenceModule"

    const-string v1, "buildPresenceInfoForThirdParty"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2082
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v0

    .line 2083
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2084
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2087
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/presence/ServiceTuple;

    .line 2088
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v3, v2}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    goto :goto_0

    .line 2090
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method checkModuleReady(I)Z
    .locals 3

    .line 1995
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PresenceModule"

    if-nez v0, :cond_0

    .line 1996
    const-string p0, "checkModuleReady: module not running"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 2000
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2001
    const-string p0, "checkModuleReady: not ready to request"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 2005
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2006
    const-string p0, "checkModuleReady: mnoStrategy is null."

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 2010
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_3

    .line 2011
    const-string p0, "checkModuleReady: mUriGenerator is null"

    invoke-static {v2, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method clearWakeLock()Z
    .locals 3

    .line 1697
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1701
    :cond_0
    monitor-enter v0

    .line 1702
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1703
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1705
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/16 v1, 0xd

    .line 1706
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1707
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 1708
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public deRegisterService(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 2044
    const-string v0, "PresenceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deRegisterService: serviceIdList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2048
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2049
    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2050
    aget-object v4, v2, v0

    .line 2051
    aget-object v2, v2, v3

    const/4 v5, 0x0

    .line 2052
    invoke-static {v4, v2, v5}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2055
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter v4

    .line 2056
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->removeService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 2057
    monitor-exit v4

    move v1, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 2060
    :cond_0
    const-string v2, "PresenceModule"

    const-string v3, "deRegisterService: not a valid service tuple"

    invoke-static {v2, p2, v3}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2065
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2066
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public dump()V
    .locals 2

    .line 2175
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

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 2176
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 2177
    const-string v0, "Publish History: "

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {v0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 2179
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    if-eqz v0, :cond_0

    .line 2181
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2184
    :cond_1
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public getBadEventProgress(I)Z
    .locals 0

    .line 2099
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventProgress:Z

    return p0
.end method

.method public getListSubExpiry(I)I
    .locals 2

    .line 1054
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getPollListSubExp(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1055
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListSubExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getListSubMaxUri(I)I
    .locals 2

    .line 1047
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1048
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getListSubMaxUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 2

    .line 683
    const-string v0, "PresenceModule"

    const-string v1, "getOwnPresenceInfo"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 684
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    return-object p0
.end method

.method public getParalysed(I)Z
    .locals 0

    .line 1020
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    return p0
.end method

.method public getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
    .locals 0

    .line 1005
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    return-object p0
.end method

.method public getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 0

    .line 689
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method public getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;
    .locals 1

    .line 694
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    .line 695
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 694
    invoke-virtual {v0, p1, p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->getPresenceInfoByContactId(Ljava/lang/String;Ljava/util/List;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    return-object p0
.end method

.method getPresenceModuleInfo(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;
    .locals 0

    .line 1001
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    return-object p0
.end method

.method public getPublishExpiry(I)I
    .locals 4

    .line 1032
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1034
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublishExpiry: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getPublishSourceThrottle(I)I
    .locals 2

    .line 1040
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v0

    long-to-int p0, v0

    mul-int/lit16 p0, p0, 0x3e8

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1041
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublishSourceThrottle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getPublishTimer(I)I
    .locals 2

    .line 1025
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPublishTimerValue(I)J

    move-result-wide v0

    long-to-int p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1026
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPublishTimer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return p0
.end method

.method public getRegiInfoUpdater(I)Z
    .locals 1

    .line 2166
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public getServicesRequiring()[Ljava/lang/String;
    .locals 0

    .line 219
    const-string/jumbo p0, "presence"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSupportFeature(I)J
    .locals 0

    .line 2140
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->mEnabledFeatures:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 0

    .line 1009
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method public handleIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1973
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->handleMessage(Landroid/os/Message;)V

    .line 1974
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 1975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceUpdate:Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;

    invoke-static {p1, p0, v1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceEvent;->handleEvent(Landroid/os/Message;Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;Lcom/sec/internal/ims/servicemodules/presence/PresenceUpdate;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1978
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleMessage: unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public init()V
    .locals 5

    .line 232
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->init()V

    .line 233
    const-string v0, "init"

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getPresenceHandler()Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0xa

    const/4 v3, 0x0

    .line 236
    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0x10

    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceNotifyInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/16 v2, 0x11

    invoke-interface {v0, p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->registerForPresenceNotifyStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    const/4 v0, 0x0

    .line 243
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v0, v2, :cond_0

    .line 244
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadPublishTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    .line 245
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadBadEventTimestamp(I)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 250
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mModuleHandler:Landroid/os/Handler;

    return-void
.end method

.method public isListSubGzipEnabled(I)I
    .locals 2

    .line 1074
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isProvisionedValueAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->isGzipEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    .line 1075
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isListSubGzipEnabled: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PresenceModule"

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public isOwnCapPublished()Z
    .locals 1

    .line 2118
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 2119
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    return p0
.end method

.method public isOwnPresenceInfoHasTuple(IJ)Z
    .locals 0

    .line 1080
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object p0

    .line 1081
    invoke-static {p2, p3}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p1

    .line 1082
    iget-object p1, p1, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPublishNotFoundProgress(I)Z
    .locals 0

    .line 2103
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotFoundProgress:Z

    return p0
.end method

.method public isReadyToRequest(I)Z
    .locals 2

    .line 453
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_0

    .line 455
    const-string p0, "PresenceModule"

    const-string v0, "isReadyToRequest: mnoStrategy null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getParalysed(I)Z

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isPresenceReadyToRequest(ZZ)Z

    move-result p0

    return p0
.end method

.method public loadThirdPartyServiceTuples(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/presence/ServiceTuple;",
            ">;)V"
        }
    .end annotation

    .line 2071
    const-string v0, "PresenceModule"

    const-string v1, "loadThirdPartyServiceTuples"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2072
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/presence/ServiceTuple;

    .line 2073
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    monitor-enter v1

    .line 2074
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2075
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method onBadEventTimeout(I)V
    .locals 2

    .line 1578
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onBadEventTimeout: "

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBadEventIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 1581
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    const/4 v0, 0x0

    .line 1582
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onConfigured(I)V
    .locals 2

    .line 285
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onConfigured:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processConfigured(I)V

    return-void
.end method

.method onDefaultSmsPackageChanged()V
    .locals 3

    .line 443
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onDefaultSmsPackageChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 444
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 445
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getBadEventProgress(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 446
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onDeregistered(Lcom/sec/ims/ImsRegistration;I)V
    .locals 1

    .line 397
    invoke-super {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onDeregistered(Lcom/sec/ims/ImsRegistration;I)V

    .line 398
    const-string p2, "PresenceModule"

    const-string/jumbo v0, "onDeregistered:"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method public onDeregistering(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 372
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onDeregistering:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processDeregistering(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method onNewNotifyInfo(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;I)V
    .locals 8

    .line 1117
    const-string/jumbo v0, "onNewNotifyInfo:"

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1119
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1120
    invoke-static {v0, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1124
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1126
    const-string/jumbo p0, "onNewNotifyInfo: no subscription"

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1130
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getPidfXmls()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeNotifyCapabilitiesUpdate(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V

    .line 1132
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1133
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1134
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getUriTerminatedReason()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, p2, v3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeResourceTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/util/List;)V

    .line 1137
    :cond_2
    const-string/jumbo v1, "terminated"

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1138
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionStateReason()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)V

    .line 1141
    :cond_3
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 1142
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceNotifyInfo;->getSubscriptionId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method onNewNotifyStatus(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V
    .locals 8

    .line 1147
    const-string/jumbo v0, "onNewNotifyStatus:"

    const-string v1, "PresenceModule"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 1150
    invoke-static {v0, p2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1154
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1156
    const-string/jumbo p0, "onNewNotifyStatus: no subscription"

    invoke-static {v1, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1160
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeTerminatedReason()Ljava/lang/String;

    move-result-object v5

    const-wide/16 v6, 0x0

    move v4, p2

    invoke-static/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeTerminated(Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;J)V

    .line 1162
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1163
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSubscribeId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->removeSubscribeResponseCallback(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method onPeriodicPublish(I)V
    .locals 2

    .line 1679
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onPeriodicPublish:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1680
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;I)V

    .line 1681
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    return-void
.end method

.method onPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;I)V
    .locals 10

    .line 1172
    const-string v0, "PresenceModule"

    if-nez p1, :cond_0

    .line 1173
    const-string/jumbo p0, "onPublishComplete: response is null"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1176
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPublishComplete: success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1177
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publish - completed, response = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 1178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x12090003

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 1180
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 1182
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1184
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 1186
    iput-boolean v3, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 1187
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    const/4 v2, 0x0

    .line 1188
    invoke-virtual {p0, v2, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1189
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 1193
    instance-of v4, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v4, :cond_1

    .line 1194
    move-object v4, p1

    check-cast v4, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEtag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " getExpiresTimer:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1195
    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1199
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getEtag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->getExpiresTimer()J

    move-result-wide v7

    invoke-virtual {v5, v6, v7, v8, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishETag(Ljava/lang/String;JI)V

    .line 1200
    invoke-virtual {v4}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v4

    .line 1201
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 1202
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPublishComplete(), isRefresh : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    move v4, v2

    .line 1205
    :goto_0
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    .line 1206
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishExpBackOffRetryCount:I

    .line 1207
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishRequestTimeout:I

    .line 1208
    iput v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNoResponseCount:I

    .line 1213
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v2, v5, :cond_2

    .line 1214
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPublishRegistrants:Lcom/sec/internal/helper/RegistrantList;

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v5}, Lcom/sec/internal/helper/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1216
    sget-object v2, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->VOLTE_PROVISIONING:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5, v3}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->set(Landroid/content/Context;I)V

    .line 1218
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->needUnpublish(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1219
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    .line 1228
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v2, :cond_4

    .line 1229
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v4

    invoke-interface {v2, v4, v3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onMediaReady(ZZI)V

    .line 1231
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1232
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getPendingSubscription()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1233
    const-string/jumbo v4, "onPublishComplete, pending subscription"

    invoke-static {v0, p2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1234
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    .line 1235
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1237
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->clearPendingSubscription()V

    .line 1240
    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRcsProfile()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_9

    .line 1241
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPublishComplete,start PublishTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1242
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startPublishTimer(I)V

    goto :goto_3

    .line 1245
    :cond_8
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v0, :cond_9

    .line 1246
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    invoke-direct {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onPublishFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;I)V

    .line 1249
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v0, :cond_a

    .line 1250
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onEABPublishComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    .line 1252
    :cond_a
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v0

    const/16 v1, 0x2c4

    if-ne v0, v1, :cond_b

    .line 1253
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {p2, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    goto :goto_4

    .line 1255
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishNetworkResponse(ILandroid/content/Context;ILjava/lang/String;)V

    .line 1258
    :goto_4
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    if-eqz v0, :cond_c

    .line 1259
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;

    .line 1260
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PublishResponse;->isRefresh()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1261
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v4

    .line 1262
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v6

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, p2

    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/google/SecImsNotifier;->onPublishUpdated(IILjava/lang/String;ILjava/lang/String;)V

    .line 1266
    :cond_c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1267
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1268
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "RCPC"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_5

    .line 1270
    :cond_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "RCPF"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1272
    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo v1, "overwrite_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1273
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string p1, "DRCS"

    invoke-static {p2, p0, p1, v0}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    .line 322
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->onRegistered(Lcom/sec/ims/ImsRegistration;)V

    .line 323
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onRegistered:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->processRegistered(Lcom/sec/ims/ImsRegistration;)V

    return-void
.end method

.method onRetryPublishTimeout(I)V
    .locals 2

    .line 1588
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onRetryPublishTimeout"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 1591
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 1592
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1593
    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 1595
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onServiceSwitched(ILandroid/content/ContentValues;)V
    .locals 1

    .line 226
    const-string p2, "PresenceModule"

    const-string/jumbo v0, "onServiceSwitched:"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->updateFeatures(I)V

    return-void
.end method

.method public onSimChanged(I)V
    .locals 4

    .line 434
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onSimChanged:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->clearPresenceInfo(I)V

    const/4 v0, 0x0

    .line 437
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setBadEventProgress(ZI)V

    .line 438
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveBadEventTimestamp(JI)V

    .line 439
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setPublishNotFoundProgress(ZI)V

    return-void
.end method

.method onSubscribeComplete(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V
    .locals 6

    .line 1716
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v0

    .line 1717
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSubscribeComplete: Uri "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PresenceModule"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 1719
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->clearWakeLock()Z

    .line 1721
    invoke-static {v0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1723
    const-string/jumbo p0, "onSubscribeComplete: mnoStrategy is null."

    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1727
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v4

    .line 1728
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v5

    .line 1727
    invoke-static {v1, v3, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->onSubscribeNetworkResponse(Ljava/lang/String;Landroid/content/Context;IILjava/lang/String;)V

    .line 1730
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    .line 1731
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1732
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->onSubscribeFailed(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;)V

    goto :goto_0

    .line 1734
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v1

    if-lez v1, :cond_3

    .line 1736
    invoke-virtual {p1, v3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1737
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getRequestType()Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v4, v5, :cond_2

    .line 1738
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v4, :cond_2

    .line 1739
    const-string/jumbo v4, "onSubscribeComplete: recover polling"

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1740
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    invoke-interface {v4, v3, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onPollingRequested(ZI)V

    .line 1743
    :cond_2
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->isSingleFetch()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v4, v5, :cond_4

    .line 1744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSubscribeComplete: subscription will be terminated after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v2, 0x9

    .line 1745
    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    add-int/2addr v1, v3

    int-to-long v1, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v1, v4

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    .line 1751
    invoke-virtual {p1, v1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 1752
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v1, v2, :cond_4

    .line 1753
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetSubscribeRetryCount(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;I)V

    .line 1758
    :cond_4
    :goto_0
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 1759
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1760
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result v1

    const/16 v2, 0x193

    if-eq v1, v2, :cond_6

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->getSipError()I

    move-result p2

    const/16 v1, 0x194

    if-ne p2, v1, :cond_5

    goto :goto_1

    .line 1763
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "RCSF"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    .line 1761
    :cond_6
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "RCSC"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1765
    :goto_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "overwrite_mode"

    invoke-virtual {p1, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1766
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const-string p2, "DRCS"

    invoke-static {v0, p0, p2, p1}, Lcom/sec/internal/ims/diagnosis/ImsLogAgentUtil;->storeLogToAgent(ILandroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 1768
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->cleanExpiredSubscription()V

    return-void
.end method

.method onSubscribeListRequested(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V
    .locals 7

    .line 1904
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1905
    monitor-enter v0

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, v0

    move-object v4, p1

    move v5, p2

    move v6, p3

    .line 1906
    :try_start_0
    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->subscribe(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)V

    .line 1907
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onSubscribeRequested(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;)V
    .locals 2

    .line 1712
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useAnonymousFetch()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->subscribe(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;Z)V

    return-void
.end method

.method onSubscribeRetry(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 8

    .line 1911
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v7

    .line 1912
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "onSubscribeRetry"

    invoke-static {v0, v7, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1913
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateTimestamp()V

    .line 1915
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1916
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getUriList()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1917
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-le v0, v2, :cond_0

    .line 1918
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    .line 1919
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    .line 1920
    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v5

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getExpiry()I

    move-result v6

    const/4 p0, 0x1

    move-object v0, v2

    move v2, p0

    .line 1919
    invoke-interface/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V

    goto :goto_0

    .line 1922
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 1923
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    move v5, v7

    .line 1922
    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method onSubscriptionTerminated(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V
    .locals 10

    .line 2123
    const-string v0, "PresenceModule"

    if-nez p1, :cond_0

    .line 2124
    const-string/jumbo p0, "onSubscriptionTerminated: subscription is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2127
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2128
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getDropUris()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2129
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSubscriptionTerminated: update capabilities for dropped "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " uris"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    if-eqz v1, :cond_1

    .line 2132
    sget p0, Lcom/sec/ims/options/Capabilities;->FEATURE_NOT_UPDATED:I

    int-to-long v3, p0

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getPhoneId()I

    move-result v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;->onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public publish(Lcom/sec/ims/presence/PresenceInfo;I)V
    .locals 1

    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V

    return-void
.end method

.method publish(Lcom/sec/ims/presence/PresenceInfo;ILjava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    .line 835
    invoke-static/range {p2 .. p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    .line 836
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v5

    const-string v6, "PresenceModule"

    if-eqz v5, :cond_f

    if-eqz v4, :cond_f

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v5, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez v5, :cond_0

    goto/16 :goto_7

    .line 845
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "publish: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v2, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 846
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    invoke-virtual {v0, v7, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 847
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/16 v8, 0xf

    if-nez v5, :cond_1

    .line 848
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 850
    :cond_1
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 851
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 853
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v9, v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastPublishTimestamp:J

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 854
    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottlePublish()J

    move-result-wide v11

    .line 853
    invoke-interface {v4, v9, v10, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calThrottledPublishRetryDelayTime(JJ)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v5, v9, v11

    const/4 v13, 0x0

    if-lez v5, :cond_3

    .line 856
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 857
    invoke-virtual {v0, v8, v2, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 859
    :cond_2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    .line 864
    :cond_3
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 865
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v9, v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    if-eqz v9, :cond_4

    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v9

    cmp-long v9, v9, v11

    if-eqz v9, :cond_4

    .line 866
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v9, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-wide v9, v9, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mLastBadEventTimestamp:J

    iget-object v14, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 867
    invoke-virtual {v14, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v14}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getBadEventExpiry()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    add-long/2addr v9, v14

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    sub-long/2addr v9, v14

    cmp-long v5, v9, v11

    if-lez v5, :cond_4

    .line 869
    const-string/jumbo v5, "publish: restart BadEventTimer"

    invoke-static {v6, v2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    invoke-direct {v0, v9, v10, v13, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->startBadEventTimer(JZI)V

    .line 874
    :cond_4
    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v5, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getTdelayPublish()J

    move-result-wide v9

    invoke-interface {v4, v9, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isTdelay(J)J

    move-result-wide v4

    cmp-long v9, v4, v11

    if-eqz v9, :cond_6

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "publish: retry after "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "ms"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 877
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 878
    invoke-virtual {v0, v8, v2, v13, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 880
    :cond_5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void

    .line 885
    :cond_6
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/sec/internal/ims/util/ConfigUtil;->isGoogDmaPackageInuse(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    .line 886
    invoke-static {v4, v2}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsPresenceEnabled(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 887
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRequestPublishToAosp:Z

    if-nez v1, :cond_7

    goto :goto_2

    .line 896
    :cond_7
    const-string/jumbo v0, "publish: already published, return"

    invoke-static {v6, v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    .line 888
    :cond_8
    :goto_2
    const-string/jumbo v1, "publish: call onRequestPublishCapabilities, return"

    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 889
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v3, "Publish - call onRequestPublishCapabilities"

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 890
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->removePublishedServiceList(I)V

    .line 892
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object v1

    invoke-virtual {v1, v2, v7}, Lcom/sec/internal/google/SecImsNotifier;->onRequestPublishCapabilities(II)V

    .line 894
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRequestPublishToAosp:Z

    :goto_3
    return-void

    .line 901
    :cond_9
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->checkIfValidEtag(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "valid etag, setting to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPublishETag(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 903
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->getPublishETag(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    goto :goto_4

    .line 905
    :cond_a
    const-string v4, "not valid etag"

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v4, 0x0

    .line 906
    invoke-virtual {v1, v4}, Lcom/sec/ims/presence/PresenceInfo;->setEtag(Ljava/lang/String;)V

    .line 909
    :goto_4
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4}, Lcom/sec/ims/presence/PresenceInfo;->getServiceList()Ljava/util/List;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->getExtendedPublishTimerCond(ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 910
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4, v7}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 911
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v4

    iget-object v8, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v8, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimerExtended()J

    move-result-wide v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 912
    invoke-virtual {v1, v7}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    goto :goto_5

    .line 914
    :cond_b
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v4, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v4, v13}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 915
    invoke-virtual/range {p1 .. p1}, Lcom/sec/ims/presence/PresenceInfo;->getMinExpires()J

    move-result-wide v4

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v7, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishTimer()J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 916
    invoke-virtual {v1, v13}, Lcom/sec/ims/presence/PresenceInfo;->setExtendedTimerFlag(Z)V

    .line 919
    :goto_5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 920
    const-string/jumbo v4, "publish: set pidfXml"

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 921
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "publish: pidfXml from AOSP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v2, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 922
    invoke-virtual {v1, v3}, Lcom/sec/ims/presence/PresenceInfo;->setPidf(Ljava/lang/String;)V

    .line 925
    :cond_c
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 926
    sget v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    .line 927
    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadDisplayText(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 928
    const-string v3, "displaytext exist"

    invoke-static {v6, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 929
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v3, v3

    iget-object v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v5, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadDisplayText(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/ims/presence/ServiceTuple;->setDisplayText(JLjava/lang/String;)V

    goto :goto_6

    .line 931
    :cond_d
    const-string v3, "not valid displaytext"

    invoke-static {v6, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 934
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    .line 936
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setServiceVersion(I)V

    .line 937
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v1, v4, v2}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V

    .line 939
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    if-eqz v1, :cond_e

    .line 940
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v13, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mFirstPublish:Z

    .line 942
    :cond_e
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v1, "Publish - sent"

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",PUB-SENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v1, 0x12090001

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    .line 837
    :cond_f
    :goto_7
    const-string/jumbo v1, "publish: not ready to publish"

    invoke-static {v6, v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 838
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_10

    .line 839
    invoke-direct {v0, v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopRetryPublishTimer(I)V

    .line 841
    :cond_10
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    const/16 v1, 0x9

    invoke-static {v2, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->notifyPublishCommandError(ILandroid/content/Context;I)V

    return-void
.end method

.method public readConfig(I)V
    .locals 3

    .line 1961
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "PresenceModule"

    if-nez v0, :cond_0

    .line 1962
    const-string/jumbo p0, "readConfig: not ready"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 1965
    :cond_0
    const-string/jumbo v0, "readConfig"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1966
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->load()V

    .line 1967
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRetryPublishTimer()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/ims/presence/PresenceInfo;->setExpireTime(J)V

    .line 1968
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->notifyProvisionedValue(I)V

    return-void
.end method

.method public registerCapabilityEventListener(Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mListener:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;

    return-void
.end method

.method public registerService(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 2024
    const-string v0, "PresenceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerService: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 2025
    invoke-static {p1, p2, v0}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2027
    const-string p2, "PresenceModule"

    const-string/jumbo v0, "registerService: valid service tuple"

    invoke-static {p2, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 2028
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-boolean p2, p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    if-nez p2, :cond_0

    .line 2029
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mServiceTupleList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2031
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    monitor-enter p2

    .line 2032
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->addService(Lcom/sec/ims/presence/ServiceTuple;)V

    .line 2033
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2034
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2035
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 2033
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2038
    :cond_1
    const-string p0, "PresenceModule"

    const-string p1, "advertise: not a valid service tuple, do nothing.."

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public removePresenceCache(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation

    .line 2154
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->removePresenceCache(Ljava/util/List;I)V

    return-void
.end method

.method public requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "II)I"
        }
    .end annotation

    .line 572
    const-string v0, "PresenceModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCapabilityExchange: list requestType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 574
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 575
    const-string p0, "PresenceModule"

    const-string/jumbo p1, "requestCapabilityExchange: PUBLISH is not completed. bail."

    invoke-static {p0, p3, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1

    .line 578
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUrisToSubscribe:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 584
    monitor-enter v0

    .line 585
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 586
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v2, v3

    .line 587
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_2

    .line 588
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 589
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 591
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 593
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 594
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    .line 595
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 597
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    invoke-virtual {p1, v0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->loadPresenceStorage(Ljava/util/Set;I)V

    .line 598
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 599
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->acquireWakeLock()V

    const/4 p1, 0x7

    .line 600
    invoke-virtual {p0, p1, p3, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    .line 598
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;I)Z
    .locals 6

    .line 608
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p6, "requestCapabilityExchange: uri "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "PresenceModule"

    invoke-static {p6, p7, p5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 609
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p8, "requestCapabilityExchange: requestType "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p8, ", isAlwaysForce: "

    invoke-virtual {p5, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p6, p7, p5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 611
    invoke-virtual {p0, p7}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->isReadyToRequest(I)Z

    move-result p5

    if-nez p5, :cond_0

    .line 612
    const-string/jumbo p0, "requestCapabilityExchange: PUBLISH is not completed. bail."

    invoke-static {p6, p7, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 616
    :cond_0
    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p5, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object p5, p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p5}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p5

    .line 619
    iget-object p8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p8, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p8

    if-eqz p8, :cond_1

    iget-object p8, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 620
    invoke-virtual {p8, p7}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p8

    check-cast p8, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p8}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getRlsUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p8

    invoke-virtual {p8}, Lcom/sec/ims/util/ImsUri;->getScheme()Ljava/lang/String;

    move-result-object p8

    if-eqz p8, :cond_1

    if-nez p5, :cond_1

    .line 623
    const-string/jumbo p0, "requestCapabilityExchange: adding uri to RCS list"

    invoke-static {p6, p7, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 629
    :cond_1
    new-instance p5, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;

    move-object v0, p5

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p7

    move v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;-><init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    if-eqz p2, :cond_2

    const/4 p0, 0x0

    .line 635
    invoke-interface {p2, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;->onComplete(Lcom/sec/ims/options/Capabilities;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public reset(I)V
    .locals 3

    .line 2145
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 2146
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 2147
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopBadEventTimer(I)V

    .line 2148
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 2149
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->resetPublishEtag(I)V

    return-void
.end method

.method public sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ZLjava/util/Set;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Z",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setDisplayText(ILjava/lang/String;)V
    .locals 2

    .line 1061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDisplayText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1064
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadDisplayText(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v0, p2, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveDisplayText(Ljava/lang/String;I)V

    .line 1066
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1068
    :cond_0
    const-string/jumbo p0, "skip setDisplayText"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOwnCapabilities(JI)V
    .locals 9

    .line 463
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setOwnCapabilities: features "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p3, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OwnCapabilities - set, features = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p3, v2}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",SET:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v2, 0x12090000

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 471
    new-instance v0, Lcom/sec/ims/presence/PresenceInfo;

    invoke-direct {v0, p3}, Lcom/sec/ims/presence/PresenceInfo;-><init>(I)V

    .line 473
    invoke-static {p3}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 475
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->changeServiceDescription()V

    .line 478
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    .line 480
    invoke-static {p1, p2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTupleList(J)Ljava/util/List;

    move-result-object p1

    .line 482
    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p2, v3, :cond_2

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mContext:Landroid/content/Context;

    invoke-static {p3, p2}, Lcom/sec/internal/ims/util/ImsUtil;->getComposerAuthValue(ILandroid/content/Context;)I

    move-result p2

    if-nez p2, :cond_2

    .line 483
    const-string/jumbo p2, "remove MmtelCallComposer tuple"

    invoke-static {v1, p3, p2}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    new-instance p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda3;

    invoke-direct {p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    .line 487
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/presence/ServiceTuple;

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setOwnCapabilities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, p3, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 489
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    iget-object v5, v3, Lcom/sec/ims/presence/ServiceTuple;->serviceId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/ims/presence/PresenceInfo;->getServiceTuple(Ljava/lang/String;)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 493
    iget-object v4, v4, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_0

    .line 495
    :cond_3
    iget-object v4, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    const/16 v5, 0xa

    const/4 v6, 0x5

    if-eqz v4, :cond_5

    .line 496
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v7, v3, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v4, v7, v8, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->loadRandomTupleId(JI)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 498
    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_0

    .line 500
    :cond_4
    invoke-static {v6, v5}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    .line 501
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    iget-wide v6, v3, Lcom/sec/ims/presence/ServiceTuple;->feature:J

    invoke-virtual {v5, v6, v7, v4, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->saveRandomTupleId(JLjava/lang/String;I)V

    goto :goto_0

    .line 504
    :cond_5
    invoke-static {v6, v5}, Lcom/sec/internal/helper/StringGenerator;->generateString(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sec/ims/presence/ServiceTuple;->tupleId:Ljava/lang/String;

    goto :goto_0

    .line 509
    :cond_6
    invoke-virtual {v0, p3}, Lcom/sec/ims/presence/PresenceInfo;->setPhoneId(I)V

    .line 510
    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->addService(Ljava/util/List;)V

    .line 511
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p1}, Lcom/sec/ims/presence/PresenceInfo;->getPublishGzipEnabled()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/ims/presence/PresenceInfo;->setPublishGzipEnabled(Z)V

    .line 512
    iput-object v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    .line 514
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->buildPresenceInfoForThirdParty(I)V

    .line 516
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-nez p1, :cond_7

    return-void

    .line 520
    :cond_7
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getImpuList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 522
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e

    const/4 p2, 0x0

    .line 523
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/ims/util/NameAddr;

    invoke-virtual {p2}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    .line 528
    iget-object v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_9

    .line 529
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/util/NameAddr;

    .line 530
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v3

    sget-object v4, Lcom/sec/ims/util/ImsUri$UriType;->TEL_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v3, v4, :cond_8

    .line 531
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 532
    invoke-static {p3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 533
    const-string p1, "getPreferredImpu: Found MDN TEL URI"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-virtual {v0}, Lcom/sec/ims/util/NameAddr;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    .line 541
    :cond_9
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/ims/presence/PresenceInfo;->setUri(Ljava/lang/String;)V

    .line 542
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setOwnCapabilities: uri"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnPresenceInfo:Lcom/sec/ims/presence/PresenceInfo;

    invoke-virtual {p2}, Lcom/sec/ims/presence/PresenceInfo;->getUri()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 544
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getParalysed(I)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 545
    const-string/jumbo p0, "setOwnCapabilities: paralysed"

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 549
    :cond_a
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRetryPublishIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_c

    .line 550
    iget-boolean p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->ongoingPublishErrRetry:Z

    if-nez p1, :cond_b

    .line 551
    const-string/jumbo p0, "setOwnCapabilities: retry timer is running"

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 554
    :cond_b
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    iget-object p2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {p2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getPublishErrRetryTimer()I

    move-result p2

    int-to-long v3, p2

    invoke-virtual {p1, v3, v4}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->setPublishErrRetry(J)V

    .line 555
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initialize PublishErrRetry: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getPublishErrRetry()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 559
    :cond_c
    iget-object p1, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object p2, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    const/4 v0, 0x1

    if-ne p1, p2, :cond_d

    .line 560
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x1f4

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 562
    :cond_d
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    .line 525
    :cond_e
    const-string/jumbo p0, "setOwnCapabilities: impus is empty !!!"

    invoke-static {v1, p3, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setParalysed(ZI)V
    .locals 2

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mParalysed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1015
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mParalysed:Z

    return-void
.end method

.method public setRegiInfoUpdater(IZ)V
    .locals 0

    .line 2170
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceRegiInfoUpdater:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public start()V
    .locals 3

    .line 255
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->start()V

    .line 256
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 258
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mPublishNotProvisionedCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 5

    .line 265
    invoke-super {p0}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->stop()V

    .line 266
    const-string v0, "PresenceModule"

    const-string/jumbo v1, "stop:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v1, v0

    .line 268
    :goto_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iput-boolean v0, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mOwnInfoPublished:Z

    .line 270
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mBackupPublishTimestamp:J

    .line 271
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceSp:Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;

    invoke-virtual {v2, v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSharedPrefHelper;->savePublishTimestamp(JI)V

    .line 272
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopPublishTimer(I)V

    .line 273
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->stopSubscribeRetryTimer(I)V

    .line 274
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->resetPublishErrorHandling(I)V

    .line 275
    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->setParalysed(ZI)V

    .line 277
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mRegInfo:Lcom/sec/ims/ImsRegistration;

    if-eqz v2, :cond_0

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public subscribe(Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;Z)V
    .locals 13

    .line 700
    iget v6, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->phoneId:I

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "subscribe: uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PresenceModule"

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe: request type "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 704
    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->checkModuleReady(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 708
    :cond_0
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    const/4 v2, 0x1

    invoke-static {v0, v2, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->getSubscription(Lcom/sec/ims/util/ImsUri;ZI)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    move-result-object v0

    if-nez v0, :cond_1

    .line 710
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;

    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateSubscriptionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;-><init>(Ljava/lang/String;)V

    .line 711
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->addUri(Lcom/sec/ims/util/ImsUri;)V

    .line 712
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    .line 713
    invoke-virtual {v0, v6}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setPhoneId(I)V

    .line 714
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addSubscription(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)V

    :goto_0
    move-object v7, v0

    goto :goto_3

    .line 716
    :cond_1
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v5, 0x0

    if-eq v3, v4, :cond_3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v3, v4, :cond_2

    goto :goto_1

    :cond_2
    move v11, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v2

    .line 718
    :goto_2
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    .line 719
    invoke-virtual {v2, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getSourceThrottleSubscribe()J

    move-result-wide v2

    const-wide/16 v8, 0x3e8

    mul-long v9, v2, v8

    iget-boolean v12, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->isAlwaysForce:Z

    move-object v8, v0

    .line 718
    invoke-interface/range {v7 .. v12}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isSubscribeThrottled(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;JZZ)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_SR_API:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v2, v3, :cond_4

    .line 722
    const-string/jumbo p0, "subscribe: single fetch has been already sent"

    invoke-static {v1, v6, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 723
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "subscribe: throttled uri "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v6, p0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 726
    :cond_4
    invoke-virtual {v0, v5}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 727
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateTimestamp()V

    .line 728
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->setRequestType(Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;)V

    goto :goto_0

    .line 731
    :goto_3
    invoke-static {v6}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->calSubscribeDelayTime(Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 732
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_SR_API:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-eq v0, v4, :cond_5

    .line 733
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "subscribe: delayed for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v6, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p2, 0x5

    .line 734
    invoke-virtual {v7, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->updateState(I)V

    .line 735
    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 739
    :cond_5
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->type:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_LAZY:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    if-ne v0, v2, :cond_6

    .line 740
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v0, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/util/UriGenerator;

    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController;->addLazySubscription(Lcom/sec/ims/util/ImsUri;)V

    .line 744
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribe internalRequestId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->internalRequestId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v6, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 746
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->internalRequestId:I

    if-eqz v0, :cond_7

    .line 747
    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->replaceSubscribeResponseCbSubsId(ILjava/lang/String;)V

    .line 750
    :cond_7
    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceConfig:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {v1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->useSipUri()Z

    move-result v1

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceSubscriptionController$SubscriptionRequest;->uri:Lcom/sec/ims/util/ImsUri;

    .line 751
    invoke-virtual {p0, p1, v6}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;

    move-result-object v2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceModuleInfo:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule$PresenceModuleInfo;->mMno:Lcom/sec/internal/constants/Mno;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p1, v6}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/sec/internal/ims/util/UriGenerator;

    move v5, v6

    .line 750
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceUtil;->convertUriType(Lcom/sec/ims/util/ImsUri;ZLcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/ims/util/UriGenerator;I)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    .line 752
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mService:Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v7}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceSubscription;->getSubscriptionId()Ljava/lang/String;

    move-result-object v4

    move v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;->subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V

    return-void
.end method

.method public unpublish(I)V
    .locals 1

    const/4 v0, -0x1

    .line 948
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->unpublish(II)V

    return-void
.end method

.method updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/presence/PresenceInfo;",
            "I)V"
        }
    .end annotation

    .line 1168
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mPresenceCacheController:Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mCapabilityDiscovery:Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->mUriGenerator:Lcom/sec/internal/helper/PhoneIdKeyMap;

    invoke-virtual {p0, p3}, Lcom/sec/internal/helper/PhoneIdKeyMap;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/sec/internal/ims/util/UriGenerator;

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/presence/PresenceCacheController;->updatePresenceDatabase(Ljava/util/List;Lcom/sec/ims/presence/PresenceInfo;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;Lcom/sec/internal/ims/util/UriGenerator;I)V

    return-void
.end method
