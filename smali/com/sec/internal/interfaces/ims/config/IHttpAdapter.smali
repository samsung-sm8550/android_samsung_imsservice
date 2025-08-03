.class public interface abstract Lcom/sec/internal/interfaces/ims/config/IHttpAdapter;
.super Ljava/lang/Object;
.source "IHttpAdapter.java"


# virtual methods
.method public abstract close()Z
.end method

.method public abstract getNetwork()Landroid/net/Network;
.end method

.method public abstract open(Ljava/lang/String;)Z
.end method

.method public abstract request()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method

.method public abstract setHeaders(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract setMethod(Ljava/lang/String;)V
.end method

.method public abstract setNetwork(Landroid/net/Network;)V
.end method

.method public abstract setParams(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
