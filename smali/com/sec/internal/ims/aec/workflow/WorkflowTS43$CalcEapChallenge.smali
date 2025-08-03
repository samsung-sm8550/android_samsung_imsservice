.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ed

    .line 287
    iput v1, v0, Landroid/os/Message;->what:I

    .line 288
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getEapChallenge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->requestEapChallengeResp(Landroid/os/Message;Ljava/lang/String;)V

    .line 290
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$WaitingEapChallengeResp;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$WaitingEapChallengeResp;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0
.end method
