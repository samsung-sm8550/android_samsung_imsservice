.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEuc;
.super Ljava/lang/Object;
.source "IEuc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getDefaultData()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract getEucId()Ljava/lang/String;
.end method

.method public abstract getFromHeader()Lcom/sec/ims/util/ImsUri;
.end method

.method public abstract getLanguageMapping()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getOwnIdentity()Ljava/lang/String;
.end method

.method public abstract getTimestamp()J
.end method
