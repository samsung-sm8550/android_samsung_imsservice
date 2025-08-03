.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Store;
.source "WorkflowAtt.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

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

    .line 461
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Store:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 463
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->-$$Nest$misClientVendorSetToGoog(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2, v1}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSingleRegiRequiredAndAndroidMessageAppInUsed(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    goto :goto_0

    .line 466
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getUserAccept(Ljava/util/Map;)Z

    move-result v2

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->setOpModeWithUserAccept(ZLjava/util/Map;Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)V

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->ACTIVE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_1

    .line 469
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getValidity()I

    move-result v1

    int-to-double v1, v1

    const-wide v3, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    .line 471
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setVersionFromServer(I)V

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->-$$Nest$fputisACSsuccessful(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Z)V

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->-$$Nest$fputisLocalConfig(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Z)V

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
