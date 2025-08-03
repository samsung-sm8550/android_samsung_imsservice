.class Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;
.super Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;
.source "WorkflowSec.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;


# direct methods
.method public static synthetic $r8$lambda$w9fs-YhrnsLF5hKGMsHSk6A27NU(Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;->lambda$run$0(Ljava/lang/Integer;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec;)V
    .locals 0

    .line 624
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase$Finish;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V

    return-void
.end method

.method private synthetic lambda$run$0(Ljava/lang/Integer;)V
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->setLastErrorCode(I)V

    .line 632
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mStorage:Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "info/last_error_code"

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/config/IStorageAdapter;->write(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/config/workflow/WorkflowBase$Workflow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget-object v0, v0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mSharedInfo:Lcom/sec/internal/ims/config/SharedInfo;

    invoke-virtual {v0}, Lcom/sec/internal/ims/config/SharedInfo;->getHttpResponse()Lcom/sec/internal/interfaces/ims/config/IHttpAdapter$Response;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9$$ExternalSyntheticLambda0;-><init>()V

    .line 628
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 634
    sget-object v0, Lcom/sec/internal/ims/config/workflow/WorkflowSec;->LOG_TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowSec$9;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowSec;

    iget p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v1, "workflow is finished"

    invoke-static {v0, p0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
