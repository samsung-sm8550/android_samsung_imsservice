.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# instance fields
.field acceptByUser:Z

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 422
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    const/4 p1, 0x0

    .line 423
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .line 427
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 428
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmVshModule(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 429
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmVshModule(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    const/4 v0, 0x0

    .line 430
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 435
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IncomingPendingState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 495
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmTerminatedState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 443
    :pswitch_2
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_SYSTEM:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 444
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmTerminatedState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 439
    :pswitch_3
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_1

    .line 468
    :pswitch_4
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    if-nez p1, :cond_0

    .line 469
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmSessionId(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I

    move-result v0

    new-instance v2, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;

    invoke-direct {v2, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;)V

    invoke-direct {p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 484
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->rejectVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshRejectSessionParams;)V

    .line 485
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmPreTerminatedLocalState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 488
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$mdoStopSession(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    .line 489
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmPreTerminatedLocalState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 456
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 457
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 458
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    if-ltz v0, :cond_2

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 463
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 460
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 461
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmTerminatedState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 448
    :pswitch_6
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    const/4 v2, 0x6

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, p1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object p1

    .line 449
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmSessionId(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I

    move-result v2

    invoke-direct {v0, v2, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;-><init>(ILandroid/os/Message;)V

    .line 451
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->acceptVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshAcceptSessionParams;)V

    .line 452
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$IncomingPendingState;->acceptByUser:Z

    :goto_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
