.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;
.source "WorkflowSec.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V
    .locals 0

    .line 548
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method


# virtual methods
.method protected getOtp()Ljava/lang/String;
    .locals 4

    .line 562
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->getSmsType(I)Ljava/lang/String;

    move-result-object v0

    .line 564
    const-string/jumbo v1, "text"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 565
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v0

    if-ge v0, v2, :cond_1

    .line 566
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fputmAuthTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;I)V

    .line 567
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getOtp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 569
    :cond_0
    const-string v1, "binary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthHiddenTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 571
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-static {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fgetmAuthHiddenTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->-$$Nest$fputmAuthHiddenTryCount(Lcom/sec/internal/ims/config/workflow/WorkflowSec;I)V

    .line 572
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mTelephonyAdapter:Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/config/ITelephonyAdapter;->getPortOtp()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 576
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "otp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p0, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 551
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Authorize:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 552
    invoke-super {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Authorize;->run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object v0

    .line 553
    instance-of v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;

    if-eqz v1, :cond_0

    .line 554
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$6;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object p0

    const/16 v1, 0x2bc

    invoke-virtual {p0, v1}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->setStatusCode(I)V

    :cond_0
    return-object v0
.end method
