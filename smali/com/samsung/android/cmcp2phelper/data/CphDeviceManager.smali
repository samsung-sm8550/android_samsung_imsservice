.class public abstract Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;
.super Ljava/lang/Object;
.source "CphDeviceManager.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field private static cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

.field private static commandListener:Lcom/samsung/android/cmcp2phelper/CommandListener;

.field private static previousMessageIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

.field private static sHandler:Landroid/os/Handler;

.field private static sWhat:I

.field private static sessionId:I

.field private static sessionIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

.field private static targetList:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/2.1.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sessionIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->previousMessageIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    .locals 3

    .line 51
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 52
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New peer is discovered : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", count : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->targetList:Ljava/util/ArrayList;

    if-eqz p0, :cond_3

    .line 55
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 56
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "there is no target ip ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") on detected list"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 61
    :cond_2
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "All peers ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->targetList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") are discovered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    .line 62
    invoke-static {p0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->notify(Z)V

    :cond_3
    return-void
.end method

.method public static declared-synchronized clearDiscoveredPeers()V
    .locals 2

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 43
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized createSession()V
    .locals 2

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sessionId:I

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->generateSessionIdExcludingPreviousOne(I)I

    move-result v1

    sput v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sessionId:I

    .line 31
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static generateSessionIdExcludingPreviousOne(I)I
    .locals 2

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    :cond_0
    const v1, 0x7fffffff

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-eq v1, p0, :cond_0

    return v1
.end method

.method public static getDeviceList(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 68
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    .line 69
    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 72
    :cond_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    const-string v2, "--- P2P reachable peer list ----"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    .line 75
    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    new-instance v3, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getHotspotSupported()Z

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 77
    sget-object v2, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reachable peer : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    :cond_2
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--- end, num of peers("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") ----"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getSessionId()I
    .locals 1

    .line 47
    sget v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sessionId:I

    return v0
.end method

.method public static getTargetIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 150
    sget-object v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->cacheMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    .line 151
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method private static isNewMessage(II)Z
    .locals 2

    .line 0
    const v0, 0x3fffffff    # 1.9999999f

    if-le p0, p1, :cond_0

    sub-int v1, p0, p1

    if-gt v0, v1, :cond_1

    :cond_0
    sub-int/2addr p1, p0

    if-ge v0, p1, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static declared-synchronized notify(Z)V
    .locals 5

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 104
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p0, v1, :cond_0

    .line 107
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    invoke-virtual {p0, v4, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 109
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    sget v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    invoke-virtual {p0, v1, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    :goto_0
    sput-object v2, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized onReceivedCommand(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    .locals 7

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 116
    :try_start_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->commandListener:Lcom/samsung/android/cmcp2phelper/CommandListener;

    if-eqz v1, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMessageId()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getSessionId()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_3

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getExtraMessage()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getSessionId()I

    move-result v3

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMessageId()I

    move-result p0

    .line 122
    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sessionIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 124
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->previousMessageIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 132
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {p0, v4}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->isNewMessage(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 133
    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The new message from the same session has been received, sourceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,sessionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,message Id : "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v3, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->previousMessageIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->commandListener:Lcom/samsung/android/cmcp2phelper/CommandListener;

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/cmcp2phelper/CommandListener;->onReceiveCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 125
    :cond_3
    :goto_1
    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The new session has been detected, and the new message has been received, sourceId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ,sessionId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,message Id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget-object v4, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sessionIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v3, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->previousMessageIdPerDeviceId:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v3, v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->commandListener:Lcom/samsung/android/cmcp2phelper/CommandListener;

    invoke-interface {p0, v1, v2}, Lcom/samsung/android/cmcp2phelper/CommandListener;->onReceiveCommand(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    .line 116
    :cond_5
    :goto_3
    monitor-exit v0

    return-void

    :goto_4
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCallback(Landroid/os/Handler;I)V
    .locals 3

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 86
    :try_start_0
    sput-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sHandler:Landroid/os/Handler;

    .line 87
    sput p1, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->sWhat:I

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x5dc

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 91
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setCommandListener(Lcom/samsung/android/cmcp2phelper/CommandListener;)V
    .locals 1

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 95
    :try_start_0
    sput-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->commandListener:Lcom/samsung/android/cmcp2phelper/CommandListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    .line 97
    :cond_0
    :goto_0
    monitor-exit v0

    return-void
.end method

.method public static declared-synchronized setDiscoveryTargets(Ljava/util/ArrayList;)V
    .locals 1

    const-class v0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;

    monitor-enter v0

    .line 100
    :try_start_0
    sput-object p0, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->targetList:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
