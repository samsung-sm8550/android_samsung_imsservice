.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;
.super Lcom/sec/internal/helper/State;
.source "ImageShare.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-direct {p0}, Lcom/sec/internal/helper/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    const/4 v2, 0x3

    iput v2, v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareState:I

    .line 384
    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->notifyContentChange(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 389
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InProgressState Event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x7

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    .line 423
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmTransferCompleteState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 420
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmFailedState(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/helper/State;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    goto :goto_0

    .line 393
    :cond_2
    new-instance p1, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    new-instance v1, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;-><init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;)V

    invoke-direct {p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;-><init>(ILcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;)V

    .line 417
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;->stopIshSession(Lcom/sec/internal/ims/servicemodules/csh/event/CshCancelSessionParams;)V

    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
