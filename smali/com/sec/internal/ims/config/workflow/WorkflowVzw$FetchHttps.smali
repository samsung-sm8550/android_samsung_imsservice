.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 1305
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 1308
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 1309
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 1310
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsDefault()V

    .line 1311
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setHttpParameter()V

    .line 1313
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 1315
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 1316
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v2

    iput v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    .line 1317
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 1318
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorMessage(Ljava/lang/String;)V

    .line 1319
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v2, v2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetchHttps: https response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " https response msg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getLastErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1320
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v3, v2, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mHttpResponse:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 1321
    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1322
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "fetchHttps: https response\'s body is existed"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1323
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0

    .line 1325
    :cond_0
    new-instance p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v0, "fetchHttps: there is no https response\'s body"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v0, 0x1ff

    if-ne v3, v0, :cond_2

    .line 1327
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppTokenFor511Response;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$ReFetchAppTokenFor511Response;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 1329
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;

    invoke-direct {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
