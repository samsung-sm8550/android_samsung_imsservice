.class Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;
.source "WorkflowTmo.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowTmo;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$FetchHttp;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

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

    .line 194
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget v1, v1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string v2, "Fetch:"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->mConfigurationParamObserver:Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$ConfigurationParamObserver;->retrieveConfiguration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0

    .line 198
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowTmo$2;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowTmo;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowTmo;->getNextWorkflow(I)Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;

    move-result-object p0

    return-object p0
.end method
