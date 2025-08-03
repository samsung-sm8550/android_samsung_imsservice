.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/presence/IPresenceModule;
.super Ljava/lang/Object;
.source "IPresenceModule.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/base/IServiceModule;


# virtual methods
.method public abstract getListSubExpiry(I)I
.end method

.method public abstract getListSubMaxUri(I)I
.end method

.method public abstract getOwnPresenceInfo(I)Lcom/sec/ims/presence/PresenceInfo;
.end method

.method public abstract getParalysed(I)Z
.end method

.method public abstract getPresenceInfo(Lcom/sec/ims/util/ImsUri;I)Lcom/sec/ims/presence/PresenceInfo;
.end method

.method public abstract getPresenceInfoByContactId(Ljava/lang/String;I)Lcom/sec/ims/presence/PresenceInfo;
.end method

.method public abstract getPublishExpiry(I)I
.end method

.method public abstract getPublishSourceThrottle(I)I
.end method

.method public abstract getPublishTimer(I)I
.end method

.method public abstract isListSubGzipEnabled(I)I
.end method

.method public abstract isOwnPresenceInfoHasTuple(IJ)Z
.end method

.method public abstract removePresenceCache(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract setDisplayText(ILjava/lang/String;)V
.end method

.method public abstract setParalysed(ZI)V
.end method

.method public abstract unpublish(I)V
.end method
