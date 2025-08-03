.class public Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;
.super Ljava/lang/Object;
.source "MultimediaStreamingSessionEventBroadcaster.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IMultimediaStreamingSessionEventBroadcaster;


# instance fields
.field private final mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public addMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public broadcastInvitation(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public broadcastPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 56
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;->onPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 59
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 62
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public broadcastStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 70
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;->onStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 73
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public removeMultimediaStreamingEventListener(Lcom/gsma/services/rcs/extension/IMultimediaStreamingSessionListener;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/MultimediaStreamingSessionEventBroadcaster;->mMultimediaStreamingListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
