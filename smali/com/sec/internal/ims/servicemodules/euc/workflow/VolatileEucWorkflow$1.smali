.class Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;
.super Landroid/content/BroadcastReceiver;
.source "VolatileEucWorkflow.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private onEucrVolatileTimeout()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$fgetmCurrentAlarm(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$mtimeoutMessage(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    .line 79
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$munscheduleCurrentAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;)V

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->this$0:Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$mscheduleNextAlarmTimerIntent(Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;Lcom/sec/internal/ims/servicemodules/euc/data/IEucData;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 67
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive: EUCR Volatile intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    const-string p1, "com.sec.internal.ims.servicemodules.euc.workflow.action.VOLATILE_TIMEOUT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 69
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "onReceive: EUCR Volatile message timeout."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/euc/workflow/VolatileEucWorkflow$1;->onEucrVolatileTimeout()V

    :cond_0
    return-void
.end method
