.class Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;
.super Ljava/lang/Object;
.source "VideoShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;)V
    .locals 0

    .line 384
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 393
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelVshSession onFailure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-static {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$fgetmTerminatedState(Lcom/sec/internal/ims/servicemodules/csh/VideoShare;)Lcom/sec/internal/helper/State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/StateMachine;->transitionTo(Lcom/sec/internal/helper/IState;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 387
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelVshSession  onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/VideoShare$OutgoingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->sessionTerminatedByStack()V

    return-void
.end method
