.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;
.super Ljava/lang/Object;
.source "IEucAcknowledgment.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;
.end method

.method public bridge synthetic getDefaultData()Ljava/lang/Object;
    .locals 0

    .line 17
    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;->getDefaultData()Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment$IEUCMessageData;

    move-result-object p0

    return-object p0
.end method
