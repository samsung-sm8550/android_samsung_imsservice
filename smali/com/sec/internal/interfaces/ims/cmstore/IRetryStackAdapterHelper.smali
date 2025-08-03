.class public interface abstract Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;
.super Ljava/lang/Object;
.source "IRetryStackAdapterHelper.java"


# virtual methods
.method public abstract checkRequestRetried(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
.end method

.method public abstract clearRetryHistory()V
.end method

.method public abstract getLastFailedRequest()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract isRetryTimesFinished()Z
.end method

.method public abstract pop()Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;
.end method

.method public abstract retryApi(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)V
.end method

.method public abstract retryLastApi(Lcom/sec/internal/interfaces/ims/cmstore/IAPICallFlowListener;Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageManagerHelper;Lcom/sec/internal/interfaces/ims/cmstore/IRetryStackAdapterHelper;)Z
.end method

.method public abstract saveRetryLastFailedTime(J)V
.end method

.method public abstract searchAndPush(Landroid/util/Pair;ILcom/sec/internal/ims/cmstore/MessageStoreClient;)Z
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
.end method

.method public abstract searchAndPush(Lcom/sec/internal/interfaces/ims/cmstore/IHttpAPICommonInterface;)Z
.end method
