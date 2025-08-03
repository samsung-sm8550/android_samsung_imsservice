.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest;
.super Ljava/lang/Object;
.source "IEucSystemRequest.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getMessageData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$IEUCMessageData;
.end method

.method public abstract getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucSystemRequest$EucSystemRequestType;
.end method
