.class public interface abstract Lcom/sec/internal/ims/servicemodules/euc/persistence/IUserConsentPersistence;
.super Ljava/lang/Object;
.source "IUserConsentPersistence.java"


# virtual methods
.method public abstract getEucList(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/euc/data/EucType;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/database/Cursor;"
        }
    .end annotation
.end method

.method public abstract removeEuc(Ljava/lang/String;[Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
