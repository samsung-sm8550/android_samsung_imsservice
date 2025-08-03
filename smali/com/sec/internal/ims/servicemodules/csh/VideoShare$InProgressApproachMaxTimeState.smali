.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;
.super Lcom/sec/internal/helper/State;
.source "VideoShare.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .line 0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 579
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InProgressApproachMaxTimeState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    const/16 p1, 0xa

    if-eq v0, p1, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    .line 588
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$mstopDurationTimer(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    .line 589
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->REJECTED_BY_REMOTE:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 590
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmPreTerminatedRemoteState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 596
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$mdoStopSession(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)V

    .line 597
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmContent(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    sget-object v0, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->ABORTED_BY_USER:Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;

    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/video/VideoSharing$ReasonCode;->toInt()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmPreTerminatedLocalState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 583
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;

    .line 584
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$InProgressApproachMaxTimeState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;->setVshPhoneOrientation(Lcom/sec/internal/ims/servicemodules/csh/event/VshOrientation;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
