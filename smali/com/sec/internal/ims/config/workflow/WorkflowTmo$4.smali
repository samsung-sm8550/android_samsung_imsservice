.class Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowTmo.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 234
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    .line 237
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": Receive rcsDisabledState = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsDisabledStateToValue(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$4;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
