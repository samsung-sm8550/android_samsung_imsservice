.class Lcom/sec/internal/ims/core/sim/SimManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent received : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimManager"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget-object v1, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    if-nez v1, :cond_0

    .line 222
    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p0

    const-string p1, "mSoftphoneAccount is null, so skip handling"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 225
    :cond_0
    const-string v0, "com.sec.imsservice.AKA_CHALLENGE_COMPLETE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget-object v2, v1, Lcom/sec/internal/ims/core/sim/SimManager;->mSoftphoneAccount:Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;

    iget v2, v2, Lcom/sec/internal/constants/ims/core/SimConstants$SoftphoneAccount;->mId:I

    if-ne v0, v2, :cond_1

    .line 226
    const-string/jumbo p0, "result"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthDone(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_1
    const-string p2, "com.sec.imsservice.AKA_CHALLENGE_FAILED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$3;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/sim/SimManager;->onSoftphoneAuthDone(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
