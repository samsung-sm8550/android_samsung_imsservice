.class public interface abstract Lcom/sec/internal/ims/servicemodules/presence/IPresenceStackInterface;
.super Ljava/lang/Object;
.source "IPresenceStackInterface.java"


# virtual methods
.method public abstract publish(Lcom/sec/ims/presence/PresenceInfo;Landroid/os/Message;I)V
.end method

.method public abstract registerForPresenceInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPresenceNotifyInfo(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPresenceNotifyStatus(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForPublishFailure(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract subscribe(Lcom/sec/ims/util/ImsUri;ZLandroid/os/Message;Ljava/lang/String;I)V
.end method

.method public abstract subscribeList(Ljava/util/List;ZLandroid/os/Message;Ljava/lang/String;ZII)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation
.end method

.method public abstract unpublish(I)V
.end method

.method public abstract updateServiceVersion(ILjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method
