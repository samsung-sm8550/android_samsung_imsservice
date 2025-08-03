.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IMultimediaMessagingSessionEventBroadcaster;
.super Ljava/lang/Object;
.source "IMultimediaMessagingSessionEventBroadcaster.java"


# virtual methods
.method public abstract broadcastMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[B)V
.end method

.method public abstract broadcastMessageReceived(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;[BLjava/lang/String;)V
.end method

.method public abstract broadcastMessagesFlushed(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)V
.end method

.method public abstract broadcastStateChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Lcom/gsma/services/rcs/extension/MultimediaSession$State;Lcom/gsma/services/rcs/extension/MultimediaSession$ReasonCode;)V
.end method
