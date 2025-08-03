.class public Lcom/sec/internal/ims/cmstore/RetryStackAdapterHelper;
.super Ljava/lang/Object;
.source "RetryStackAdapterHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 0

    .line 41
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result p0

    return p0
.end method

.method public clearRetryHistory()V
    .locals 0

    .line 51
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->clearRetryHistory()V

    return-void
.end method

.method public getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 0

    .line 16
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 26
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public isRetryTimesFinished()Z
    .locals 1

    .line 46
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    new-instance v0, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;

    invoke-direct {v0}, Lcom/sec/internal/ims/cmstore/CloudMessageManagerHelper;-><init>()V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->isRetryTimesFinished(Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;)Z

    move-result p0

    return p0
.end method

.method public pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
    .locals 0

    .line 21
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;

    move-result-object p0

    return-object p0
.end method

.method public retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
    .locals 0

    .line 36
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V

    return-void
.end method

.method public retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z
    .locals 0

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z

    move-result p0

    return p0
.end method

.method public saveRetryLastFailedTime(J)V
    .locals 0

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->saveRetryLastFailedTime(J)V

    return-void
.end method

.method public searchAndPush(Landroid/util/Pair;ILcom/sec/internal/ims/cmstore/MessageStoreClient;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;",
            "Lcom/sec/internal/constants/ims/cmstore/omanetapi/SyncMsgType;",
            ">;I",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ")Z"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
    .locals 0

    .line 56
    invoke-static {}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->getInstance()Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/cmstore/adapters/RetryStackAdapter;->searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z

    move-result p0

    return p0
.end method
