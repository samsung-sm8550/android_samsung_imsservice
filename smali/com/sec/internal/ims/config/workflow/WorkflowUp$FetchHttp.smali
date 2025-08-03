.class Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;
.super Ljava/lang/Object;
.source "WorkflowUp.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

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

    .line 371
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpDefault()V

    .line 372
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/config/SharedInfo;->setHttpResponse(Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;)V

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    const/16 v2, 0x1ff

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;

    invoke-direct {v1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Initialize;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    new-instance v2, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object v3, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    new-instance v3, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v3, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/internal/ims/config/workflow/WorkflowUpBase;->handleResponseForUp(Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    if-ne v0, v2, :cond_2

    .line 377
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp;->mIsHeaderEnrichment:Z

    .line 379
    :cond_2
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttp;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowUp;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowUp$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowUp;)V

    return-object v0
.end method
