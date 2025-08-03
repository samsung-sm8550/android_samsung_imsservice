.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/euc/IEucFactory;
.super Ljava/lang/Object;
.source "IEucFactory.java"


# virtual methods
.method public abstract combine(Ljava/util/List;Ljava/util/List;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
            ">;)",
            "Ljava/lang/Iterable<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
.end method

.method public abstract createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucAcknowledgment;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
.end method

.method public abstract createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucNotification;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
.end method

.method public abstract createEUC(Lcom/sec/internal/ims/servicemodules/euc/data/resip/IEucRequest;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
.end method

.method public abstract createEucData(Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;ZLjava/lang/String;ZLcom/sec/internal/ims/servicemodules/euc/data/EucState;JLjava/lang/Long;)Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
.end method
