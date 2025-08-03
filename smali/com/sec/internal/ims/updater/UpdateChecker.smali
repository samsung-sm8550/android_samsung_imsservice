.class public Lcom/sec/internal/ims/updater/UpdateChecker;
.super Ljava/lang/Object;
.source "UpdateChecker.java"

# interfaces
.implements Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;


# static fields
.field static final A_DAY_SEC:I = 0x15180

.field private static final LOG_TAG:Ljava/lang/String; = "IMSUpdateChecker"

.field private static final OUTDATED_UPDATE_REQUIRED:I = 0x2

.field private static final RANDOM:Ljava/security/SecureRandom;

.field private static final UPDATED_TO_LATEST_VERSION:I = 0x1

.field private static final UPDATE_CHECK_SCHEDULE_INTENT:Ljava/lang/String; = "com.sec.ims.imsservice.update_schedule"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private mNeedLoadBalance:Z

.field private mPendingTask:Ljava/lang/Runnable;

.field private final mScheduleReceiver:Landroid/content/BroadcastReceiver;

.field mScheduledFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mScheduler:Ljava/util/concurrent/ExecutorService;

.field private final mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

.field mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

.field private final mUpdateRequester:Lcom/sec/internal/ims/updater/stub/UpdateCheckRequester;

.field private mUpdateScheduleIntent:Landroid/app/PendingIntent;


