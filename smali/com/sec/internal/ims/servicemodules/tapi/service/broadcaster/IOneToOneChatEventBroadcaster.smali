.class public interface abstract Lcom/sec/internal/ims/servicemodules/tapi/service/broadcaster/IOneToOneChatEventBroadcaster;
.super Ljava/lang/Object;
.source "IOneToOneChatEventBroadcaster.java"


# virtual methods
.method public abstract broadcastComposingEvent(Lcom/gsma/services/rcs/contact/ContactId;Z)V
.end method

.method public abstract broadcastMessageDeleted(Ljava/lang/String;Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract broadcastMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public abstract broadcastMessageStatusChanged(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;Ljava/lang/String;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$Status;Lcom/gsma/services/rcs/chat/ChatLog$Message$Content$ReasonCode;)V
.end method
