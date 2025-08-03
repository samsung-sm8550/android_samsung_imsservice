.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IMultimediaStreamingSessionEventBroadcaster;
.super Ljava/lang/Object;
.source "IMultimediaStreamingSessionEventBroadcaster.java"


# virtual methods
.method public abstract broadcastInvitation(Ljava/lang/String;Landroid/content/Intent;)V
.end method

.method public abstract broadcastPayloadReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
.end method

.method public abstract broadcastStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
.end method
