.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

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

    .line 554
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->release()V

    .line 556
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getOtp()Ljava/lang/String;

    move-result-object v0

    .line 557
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mSmsPort:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 558
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getExistingOtp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 559
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthTryCount:I

    if-ge v3, v2, :cond_3

    add-int/2addr v3, v2

    .line 560
    iput v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthTryCount:I

    .line 561
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 564
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getExistingPortOtp()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 565
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthHiddenTryCount:I

    const/4 v4, 0x3

    if-ge v3, v4, :cond_3

    add-int/2addr v3, v2

    .line 566
    iput v3, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mAuthHiddenTryCount:I

    .line 567
    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getPortOtp()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 569
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setValidityTimer(I)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 575
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/SharedInfo;->setOtp(Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPowerController:Lcom/sec/internal/ims/config/PowerController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/PowerController;->lock()V

    .line 578
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-object v0

    .line 580
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "otp: null, go to finish state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Authorize;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-object v0
.end method
