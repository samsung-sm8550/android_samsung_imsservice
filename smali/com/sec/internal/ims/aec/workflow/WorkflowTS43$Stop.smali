.class public Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;
.super Ljava/lang/Object;
.source "WorkflowTS43.java"

# interfaces
.implements Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;)V
    .locals 0

    .line 392
    iput-object p1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Workflow;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    const/4 v1, 0x3

    iput v1, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;->mTryCnt:I

    .line 396
    iget-object v0, v0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mHttpJar:Lcom/sec/internal/ims/aec/util/HttpStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/aec/util/HttpStore;->clearHttpStore()V

    .line 398
    iget-object v0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3ea

    .line 399
    iput v1, v0, Landroid/os/Message;->what:I

    .line 400
    iget-object p0, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowTS43$Stop;->this$0:Lcom/sec/internal/ims/aec/workflow/WorkflowTS43;

    iget v1, p0, Lcom/sec/internal/ims/aec/workflow/WorkflowImpl;->mPhoneId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    .line 401
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 402
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x0

    return-object p0
.end method
