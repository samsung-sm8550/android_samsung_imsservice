.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;
.super Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;
.source "ImSessionDefaultState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DefaultState"


# instance fields
.field private mIsTriggeredCapex:Z


# direct methods
.method public static synthetic $r8$lambda$AXyJz19KWvNkBOwY4HGoP4S67fY(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->lambda$onResendMessageRevokeRequest$2(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a_pyn2ZRivhaUb4g_cBrv6ly-mg(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->lambda$onMessageRevokeTimerExpired$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$hfeHJ73GB6-a6ZLAws6NOM4Dldo(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->lambda$onSendMessageRevokeRequest$1(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method constructor <init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;-><init>(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method private handleSendImResult(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;)V
    .locals 5

    .line 970
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    .line 971
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-wide/16 v2, 0x3e8

    const/16 v4, 0xbb9

    packed-switch v1, :pswitch_data_0

    .line 1026
    iget-object p0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto/16 :goto_0

    .line 1020
    :pswitch_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSendImMessageDone retry_after_regi msgId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1021
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1022
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    goto/16 :goto_0

    .line 1014
    :pswitch_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mRawHandle:Ljava/lang/Object;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 1015
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 1016
    iget-object p0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto/16 :goto_0

    .line 1006
    :pswitch_2
    instance-of p1, p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz p1, :cond_0

    .line 1007
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleUploadedFileFallback(Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;)V

    goto/16 :goto_0

    .line 1009
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 p1, 0xbbf

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1000
    :pswitch_3
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onSendImMessageDone retry_after_session msgId: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1001
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, v4, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1002
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    goto/16 :goto_0

    .line 988
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendImMessageDone retry_after msgId: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 989
    instance-of p1, p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz p1, :cond_1

    .line 990
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getCurrentRetryCount()I

    move-result p3

    invoke-interface {p1, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getFtHttpSessionRetryTimer(ILcom/sec/internal/constants/ims/servicemodules/im/ImError;)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_1

    .line 992
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput p1, p3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    .line 995
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1, v4, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    int-to-long v0, p0

    mul-long/2addr v0, v2

    invoke-virtual {p1, p3, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 996
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    goto :goto_0

    .line 973
    :pswitch_5
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {p0, p1, p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    new-instance p1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p2, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 978
    :pswitch_6
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendImMessageDone retry msgId : "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 979
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1, v4, p2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 980
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 981
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->UNSUPPORTED_URI_SCHEME:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, p1, :cond_2

    .line 982
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo p2, "onSendImMessageDone retry with other URI format"

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 983
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSwapUriType:Z

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic lambda$onMessageRevokeTimerExpired$0(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 884
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onResendMessageRevokeRequest$2(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 926
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onSendMessageRevokeRequest$1(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 899
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p1, p0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private onAcceptSnfSessionDone(Landroid/os/Message;)V
    .locals 3

    .line 817
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 818
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 819
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACCEPT_SNF_SESSION_DONE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 820
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq v0, v1, :cond_0

    .line 821
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    .line 824
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->releaseWakeLock(Ljava/lang/Object;)V

    return-void
.end method

.method private onAttachFile(Landroid/os/Message;)V
    .locals 9

    .line 716
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 717
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    .line 718
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_0

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_SERVICE:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    .line 719
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    int-to-long v5, v2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 720
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v7

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v8

    move-object v2, v4

    move-wide v4, v5

    move-object v6, v7

    move v7, v8

    .line 719
    invoke-interface/range {v2 .. v7}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->checkCapability(Ljava/util/Set;JLcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Z)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    .line 721
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isFtSms()Z

    move-result v2

    if-nez v2, :cond_1

    .line 722
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachSlmFile()V

    goto :goto_1

    .line 723
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 724
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    .line 725
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    goto :goto_1

    :cond_2
    const/4 p0, 0x1

    .line 727
    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->attachFile(Z)V

    :goto_1
    return-void
.end method

.method private onCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mInProgressRequestCallbacks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 849
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingEvents:Ljava/util/List;

    const/16 v1, 0x3f4

    invoke-virtual {p0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 852
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 853
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    return-void
.end method

.method private onCloseSessionTimeout(Ljava/lang/Object;)V
    .locals 3

    .line 1032
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCloseSessionTimeout : rawHandle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 1033
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1035
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    :cond_0
    return-void
.end method

.method private onDownloadGroupIconDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V
    .locals 3

    .line 964
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DOWNLOAD_GROUP_ICON_DONE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIconData(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    .line 966
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getIconData()Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onGroupChatIconUpdated(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    return-void
.end method

.method private onExpireDeliveryTimeout()V
    .locals 4

    .line 579
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 580
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v1, :cond_0

    .line 581
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    .line 582
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v1, v2, :cond_0

    .line 583
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onExpireDeliveryTimeout : sending failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultState"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_DELIVERY_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {v1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private onExtendToGroupChatDone(Landroid/os/Message;)V
    .locals 2

    .line 272
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 273
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 274
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 275
    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsSucceeded(Ljava/util/List;)V

    goto :goto_0

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onAddParticipantsFailed(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImErrorReason;)V

    .line 280
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    return-void
.end method

.method private onFileComplete(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 5

    .line 400
    invoke-static {p1}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFileComplete: mProcessingFileTransfer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingFileTrasfer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    .line 403
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 405
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_0

    .line 406
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 407
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onRequestSendMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFileComplete isRemoved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mProcessingFileTransfer size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    .line 414
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    .line 422
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mPendingFileTransfer size: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    .line 423
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 422
    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 426
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 427
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v0, "onFileComplete next send file"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 428
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->removeNextFtMessage()Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 431
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getFtCallback()Landroid/os/Message;

    move-result-object v0

    if-nez v0, :cond_2

    .line 432
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0xbbe

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setFtCompleteCallback(Landroid/os/Message;)V

    .line 438
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 439
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0xbbd

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 442
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addToProcessingFileTransfer(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 444
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onProcessingFileTransferChanged(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private onForceCloseSession()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isRejoinable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;->CLOSED_INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedReason:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionClosedReason;

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-nez v0, :cond_1

    .line 458
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/DefaultRCSMnoStrategy;-><init>(Landroid/content/Context;I)V

    .line 460
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->getSessionStopReason(Z)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    move-result-object v0

    .line 461
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImSessionInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 464
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    return-void
.end method

.method private onMessageRevokeOperationTimeout(Ljava/lang/String;)V
    .locals 4

    .line 948
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-nez v0, :cond_1

    .line 953
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/lang/String;)V

    return-void

    .line 957
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MESSAGE_REVOKE_OPERATION_TIMEOUT : imdnId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 958
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 959
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {v0, v1, p1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    return-void
.end method

.method private onMessageRevokeTimerExpired()V
    .locals 6

    .line 880
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MESSAGE_REVOKE_TIMER_EXPIRED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 881
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 882
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    .line 883
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 884
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 885
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 886
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v5, 0x0

    invoke-interface {v3, v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 888
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    goto :goto_0

    .line 891
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, v0, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevokeTimerExpired(Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;)V

    return-void
.end method

.method private onProcessIncomingSnfSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V
    .locals 2

    .line 810
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->PENDING_INVITE:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addImSessionInfo(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 811
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleAcceptSession(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 813
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mReceivedMessage:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onIncomingSessionProcessed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Z)V

    return-void
.end method

.method private onReceiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 7

    .line 363
    const-string v0, "msg cannot be null"

    invoke-static {p1, v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceiveImMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultState"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDeliveredTimestamp(J)V

    .line 368
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isDeliveredNotificationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 370
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0xbc2

    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsBlockedIncomingSession:Z

    if-eqz v0, :cond_1

    return-void

    .line 377
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz v0, :cond_2

    .line 378
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onReceived()V

    goto :goto_0

    .line 379
    :cond_2
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-eqz v0, :cond_3

    .line 380
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->receiveTransfer()V

    .line 387
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getComposingActiveUris()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    const/4 v5, 0x0

    iget v6, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mComposingNotificationInterval:I

    const/4 v4, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onComposingReceived(Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;ZI)V

    :cond_4
    return-void
.end method

.method private onResendMessageRevokeRequest()V
    .locals 6

    .line 924
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v0

    .line 925
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 926
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 927
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 928
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 929
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v3, v4, :cond_0

    .line 930
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RESEND_MESSAGE_REVOKE_REQUEST : imdnId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 931
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNotEmptyContributionId()V

    .line 932
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNotEmptyConversationId()V

    .line 933
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v5, 0xbc9

    .line 934
    invoke-virtual {v4, v5, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 935
    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 933
    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendMessageRevokeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onSendCanceledNotificationDone(Landroid/os/Message;)V
    .locals 2

    .line 1040
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 1041
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 1042
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1043
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 1045
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendCanceledNotificationDone()V

    .line 1047
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onSendCanceledNotificationDone(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private onSendDeliveredNodification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 10

    .line 737
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfoByMessageId(I)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 738
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 739
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    if-ne v2, v3, :cond_0

    .line 740
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    :cond_0
    move-object v3, v1

    .line 742
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v1, 0xbc3

    .line 743
    invoke-virtual {v0, v1, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 744
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v8

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v9

    move-object v2, p1

    .line 742
    invoke-virtual/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V

    return-void
.end method

.method private onSendDeliveredNodificationDone(Landroid/os/Message;)V
    .locals 2

    .line 763
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 764
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 765
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 766
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    .line 767
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p1, "There is ENGINE Error during sending DELIVERED"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDeliveredNotificationDone()V

    :goto_0
    return-void
.end method

.method private onSendDisplayedNotification()V
    .locals 4

    .line 748
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isAggrImdnSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    .line 749
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->sendAggregatedDisplayReport()V

    goto :goto_1

    .line 752
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 753
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    const-string/jumbo v3, "num_of_display_notification_atonce"

    invoke-interface {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->intSetting(Ljava/lang/String;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 755
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 757
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendDisplayedNotification(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private onSendDisplayedNotificationDone(Landroid/os/Message;)V
    .locals 2

    .line 775
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 776
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 777
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v0, v1, :cond_0

    .line 778
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string p1, "There is ENGINE Error during sending DISPLAYED"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 780
    :cond_0
    iget-object p0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    .line 781
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 782
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDisplayedNotificationDone()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private onSendFile(Landroid/os/Message;)V
    .locals 3

    .line 705
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 706
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getIsSlmSvcMsg()Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v2, "SEND_FILE in defaultState, conference uri will be changed"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 708
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->conferenceUriChanged()V

    .line 709
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 711
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->sendFile()V

    :goto_0
    return-void
.end method

.method private onSendImMessageDone(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 11

    .line 289
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_b

    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 294
    :cond_0
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 295
    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;

    .line 296
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v2, 0x3fb

    invoke-virtual {v1, v2, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(ILjava/lang/Object;)V

    .line 297
    iget-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mIsProvisional:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    const-string/jumbo v2, "use_provisional_response_assent"

    invoke-interface {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 301
    :cond_1
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v1

    .line 302
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    const/4 v10, 0x0

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v2

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-static {v2, v4}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v8, v3

    goto :goto_0

    :cond_2
    move v8, v10

    .line 304
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSendImMessageDone : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " retryTimer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, v5, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " hasChatbotUri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 306
    iget-object v2, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {p0, p1, v8, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->setRevokeTimer(Lcom/sec/internal/ims/servicemodules/im/MessageBase;ZLcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    .line 308
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_3

    .line 309
    iget-object p0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-void

    .line 313
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 315
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v5, v6, :cond_4

    .line 316
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v1, "onSendImMessageDone : msg has already been delivered successfully"

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 317
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-direct {p0, v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-void

    .line 320
    :cond_4
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v2

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne v2, v5, :cond_5

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendImMessageDone : Message Id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " had been failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    return-void

    .line 326
    :cond_5
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_CONVERSATION_NEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne v1, v2, :cond_7

    .line 327
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v0, "onStartSessionDone : chatbot conversation needed"

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 329
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-static {p1, v0, v3}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->updateChatbotCapability(ILcom/sec/ims/util/ImsUri;Z)V

    if-eqz v4, :cond_6

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->sendImMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    :cond_6
    return-void

    .line 336
    :cond_7
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 337
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getCurrentRetryCount()I

    move-result v4

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    const/4 v7, 0x0

    instance-of v9, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-object v3, v1

    .line 336
    invoke-interface/range {v2 .. v9}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v2

    .line 340
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v3

    .line 342
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    if-ne v4, v5, :cond_8

    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_SLM:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    if-ne v3, v4, :cond_8

    .line 343
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v4, "onSendImMessageDone : GLS fallback to legacy"

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 344
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->FALLBACK_TO_LEGACY:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    .line 346
    :cond_8
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5, v10, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->forceRefreshCapability(Ljava/util/Set;ZLcom/sec/internal/constants/ims/servicemodules/im/ImError;)V

    .line 348
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->shouldCloseSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCloseSessionNeeded(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 349
    :cond_9
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object v4, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;->mRawHandle:Ljava/lang/Object;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->handleCloseSession(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    .line 350
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 353
    :cond_a
    invoke-direct {p0, v2, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->handleSendImResult(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/result/SendMessageResult;)V

    .line 354
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSendImMessageDone - msgId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " statusCode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void

    .line 290
    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo p1, "result is null"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private onSendIscomposingNotification()V
    .locals 3

    .line 857
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND_ISCOMPOSING_NOTIFICATION received in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 859
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 861
    const-string/jumbo v1, "trigger_capex_when_starttyping"

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isImCapAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 862
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->triggerCapex()V

    goto :goto_0

    .line 865
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string v0, "SEND_ISCOMPOSING_NOTIFICATION : Failed to get strategy"

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private onSendMessageResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 1

    .line 788
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p0

    .line 794
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne p0, v0, :cond_1

    .line 795
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageResponseTimeout()V

    :cond_1
    return-void
.end method

.method private onSendMessageRevokeRequest(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 895
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND_MESSAGE_REVOKE_REQUEST : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 896
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v0, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->setLegacyLatching(Lcom/sec/ims/util/ImsUri;ZLjava/lang/String;)V

    .line 897
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 898
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object v1

    .line 899
    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 900
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 901
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 902
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->PENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    if-ne v3, v4, :cond_1

    .line 903
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNotEmptyContributionId()V

    .line 904
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setNotEmptyConversationId()V

    .line 905
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v6, 0xbc9

    .line 906
    invoke-virtual {v5, v6, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 907
    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v6

    .line 905
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->sendMessageRevokeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V

    .line 908
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isCfsTrigger()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 909
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 910
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->addToRevokingMessages(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 912
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 915
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND_MESSAGE_REVOKE_REQUEST : message can\'t find - imdnId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 918
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 919
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-interface {p1, v1, v0, p0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onMessageRevocationDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;Ljava/util/Collection;Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    :cond_3
    return-void
.end method

.method private onSendMessageRevokeRequestInternalDone(Landroid/os/Message;)V
    .locals 3

    .line 941
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 942
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 943
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    .line 944
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SEND_MESSAGE_REVOKE_REQUEST_INTERNAL_DONE : msgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", result = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void
.end method

.method private onSendSlmMessageDone(Lcom/sec/internal/helper/AsyncResult;)V
    .locals 11

    .line 493
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;

    .line 494
    iget-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    .line 495
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object v3

    .line 496
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 497
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0x3fb

    invoke-virtual {v2, v4, p1}, Lcom/sec/internal/helper/StateMachine;->removeMessages(ILjava/lang/Object;)V

    .line 498
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const-string v4, "check_p_asserted_identity"

    if-ne v3, v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 500
    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mPAssertedIdentity:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->updateParticipantWithPAI(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Z

    .line 502
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->NONE:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    return-void

    .line 506
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-interface {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    if-nez p1, :cond_2

    .line 508
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo p1, "onSendSlmMessageDone: No message in pending message list. Ignore."

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    return-void

    .line 512
    :cond_2
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->FORBIDDEN_CHATBOT_CONVERSATION_NEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    const/16 v9, 0xbbf

    const/4 v10, 0x1

    if-ne v3, v2, :cond_4

    .line 513
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const-string/jumbo v2, "onSendSlmMessageDone : chatbot conversation needed"

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 515
    iget-object v0, v0, Lcom/sec/internal/constants/ims/servicemodules/im/result/SendSlmResult;->mPAssertedIdentity:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->updateParticipantWithPAI(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 516
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 519
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateIsChatbotRole(Z)V

    .line 520
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-static {v0, v1, v10}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->updateChatbotCapability(ILcom/sec/ims/util/ImsUri;Z)V

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, v9, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void

    .line 525
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v2

    .line 526
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getCurrentRetryCount()I

    move-result v4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRetryTimer:I

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    const/4 v7, 0x1

    instance-of v8, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    .line 525
    invoke-interface/range {v2 .. v8}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->handleSendingMessageFailure(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;IILcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;ZZ)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;->getStatusCode()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    move-result-object v2

    .line 528
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState$1;->$SwitchMap$com$sec$internal$ims$servicemodules$im$strategy$IMnoStrategy$StatusCode:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v10, :cond_5

    .line 535
    invoke-virtual {p1, v1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    goto :goto_0

    .line 530
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSendSlmMessageDone retry msgId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->incrementRetryCount()V

    .line 532
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, v9, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    :goto_0
    return-void
.end method

.method private onSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 801
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pendingMsg status : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 802
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->SENDING:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne p0, v0, :cond_1

    .line 803
    :cond_0
    new-instance p0, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SESSION_TIMED_OUT:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;->ENGINE_ERROR:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;

    invoke-direct {p0, v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;Lcom/sec/internal/constants/ims/servicemodules/im/result/Result$Type;)V

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;->DISPLAY_ERROR:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;-><init>(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StatusCode;)V

    invoke-virtual {p1, p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V

    :cond_1
    return-void
.end method

.method private onStartSessionProvisionalResponse(Landroid/os/Message;)V
    .locals 3

    .line 870
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 871
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;

    .line 872
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    .line 873
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "START_SESSION_PROVISIONAL_RESPONSE : response="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 875
    iget-object p0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/result/StartImSessionResult;->mResult:Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p0

    iput-object p0, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mLastProvisionalResponse:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    :cond_0
    return-void
.end method

.method private onStartSessionSynchronousDone(Landroid/os/Message;)V
    .locals 4

    .line 828
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 829
    iget-object v0, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    .line 830
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 832
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "START_SESSION_SYNCHRONOUS_DONE : sessionKey="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", rawHandle="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 833
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 835
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->STARTING:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 836
    iput-object v0, v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    .line 837
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRawHandle()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 838
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setRawHandle(Ljava/lang/Object;)V

    .line 840
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mStartingState:Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStartingState;->startSessionEstablishmentTimer(Ljava/lang/Object;)V

    goto :goto_0

    .line 842
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find the imSessionInfo using sessionKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    .line 843
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance p1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    :goto_0
    return-void
.end method

.method private removeNextFtMessage()Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextFtMessage, current queue size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 644
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0
.end method

.method private setRevokeTimer(Lcom/sec/internal/ims/servicemodules/im/MessageBase;ZLcom/sec/internal/constants/ims/servicemodules/im/result/Result;)V
    .locals 4

    .line 592
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isRevocationAvailableMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 593
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isMsgRevocationSupported()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getImError()Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    move-result-object p2

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->SUCCESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p2, v0, :cond_2

    .line 594
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;->getSipResponse()Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;->SIP_486_BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/SipResponse;

    if-ne p2, p3, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mPhoneId:I

    .line 595
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    const-string/jumbo p3, "support_revoke_msg_for_486_resp"

    invoke-interface {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 596
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p3

    invoke-interface {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 597
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p3

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne p3, v0, :cond_3

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isTemporary()Z

    move-result p3

    if-nez p3, :cond_3

    .line 598
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDispositionNotification()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 599
    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->AVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 600
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-boolean p3, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    const-string/jumbo v0, "setRevokeTimer() : msg id : "

    if-nez p3, :cond_1

    .line 602
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " time : "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p2, p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 603
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsRevokeTimerRunning:Z

    .line 604
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/sec/internal/helper/PreciseAlarmManager;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/PreciseAlarmManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 p3, 0xbca

    .line 605
    invoke-virtual {p2, p3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 606
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result p0

    int-to-long v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 604
    invoke-virtual {p1, p2, v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    goto :goto_0

    .line 608
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " aleady timer running"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getNeedToRevokeMessages()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 612
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 613
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->removeMsgFromListForRevoke(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private shouldCloseSession(Lcom/sec/internal/constants/ims/servicemodules/im/ImError;)Z
    .locals 0

    .line 629
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_ACTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_SESSION_ON_OTHER_CONNECTION:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-eq p1, p0, :cond_1

    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImError;->MSRP_DO_NOT_SEND_THIS_MESSAGE:Lcom/sec/internal/constants/ims/servicemodules/im/ImError;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private triggerCapex()V
    .locals 7

    .line 544
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/internal/helper/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "triggerCapex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 545
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mIsTriggeredCapex:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x1

    .line 549
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mIsTriggeredCapex:Z

    .line 550
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    .line 553
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    if-eqz v0, :cond_1

    .line 554
    sget-object v2, Lcom/sec/ims/options/CapabilityRefreshType;->ONLY_IF_NOT_FRESH_IN_MSG_CTX:Lcom/sec/ims/options/CapabilityRefreshType;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 555
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getPhoneId(Ljava/lang/String;)I

    move-result v3

    .line 554
    invoke-interface {v0, v1, v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 557
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getMsgCapValidityTime()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    if-eqz v0, :cond_3

    .line 561
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 562
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    move-wide v1, v3

    .line 568
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEND_ISCOMPOSING_NOTIFICATION. TimeGap is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v3, 0x3fe

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 571
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, v3}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    :cond_4
    :goto_2
    return-void
.end method

.method private updateParticipantWithPAI(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Ljava/lang/String;)Z
    .locals 5

    if-eqz p2, :cond_0

    .line 468
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateParticipantWithPAI, sipNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultState"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-static {p2}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 471
    sget-object v0, Lcom/sec/ims/util/ImsUri;->EMPTY:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p2, v0}, Lcom/sec/ims/util/ImsUri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 473
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->INITIAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    invoke-direct {v2, v3, v4, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 476
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 478
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v3, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v3, v2, v0}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsInserted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 479
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;->onParticipantsDeleted(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/util/Collection;)V

    .line 480
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateRemoteUri(Lcom/sec/ims/util/ImsUri;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V
    .locals 4

    .line 653
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSessionEstablished : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getImSessionInfo(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 657
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;->ESTABLISHED:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    iput-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mState:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$ImSessionState;

    .line 658
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->isSnFSession()Z

    move-result v1

    if-nez v1, :cond_0

    .line 659
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateSessionInfo(Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;)V

    .line 660
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mEstablishedImSessionInfo:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 661
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mFeatures:Ljava/util/EnumSet;

    invoke-static {v2}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mSupportedFeatures:Ljava/util/EnumSet;

    .line 662
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mAcceptTypes:Ljava/util/List;

    iput-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptTypes:Ljava/util/List;

    .line 663
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mAcceptWrappedTypes:Ljava/util/List;

    iput-object p1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mRemoteAcceptWrappedTypes:Ljava/util/List;

    .line 664
    iget-object p1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 665
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->conferenceUriChanged()V

    goto :goto_0

    .line 668
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/helper/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0x3ec

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {p1, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 669
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->transitionToProperState()V

    .line 671
    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mStartingReason:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;->EXTENDING_1_1_TO_GROUP:Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo$StartingReason;

    if-ne p1, v1, :cond_2

    iget-object p1, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mPrevExtendRawHandle:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 672
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;-><init>(Ljava/lang/Object;Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;Landroid/os/Message;)V

    invoke-interface {p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->stopImSession(Lcom/sec/internal/constants/ims/servicemodules/im/params/StopImSessionParams;)V

    .line 674
    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/data/info/ImSessionInfo;->mPrevExtendRawHandle:Ljava/lang/Object;

    goto :goto_1

    .line 677
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SESSION_ESTABLISHED unknown rawHandle : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method protected processGroupChatManagementEvent(Landroid/os/Message;)Z
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState, processGroupChatManagementEvent: "

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

    .line 185
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x7e0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7e1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_1

    .line 187
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    goto :goto_0

    .line 195
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onExtendToGroupChatDone(Landroid/os/Message;)V

    goto :goto_0

    .line 191
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 203
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->handleRequestTimeout()V

    goto :goto_0

    .line 199
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onDownloadGroupIconDone(Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :pswitch_data_0
    .packed-switch 0x7d3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    .line 73
    invoke-super {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->processMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ". current state is "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {p0}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/helper/StateMachine;->loge(Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method protected processMessagingEvent(Landroid/os/Message;)Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState, processMessagingEvent: "

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

    .line 87
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbcf

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbd2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 142
    :pswitch_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendIscomposingNotification()V

    goto/16 :goto_0

    .line 158
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onResendMessageRevokeRequest()V

    goto/16 :goto_0

    .line 166
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onMessageRevokeOperationTimeout(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :pswitch_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onMessageRevokeTimerExpired()V

    goto/16 :goto_0

    .line 162
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendMessageRevokeRequestInternalDone(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 154
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendMessageRevokeRequest(Ljava/util/List;)V

    goto :goto_0

    .line 146
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onExpireDeliveryTimeout()V

    goto :goto_0

    .line 130
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendMessageResponseTimeout(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    goto :goto_0

    .line 118
    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDisplayedNotificationDone(Landroid/os/Message;)V

    goto :goto_0

    .line 110
    :pswitch_9
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDisplayedNotification()V

    goto :goto_0

    .line 114
    :pswitch_a
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDeliveredNodificationDone(Landroid/os/Message;)V

    goto :goto_0

    .line 106
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendDeliveredNodification(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 138
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendSlmMessageDone(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 134
    :pswitch_d
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onSendSlmMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 122
    :pswitch_e
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onFileComplete(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    .line 98
    :pswitch_f
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendFile(Landroid/os/Message;)V

    goto :goto_0

    .line 102
    :pswitch_10
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onAttachFile(Landroid/os/Message;)V

    goto :goto_0

    .line 94
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onReceiveMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 89
    :pswitch_12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendImMessageDone(Lcom/sec/internal/helper/AsyncResult;)V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSendCanceledNotificationDone(Landroid/os/Message;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mIsComposing:Z

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xbba
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_11
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected processSessionConnectionEvent(Landroid/os/Message;)Z
    .locals 3

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DefaultState, processSessionConnectionEvent: "

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

    .line 218
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3eb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3fb

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3fe

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ff

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto :goto_1

    .line 236
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onStartSessionSynchronousDone(Landroid/os/Message;)V

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onStartSessionProvisionalResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 220
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onForceCloseSession()V

    goto :goto_0

    .line 244
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mClosedState:Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionClosedState;->onSessionClosed(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionClosedEvent;)V

    goto :goto_0

    .line 240
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onCloseAllSession(Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionStopReason;)V

    goto :goto_0

    .line 232
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onAcceptSnfSessionDone(Landroid/os/Message;)V

    goto :goto_0

    .line 228
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onProcessIncomingSnfSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;)V

    goto :goto_0

    .line 261
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onCloseSessionTimeout(Ljava/lang/Object;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REFRESH_CAPEX_UPDATE. current state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/helper/StateMachine;->getCurrentState()Lcom/sec/internal/helper/IState;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/helper/IState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->logi(Ljava/lang/String;)V

    .line 253
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->mIsTriggeredCapex:Z

    goto :goto_0

    .line 224
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSessionTimeoutThreshold(Lcom/sec/internal/ims/servicemodules/im/ImMessage;)V

    goto :goto_0

    .line 248
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionDefaultState;->onSessionEstablished(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionEstablishedEvent;)V

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x3f2
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendAggregatedDisplayReport()V
    .locals 17

    move-object/from16 v0, p0

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAggregatedDisplayReport : messages = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DefaultState"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 685
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 686
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 687
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v2, v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mMessagesToSendDisplayNotification:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 688
    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 691
    :cond_0
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getRemoteUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 692
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v8

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v9

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/16 v4, 0xbc5

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 693
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v11

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v13

    new-instance v14, Ljava/util/Date;

    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 694
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isBotSessionAnonymized()Z

    move-result v15

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getUserAlias(Z)Ljava/lang/String;

    move-result-object v16

    const/4 v4, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/util/List;ZLjava/util/Date;ZLjava/lang/String;)V

    .line 696
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSessionStateBase;->mImSession:Lcom/sec/internal/ims/servicemodules/im/ImSession;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    return-void
.end method
