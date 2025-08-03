.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;
.super Ljava/lang/Object;
.source "CapabilityExchange.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityExchange"

.field protected static final MAX_PARTIAL_POLL_LIST:I = 0x7d0

.field protected static final POLL_LIMIT:I = 0x3e8

.field protected static final POLL_REMOVE_LIMIT:I = 0x64

.field private static mPollingPartialCount:J


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected room:I


# direct methods
.method public static synthetic $r8$lambda$UxUryr83Hf5TCHnKx-N8d4f7rus(Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->lambda$fillPollingList$0(IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;Lcom/sec/internal/helper/SimpleEventLog;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    .line 50
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 51
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    .line 52
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private getPartialPollingPeriod(I)J
    .locals 4

    .line 595
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7530

    goto :goto_0

    .line 596
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getThrottledDelay(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 597
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->mPresenceModule:Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;->getPresenceConfig(I)Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->getMaxUri()I

    move-result p0

    const/16 p1, 0x7d0

    div-int/2addr p1, p0

    int-to-long p0, p1

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private synthetic lambda$fillPollingList$0(IZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v11, p2

    .line 406
    const-string v12, ","

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    const-string v3, "CapabilityExchange"

    if-nez v2, :cond_0

    .line 407
    const-string v0, "fillPollingList: CapabilitiesCache is null"

    invoke-static {v3, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 410
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v2

    if-nez v2, :cond_1

    .line 411
    const-string v0, "fillPollingList: getCapabilityControl is null"

    invoke-static {v3, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 414
    :cond_1
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v2

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v4

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-ne v2, v4, :cond_2

    move v15, v14

    goto :goto_0

    :cond_2
    move v15, v13

    .line 416
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v2

    .line 417
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fillPollingList count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mPollingPartialCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 419
    :try_start_0
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 420
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v3

    if-eqz v15, :cond_3

    const/16 v4, 0x7d0

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    .line 421
    :goto_1
    sget-wide v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mPollingPartialCount:J

    .line 422
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getNonRCScapInfoExpiry()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getCapInfoExpiry()I

    move-result v2

    int-to-long v10, v2

    move-object v2, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v7

    move-wide v8, v10

    const/16 v11, 0x7d0

    move/from16 v10, p2

    .line 421
    invoke-virtual/range {v2 .. v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getCapabilitiesForPolling(IJJJZ)Ljava/util/TreeMap;

    move-result-object v2

    .line 424
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 426
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fillPollingList: capexListSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mPollingPartialCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mPollingPartialCount:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", S"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 428
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mPollingPartialCount:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v5, 0x1201000b

    invoke-static {v5, v4}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 429
    invoke-virtual {v2}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 430
    invoke-virtual {v2, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v3, v5, v14, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->updatePollList(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;ZI)Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_5

    .line 433
    :cond_4
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v4, v4

    goto :goto_3

    :cond_5
    const-wide/16 v4, 0x0

    :goto_3
    sput-wide v4, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mPollingPartialCount:J
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    const-string v4, ""

    if-eqz v15, :cond_7

    .line 436
    :try_start_1
    invoke-virtual {v2}, Ljava/util/TreeMap;->size()I

    move-result v2

    if-ne v2, v11, :cond_6

    .line 437
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->getPartialPollingPeriod(I)J

    move-result-wide v5

    .line 438
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "fillPollingList: exceed max, retry partial poll after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v1, v7}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v7, 0x1201000d

    invoke-static {v7, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 440
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    move/from16 v7, p2

    invoke-virtual {v2, v5, v6, v7, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPartialPollingTimer(JZI)V

    goto :goto_4

    :cond_6
    move/from16 v7, p2

    .line 442
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->resetPartialPolling(I)V

    goto :goto_4

    :cond_7
    move/from16 v7, p2

    .line 445
    :goto_4
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v5, "fillPollingList: E"

    invoke-virtual {v2, v1, v5}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 446
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v4, 0x1201000c

    invoke-static {v4, v2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 448
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 449
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 450
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v7, v13, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 449
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    .line 452
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->resetPartialPolling(I)V

    .line 453
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->delayPoll(ILjava/util/Date;)V
    :try_end_1
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 456
    :goto_5
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    :goto_6
    return-void
.end method

.method private resetPartialPolling(I)V
    .locals 2

    .line 462
    const-string v0, "CapabilityExchange"

    const-string/jumbo v1, "resetPartialPolling"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 463
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPartialPollingTimer(I)V

    const-wide/16 p0, 0x0

    .line 464
    sput-wide p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mPollingPartialCount:J

    return-void
.end method


# virtual methods
.method delayPoll(ILjava/util/Date;)V
    .locals 5

    .line 116
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    .line 118
    const-string/jumbo v3, "use_rand_delay_periodic_poll"

    invoke-interface {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->getRandomizedDelayForPeriodicPolling(IJ)J

    move-result-wide v1

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(JI)V

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->savePollTimestamp(JI)V

    :cond_1
    return-void
.end method

.method exchangeCapabilities(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Ljava/lang/String;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 469
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v5, p3

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 470
    const-string v3, "CapabilityExchange"

    if-nez v6, :cond_0

    .line 471
    const-string v0, "getCapabilities: uri is null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exchangeCapabilities: myFeatures = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p4 .. p5}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_3

    .line 476
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 481
    :cond_1
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v1

    .line 482
    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 483
    const-string v0, "cannot exchange capabilities. currently in suspend"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 487
    :cond_2
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-wide/from16 v2, p4

    move-object/from16 v4, p8

    invoke-virtual {v1, v2, v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v10

    .line 489
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getOptionsModule()Lcom/sec/internal/ims/servicemodules/options/OptionsModule;

    move-result-object v5

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v9, 0x1

    const/4 v14, 0x0

    const/4 v7, 0x0

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v5 .. v14}, Lcom/sec/internal/ims/servicemodules/options/OptionsModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;I)Z

    return-void

    .line 477
    :cond_3
    :goto_0
    const-string v0, "exchangeCapabilities: mRegMan or mImsRegInfo is null"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method fillPollingList(IZ)V
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;IZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 458
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method forcePoll(I)V
    .locals 4

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forcePoll forcePollingGuard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getForcePollingGuard(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getForcePollingGuard(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setForcePollingGuard(ZI)V

    .line 398
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->resetPartialPolling(I)V

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x12

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 400
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->fillPollingList(IZ)V

    :cond_0
    return-void
.end method

.method poll(Landroid/content/Context;ZZILjava/util/Map;Ljava/util/List;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "ZZI",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    move-object v6, p0

    move/from16 v7, p2

    move/from16 v0, p3

    move/from16 v8, p4

    .line 57
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "poll: isPeriodic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isForce = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 58
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v3

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contacts"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 57
    invoke-virtual {v1, v8, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v2

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x12010001

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 61
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz v7, :cond_0

    const/16 v2, 0x12

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v10, p1

    .line 62
    invoke-virtual {p0, v10, v8, v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->stopThrottledRetryTimer(Landroid/content/Context;IZ)V

    move-object/from16 v1, p5

    .line 64
    invoke-virtual {p0, v1, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->stopPoll(Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 67
    :cond_1
    invoke-virtual {p0, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->setThrottleContactSync(I)V

    if-eqz v7, :cond_2

    .line 74
    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {p0, v8, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->fillPollingList(IZ)V

    return-void

    .line 77
    :cond_2
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const-string v11, "CapabilityExchange"

    if-eqz v0, :cond_3

    .line 78
    const-string/jumbo v0, "poll: no uris to request"

    invoke-static {v11, v8, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 82
    :cond_3
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    .line 83
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRatePeriod()J

    move-result-wide v13

    move-object v0, p0

    move-object v1, v12

    move-wide v2, v13

    move/from16 v4, p4

    move-object/from16 v5, p6

    .line 84
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->trimPollingHistory(Ljava/util/Date;JILjava/util/List;)V

    .line 88
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRate()I

    move-result v0

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "poll: room: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " request sent in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " seconds."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v8, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 91
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    iget-object v1, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 92
    invoke-virtual {p0, v8, v7, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityForPresence(IZLjava/util/Date;)Z

    move-result v0

    move-object/from16 v9, p6

    goto :goto_1

    :cond_4
    move-object/from16 v9, p6

    .line 95
    invoke-virtual {p0, v8, v12, v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->requestCapabilityForOptions(ILjava/util/Date;Ljava/util/List;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_5

    .line 103
    iget v3, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-wide v4, v13

    move-object/from16 v6, p6

    move/from16 v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->throttledRetryTimer(Landroid/content/Context;IIJLjava/util/List;Z)V

    return-void

    .line 106
    :cond_5
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setForcePollingGuard(ZI)V

    if-eqz v7, :cond_6

    .line 109
    invoke-virtual {p0, v8, v12}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->delayPoll(ILjava/util/Date;)V

    .line 110
    iget-object v0, v6, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v8, v1, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_6
    return-void
.end method

.method requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I
    .locals 7
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

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 310
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 313
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCapabilityExchange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " contacts"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "CapabilityExchange"

    invoke-static {v3, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestCapabilityExchange internalRequestId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 317
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 318
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 319
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v6, v5, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isAllowedPrefixesUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5, p3}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 320
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 323
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 324
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCapabilityExchange: remove notAllowedUris = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, p3, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 325
    invoke-interface {p1, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " contacts after removed notAllowedUris"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 327
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    .line 332
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I

    move-result p0

    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZILcom/sec/ims/options/Capabilities;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;Ljava/lang/String;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;",
            "ZI",
            "Lcom/sec/ims/options/Capabilities;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v8, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    .line 284
    invoke-virtual {p0, p1, v8, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->validateCapexRequest(Lcom/sec/ims/util/ImsUri;ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    move-result-object v4

    .line 285
    sget-object v5, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->PROCEED:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    .line 286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestCapabilityExchange: uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CapabilityExchange"

    invoke-static {v5, v8, v4}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "requestCapabilityExchange: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->toStringLimit()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", requesttype: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isAlwaysForce: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v10, p3

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v8, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 290
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    move/from16 v7, p9

    invoke-interface {v2, v3, v7, v6, v8}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getServiceForNetwork(Lcom/sec/ims/settings/ImsProfile;IZI)Ljava/util/Set;

    move-result-object v5

    .line 291
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v3

    move/from16 v6, p9

    move/from16 v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterFeaturesWithService(JLjava/util/Set;II)J

    move-result-wide v2

    .line 292
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    move-object/from16 v5, p8

    invoke-virtual {v4, v2, v3, p1, v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->filterInCallFeatures(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)J

    move-result-wide v5

    .line 294
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    const/4 v2, 0x0

    .line 295
    invoke-virtual/range {p5 .. p5}, Lcom/sec/ims/options/Capabilities;->getExtFeatureAsJoinedString()Ljava/lang/String;

    move-result-object v11

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v8, v11

    move/from16 v9, p10

    .line 294
    invoke-interface/range {v0 .. v9}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl$ICapabilityExchangeCallback;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZJILjava/lang/String;I)Z

    move-result v0

    return v0

    .line 298
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->TRUE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    if-ne v4, v0, :cond_1

    const/4 v6, 0x1

    :cond_1
    return v6
.end method

.method requestCapabilityForOptions(ILjava/util/Date;Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)Z"
        }
    .end annotation

    .line 245
    const-string v0, "CapabilityExchange"

    const-string/jumbo v1, "requestCapabilityForOptions:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 248
    monitor-enter v0

    .line 249
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 250
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lcom/sec/ims/util/ImsUri;

    .line 253
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    if-nez v3, :cond_1

    .line 254
    const-string p2, "CapabilityExchange"

    const-string/jumbo p3, "poll: room is 0"

    invoke-static {p2, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 258
    :cond_1
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_NONE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 260
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v3, p2, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->addPollingHistory(Ljava/util/Date;I)V

    .line 261
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    goto :goto_0

    :cond_2
    move v2, v4

    .line 266
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRate()I

    move-result v5

    if-lt v3, v5, :cond_0

    .line 270
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 271
    const-string p2, "CapabilityExchange"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "poll: remained mUrisToRequest size: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_4
    move v4, v2

    .line 274
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/Set;)V

    return v4

    .line 274
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method requestCapabilityForPresence(IZLjava/util/Date;)Z
    .locals 10

    .line 203
    const-string v0, "CapabilityExchange"

    const-string/jumbo v1, "requestCapabilityForPresence:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->room:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    if-nez p2, :cond_6

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 212
    monitor-enter v0

    .line 213
    :try_start_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 214
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    if-eqz p2, :cond_1

    .line 215
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    :goto_0
    move-object v6, v3

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 216
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    goto :goto_0

    :goto_1
    const/4 v7, 0x0

    const/4 v9, 0x0

    move v8, p1

    .line 214
    invoke-virtual/range {v4 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;ZII)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    move v3, v1

    goto :goto_3

    :cond_2
    move v3, v2

    goto :goto_3

    .line 221
    :cond_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p2, :cond_4

    .line 222
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_PERIODIC:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    goto :goto_2

    .line 223
    :cond_4
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;->REQUEST_TYPE_CONTACT_CHANGE:Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;

    .line 221
    :goto_2
    invoke-virtual {v3, v0, v4, p1, v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->requestCapabilityExchange(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$RequestType;II)I

    move-result v3

    .line 225
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v4, p1, v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->putUrisToRequestList(ILjava/util/Set;)V

    if-le v3, v1, :cond_5

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setLastListSubscribeStamp(JI)V

    :cond_5
    if-eqz p2, :cond_6

    if-lez v3, :cond_6

    .line 232
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2, p3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->addPollingHistory(Ljava/util/Date;I)V

    .line 236
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 237
    const-string p2, "CapabilityExchange"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "poll: remained mUrisToRequest size: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_4

    :cond_7
    move v1, v2

    :goto_4
    return v1

    .line 225
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method requestInitialCapabilitiesQuery(IZJ)V
    .locals 7

    .line 336
    const-string/jumbo v0, "requestInitialCapabilitiesQuery:"

    const-string v1, "CapabilityExchange"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 340
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    const-string/jumbo v2, "poll_allowed"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    const-string/jumbo p3, "requestInitialCapabilitiesQuery: disable initial scan"

    invoke-static {v1, p1, p3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p3

    invoke-interface {p3, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 343
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/16 p2, 0x10

    const/4 p3, 0x0

    .line 344
    invoke-virtual {p0, p2, p1, v4, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 p2, 0x2710

    .line 343
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void

    .line 349
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isReady(I)Z

    move-result v0

    const-wide/16 v5, 0x3e8

    if-nez v0, :cond_3

    .line 350
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p2

    if-ne p1, p2, :cond_2

    .line 351
    const-string/jumbo p2, "requestInitialCapabilitiesQuery: contact is not ready. retry in 1 second."

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 352
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void

    .line 358
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 359
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 360
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 365
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestInitialCapabilitiesQuery: mLastPollTimestamp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mPollingPeriod: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 366
    invoke-virtual {v3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->isPollingInProgress(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 368
    const-string/jumbo p0, "requestInitialCapabilitiesQuery: Polling already in progress"

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingPeriod()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 372
    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollingRate()I

    move-result v0

    if-lez v0, :cond_7

    const-wide/16 v2, 0x0

    cmp-long p2, p3, v2

    if-nez p2, :cond_6

    .line 374
    const-string/jumbo p2, "requestInitialCapabilitiesQuery: Polling has not been performed yet, start polling"

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x12

    invoke-virtual {p0, p2, v4, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 377
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPoll(I)V

    goto :goto_1

    .line 381
    :cond_7
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 382
    invoke-static {p1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p3

    invoke-interface {p3, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 383
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    goto :goto_1

    .line 385
    :cond_8
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->onContactChanged(Z)V

    if-eqz p2, :cond_a

    .line 387
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, v4, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setInitialQuery(ZI)V

    goto :goto_1

    .line 361
    :cond_9
    :goto_0
    const-string/jumbo p2, "requestInitialCapabilitiesQuery: not ready. retry in 1 second."

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_a
    :goto_1
    return-void
.end method

.method sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ILjava/util/Set;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)Z"
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->validateCapexRequest(Lcom/sec/ims/util/ImsUri;ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    move-result-object p4

    sget-object p5, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->PROCEED:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    if-ne p4, p5, :cond_0

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p0

    const/4 p4, 0x1

    invoke-interface {p0, p1, p4, p3, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->sendOptionsRequest(Lcom/sec/ims/util/ImsUri;ZLjava/util/Set;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method setThrottleContactSync(I)V
    .locals 2

    .line 180
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(ZI)V

    goto :goto_0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getUrisToRequest()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_1

    .line 183
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPhonebook()Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(ZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method startThrottledRetryTimer(Landroid/content/Context;ZJI)V
    .locals 3

    .line 494
    invoke-virtual {p0, p1, p5, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->stopThrottledRetryTimer(Landroid/content/Context;IZ)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startThrottledRetryTimer: isPeriodic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", millis "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityExchange"

    invoke-static {v1, p5, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const-wide/32 v0, 0xea60

    cmp-long v0, p3, v0

    const/4 v1, 0x0

    if-gez v0, :cond_1

    if-eqz p2, :cond_0

    .line 499
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 500
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p5, 0x12

    invoke-virtual {p0, p5, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 499
    invoke-virtual {p1, p0, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    goto :goto_0

    .line 502
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 503
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p5, 0x1

    invoke-virtual {p0, p5, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 502
    invoke-virtual {p1, p0, p3, p4}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    goto :goto_0

    .line 506
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.internal.ims.servicemodules.options.sub_throttled_timeout"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    const-string v2, "IS_PERIODIC"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 508
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/high16 v2, 0x2000000

    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p2, v0, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setThrottledIntent(Landroid/app/PendingIntent;I)V

    .line 510
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p5}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent(I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p1, p0, p3, p4}, Lcom/sec/internal/helper/AlarmTimer;->start(Landroid/content/Context;Landroid/app/PendingIntent;J)V

    :goto_0
    return-void
.end method

.method stopPoll(Ljava/util/Map;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;I)Z"
        }
    .end annotation

    .line 153
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->checkModuleReady(I)Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "CapabilityExchange"

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_0

    const-string/jumbo v1, "poll_allowed"

    .line 155
    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 156
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 157
    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 163
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 169
    :cond_2
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    invoke-static {p2}, Lcom/sec/internal/ims/util/ConfigUtil;->isJibeAs(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 170
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->isDisableInitialScan()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 171
    const-string/jumbo p1, "stopPoll: initial scan is disabled"

    invoke-static {v3, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 172
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setForcePollingGuard(ZI)V

    return v2

    :cond_3
    return v4

    .line 164
    :cond_4
    :goto_0
    const-string/jumbo p1, "stopPoll: not registered."

    invoke-static {v3, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setForcePollingGuard(ZI)V

    return v2

    .line 158
    :cond_5
    :goto_1
    const-string/jumbo p1, "stopPoll: cancel poll request"

    invoke-static {v3, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setForcePollingGuard(ZI)V

    return v2
.end method

.method stopThrottledRetryTimer(Landroid/content/Context;IZ)V
    .locals 3

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopThrottledRetryTimer: isPeriodic = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityExchange"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 517
    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    if-eqz p3, :cond_0

    const/16 p3, 0x12

    goto :goto_0

    :cond_0
    const/4 p3, 0x1

    .line 518
    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    .line 517
    invoke-virtual {v0, p3}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    .line 520
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent(I)Landroid/app/PendingIntent;

    move-result-object p3

    if-nez p3, :cond_1

    return-void

    .line 524
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getThrottledIntent(I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/sec/internal/helper/AlarmTimer;->stop(Landroid/content/Context;Landroid/app/PendingIntent;)V

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->setThrottledIntent(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method throttledRetryTimer(Landroid/content/Context;IIJLjava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIJ",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;Z)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPresenceModule()Lcom/sec/internal/ims/servicemodules/presence/PresenceModule;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_2

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x7530

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 136
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->getPollListSubExpiry()I

    move-result v1

    int-to-long v4, v1

    .line 135
    invoke-interface {v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getThrottledDelay(J)J

    move-result-wide v0

    mul-long/2addr v0, v2

    :goto_0
    if-nez p3, :cond_1

    const-wide/16 v4, 0x0

    cmp-long p3, p4, v4

    if-eqz p3, :cond_1

    mul-long/2addr p4, v2

    .line 139
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    int-to-long v2, p3

    mul-long/2addr v0, v2

    sub-long v0, p4, v0

    :cond_1
    :goto_1
    move-wide v5, v0

    goto :goto_2

    :cond_2
    mul-long v0, p4, v2

    goto :goto_1

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move v4, p7

    move v7, p2

    .line 149
    invoke-virtual/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->startThrottledRetryTimer(Landroid/content/Context;ZJI)V

    return-void
.end method

.method trimPollingHistory(Ljava/util/Date;JILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "JI",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;)V"
        }
    .end annotation

    .line 188
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    .line 190
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 193
    :cond_0
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 194
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Date;

    .line 196
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p2

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    .line 197
    invoke-interface {p5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method updatePollList(Ljava/util/Set;Lcom/sec/ims/util/ImsUri;ZI)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            "ZI)Z"
        }
    .end annotation

    .line 529
    invoke-static {p4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const/4 p4, 0x0

    if-nez p0, :cond_0

    .line 531
    const-string p0, "CapabilityExchange"

    const-string/jumbo p1, "updatePollList: mnoStrategy is null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 534
    :cond_0
    invoke-interface {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 535
    const-string p0, "CapabilityExchange"

    const-string/jumbo p1, "updatePollList: isCapabilityValidUri is false."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p4

    .line 539
    :cond_1
    monitor-enter p1

    if-eqz p3, :cond_2

    .line 542
    :try_start_0
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 545
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit p1

    return p0

    .line 547
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method validateCapexRequest(Lcom/sec/ims/util/ImsUri;ILcom/sec/internal/interfaces/ims/core/IRegistrationManager;Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "I",
            "Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/ImsRegistration;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;"
        }
    .end annotation

    .line 551
    const-string v0, "CapabilityExchange"

    if-eqz p1, :cond_9

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 556
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 558
    const-string/jumbo p0, "requestCapabilityExchange: mnoStrategy is null."

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 559
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->FALSE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0

    .line 562
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {v2, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->isAllowedPrefixesUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 563
    const-string/jumbo p0, "requestCapabilityExchange: isAllowedPrefixesUri and hasChatbotRoleSession are false."

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 564
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->TRUE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0

    .line 567
    :cond_2
    invoke-interface {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCapabilityValidUri(Lcom/sec/ims/util/ImsUri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 568
    const-string/jumbo p0, "requestCapabilityExchange: isPresenceValidUri is false."

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 569
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->TRUE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0

    .line 572
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange;->mCapabilityUtil:Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->blockOptionsToOwnUri(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 573
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->TRUE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0

    .line 576
    :cond_4
    invoke-static {p1, p2}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string/jumbo p0, "user"

    invoke-virtual {p1, p0}, Lcom/sec/ims/util/ImsUri;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 577
    const-string/jumbo p0, "remove user=phone param for chatbot serviceId"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 578
    invoke-virtual {p1}, Lcom/sec/ims/util/ImsUri;->removeUserParam()V

    :cond_5
    if-eqz p3, :cond_8

    .line 582
    invoke-interface {p4}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/ims/ImsRegistration;

    if-nez p0, :cond_6

    goto :goto_0

    .line 586
    :cond_6
    invoke-virtual {p0}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    invoke-interface {p3, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isSuspended(I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 587
    const-string p0, "both phoneId 0 and phoneId 1 was suspended, cannot exchange capabilities."

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 588
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->FALSE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0

    .line 590
    :cond_7
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->PROCEED:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0

    .line 583
    :cond_8
    :goto_0
    const-string/jumbo p0, "requestCapabilityExchange: mRegMan or ImsRegistration is null"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 584
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->FALSE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0

    .line 552
    :cond_9
    :goto_1
    const-string/jumbo p0, "requestCapabilityExchange: uri or mControl is null"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 553
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;->FALSE:Lcom/sec/internal/ims/servicemodules/options/CapabilityExchange$Result;

    return-object p0
.end method
