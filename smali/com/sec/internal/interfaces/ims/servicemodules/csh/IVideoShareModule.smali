.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/csh/IVideoShareModule;
.super Ljava/lang/Object;
.source "IVideoShareModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract changeSurfaceOrientation(JI)V
.end method

.method public abstract createShare(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lcom/sec/internal/ims/servicemodules/csh/VideoShare;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMaxDurationTime()I
.end method
