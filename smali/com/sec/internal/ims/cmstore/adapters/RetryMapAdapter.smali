.class public Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;
.super Ljava/lang/Object;
.source "RetryMapAdapter.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private transient mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/utils/RetryParam;",
            ">;"
        }
    .end annotation
.end field

.field private messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    .line 25
    const-class v0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    .line 29
    const-string p0, "RetryMapAdapter Constructor"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clearRetryHistory()V
    .locals 2

    monitor-enter p0

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    const-string v1, "clearRetryCounter: retry history cleared"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 98
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized increaseRetryCount(Landroid/util/Pair;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
            ">;I)Z"
        }
    .end annotation

    monitor-enter p0

    .line 46
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 47
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increaseRetryCount, Already Exists in Map with retried count :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 50
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    const-string v0, "increaseRetryCount, removed key "

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 54
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getRetryCount()I

    move-result p1

    add-int/2addr p1, v1

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->setRetryCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    monitor-exit p0

    return v1

    .line 57
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "increaseRetryCount, New to Map, added entry for errorCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    new-instance v0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    invoke-direct {v0, v2, v1, p2}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;-><init>(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;II)V

    .line 59
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initRetryMapAdapter(Lcom/sec/internal/ims/cmstore/MessageStoreClient;)V
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 90
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 84
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retryApi(Landroid/util/Pair;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;",
            "Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;",
            "Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;",
            ")Z"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retryApi : Second "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/utils/RetryParam;

    if-eqz v0, :cond_2

    .line 109
    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getErrorCode()I

    move-result v1

    .line 110
    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v2}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getTimerValue(I)J

    move-result-wide v1

    .line 111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/cmstore/utils/RetryParam;->getLastExecuted()J

    move-result-wide v5

    add-long/2addr v5, v1

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    .line 112
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 113
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Exhausted, Last Retry Val: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    sget-object v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;->VM_GREETINGS:Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 115
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getHttpController()Lcom/sec/internal/ims/cmstore/utils/CmsHttpController;

    move-result-object v7

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v2, p1

    check-cast v2, Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->messageStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    move-object v1, v0

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;->getRetryInstance(Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/ims/cmstore/MessageStoreClient;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Lcom/sec/internal/helper/httpclient/HttpRequestParams;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/sec/internal/helper/httpclient/HttpController;->execute(Lcom/sec/internal/helper/httpclient/HttpRequestParams;)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 127
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "retryLastApi: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 131
    :cond_3
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized searchAndPush(Landroid/util/Pair;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
            ">;I)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->mMap:Ljava/util/Map;

    if-nez v1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    .line 71
    instance-of v2, v1, Lcom/sec/internal/ims/cmstore/ambs/globalsetting/BaseProvisionAPIRequest;

    if-nez v2, :cond_1

    instance-of v1, v1, Lcom/sec/internal/omanetapi/nms/BaseNMSRequest;

    if-nez v1, :cond_1

    .line 72
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "searchAndPush, returning because of wrong request"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 75
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->increaseRetryCount(Landroid/util/Pair;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "searchAndPush, Already exhausted Max Counts"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    monitor-exit p0

    return v0

    .line 79
    :cond_2
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 66
    :cond_3
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/adapters/RetryMapAdapter;->TAG:Ljava/lang/String;

    const-string/jumbo p2, "searchAndPush, param or mMap is null"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw p1
.end method
