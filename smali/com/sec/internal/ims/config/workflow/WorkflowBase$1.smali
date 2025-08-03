.class Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;
.super Landroid/content/BroadcastReceiver;
.source "WorkflowBase.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 189
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->checkRcsSwitchEur()Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "onReceive: validity period expired. but RCS is switch off. it should perform when switch on."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 193
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.internal.ims.config.workflow.validity_timeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 194
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mValidityIntent:Landroid/app/PendingIntent;

    .line 195
    iget-object v1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    sget-object v2, Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;->EXPIRE_VALIDITY:Lcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;

    invoke-interface {v1, p1, v2}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->setAcsTryReason(ILcom/sec/internal/constants/ims/DiagnosisConstants$RCSA_ATRE;)V

    .line 196
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    invoke-virtual {p1}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->isNetworkAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 197
    const-string/jumbo p1, "phone"

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 198
    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    if-ne v2, p1, :cond_2

    .line 199
    invoke-static {p2}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$fgetmEventLog(Lcom/sec/internal/ims/config/workflow/WorkflowBase;)Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget p2, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    const-string/jumbo v2, "onReceive: Same phoneId with this intent"

    invoke-virtual {p1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const p1, 0x1302000c

    .line 200
    const-string/jumbo p2, "onReceive: Same phoneId"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p2, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    iget p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-interface {p2, v1, v0, p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->startAutoConfig(ZLandroid/os/Message;I)V

    goto :goto_0

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-object p1, p1, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mModule:Lcom/sec/internal/interfaces/ims/config/IConfigModule;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/config/IConfigModule;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget v0, p2, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mPhoneId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {p2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    :cond_2
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onReceive: validity period expired. start config, mMobileNetwork = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase$1;->this$0:Lcom/sec/internal/ims/config/workflow/WorkflowBase;

    iget-boolean p0, p0, Lcom/sec/internal/ims/config/workflow/WorkflowBase;->mMobileNetwork:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method
