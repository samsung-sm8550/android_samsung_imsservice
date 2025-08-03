.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p0

    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 309
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InitialState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    const/4 v2, 0x0

    goto/16 :goto_1

    .line 338
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmVshModule(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v0

    iget-wide v0, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v3}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;->notityIncommingSession(JLcom/sec/ims/util/ImsUri;Ljava/lang/String;)V

    .line 341
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmIncomingPendingState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 326
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 327
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;

    .line 328
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    iget v1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mSessionNumber:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fputmSessionId(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;I)V

    .line 329
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmSessionId(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshSessionResult;->mReason:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 333
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmOutgoingPendingState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 330
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->FAILED_INITIATION:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmTerminatedState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_1

    .line 313
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 319
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 320
    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 321
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InitialState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->startVshSession(Lcom/sec/internal/ims/servicemodules/csh/event/VshStartSessionParams;)V

    :goto_1
    return v2
.end method
