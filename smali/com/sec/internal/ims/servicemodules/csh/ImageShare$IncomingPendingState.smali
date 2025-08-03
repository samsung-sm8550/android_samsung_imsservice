.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# instance fields
.field acceptByUser:Z

.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/4 v2, 0x2

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 284
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    .line 285
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7

    .line 292
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IncomingPendingState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 367
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 296
    :pswitch_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 333
    :pswitch_2
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    if-nez p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$mdoRejectIncomingSession(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    .line 335
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 336
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 337
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 339
    :cond_0
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;)V

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 362
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->stopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    goto/16 :goto_2

    .line 320
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 321
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 322
    iget v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    if-ltz v0, :cond_2

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 328
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmInProgressState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 324
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->FAILED_SHARING:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 325
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 326
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto/16 :goto_2

    .line 300
    :pswitch_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->getMaxSize()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    .line 301
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v5, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    cmp-long p1, v5, v3

    if-gez p1, :cond_3

    goto :goto_1

    .line 308
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "File size("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v5, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ") is larger than Max size("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {p1, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->notifyLimitExceeded(JLcom/sec/ims/util/ImsUri;)V

    .line 312
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_MAX_SIZE:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 313
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 314
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_2

    .line 302
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 303
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v3, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-direct {v0, v3, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;-><init>(ILjava/lang/String;Landroid/os/Message;)V

    .line 305
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->acceptIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/IshAcceptSessionParams;)V

    .line 306
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->acceptByUser:Z

    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
