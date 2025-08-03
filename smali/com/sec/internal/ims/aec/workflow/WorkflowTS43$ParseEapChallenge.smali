.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

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

    .line 321
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->parsedBody(Lcom/sec/internal/ims/aec/util/HttpClient$Response;)Ljava/util/Map;

    move-result-object v0

    .line 323
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v2, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mCalcEapAka:Lcom/sec/internal/ims/aec/util/CalcEapAka;

    const-string/jumbo v3, "root/eap-relay-packet"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/aec/util/CalcEapAka;->decodeChallenge(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->setEapChallenge(Ljava/lang/String;)V

    .line 327
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$CalcEapChallenge;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0
.end method
