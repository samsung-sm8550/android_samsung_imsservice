.class public interface abstract Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;
.super Ljava/lang/Object;
.source "ImMessageListener.java"


# virtual methods
.method public abstract onMessageReceived(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
.end method

.method public abstract onMessageSendResponse(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
.end method

.method public abstract onMessageSendResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
.end method

.method public abstract onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
.end method

.method public abstract onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
.end method
