.class Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowAtt.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V
    .locals 0

    .line 865
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 868
    const-string p1, "com.sec.internal.ims.config.workflow.token_expired_after_max_retry"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 869
    sget-object p1, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->LOG_TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    iget p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v0, "onReceive: token expired 24hrs after no_more_retry state"

    invoke-static {p1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 870
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    invoke-static {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowAtt;->-$$Nest$mstopResetTokenTimer(Lcom/sec/internal/ims/config/workflow/WorkflowAtt;)V

    .line 871
    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowAtt$12;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowAtt;

    sget-object p1, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;->TOKEN_EXPIRED:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->removeToken(Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_TDRE;)I

    :cond_0
    return-void
.end method
