.class public interface abstract Lcom/sec/internal/ims/servicemodules/im/listener/IFtEventListener;
.super Ljava/lang/Object;
.source "IFtEventListener.java"


# virtual methods
.method public abstract onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
.end method

.method public abstract onFileTransferAttached(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onFileTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onFileTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
.end method

.method public abstract onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
.end method

.method public abstract onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferStarted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method
