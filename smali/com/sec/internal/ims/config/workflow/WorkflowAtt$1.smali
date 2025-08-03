.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;
.super Landroid/database/ContentObserver;
.source "WorkflowAtt.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;Landroid/os/Handler;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 108
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": RCS user switch is toggled, start autoconfig"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->addEventLog(Ljava/lang/String;)V

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->isMainSwitchToggled:Z

    const/4 p1, 0x0

    .line 110
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
