.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;
.super Ljava/lang/Object;
.source "WorkflowChn.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 510
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get OTP & save it to shared info"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 513
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 515
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setValidityTimer(I)V

    .line 516
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 518
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setOtp(Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 520
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchOtp;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0
.end method
