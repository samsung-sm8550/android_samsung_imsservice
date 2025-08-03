.class public Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;
.super Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;
.source "CapabilityServiceImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SERVICE_ID_CALL_COMPOSER:Ljava/lang/String; = "gsma.callcomposer"

.field private static final SERVICE_ID_POST_CALL:Ljava/lang/String; = "gsma.callunanswered"

.field private static final SERVICE_ID_SHARED_MAP:Ljava/lang/String; = "gsma.sharedmap"

.field private static final SERVICE_ID_SHARED_SKETCH:Ljava/lang/String; = "gsma.sharedsketch"


# instance fields
.field private mCapabilitiesListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/capability/ICapabilitiesListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

.field private mContactCapalitiesListeners:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/capability/ICapabilitiesListener;",
            ">;>;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mLock:Ljava/lang/Object;

.field private mServiceListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;",
            ">;"
        }
    .end annotation
.end field

.field private serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyOwnCapabilityChange(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyOwnCapabilityChange()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/gsma/services/rcs/capability/ICapabilityService$Stub;-><init>()V

    .line 69
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    .line 75
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    .line 81
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContext:Landroid/content/Context;

    .line 110
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl$1;-><init>(Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;)V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    .line 142
    const-string/jumbo p1, "options"

    .line 143
    invoke-static {p1, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 145
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->serviceEventListener:Lcom/sec/ims/options/ICapabilityServiceEventListener$Stub;

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 150
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method private notifyListeners(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/os/RemoteCallbackList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/capability/ICapabilitiesListener;",
            ">;)V"
        }
    .end annotation

    .line 366
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start : notifyListeners() contact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " capabilities = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance p0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    .line 370
    :try_start_0
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 372
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;

    invoke-interface {v1, p0, p2}, Lcom/gsma/services/rcs/capability/ICapabilitiesListener;->onCapabilitiesReceived(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/Capabilities;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    goto :goto_3

    .line 379
    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .line 377
    :goto_2
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_4

    .line 375
    :goto_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 383
    :cond_0
    :goto_4
    :try_start_1
    invoke-virtual {p3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 387
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_5

    :catch_4
    move-exception p0

    .line 385
    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    :goto_5
    return-void
.end method

.method private notifyOwnCapabilityChange()V
    .locals 2

    .line 573
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyOwnCapabilityChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 577
    sget-object v0, Lcom/gsma/services/rcs/capability/CapabilitiesLog;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v1, "own"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public static transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 13

    .line 501
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v0

    .line 502
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getExtFeature()Ljava/util/List;

    move-result-object v2

    .line 503
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    :goto_0
    move-object v7, v4

    goto :goto_1

    .line 508
    :cond_0
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 511
    :goto_1
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    :goto_2
    move-wide v9, v4

    goto :goto_3

    :cond_1
    const-wide/16 v4, 0x0

    goto :goto_2

    .line 515
    :goto_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "transferCapabilities, bValid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", bAutomata:"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_ISH:I

    int-to-long v3, v2

    and-long/2addr v3, v0

    int-to-long v5, v2

    cmp-long v2, v3, v5

    if-nez v2, :cond_2

    const/16 v2, 0x8

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    .line 524
    :goto_4
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_VSH:I

    int-to-long v4, v3

    and-long/2addr v4, v0

    int-to-long v11, v3

    cmp-long v3, v4, v11

    if-nez v3, :cond_3

    or-int/lit8 v2, v2, 0x10

    .line 530
    :cond_3
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v4, v3

    and-long/2addr v4, v0

    int-to-long v11, v3

    cmp-long v3, v4, v11

    if-eqz v3, :cond_4

    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v4, v3

    and-long/2addr v4, v0

    int-to-long v11, v3

    cmp-long v3, v4, v11

    if-nez v3, :cond_5

    :cond_4
    or-int/lit8 v2, v2, 0x2

    .line 537
    :cond_5
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v4, v3

    and-long/2addr v4, v0

    int-to-long v11, v3

    cmp-long v3, v4, v11

    if-nez v3, :cond_6

    or-int/lit8 v2, v2, 0x1

    .line 543
    :cond_6
    sget v3, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v4, v3

    and-long/2addr v0, v4

    int-to-long v3, v3

    cmp-long v0, v0, v3

    if-nez v0, :cond_7

    or-int/lit8 v0, v2, 0x4

    move v6, v0

    goto :goto_5

    :cond_7
    move v6, v2

    .line 549
    :goto_5
    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_CALL_COMPOSER:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 551
    const-string v0, "gsma.callcomposer"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_8
    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_MAP:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 556
    const-string v0, "gsma.sharedmap"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 559
    :cond_9
    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_SHARED_SKETCH:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 561
    const-string v0, "gsma.sharedsketch"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 564
    :cond_a
    sget-wide v0, Lcom/sec/ims/options/Capabilities;->FEATURE_ENRICHED_POST_CALL:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 566
    const-string v0, "gsma.callunanswered"

    invoke-interface {v7, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 568
    :cond_b
    new-instance v0, Lcom/gsma/services/rcs/capability/Capabilities;

    .line 569
    invoke-virtual {p0}, Lcom/sec/ims/options/Capabilities;->getLastSeen()J

    move-result-wide v11

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/gsma/services/rcs/capability/Capabilities;-><init>(ILjava/util/Set;ZJJ)V

    return-object v0
.end method


# virtual methods
.method public addCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 419
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 445
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : addContactCapabilitiesListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 448
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-nez v1, :cond_0

    .line 451
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 452
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 455
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public getAllContactCapabilities()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gsma/services/rcs/capability/Capabilities;",
            ">;"
        }
    .end annotation

    .line 284
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : getAllContactCapabilities()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 287
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    .line 288
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 292
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    :try_start_1
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 296
    invoke-virtual {v3}, Lcom/sec/ims/options/Capabilities;->getNumber()Ljava/lang/String;

    move-result-object v4

    .line 297
    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 300
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public getContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 266
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 267
    invoke-virtual {v2}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v2

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    .line 266
    invoke-virtual {p0, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 269
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 276
    :cond_0
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactCapabilities: contact = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", ret = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 272
    :goto_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1
.end method

.method public getMyCapabilities()Lcom/gsma/services/rcs/capability/Capabilities;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 236
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 238
    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 244
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 247
    sget-object p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMyCapabilities: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 241
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    throw p0
.end method

.method public getServiceVersion()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public isServiceRegistered()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 162
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 167
    :cond_0
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 168
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    .line 169
    const-string/jumbo v4, "options"

    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "presence"

    .line 170
    invoke-virtual {v3, v4}, Lcom/sec/ims/ImsRegistration;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public notifyRegistrationEvent(ZLcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    .locals 7

    .line 206
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : notifyRegistrationEvent()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    if-eqz p1, :cond_0

    .line 213
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceRegistered()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;

    invoke-interface {v3, p2}, Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;->onServiceUnregistered(Lcom/gsma/services/rcs/RcsServiceRegistration$ReasonCode;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 218
    :goto_1
    :try_start_2
    sget-object v4, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t notify listener : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 222
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public receiveCapabilities(Ljava/lang/String;Lcom/sec/ims/options/Capabilities;)V
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receiveCapabilities() contact = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " capabilities = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->transferCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/gsma/services/rcs/capability/Capabilities;

    move-result-object p2

    .line 346
    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 347
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyListeners(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/os/RemoteCallbackList;)V

    .line 350
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    if-eqz v1, :cond_0

    .line 353
    invoke-direct {p0, p1, p2, v1}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->notifyListeners(Ljava/lang/String;Lcom/gsma/services/rcs/capability/Capabilities;Landroid/os/RemoteCallbackList;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 355
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeCapabilitiesListener(Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilitiesListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 432
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeContactCapabilitiesListener(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/capability/ICapabilitiesListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "start : removeContactCapabilitiesListener()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 471
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContactCapalitiesListeners:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-eqz p0, :cond_0

    .line 474
    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 476
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/IRcsServiceRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mServiceListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestAllContactsCapabilities()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 404
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : requestAllContactsCapabilities()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.options.poll_timeout"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public requestContactCapabilities(Lcom/gsma/services/rcs/contact/ContactId;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;
        }
    .end annotation

    .line 322
    sget-object v0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start : requestContactCapabilities(String contact)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/gsma/services/rcs/contact/ContactId;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/ims/util/PhoneUtils;->extractNumberFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {p1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    sget-object v0, Lcom/sec/ims/options/CapabilityRefreshType;->ALWAYS_FORCE_REFRESH:Lcom/sec/ims/options/CapabilityRefreshType;

    .line 327
    invoke-virtual {v0}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v0

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v1

    .line 326
    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 329
    new-instance p1, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/servicemodules/tapi/service/api/ServerApiException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserActive(Z)V
    .locals 1

    .line 587
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/api/CapabilityServiceImpl;->mCapabilityDiscoveryService:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryService;->setUserActivity(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 589
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
