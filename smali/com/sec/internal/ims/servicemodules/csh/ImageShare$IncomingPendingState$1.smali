.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;
.super Ljava/lang/Object;
.source "ImageShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 353
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopIshSession Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 356
    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 354
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 358
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 344
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopIshSession success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 347
    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v1

    .line 346
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 348
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$IncomingPendingState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    return-void
.end method
