.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 1354
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1357
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getParsedXml()Ljava/util/Map;

    move-result-object v0

    .line 1359
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRcsDisabledState(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v1

    .line 1360
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isValidRcsDisabledState(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eqz v2, :cond_2

    .line 1361
    iget-object v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v2, v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 1362
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_PERMANENTLY_BY_RCS_DISABLED_STATE:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    if-eq v1, v0, :cond_0

    .line 1363
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "store: no need to retry for rcsDisabledState"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 1364
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    if-ge v1, v4, :cond_1

    .line 1365
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "store: rcsDisabledStateRetryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rcsDisabledStateRetryTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->GENERAL_ERROR_RETRY_TIME:[J

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    aget-wide v1, v3, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startGeneralErrorRetryTimer(J)V

    .line 1368
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1369
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mRcsDisabledStateRetryCount:I

    goto :goto_0

    .line 1371
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "store: no need to retry anymore for rcsDisabledState"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1372
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iput-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1374
    :goto_0
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0

    .line 1377
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getOpMode(Ljava/util/Map;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->setOpMode(Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;Ljava/util/Map;)V

    .line 1379
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getVersion()I

    move-result v0

    .line 1380
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->isActiveVersion(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x65

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    .line 1381
    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getNextAutoconfigTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->getRemainingValidityTime(J)I

    move-result v0

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->DISABLE_TEMPORARY:Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;

    invoke-virtual {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$OpMode;->value()I

    move-result v1

    if-gt v0, v1, :cond_4

    .line 1382
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    if-ge v1, v4, :cond_3

    .line 1383
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "store: remainingValidityTime is not valid: noRemainingValidityRetryCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v3, v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " noRemainingValidityRetryTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->GENERAL_ERROR_RETRY_TIME:[J

    iget-object v4, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v4, v4, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    aget-wide v1, v3, v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->startGeneralErrorRetryTimer(J)V

    .line 1388
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    iput-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1389
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNoRemainingValidityRetryCount:I

    goto :goto_1

    .line 1391
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "store: no need to retry anymore for noRemainingValidityTime"

    invoke-static {v1, v0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iput-object v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->mNextWorkflow:Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    .line 1395
    :cond_4
    :goto_1
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Store;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0
.end method
