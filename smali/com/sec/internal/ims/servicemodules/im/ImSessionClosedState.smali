.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionClosedState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ClosedState"


# instance fields
.field protected mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;


# direct methods
.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method private getClosedReasonByImError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;
    .locals 2

    .line 347
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 349
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$ImError:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    if-eqz p3, :cond_4

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p0, p1, :cond_0

    .line 395
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto/16 :goto_0

    .line 397
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto/16 :goto_0

    :pswitch_1
    if-eqz p2, :cond_1

    .line 384
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receive BYE with 410 reason. referred by = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 385
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 386
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 387
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string/jumbo p1, "support_chat_close_by_server"

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 388
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    :pswitch_2
    if-eqz p3, :cond_2

    .line 376
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEAVE_SESSION_FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 377
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->ACTIVE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 378
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 369
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 370
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 364
    :pswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_WITH_480_REASON_CODE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 357
    :pswitch_5
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 358
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    goto :goto_0

    .line 351
    :pswitch_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 352
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    :cond_4
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onAttachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    if-nez v1, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachSlmFile()V

    goto :goto_0

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/strategy/ChnStrategy;

    if-nez v1, :cond_2

    .line 329
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p0

    .line 331
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p0, v0, :cond_1

    .line 332
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 333
    :cond_1
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p0, v0, :cond_3

    .line 336
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachSlmFile()V

    .line 337
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->isResuming()Z

    move-result p0

    if-nez p0, :cond_3

    .line 338
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    .line 342
    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachFile(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method private onSendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    .line 312
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleAttachFileFailure(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object p0

    .line 314
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p0, v0, :cond_0

    .line 315
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->REMOTE_TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    .line 316
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne p0, v0, :cond_2

    .line 317
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    goto :goto_0

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    :cond_2
    :goto_0
    return-void
.end method

.method private retryCurrentMessages()V
    .locals 4

    .line 302
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "send pending messages"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 304
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v3, 0xbb9

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 9

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState enter. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mClosedReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", ChatState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 56
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0x3ff

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    .line 60
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/sec/ims/util/ImsUri;

    .line 61
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    const/4 v7, 0x0

    iget v8, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    const/4 v6, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v2, v3, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_2

    .line 67
    :cond_1
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->KICKED_OUT_BY_LEADER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->GROUP_CHAT_DISMISSED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-eq v2, v3, :cond_3

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->LEFT_BY_SERVER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v2, v3, :cond_2

    goto :goto_1

    .line 71
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    .line 72
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isChatState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_2

    .line 70
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 76
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->ALL_PARTICIPANTS_LEFT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 80
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v3, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 82
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;->CLOSED:Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;

    invoke-interface {v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatStatusUpdate(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/ImSession$SessionState;)V

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    invoke-interface {v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatClosed(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;)V

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    const-string/jumbo v2, "support_offline_gc_invitation"

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsOfflineGCInvitation:Z

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_REMOTE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v2, v3, :cond_6

    .line 88
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getState()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsOfflineGCInvitation:Z

    const/16 v0, 0x3fc

    .line 90
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :cond_6
    return-void
.end method

.method protected forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Z)V
    .locals 6

    .line 419
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceCancelFt :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 423
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v2, :cond_0

    .line 424
    move-object v2, v1

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 425
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "forceCancelFt : mPendingMessages FtMessage.getStateId() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 426
    instance-of v1, v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 427
    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 428
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_0

    .line 431
    invoke-virtual {v2, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 438
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->cancelPendingFilesInQueue()V

    :cond_3
    return-void
.end method

.method public handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 5

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 149
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-eqz v0, :cond_6

    .line 151
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCloseSession, info.mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$data$info$ImSessionInfo$ImSessionState:[I

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x3f5

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    .line 189
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x3ec

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p1, v1, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 190
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 191
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, p1, :cond_0

    .line 192
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    .line 194
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    .line 195
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-direct {v1, v0, p2, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    .line 194
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    goto/16 :goto_1

    .line 172
    :pswitch_1
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result p1

    if-nez p1, :cond_1

    .line 173
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 175
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 178
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->CLOSING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 179
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, p1, :cond_2

    .line 180
    iput-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    .line 182
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    .line 183
    invoke-virtual {p0, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-direct {v1, v0, p2, p0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    .line 182
    invoke-interface {p1, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    goto :goto_1

    .line 160
    :pswitch_2
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_3

    .line 162
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    iput-object p2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    goto :goto_0

    .line 163
    :cond_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, v0, :cond_4

    .line 164
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    iput-object p2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    goto :goto_0

    .line 165
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne p2, v0, :cond_5

    .line 166
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    iput-object p2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;->mSessionRejectReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 168
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->rejectImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/RejectImSessionParams;)V

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    goto :goto_1

    .line 156
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    goto :goto_1

    .line 202
    :cond_6
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleCloseSession cannot find ImSessionInfo with rawHandle : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onCloseSessionDone(Landroid/os/Message;)V
    .locals 5

    .line 267
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 268
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;

    .line 269
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCloseSessionDone : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 270
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mError:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 271
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 273
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-nez v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v1

    if-nez v1, :cond_3

    .line 275
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mCurrentMessages:Ljava/util/List;

    const/4 v4, 0x0

    .line 276
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isFirstMessageInStart(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v1, "Retry when MSRP is not respond"

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->retryCurrentMessages()V

    goto :goto_1

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v1, v3, :cond_1

    .line 282
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->DEVICE_UNREGISTERED:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->mStopReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    if-ne v1, v2, :cond_2

    .line 284
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->NETWORK_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    goto :goto_0

    .line 286
    :cond_2
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v0, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    .line 288
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 292
    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v0, 0x3ff

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v0, 0x2bf20

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_2

    .line 294
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onCloseSessionDone : unknown rawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StopImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedEvent:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionClosed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 215
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 219
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 224
    :cond_1
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 225
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mReferredBy:Lcom/sec/ims/util/ImsUri;

    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    invoke-direct {p0, v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->getClosedReasonByImError(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/ims/util/ImsUri;Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 227
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_2

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->NORMAL_RELEASE_GONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v3, :cond_2

    .line 228
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p0, v2, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->forceCancelFt(ZLcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;Z)V

    .line 230
    :cond_2
    iget-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mIsTryToLeave:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isVoluntaryDeparture()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 231
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_BY_LOCAL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    if-ne v2, v3, :cond_3

    .line 232
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 233
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onChatDeparted(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    goto :goto_0

    .line 235
    :cond_3
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string v2, "handle_leave_ogc_failure"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    goto :goto_0

    .line 241
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "session closed event for invalid handle current : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " event.mRawHandle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 245
    :cond_5
    :goto_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v1, v2, :cond_6

    .line 246
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    goto :goto_1

    .line 251
    :cond_6
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ec

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 254
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasActiveImSessionInfo()Z

    move-result v0

    if-nez v0, :cond_8

    .line 255
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->failCurrentMessages(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 258
    :cond_8
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    return-void

    .line 220
    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSessionClosed : unknown rawHandle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState, processGroupChatManagementEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7d3

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 124
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState, processMessagingEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 100
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbbc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbbd

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 102
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onSendFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 106
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onAttachFile(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClosedState, processSessionConnectionEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ChatId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method
