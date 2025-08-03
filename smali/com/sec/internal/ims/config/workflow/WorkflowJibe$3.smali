.class Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;
.source "WorkflowJibe.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 582
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "FetchHttp:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 583
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v2, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getGmsVersion(Landroid/content/Context;I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v3, "GmsVersion is invalid."

    invoke-static {v0, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->-$$Nest$mretryConfigAfterTime(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)V

    .line 586
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mContext:Landroid/content/Context;

    iget v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isIidTokenNeeded(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->-$$Nest$mgetIidToken(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->-$$Nest$misIidTokenInvalid(Lcom/sec/internal/ims/config/workflow/WorkflowJibe;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 591
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iput-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    .line 592
    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 594
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    const/4 v2, 0x0

    iput v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidTokenRetryLimit:I

    .line 596
    :cond_2
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 597
    instance-of v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttps;

    if-nez v2, :cond_3

    .line 598
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iput-object v1, v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIidToken:Ljava/lang/String;

    .line 601
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mHttpResponse:I

    return-object v0
.end method

.method protected setHttpHeader()V
    .locals 3

    .line 608
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    .line 609
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnrichedHeaderFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe$3;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowJibe;

    iget-boolean v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowJibe;->mIsEnrichedHeaderFailed:Z

    if-nez v0, :cond_0

    .line 611
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpSPR()V

    goto :goto_0

    .line 613
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->resetHttpSPR()V

    goto :goto_0

    .line 616
    :cond_1
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;->setHttpHeader()V

    :goto_0
    return-void
.end method
