.class public interface abstract Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;
.super Ljava/lang/Object;
.source "FtMessageListener.java"


# virtual methods
.method public abstract onAutoResumeTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onCancelRequestFailed(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onFileResizingNeeded(Lcom/sec/internal/ims/servicemodules/im/FtMessage;J)V
.end method

.method public abstract onFtErrorReport(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)V
.end method

.method public abstract onImdnNotificationReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;Lcom/sec/ims/util/ImsUri;Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Z)V
.end method

.method public abstract onMessageSendingFailed(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
.end method

.method public abstract onMessageSendingSucceeded(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
.end method

.method public abstract onNotifyCloudMsgFtEvent(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onRequestChatType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;
.end method

.method public abstract onRequestCompleteCallback(Ljava/lang/String;)Landroid/os/Message;
.end method

.method public abstract onRequestIncomingFtTransferPath()Ljava/lang/String;
.end method

.method public abstract onRequestParticipantUris(Ljava/lang/String;)Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onRequestRegistrationType()Ljava/lang/Integer;
.end method

.method public abstract onSendDeliveredNotification(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferCanceled(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferCompleted(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferCreated(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferInProgress(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferProgressReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method

.method public abstract onTransferReceived(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
.end method
