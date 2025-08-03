.class Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;
.source "WorkflowTmo.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Initialize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    .line 170
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_0

    .line 172
    :cond_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$6;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    .line 181
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    goto :goto_0

    .line 176
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    :goto_0
    return-object p0
.end method
