.class public interface abstract Lcom/sec/internal/ims/servicemodules/session/IMessagingSessionListener;
.super Ljava/lang/Object;
.source "IMessagingSessionListener.java"


# virtual methods
.method public abstract onIncomingSessionInvited(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;)V
.end method

.method public abstract onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;[BLjava/lang/String;)V
.end method

.method public abstract onMessagesFlushed(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
.end method

.method public abstract onStateChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V
.end method
