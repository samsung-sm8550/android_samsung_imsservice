.class public Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;
.source "WorkflowBase.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 735
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->initStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastSwVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleSwVersionChange(Ljava/lang/String;)V

    .line 737
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastRcsProfile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleRcsProfileChange(Ljava/lang/String;)V

    .line 738
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$ReadyState;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    goto :goto_0

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isRjil()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setCompleted(Z)V

    .line 742
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 743
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 747
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$IdleState;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mState:Lcom/sec/internal/ims/config/workflow/WorkflowBase$State;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    return-void
.end method
