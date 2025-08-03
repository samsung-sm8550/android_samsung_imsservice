.class public Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
.super Lcom/samsung/android/ims/SemImsService$Stub;
.source "SemImsServiceStub.java"


# static fields
.field public static final AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

.field private static final IMS_SEAPI_SERVICE:Ljava/lang/String; = "ImsBase"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"

.field public static final RCS_AUTOCONFIG_URI:Ljava/lang/String; = "com.samsung.rcs.autoconfigurationprovider"

.field private static sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;


# instance fields
.field private mCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mCoreThread:Landroid/os/HandlerThread;

.field private mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

.field private mDmConfigListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/samsung/android/ims/SemImsDmConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field private mEpdgAvailable:[Z

.field private mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

.field private mEpdgListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mRcsConfigVers:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbacks(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDmConfigListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Landroid/os/RemoteCallbackList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgAvailable(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)[Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEpdgListeners(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildSemImsRegistration(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbuildSemImsRegistrationError(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistrationError(Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 69
    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 79
    const-string v0, "content://com.samsung.rcs.autoconfigurationprovider/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/ims/SemImsService$Stub;-><init>()V

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    .line 75
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    .line 76
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    .line 84
    new-instance p1, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    .line 85
    const-string p1, "ImsBase"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 86
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "SemImsServiceStub added"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private buildSemImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/samsung/android/ims/settings/SemImsProfile;
    .locals 0

    if-eqz p1, :cond_0

    .line 533
    new-instance p0, Lcom/samsung/android/ims/settings/SemImsProfile;

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/ims/settings/SemImsProfile;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 3

    if-eqz p1, :cond_1

    .line 501
    invoke-static {}, Lcom/samsung/android/ims/SemImsRegistration;->getBuilder()Lcom/samsung/android/ims/SemImsRegistration$Builder;

    move-result-object p0

    .line 502
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setRegiRat(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 503
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getNetworkType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPdnType(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 504
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPhoneId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 505
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getServices()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setServices(Ljava/util/Set;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 506
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPAssociatedUri2nd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPAssociatedUri2nd(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 507
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getEpdgStatus()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setEpdgStatus(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 508
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setEpdgOverCellularData(Z)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 509
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setSubscriptionId(I)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 510
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getRegisteredImpu()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/syncschedulers/RcsScheduler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setRegisteredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 511
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPreferredImpu()Lcom/sec/ims/util/NameAddr;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda15;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/RegistrationManager$$ExternalSyntheticLambda15;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setPreferredPublicUserId(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 512
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getOwnNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 514
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 516
    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getImsi()Ljava/lang/String;

    move-result-object p1

    .line 518
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 524
    :goto_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/ims/SemImsRegistration$Builder;->setOwnNumber(Ljava/lang/String;)Lcom/samsung/android/ims/SemImsRegistration$Builder;

    .line 525
    new-instance p1, Lcom/samsung/android/ims/SemImsRegistration;

    invoke-direct {p1, p0}, Lcom/samsung/android/ims/SemImsRegistration;-><init>(Lcom/samsung/android/ims/SemImsRegistration$Builder;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private buildSemImsRegistrationError(Lcom/sec/ims/ImsRegistrationError;)Lcom/samsung/android/ims/SemImsRegistrationError;
    .locals 3

    .line 540
    new-instance p0, Lcom/samsung/android/ims/SemImsRegistrationError;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorCode()I

    move-result v0

    .line 541
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getSipErrorReason()Ljava/lang/String;

    move-result-object v1

    .line 542
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getDetailedDeregiReason()I

    move-result v2

    .line 543
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistrationError;->getDeregistrationReason()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/samsung/android/ims/SemImsRegistrationError;-><init>(ILjava/lang/String;II)V

    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .locals 2

    .line 110
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "trying to get valid instance..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    .line 115
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "returning valid instance..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-static {}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getInstanceInternal()Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .locals 2

    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    monitor-enter v0

    .line 125
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getRcsAutoConfigCompl(I)Ljava/lang/String;
    .locals 7

    .line 316
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#simslot\\d"

    const-string v2, ""

    .line 320
    const-string v3, "info/completed"

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x0

    .line 324
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_0

    .line 325
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_1

    .line 327
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    .line 328
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v6, p1

    move-object p1, p0

    move-object p0, v6

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    .line 332
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :goto_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 334
    :cond_3
    throw p0
.end method

.method private getRcsAutoconfigVers(I)Z
    .locals 6

    .line 341
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->AUTO_CONFIGURATION_VERS_URI:Landroid/net/Uri;

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "#simslot\\d"

    const-string v2, ""

    .line 344
    const-string/jumbo v3, "parameter/version"

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 p1, 0x0

    .line 348
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 349
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v0, p1

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 352
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 353
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v0

    goto :goto_2

    :cond_1
    :goto_1
    if-eqz p1, :cond_4

    .line 357
    :try_start_2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_2

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 360
    :catch_0
    :try_start_3
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Error while parsing integer in getIntValue() - NumberFormatException"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return v1

    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return v1

    :goto_2
    if-eqz p1, :cond_6

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 368
    :cond_6
    throw p0
.end method

.method private init()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCoreThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public static declared-synchronized makeSemImsService(Landroid/content/Context;)Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    monitor-enter v0

    .line 90
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    if-eqz v1, :cond_0

    .line 91
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already created."

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 95
    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Creating SemImsService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;

    .line 98
    invoke-direct {v2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->init()V

    .line 100
    const-string p0, "Done."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->sInstance:Lcom/sec/internal/ims/imsservice/SemImsServiceStub;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public enableRcsByPhoneId(ZI)V
    .locals 0

    .line 373
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->enableRcsByPhoneId(ZI)V

    return-void
.end method

.method public getBinder()Landroid/os/Binder;
    .locals 0

    .line 129
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getSemBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanConfig(Ljava/lang/String;I)Z
    .locals 4

    .line 387
    sget-object p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBooleanConfig : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 389
    new-array v0, v0, [Ljava/lang/String;

    .line 390
    const-string v1, "mmtel"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "81"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 392
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v1, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-ne p1, v1, :cond_0

    .line 393
    aput-object v2, v0, v3

    goto :goto_0

    .line 395
    :cond_0
    const-string p1, "93"

    aput-object p1, v0, v3

    goto :goto_0

    .line 397
    :cond_1
    const-string v1, "mmtel-video"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 398
    const-string p1, "94"

    aput-object p1, v0, v3

    .line 404
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 406
    aget-object p0, v0, v3

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 407
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 408
    aget-object p1, v0, v3

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 411
    const-string p1, "3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 413
    :cond_2
    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 417
    :cond_3
    const-string p1, "can not read DM values"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    return v3
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 0

    .line 154
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentProfileForSlot(I)[Lcom/samsung/android/ims/settings/SemImsProfile;
    .locals 5

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getCurrentProfileForSlot(I)[Lcom/sec/ims/settings/ImsProfile;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 183
    array-length v2, p1

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 184
    invoke-direct {p0, v4}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsProfile(Lcom/sec/ims/settings/ImsProfile;)Lcom/samsung/android/ims/settings/SemImsProfile;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 187
    :cond_0
    new-array p0, v1, [Lcom/samsung/android/ims/settings/SemImsProfile;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/ims/settings/SemImsProfile;

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRcsProfileType(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/samsung/android/ims/SemImsRegistration;
    .locals 7

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 165
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 168
    array-length v3, v1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 169
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v6

    if-ne v6, p1, :cond_0

    .line 170
    invoke-direct {p0, v5}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_1
    new-array p0, v2, [Lcom/samsung/android/ims/SemImsRegistration;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/ims/SemImsRegistration;

    return-object p0
.end method

.method public getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/samsung/android/ims/SemImsRegistration;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegistrationInfoByServiceType: phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " serviceType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByServiceType(Ljava/lang/String;I)Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public hasCrossSimCallingSupport(I)Z
    .locals 0

    .line 496
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingSupportedByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isCrossSimCallingRegistered(I)Z
    .locals 0

    .line 491
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isCrossSimCallingRegistered(I)Z

    move-result p0

    return p0
.end method

.method public isForbiddenByPhoneId(I)Z
    .locals 0

    .line 159
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isForbiddenByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public isNonVerifiedMno(I)Z
    .locals 0

    .line 144
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isNonVerifiedMno(I)Z

    move-result p0

    return p0
.end method

.method public isRcsEnabled(ZI)Z
    .locals 10

    .line 280
    const-string v0, "]"

    const-string v1, "["

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 285
    :try_start_0
    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "rcs_user_setting"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v2, :cond_0

    move v4, v2

    goto :goto_0

    .line 287
    :catch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "isRcsEnabled: rcs_user_setting is not exist."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v3

    :goto_0
    if-nez p1, :cond_1

    return v4

    .line 294
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 296
    :try_start_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getRcsAutoconfigVers(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 297
    iget p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mRcsConfigVers:I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    :catch_1
    move p0, v3

    move p1, p0

    goto :goto_4

    :cond_2
    move p1, v3

    .line 299
    :goto_1
    :try_start_2
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->getRcsAutoConfigCompl(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 301
    const-string/jumbo v7, "true"

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_2
    move p0, v3

    goto :goto_4

    :cond_3
    move p0, v3

    .line 303
    :goto_2
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isRcsEnabled: version "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " autoConfigComplete "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 308
    :goto_3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5

    .line 306
    :catch_3
    :goto_4
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "isRcsEnabled: AutoConfiguration is not completed."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :goto_5
    if-eqz v4, :cond_4

    if-eqz p0, :cond_5

    if-lez p1, :cond_4

    goto :goto_6

    :cond_4
    move v2, v3

    :cond_5
    :goto_6
    return v2

    .line 308
    :goto_7
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    throw p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 139
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isSimMobilityActivated(I)Z
    .locals 0

    .line 134
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->isSimMobilityActivated(I)Z

    move-result p0

    return p0
.end method

.method public isVoLteAvailable(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 378
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->hasVoLteSimByPhoneId(I)Z

    move-result p0

    return p0
.end method

.method public registerDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 429
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack-IA;)V

    .line 430
    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    .line 431
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    if-eqz p1, :cond_0

    .line 434
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mDmConfigListeners register"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized registerEpdgListener(Lcom/samsung/android/ims/ISemEpdgListener;)Ljava/lang/String;
    .locals 6

    monitor-enter p0

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 453
    monitor-exit p0

    return-object v0

    .line 455
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    if-nez v1, :cond_1

    .line 456
    new-instance v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback-IA;)V

    iput-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    .line 457
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerEpdgListener(Lcom/sec/ims/IEpdgListener;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->mToken:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 459
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getTokenOfListener(Landroid/os/IInterface;)Ljava/lang/String;

    move-result-object v0

    .line 460
    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    new-instance v2, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    invoke-direct {v2, p0, p1, v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/ISemEpdgListener;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 462
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 463
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->getEpdgPhysicalInterface(I)I

    move-result v2

    .line 464
    sget-object v3, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "register epdg listener on epdg available : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    aget-boolean v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " epdgInterfaceState "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgAvailable:[Z

    aget-boolean v3, v3, v1

    invoke-interface {p1, v1, v3, v2}, Lcom/samsung/android/ims/ISemEpdgListener;->onEpdgAvailable(IZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 468
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 470
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public registerImsRegistrationListenerForSlot(Lcom/samsung/android/ims/SemImsRegiListener;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemRegisterImsRegistrationListener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemImsRegiListener;I)V

    .line 205
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 207
    iput-object v1, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->mToken:Ljava/lang/String;

    .line 208
    iget-object v3, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 210
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->reset()V

    .line 212
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 214
    array-length v0, p2

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p2, v2

    .line 215
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    :try_start_0
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->buildSemImsRegistration(Lcom/sec/ims/ImsRegistration;)Lcom/samsung/android/ims/SemImsRegistration;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/samsung/android/ims/SemImsRegiListener;->onRegistered(Lcom/samsung/android/ims/SemImsRegistration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 219
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method public registerSimMobilityStatusListener(Lcom/samsung/android/ims/SemSimMobStatusListener;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemRegisterSimMobilityStatusListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 248
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;-><init>(Lcom/sec/internal/ims/imsservice/SemImsServiceStub;Lcom/samsung/android/ims/SemSimMobStatusListener;I)V

    .line 249
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->registerSimMobilityStatusListener(Lcom/sec/ims/ISimMobilityStatusListener;ZI)Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 251
    iput-object p1, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->mToken:Ljava/lang/String;

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->reset()V

    :goto_0
    return-object p1
.end method

.method public sendTryRegisterByPhoneId(I)V
    .locals 0

    .line 382
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->sendTryRegisterByPhoneId(I)V

    return-void
.end method

.method public setRttMode(II)V
    .locals 0

    .line 424
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->setRttMode(II)V

    return-void
.end method

.method public unRegisterEpdgListener(Ljava/lang/String;)V
    .locals 1

    .line 475
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;

    if-eqz p1, :cond_1

    .line 480
    invoke-virtual {p1}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SemEpdgCallBack;->reset()V

    .line 483
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgListeners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_2

    .line 484
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    iget-object v0, v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;->mToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unRegisterEpdgListener(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 485
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mEpdgHandoverCallback:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$EpdgListenerCallback;

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterDmValueListener(Lcom/samsung/android/ims/SemImsDmConfigListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 442
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 444
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    if-eqz p1, :cond_1

    .line 445
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mDmConfigCallbacks:Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsDmConfigCallBack;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterDmValueListener(Lcom/sec/ims/IImsDmConfigListener;)V

    :cond_1
    return-void
.end method

.method public unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V
    .locals 2

    .line 229
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterImsRegistrationListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    const-string/jumbo p0, "unregisterImsRegistrationListenerForSlot: token is empty."

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 234
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterImsRegistrationListenerForSlot(Ljava/lang/String;I)V

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;

    if-eqz p0, :cond_1

    .line 237
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$ImsRegistrationCallBack;->reset()V

    :cond_1
    return-void
.end method

.method public unregisterSimMobilityStatusListener(Ljava/lang/String;I)V
    .locals 2

    .line 261
    sget-object v0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->LOG_TAG:Ljava/lang/String;

    const-string v1, "SemUnregisterSimMobilityStatusListener"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 262
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const-string/jumbo p0, "unregisterImsRegistrationListenerForSlot: token is empty."

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 266
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->getInstance()Lcom/sec/internal/ims/imsservice/ImsServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/imsservice/ImsServiceStub;->unregisterSimMobilityStatusListenerByPhoneId(Ljava/lang/String;I)V

    .line 267
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub;->mCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;

    if-eqz p0, :cond_1

    .line 269
    invoke-virtual {p0}, Lcom/sec/internal/ims/imsservice/SemImsServiceStub$SimMobilityStatusCallBack;->reset()V

    :cond_1
    return-void
.end method
