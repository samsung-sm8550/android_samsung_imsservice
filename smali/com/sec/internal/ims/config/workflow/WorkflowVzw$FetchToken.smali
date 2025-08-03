.class Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchToken;
.super Ljava/lang/Object;
.source "WorkflowVzw.java"

# interfaces
.implements Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V
    .locals 0

    .line 1240
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1243
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1244
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchAppToken;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchAppToken;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0

    .line 1246
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw;->LOG_TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "fetchToken: rcstoken is existed"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1247
    new-instance v0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchToken;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowVzw;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowVzw$FetchHttps;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowVzw;)V

    return-object v0
.end method
