.class public interface abstract Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
.super Ljava/lang/Object;
.source "IImServiceInterface.java"


# virtual methods
.method public abstract acceptFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptFtSessionParams;)V
.end method

.method public abstract acceptImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/AcceptImSessionParams;)V
.end method

.method public abstract addImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/AddParticipantsParams;)V
.end method

.method public abstract cancelFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
.end method

.method public abstract changeGroupAlias(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupAliasParams;)V
.end method

.method public abstract changeGroupChatIcon(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatIconParams;)V
.end method

.method public abstract changeGroupChatLeader(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatLeaderParams;)V
.end method

.method public abstract changeGroupChatSubject(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChangeGroupChatSubjectParams;)V
.end method

.method public abstract extendToGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
.end method

.method public abstract registerForChatbotAnonymizeNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForChatbotAnonymizeResp(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForChatbotAsSpamNotify(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForComposingNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForConferenceInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForGroupChatInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForGroupChatListUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImIncomingFileTransfer(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImIncomingMessage(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImIncomingSession(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImSessionClosed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImSessionEstablished(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImdnFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImdnNotification(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForImdnResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMessageFailed(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForMessageRevokeResponse(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForSendMessageRevokeDone(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract registerForTransferProgress(Landroid/os/Handler;ILjava/lang/Object;)V
.end method

.method public abstract rejectFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectFtSessionParams;)V
.end method

.method public abstract rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V
.end method

.method public abstract removeImParticipants(Lcom/sec/internal/constants/ims/servicemodules/im/params/RemoveParticipantsParams;)V
.end method

.method public abstract reportChatbotAsSpam(Lcom/sec/internal/constants/ims/servicemodules/im/params/ReportChatbotAsSpamParams;)V
.end method

.method public abstract requestChatbotAnonymize(Lcom/sec/internal/constants/ims/servicemodules/im/params/ChatbotAnonymizeParams;)V
.end method

.method public abstract sendCanceledNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendComposingNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/ImSendComposingParams;)V
.end method

.method public abstract sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendFtDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendFtDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V
.end method

.method public abstract sendFtSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;)V
.end method

.method public abstract sendImMessage(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;)V
.end method

.method public abstract sendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V
.end method

.method public abstract setFtMessageId(Ljava/lang/Object;I)V
.end method

.method public abstract setMoreInfoToSipUserAgent(Ljava/lang/String;I)V
.end method

.method public abstract startImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;)V
.end method

.method public abstract stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V
.end method

.method public abstract subscribeGroupChatInfo(Landroid/net/Uri;Ljava/lang/String;)V
.end method

.method public abstract subscribeGroupChatList(IZLjava/lang/String;)V
.end method

.method public abstract unRegisterForGroupChatInfoUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unRegisterForGroupChatListUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterAllFileTransferProgress()V
.end method

.method public abstract unregisterForChatbotAnonymizeNotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForChatbotAnonymizeResp(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForChatbotAsSpamNotify(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForComposingNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForConferenceInfoUpdate(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImIncomingFileTransfer(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImIncomingMessage(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImIncomingSession(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImSessionClosed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImSessionEstablished(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImdnFailed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImdnNotification(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForImdnResponse(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMessageFailed(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForMessageRevokeResponse(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForSendMessageRevokeDone(Landroid/os/Handler;)V
.end method

.method public abstract unregisterForTransferProgress(Landroid/os/Handler;)V
.end method
