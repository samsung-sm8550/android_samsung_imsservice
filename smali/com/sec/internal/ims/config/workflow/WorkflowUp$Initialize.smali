.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 324
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isEur()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 335
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    if-ne v0, v2, :cond_0

    .line 336
    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->isMobilePreferred()Z

    move-result v0

    iput-boolean v0, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    goto :goto_0

    .line 337
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsReg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    .line 342
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_2

    .line 343
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    goto :goto_1

    .line 345
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 354
    :cond_3
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    goto :goto_1

    .line 349
    :cond_4
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    .line 358
    :goto_1
    instance-of v0, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;

    if-eqz v0, :cond_5

    .line 359
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v0, :cond_5

    .line 360
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mMobileNetwork: false, try FetchHttps step"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    :cond_5
    return-object v1
.end method
