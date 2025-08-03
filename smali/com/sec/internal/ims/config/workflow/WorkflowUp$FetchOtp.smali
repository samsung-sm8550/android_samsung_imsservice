.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 529
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

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

    .line 532
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpClean()V

    .line 534
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 535
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isEmeasewaoce()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 536
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mCookieHandler:Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowCookieHandler;->handleCookie(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    goto :goto_0

    .line 538
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getHeader()Ljava/util/Map;

    move-result-object v0

    const-string v2, "Set-Cookie"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v2, "Cookie"

    invoke-virtual {v1, v2, v0}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpHeader(Ljava/lang/String;Ljava/util/List;)V

    .line 540
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    const-string v1, "OTP"

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getOtp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/config/SharedInfo;->addHttpParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    .line 543
    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 544
    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_1

    .line 545
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Parse;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-object v0

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchOtp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
