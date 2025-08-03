.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward;
.super Ljava/lang/Object;
.source "IEucStoreAndForward.java"


# virtual methods
.method public abstract forward(Ljava/lang/String;)V
.end method

.method public abstract sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
.end method

.method public abstract sendResponse(Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;Lcom/sec/internal/ims/servicemodules/euc/data/EucResponseData$Response;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseCallback;)Lcom/sec/internal/ims/servicemodules/euc/snf/IEucStoreAndForward$IResponseHandle;
.end method

.method public abstract store(Ljava/lang/String;)V
.end method
