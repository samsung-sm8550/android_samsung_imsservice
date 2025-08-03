.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/data/IEucQuery;
.super Ljava/lang/Object;
.source "IEucQuery.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract addDialogData(Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;)V
.end method

.method public abstract getDialogData(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/euc/data/IDialogData;
.end method

.method public abstract getEucData()Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;
.end method

.method public abstract hasDialog(Ljava/lang/String;)Z
.end method
