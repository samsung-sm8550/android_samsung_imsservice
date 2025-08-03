.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 487
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    iget-wide v1, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->cancelShare(J)V

    .line 488
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 493
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreRejectedState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 497
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$mdoRejectIncomingSession(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    .line 498
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object p1, p1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 499
    invoke-virtual {v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 500
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$PreRejectedState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    const/4 p0, 0x1

    :goto_0
    return p0
.end method
