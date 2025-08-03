.class Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;
.super Ljava/lang/Object;
.source "ImageShare.java"

# interfaces
.implements Lcom/sec/internal/ims/servicemodules/csh/event/ICshSuccessCallback;


# instance fields
.field final synthetic this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure()V
    .locals 2

    .line 407
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopIshSession Failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 410
    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v1

    .line 409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 413
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->-$$Nest$fgetmIshModule(Lcom/sec/internal/ims/servicemodules/csh/ImageShare;)Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mSessionId:I

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;->ishCancelFailed(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 398
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopIshSession success"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->mContent:Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->REJECTED_BY_USER:Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;

    .line 401
    invoke-virtual {v1}, Lcom/gsma/services/rcs/sharing/image/ImageSharing$ReasonCode;->toString()Ljava/lang/String;

    move-result-object v1

    .line 400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->reasonCode:I

    .line 402
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState$1;->this$1:Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/ImageShare$InProgressState;->this$0:Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->sessionFailed()V

    return-void
.end method
