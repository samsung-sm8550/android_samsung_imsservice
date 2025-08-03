.class public Lcom/sec/internal/ims/aec/workflow/WorkflowDSH;
.super Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;
.source "WorkflowDSH.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected requestEntitlement(I)V
    .locals 6

    .line 18
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementDomain()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    .line 19
    invoke-virtual {v3}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPort()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v4}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getEntitlementPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v5}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getDomainFromImpi()Z

    move-result v5

    .line 18
    invoke-static/range {v0 .. v5}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getUrl(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getAppId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    const-wide/32 v1, 0x15f90

    invoke-virtual {p1, v1, v2}, Lcom/sec/internal/ims/aec/util/PowerController;->lock(J)V

    .line 22
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 23
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setUserAgent()V

    .line 24
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/URLExtractor;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHostName(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpUrl(Ljava/lang/String;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->doWorkflow()V

    .line 28
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPowerCtrl:Lcom/sec/internal/ims/aec/util/PowerController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PowerController;->release()V

    goto :goto_0

    .line 30
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->getHttpResponse()I

    move-result v0

    const/16 v1, 0x3ea

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
