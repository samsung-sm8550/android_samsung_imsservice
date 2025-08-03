.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/csh/IImageShareModule;
.super Ljava/lang/Object;
.source "IImageShareModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/csh/ImageShare;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxSize()J
.end method

.method public abstract getWarnSize()J
.end method

.method public abstract registerImageShareEventListener(Lcom/sec/internal/ims/servicemodules/csh/IImageShareEventListener;)V
.end method
