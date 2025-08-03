.class public Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;
.super Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;
.source "VolatileEucWorkflow.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/workflow/IEucWorkflow;


# static fields
.field private static final INTENT_EUCR_VOLATILE_TIMEOUT:Ljava/lang/String; = "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

.field private static final LOG_TAG:Ljava/lang/String; = "VolatileEucWorkflow"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurrentAlarm:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/app/PendingIntent;",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;"
        }
    .end annotation
.end field

.field private final mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentAlarm(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mscheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtimeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munscheduleCurrentAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->unscheduleCurrentAlarmTimerIntent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;)V
    .locals 0

    .line 87
    invoke-direct {p0, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;-><init>(Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;)V

    const/4 p3, 0x0

    .line 62
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    .line 64
    new-instance p3, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;

    invoke-direct {p3, p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;-><init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mHandler:Landroid/os/Handler;

    .line 90
    invoke-static {p6}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    return-void
.end method

.method private getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J
    .locals 2

    .line 300
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getTimeOut()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p0, v0

    return-wide p0
.end method

.method private isMessageTimedOut(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)Ljava/lang/Boolean;
    .locals 2

    .line 291
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 4

    if-nez p1, :cond_0

    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getVolatileEucByMostRecentTimeout(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object p1
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 315
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to obtain EUCs from persistence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    if-eqz p1, :cond_3

    .line 319
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 320
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->unscheduleCurrentAlarmTimerIntent()V

    goto :goto_1

    :cond_1
    return-void

    .line 327
    :cond_2
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    .line 330
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/app/PendingIntent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->getRemainingTimeout(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)J

    move-result-wide p0

    invoke-static {v1, v0, p0, p1}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :cond_3
    return-void
.end method

.method private timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V
    .locals 4

    .line 264
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v0

    .line 265
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getId()Ljava/lang/String;

    move-result-object p1

    .line 266
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout message with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout message with key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->hide(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)V

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mHandleMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;

    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;->invalidate()V

    .line 275
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->TIMED_OUT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->updateEuc(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 277
    :catch_0
    :try_start_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to change EUCs state in persistence for EUCR with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to change EUCs state in persistence for EUCR with key="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    .line 281
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 282
    throw p1
.end method

.method private unscheduleCurrentAlarmTimerIntent()V
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v0, v1}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mCurrentAlarm:Landroid/util/Pair;

    return-void
.end method


# virtual methods
.method public changeLanguage(Ljava/lang/String;)V
    .locals 1

    .line 180
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 181
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->changeLanguage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)V

    return-void
.end method

.method public createSendResponseCallback()Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;
    .locals 1

    .line 186
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$2;-><init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    return-object v0
.end method

.method public bridge synthetic discard(Ljava/lang/String;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->discard(Ljava/lang/String;)V

    return-void
.end method

.method public handleIncomingEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    .locals 5

    .line 159
    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v0

    .line 160
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleIncomingEuc with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertEuc(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->insertDialogs(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 165
    sget-object v2, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to store EUC with key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in persistence: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getTimeOut()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mCache:Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;

    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;->put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V

    .line 171
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mDisplayManager:Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->createDisplayManagerRequestCallback(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;

    move-result-object p0

    .line 173
    invoke-interface {v0, p1, v1, p0}, Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager;->display(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/dialog/IEucDisplayManager$IDisplayCallback;)V

    :cond_0
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 6

    .line 109
    const-string v0, "Unable to obtain EUCs from persistence: "

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mOwnIdentities:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v1, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 114
    :try_start_0
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    filled-new-array {v3, v4}, [Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    invoke-interface {v4, v3, v1, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Ljava/util/List;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 119
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    .line 120
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->isMessageTimedOut(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 122
    :cond_1
    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->ACCEPTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    if-ne v4, v5, :cond_2

    .line 123
    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->ACCEPT:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 124
    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getUserPin()Ljava/lang/String;

    move-result-object v5

    .line 123
    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getState()Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->REJECTED_NOT_SENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    if-ne v4, v5, :cond_0

    .line 126
    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;->DECLINE:Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;

    .line 127
    invoke-interface {v3}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;->getUserPin()Ljava/lang/String;

    move-result-object v5

    .line 126
    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/euc/data/EucState;->NONE:Lcom/sec/internal/ims/servicemodules/euc/data/EucState;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-interface {v1, v3, v4, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getAllEucs(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 137
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mEucPersistence:Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-interface {v4, v3, v2, v5, p1}, Lcom/sec/internal/ims/servicemodules/euc/persistence/IEucPersistence;->getDialogsByTypes(Lcom/sec/internal/ims/servicemodules/euc/data/EucState;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 140
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mEucFactory:Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;

    invoke-interface {v2, v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;->combine(Ljava/util/List;Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;

    .line 143
    invoke-interface {v2}, Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;->getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    move-result-object v2

    .line 144
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->isMessageTimedOut(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 145
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->timeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->scheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 150
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->loadToCache(Ljava/lang/Iterable;)V

    .line 151
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->mLanguageCode:Ljava/lang/String;

    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/BaseEucWorkflow;->displayQueries(Ljava/lang/Iterable;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sec/internal/ims/servicemodules/euc/persistence/EucPersistenceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 153
    :goto_3
    sget-object p1, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public start()V
    .locals 6

    .line 95
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    const-string v0, "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 98
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Receiver registered."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public stop()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    sget-object p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Receiver unregistered."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
