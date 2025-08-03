.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;
.super Ljava/lang/Object;
.source "WorkflowChn.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 566
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion(Ljava/util/Map;)I

    move-result v0

    if-nez v0, :cond_0

    .line 571
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "version is 0. need to be retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setValidityTimer(I)V

    .line 573
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 579
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    .line 580
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 581
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 582
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 585
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v1

    .line 586
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v2, v1, v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    if-nez v1, :cond_2

    .line 588
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$menableRcs(Lcom/sec/internal/ims/config/workflow/WorkflowChn;Z)V

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_3

    .line 591
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->setValidityTimer(I)V

    .line 593
    :cond_3
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0
.end method
