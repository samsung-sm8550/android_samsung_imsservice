.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/cache/IEucCache;
.super Ljava/lang/Object;
.source "IEucCache.java"


# virtual methods
.method public abstract clearAllForOwnIdentity(Ljava/lang/String;)V
.end method

.method public abstract get(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
.end method

.method public abstract getAllByType(Lcom/sec/internal/ims/servicemodules/euc/data/EucType;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isEmpty()Z
.end method

.method public abstract put(Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;)V
.end method

.method public abstract remove(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
.end method
