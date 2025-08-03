.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;
.super Ljava/lang/Object;
.source "IEucRequest.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$IEucMessageData;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getTimeOut()Ljava/lang/Long;
.end method

.method public abstract getType()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest$EucRequestType;
.end method

.method public abstract isExternal()Z
.end method

.method public abstract isPinRequested()Z
.end method
