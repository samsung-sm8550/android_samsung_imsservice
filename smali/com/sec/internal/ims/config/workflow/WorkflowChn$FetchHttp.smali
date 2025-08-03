.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;
.super Ljava/lang/Object;
.source "WorkflowChn.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

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

    .line 381
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 382
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchHttp:run() mPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUserImsi(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v1, :cond_0

    .line 386
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsCHN()V

    .line 387
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 389
    :cond_0
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpCHN()V

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 391
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v1

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mHttpResult:I

    .line 392
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mHttpResult:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x1ff

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 396
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 393
    :cond_3
    :goto_0
    new-instance p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object p0
.end method
