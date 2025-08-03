.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 305
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpStore;->getHttpResponse()Lcom/sec/internal/ims/aec/util/HttpClient$Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/aec/util/HttpClient$Response;->getBody()[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 310
    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/ContentParser;->hasEapRelayPacket(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseEapChallenge;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0

    .line 313
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseContent;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$ParseConfiguration;-><init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V

    return-object v0
.end method
