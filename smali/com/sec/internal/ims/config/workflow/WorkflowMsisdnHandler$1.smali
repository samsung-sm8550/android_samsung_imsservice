.class Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;
.super Landroid/os/CountDownTimer;
.source "WorkflowMsisdnHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

.field final synthetic val$nextMsisdnTime:I


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;JJI)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    iput p6, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->val$nextMsisdnTime:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 127
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msisdnTimer expired("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->val$nextMsisdnTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;

    invoke-virtual {p0}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->expiredMsisdnTimer()V

    return-void
.end method

.method public onTick(J)V
    .locals 2

    .line 122
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowMsisdnHandler;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "validity tick("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
