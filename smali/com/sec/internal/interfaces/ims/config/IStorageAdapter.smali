.class public interface abstract Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;
.super Ljava/lang/Object;
.source "IStorageAdapter.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract delete(Ljava/lang/String;)I
.end method

.method public abstract deleteAll()Z
.end method

.method public abstract getIdentity()Ljava/lang/String;
.end method

.method public abstract getState()I
.end method

.method public abstract open(Landroid/content/Context;Ljava/lang/String;I)V
.end method

.method public abstract query([Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract read(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract readAll()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readAll(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setDBTableMax(I)V
.end method

.method public abstract write(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract writeAll(Ljava/util/Map;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation
.end method
