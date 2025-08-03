.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;
.super Ljava/lang/Object;
.source "WorkflowChn.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

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

    .line 332
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttpRedirect:Z

    const-string v2, ""

    if-eqz v1, :cond_2

    .line 333
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    if-eqz v1, :cond_0

    .line 335
    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->fqdn:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 340
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mHttpRedirect:Z

    goto :goto_1

    .line 342
    :cond_2
    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mServerId:I

    if-eqz v1, :cond_3

    .line 343
    iget-object v2, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mNewServerInfoList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$ServerInfo;->fqdn:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 345
    :cond_3
    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->initUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setUrl(Ljava/lang/String;)V

    .line 348
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->clearCookie()V

    .line 350
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_4

    .line 351
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    goto :goto_2

    .line 353
    :cond_4
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$1;->$SwitchMap$com$sec$internal$ims$config$workflow$WorkflowBase$OpMode:[I

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x5

    if-eq v0, v1, :cond_5

    const/4 v1, 0x0

    goto :goto_2

    .line 362
    :cond_5
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    goto :goto_2

    .line 357
    :cond_6
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    .line 367
    :goto_2
    instance-of v0, v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttp;

    if-eqz v0, :cond_7

    .line 368
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-boolean v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-nez v0, :cond_7

    .line 369
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "now use wifi. try non-ps step directly."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    :cond_7
    return-object v1
.end method
