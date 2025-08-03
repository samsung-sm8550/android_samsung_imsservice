.class Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;
.super Ljava/lang/Object;
.source "WorkflowChn.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V
    .locals 0

    .line 404
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 407
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 408
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FetchHttps() mPhoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " subId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->isConfigProxy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchHttps() fake server, use http mPhoneId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpCHN()V

    goto :goto_0

    .line 415
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FetchHttps() auto config server, use http mPhoneId: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpsCHN()V

    .line 420
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 421
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "vers"

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "IMSI"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v2, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {v4, v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getDeviceId(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "IMEI"

    invoke-virtual {v2, v4, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    sget-object v2, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_MODEL:Ljava/lang/String;

    const-string/jumbo v4, "terminal_model"

    invoke-virtual {v1, v4, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v4, "default_sms_app"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->convertRcsStateWithSpecificParam()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->setRcsState(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v5, "rcs_state"

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->getRcsState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 431
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v4, "provisioning_version"

    const-string v5, "5.0"

    invoke-virtual {v1, v4, v5}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-boolean v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    if-eqz v4, :cond_2

    iget v4, v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->mHttpResult:I

    const/16 v5, 0x1ff

    if-ne v4, v5, :cond_5

    .line 436
    :cond_2
    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v4, "msisdn"

    if-nez v1, :cond_3

    .line 437
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v5, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v6, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 440
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/SharedInfo;->getUserMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->encodeRFC3986(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getSmsDestPort()Ljava/lang/String;

    move-result-object v0

    const-string v4, "SMS_port"

    invoke-virtual {v1, v4, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v4, "token"

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string/jumbo v1, "terminal_vendor"

    const-string v4, "SEC"

    invoke-virtual {v0, v1, v4}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mParamHandler:Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;

    sget-object v4, Lcom/sec/internal/constants/ims/config/ConfigConstants$PVALUE;->TERMINAL_SW_VERSION:Ljava/lang/String;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v4, v5, v6}, Lcom/sec/internal/ims/config/workflow/WorkflowParamHandler;->getModelInfoFromBuildVersion(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "terminal_sw_version"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStartForce:Z

    if-eqz v1, :cond_6

    .line 451
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "0"

    invoke-virtual {v0, v3, v1}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    :cond_6
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode()Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DORMANT:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-ne v0, v1, :cond_7

    .line 455
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DORMANT mode. use backup version :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v4}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-virtual {v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersionBackup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_7
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 462
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    .line 463
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "200 OK received. try parsing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 465
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_9

    .line 466
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    return-object v0

    .line 467
    :cond_9
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_b

    .line 472
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 473
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 475
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowChn$FetchHttps;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowChn;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowChn$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowChn;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->handleResponse2(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 469
    :cond_b
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowChn;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "RCS configuration server is unreachable. retry max times"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance p0, Lcom/sec/internal/ims/config/exception/UnknownStatusException;

    const-string v0, "RCS configuration server is unreachable"

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/config/exception/UnknownStatusException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
