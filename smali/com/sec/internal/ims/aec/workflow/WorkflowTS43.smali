.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.super Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;
.source "WorkflowTS43.java"


# instance fields
.field protected final MAX_TRY_COUNT:I

.field protected mTryCnt:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 31
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->MAX_TRY_COUNT:I

    .line 32
    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    return-void
.end method


# virtual methods
.method protected doWorkflow()V
    .locals 7

    .line 98
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    :goto_0
    if-eqz v0, :cond_3

    .line 99
    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-ltz v1, :cond_3

    .line 101
    const-string v2, "doWorkflow: "

    if-nez v1, :cond_1

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrls()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_4

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    const/4 v1, 0x3

    .line 107
    iput v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    .line 108
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallengeResp(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v3, v4}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V

    .line 112
    :cond_1
    :goto_1
    invoke-interface {v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;->run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :goto_2
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    .line 121
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_2
    :goto_3
    move-object v0, v1

    goto :goto_0

    .line 114
    :goto_4
    new-instance v1, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    .line 115
    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v3, v0, v2}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    iget v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-lez v0, :cond_2

    .line 117
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    rsub-int/lit8 v0, v0, 0x3

    int-to-long v3, v0

    const-wide/16 v5, 0x7d0

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method protected getHttpGetResponse(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHeaders(Ljava/util/Map;)V

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHostName(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpParams()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setParams(Ljava/util/Map;)V

    .line 81
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setNetwork(Landroid/net/Network;)V

    .line 82
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/aec/util/HttpClient;->getURLConnection(Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p1

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    return-object p1
.end method

.method protected getHttpPostResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpHeaders()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHeaders(Ljava/util/Map;)V

    .line 89
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setHostName(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpPostData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setPostData(Lorg/json/JSONObject;)V

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/util/HttpClient;->setNetwork(Landroid/net/Network;)V

    .line 92
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/aec/util/HttpClient;->postURLConnection(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p1

    .line 93
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpClient:Lcom/sec/internal/ims/aec/util/HttpClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/HttpClient;->closeURLConnection()V

    return-object p1
.end method

.method public getVoLteEntitlementStatus(IZ)Z
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus()I

    move-result v0

    .line 69
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->isSupportedVoNRSpec()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_0

    const/4 p2, 0x3

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    :goto_0
    const/16 v0, 0x14

    .line 71
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoNrEntitlementStatus(I)I

    move-result p0

    :goto_1
    move v0, p0

    goto :goto_2

    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus(I)I

    move-result p0

    goto :goto_1

    :cond_2
    :goto_2
    const/4 p0, 0x1

    if-ne v0, p0, :cond_3

    goto :goto_3

    :cond_3
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method protected handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 6

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x140a0000

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 131
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Initialize;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    const/4 v1, 0x0

    .line 132
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->setValidEntitlement(Z)V

    const/16 v2, 0x190

    if-eq p1, v2, :cond_4

    const/16 v2, 0x19f

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1f4

    if-eq p1, v2, :cond_4

    const/16 v2, 0x1f7

    if-eq p1, v2, :cond_1

    const/16 v1, 0x1ff

    const/4 v2, 0x3

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 190
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-lez p1, :cond_5

    .line 191
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    sub-int/2addr v2, p1

    int-to-long v1, v2

    const-wide/16 v3, 0x7d0

    mul-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V

    goto/16 :goto_2

    .line 155
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const-string p1, "1.0"

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setEntitlementVersion(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 151
    :pswitch_1
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$RetryFetchEapChallengeResp;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$RetryFetchEapChallengeResp;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    goto/16 :goto_2

    .line 136
    :cond_0
    iput v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    .line 137
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    .line 138
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapId;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    goto/16 :goto_2

    .line 162
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object p1

    const-string v2, "Retry-After"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 163
    const-string v2, "[0-9]+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Date"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss ZZZZ"

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 170
    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 171
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 172
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 173
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long v1, v4, v1

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-gtz p1, :cond_3

    const-wide/16 v1, 0xa

    .line 178
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    if-lez p1, :cond_5

    .line 179
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retry-After: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " sec"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {p1, v3, v4}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 180
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Retry-After Header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 184
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    goto :goto_2

    .line 146
    :cond_4
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->clearAkaToken()V

    .line 147
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Finish;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    :cond_5
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0x193
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isSupportedVoNRSpec()Z
    .locals 4

    .line 423
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementVersion()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method protected declared-synchronized parsedBody(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/aec/util/HttpClient$Response;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 427
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Content-Type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 428
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getBody()[B

    move-result-object p1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 429
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :try_start_1
    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->isJSONValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ContentParser;->isJSONValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ContentParser;->parseXml(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/ContentParser;->parseJson(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    :catch_0
    :goto_1
    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method protected requestEntitlement(I)V
    .locals 6

    .line 44
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementDomain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 45
    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPort()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v5}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getDomainFromImpi()Z

    move-result v5

    .line 44
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getUrl(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_3

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 47
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/32 v1, 0x15f90

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;->lock(J)V

    .line 48
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setUserAgent()V

    .line 50
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHostName(Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getSNIInHeader()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    .line 55
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/DataConnectivity;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPsDataOffExempt:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->getNetwork()Landroid/net/Network;

    move-result-object v2

    .line 54
    :goto_0
    invoke-static {v1, v0, v2}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getIpAddress(ILjava/lang/String;Landroid/net/Network;)Ljava/util/Queue;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrls(Ljava/util/Queue;)V

    .line 56
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrls()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    .line 59
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->doWorkflow()V

    .line 60
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PowerController;->release()V

    goto :goto_2

    .line 62
    :cond_3
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void
.end method

.method protected setVoCellularEntitlementStatus()V
    .locals 4

    .line 354
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->isSupportedVoNRSpec()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v3, 0x3

    .line 356
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoLTEEntitlementStatus(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 357
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoNrEntitlementStatus(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 358
    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getVoNrEntitlementStatus(I)I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 361
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    goto :goto_1

    .line 359
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setVoLteEntitlementStatus(Z)V

    :goto_1
    return-void
.end method
