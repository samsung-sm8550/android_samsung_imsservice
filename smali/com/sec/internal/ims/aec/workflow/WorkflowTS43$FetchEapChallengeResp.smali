.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getEapChallengeResp()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    .line 237
    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getHeader()Ljava/util/Map;

    move-result-object v2

    const-string v3, "Set-Cookie"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 236
    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/aec/util/HttpStore;->initHttpPostInfo(Ljava/lang/String;Ljava/util/List;)V

    .line 239
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->getHttpPostResponse(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setHttpResponse(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)V

    .line 240
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mAECJar:Lcom/sec/internal/ims/aec/persist/AECStorage;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/persist/AECStorage;->setHttpResponse(I)V

    .line 241
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 242
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$FetchEapChallengeResp;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getStatusCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->handleNotOkResponse(I)Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;

    move-result-object p0

    return-object p0
.end method