# direct methods
.method public static synthetic $r8$lambda$1kC_7l3bbKn-m-UoB5dXBNW34SQ(Lcom/sec/internal/ims/updater/UpdateChecker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$B0wc_0ITUI9MHZInLZhh0GltKgE(Lcom/sec/internal/ims/updater/UpdateChecker;Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->lambda$checkCachedUpdateCheckInfo$1(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sc2JLD3bxcIeLQmj1Pa0uCiYMcE(Lcom/sec/internal/ims/updater/UpdateChecker;Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->lambda$updateCheck$2(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmScheduler(Lcom/sec/internal/ims/updater/UpdateChecker;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mScheduler:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/updater/UpdateChecker;->RANDOM:Ljava/security/SecureRandom;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mNeedLoadBalance:Z

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mUpdateScheduleIntent:Landroid/app/PendingIntent;

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

    .line 72
    iput-object p3, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    .line 73
    iput-object p4, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 74
    new-instance p2, Lcom/sec/internal/ims/updater/stub/UpdateCheckRequester;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/updater/stub/UpdateCheckRequester;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mUpdateRequester:Lcom/sec/internal/ims/updater/stub/UpdateCheckRequester;

    .line 75
    new-instance p2, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-direct {p2, p1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    .line 76
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mScheduler:Ljava/util/concurrent/ExecutorService;

    .line 78
    new-instance p3, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/updater/UpdateChecker;)V

    invoke-interface {p2, p3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 83
    new-instance p2, Lcom/sec/internal/ims/updater/UpdateChecker$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/updater/UpdateChecker$1;-><init>(Lcom/sec/internal/ims/updater/UpdateChecker;)V

    iput-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mScheduleReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 95
    const-string p3, "com.sec.ims.imsservice.update_schedule"

    invoke-virtual {p0, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 p3, 0x2

    .line 96
    invoke-virtual {p1, p2, p0, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private checkCachedUpdateCheckInfo()V
    .locals 3

    .line 100
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->getUpdateCheckInfo()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    move-result-object v0

    .line 101
    const-string v1, "IMSUpdateChecker"

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->isValid(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    const-string v2, "checkCachedUpdateCheckInfo: Pending processCachedUpdateCheckInfo"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/updater/UpdateChecker;Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    iput-object v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mPendingTask:Ljava/lang/Runnable;

    .line 109
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->register(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    return-void

    .line 113
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->processCachedUpdateCheckInfo(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    return-void

    .line 102
    :cond_2
    :goto_0
    const-string p0, "checkCachedUpdateCheckInfo: No valid UpdateCheckInfo found"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleUpdateCheckInfo(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)Z
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;->getUpdateCheckInterval()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveUpdateCheckInterval(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->isValid(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v2, "handleUpdateCheckInfo: AP version is matched. Proceed to update."

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->cache(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    .line 258
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;->onUpdateCheckComplete()V

    return v1

    .line 263
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getResultCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->readStringToInt(Ljava/lang/String;)I

    move-result p1

    .line 265
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    const-string v2, "SARC"

    invoke-static {v0, v2, p1}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;I)V

    if-ne p1, v1, :cond_1

    .line 268
    const-string p0, "IMSUpdateChecker"

    const-string p1, "handleUpdateCheckInfo: latest version. Do nothing!"

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 271
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->handleStubErrorResponse(I)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$checkCachedUpdateCheckInfo$1(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->processCachedUpdateCheckInfo(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->checkCachedUpdateCheckInfo()V

    .line 80
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->scheduleUpdateCheck()V

    return-void
.end method

.method private synthetic lambda$updateCheck$2(Lcom/sec/internal/ims/updater/stub/data/StubResponseData;)V
    .locals 2

    .line 239
    check-cast p1, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateCheck: Responded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMSUpdateChecker"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;->onUpdateInfoReceived(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    .line 244
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->handleUpdateCheckInfo(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mScheduler:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/updater/UpdateChecker;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private processCachedUpdateCheckInfo(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V
    .locals 2

    .line 117
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;->isUserAccepted()Z

    move-result v0

    const-string v1, "IMSUpdateChecker"

    if-eqz v0, :cond_0

    .line 118
    const-string/jumbo p1, "processCachedUpdateCheckInfo: User accepted already"

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;->onUpdateCheckSkipped()V

    return-void

    .line 123
    :cond_0
    const-string/jumbo v0, "processCachedUpdateCheckInfo: Valid UpdateCheckInfo exists"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;->onUpdateInfoReceived(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)V

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;->onUpdateCheckComplete()V

    return-void
.end method

.method private readStringToInt(Ljava/lang/String;)I
    .locals 2

    .line 277
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readStringToInt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " read failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IMSUpdateChecker"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private readStringtoLong(Ljava/lang/String;)J
    .locals 2

    .line 286
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readStringToLong: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " read failed: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IMSUpdateChecker"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method


# virtual methods
.method getLastSwUpdateTime()J
    .locals 2

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getLastUpdateTime()Ljava/time/Instant;

    move-result-object p0

    .line 388
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    if-eq p0, v0, :cond_0

    .line 389
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getNextScheduleTime()J
    .locals 2

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getNextScheduleTime()Ljava/time/Instant;

    move-result-object p0

    .line 403
    sget-object v0, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    if-eq p0, v0, :cond_0

    .line 404
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getRandomDuration(I)Ljava/time/Duration;
    .locals 1

    .line 189
    sget-object p0, Lcom/sec/internal/ims/updater/UpdateChecker;->RANDOM:Ljava/security/SecureRandom;

    const v0, 0x15180

    mul-int/2addr p1, v0

    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object p0

    return-object p0
.end method

.method getUpdateCheckInfo()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getCache()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;

    move-result-object p0

    return-object p0
.end method

.method handleStubErrorResponse(I)Z
    .locals 3

    .line 329
    invoke-static {p1}, Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;->of(I)Lcom/sec/internal/constants/ims/updater/StubApiConstants$ErrorCodes;

    move-result-object v0

    .line 330
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStubErrorResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 332
    sget-object p0, Lcom/sec/internal/ims/updater/UpdateChecker$2;->$SwitchMap$com$sec$internal$constants$ims$updater$StubApiConstants$ErrorCodes:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p0, p0, v0

    const-string v0, "IMSUpdateChecker"

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p0, -0x3e9

    if-ne p1, p0, :cond_0

    goto :goto_2

    .line 355
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStubErrorResponse: Unhandled code "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 339
    :pswitch_1
    const-string p0, "handleStubErrorResponse: No retries"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v1, 0x0

    :goto_2
    :pswitch_2
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method isFirstBootAfterFota()Z
    .locals 1

    .line 166
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 167
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getLastSwVersion()Ljava/lang/String;

    move-result-object p0

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isFirstBootAfterUpdate()Z
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/ims/updater/util/StubUtil;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->readStringtoLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 157
    iget-object v2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getLastImsPackageVersion()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 160
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    const-string v3, "IVER"

    invoke-static {p0, v3, v0, v1}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;J)V

    :cond_1
    return v2
.end method

.method isValid(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;)Z
    .locals 2

    .line 294
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/StubResponseData;->getResultCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->readStringToInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 299
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo;->getExtraValue()Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo$ExtraValue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->isVersionMatched(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo$ExtraValue;)Z

    move-result p0

    return p0
.end method

.method isVersionMatched(Lcom/sec/internal/ims/updater/stub/data/UpdateCheckInfo$ExtraValue;)Z
    .locals 5

    .line 303
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFakeDeviceId()Ljava/lang/String;

    move-result-object p0

    .line 304
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "IMSUpdateChecker"

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 305
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v0, "isVersionMatched: Fake device id for test(%s) is set. Return true"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->getFakeTargetAp()Ljava/lang/String;

    move-result-object p0

    .line 309
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 310
    sget-object p1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v1

    :cond_1
    return v3

    .line 318
    :cond_2
    sget-object p0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 319
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda0;-><init>()V

    .line 320
    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/regex/Pattern;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVersionMatched: targetApVersionPattern: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 324
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public onDefaultNetworkAvailable()V
    .locals 2

    .line 372
    const-string v0, "IMSUpdateChecker"

    const-string/jumbo v1, "onDefaultNetworkAvailable"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->unRegister(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mPendingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 377
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 378
    iput-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mPendingTask:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onInstallCompleted()V
    .locals 0

    .line 367
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->clearCacheExceptUpdateInfo()V

    return-void
.end method

.method public onUserAccepted()V
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->onUserAccepted()V

    return-void
.end method

.method public resetUpdateInformation()V
    .locals 0

    .line 383
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->clearCache()V

    return-void
.end method

.method schedule()V
    .locals 4

    .line 172
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getUpdateCheckInterval()I

    move-result v0

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "schedule: interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "Day(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IMSUpdateChecker"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-boolean v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mNeedLoadBalance:Z

    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->getRandomDuration(I)Ljava/time/Duration;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "schedule: Initial check required. Check after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveUpdateCheckReason(I)V

    const/4 v1, 0x0

    .line 179
    iput-boolean v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mNeedLoadBalance:Z

    .line 180
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule(Ljava/time/Duration;)V

    return-void

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveUpdateCheckReason(I)V

    .line 185
    invoke-static {v0}, Ljava/time/Period;->ofDays(I)Ljava/time/Period;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule(Ljava/time/Period;)V

    return-void
.end method

.method schedule(Ljava/time/Duration;)V
    .locals 7

    .line 193
    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveNextScheduleTime(Ljava/time/Instant;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mUpdateScheduleIntent:Landroid/app/PendingIntent;

    const-string v1, "IMSUpdateChecker"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.sec.ims.imsservice.update_schedule"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object v3, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4000000

    invoke-static {v3, v2, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mUpdateScheduleIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 202
    :cond_1
    const-string v0, "Pending Alarm Cancelled"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mUpdateScheduleIntent:Landroid/app/PendingIntent;

    invoke-static {v0, v3}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 206
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alarm Started for duration:: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v3

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mUpdateScheduleIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-static {v0, p0, v3, v4, v2}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;JZ)V

    return-void
.end method

.method schedule(Ljava/time/Period;)V
    .locals 2

    .line 212
    invoke-virtual {p1}, Ljava/time/Period;->getDays()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule(Ljava/time/Duration;)V

    return-void
.end method

.method scheduleByForceUser()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveUpdateCheckReason(I)V

    const-wide/16 v0, 0x0

    .line 418
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule(Ljava/time/Duration;)V

    return-void
.end method

.method scheduleUpdateCheck()V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->isFirstBootAfterFota()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->isFirstBootAfterUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "scheduleUpdateCheck: version changed"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/updater/util/StubUtil;->getVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/updater/UpdateChecker;->readStringtoLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 132
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveUpdateInformation(Ljava/lang/String;JLjava/time/Instant;)V

    .line 133
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->clearNextScheduleTime()V

    const/4 v0, 0x1

    .line 134
    iput-boolean v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mNeedLoadBalance:Z

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getNextScheduleTime()Ljava/time/Instant;

    move-result-object v0

    .line 138
    sget-object v1, Ljava/time/Instant;->MIN:Ljava/time/Instant;

    if-ne v0, v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule()V

    return-void

    .line 144
    :cond_2
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/time/Duration;->isNegative()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->clearNextScheduleTime()V

    const-wide/16 v0, 0x0

    .line 147
    invoke-static {v0, v1}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule(Ljava/time/Duration;)V

    return-void

    .line 151
    :cond_3
    const-string v1, "IMSUpdateChecker"

    const-string/jumbo v2, "scheduleUpdateCheck: remain next check update time"

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule(Ljava/time/Duration;)V

    return-void
.end method

.method setLastSwUpdateTime(J)V
    .locals 2

    .line 394
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 395
    iget-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLastSwUpdateTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 396
    iget-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveLastUpdateTime(Ljava/time/Instant;)V

    .line 398
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule()V

    return-void
.end method

.method setNextScheduleTime(J)V
    .locals 2

    .line 409
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    .line 410
    iget-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setNextScheduleTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 411
    iget-object p2, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->saveNextScheduleTime(Ljava/time/Instant;)V

    .line 413
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object p2

    invoke-static {p2, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->schedule(Ljava/time/Duration;)V

    return-void
.end method

.method updateCheck()V
    .locals 4

    .line 220
    invoke-static {}, Lcom/sec/internal/ims/updater/util/StubUtil;->isBypassStubApis()Z

    move-result v0

    const-string v1, "IMSUpdateChecker"

    if-eqz v0, :cond_0

    .line 221
    const-string/jumbo v0, "updateCheck: bypass Stub APIs"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mService:Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/updater/IUpdateCheckNotifiable;->onUpdateCheckSkipped()V

    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    const-string/jumbo v0, "updateCheck: Default Network is not available, Do check update when Network is available"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    new-instance v0, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/UpdateChecker;)V

    iput-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mPendingTask:Ljava/lang/Runnable;

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mDefaultNetworkNotifier:Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->register(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    return-void

    .line 233
    :cond_1
    const-string/jumbo v0, "updateCheck: Request"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->getUpdateCheckReason()I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    const-string v2, "UITA"

    invoke-static {v1, v2, v0}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;I)V

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    const-string v2, "TYPE"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/updater/util/StubUtil;->sendUIMSToHQM(Landroid/content/Context;Ljava/lang/String;I)V

    .line 237
    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCheck reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mUpdateRequester:Lcom/sec/internal/ims/updater/stub/UpdateCheckRequester;

    iget-object v1, p0, Lcom/sec/internal/ims/updater/UpdateChecker;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/updater/UpdateChecker$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/updater/UpdateChecker;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/updater/stub/StubHttpRequester;->getResponse(Landroid/content/Context;Lcom/sec/internal/ims/updater/stub/StubHttpRequester$HttpResponseListener;)V

    return-void
.end method
