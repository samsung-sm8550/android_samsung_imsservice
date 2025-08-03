.class public interface abstract Lcom/sec/internal/ims/servicemodules/im/listener/IMessageEventListener;
.super Ljava/lang/Object;
.source "IMessageEventListener.java"


# virtual methods
.method public abstract onCancelMessageResponse(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
.end method

.method public abstract onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
.end method

.method public abstract onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
.end method

.method public abstract onMessageSendResponseFailed(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
.end method

.method public abstract onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
.end method

.method public abstract onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
.end method
