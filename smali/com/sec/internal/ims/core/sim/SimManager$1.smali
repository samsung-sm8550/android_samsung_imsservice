.class Lcom/sec/internal/ims/core/sim/SimManager$1;
.super Landroid/content/BroadcastReceiver;
.source "SimManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/sim/SimManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/sim/SimManager;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 153
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 154
    const-string/jumbo v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 155
    const-string/jumbo v1, "phone"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 157
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SimIntentReceiver: received action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mSubId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget v4, v4, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SimManager"

    invoke-static {v4, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    iget-object v2, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {v2}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 161
    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "phoneId mismatch : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p0}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 165
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget v2, v1, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    if-gez v2, :cond_1

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_1

    .line 166
    iput v0, v1, Lcom/sec/internal/ims/core/sim/SimManager;->mSubscriptionId:I

    .line 169
    :cond_1
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_5

    const-string v0, "com.samsung.intent.action.isim_refresh_fail_recovery"

    .line 170
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 173
    :cond_2
    const-string p2, "android.intent.action.ISIM_LOADED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-static {p2}, Lcom/sec/internal/ims/core/sim/SimManager;->-$$Nest$fgetmSimSlot(Lcom/sec/internal/ims/core/sim/SimManager;)I

    move-result p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/sim/SimManager;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 174
    invoke-static {p2, v0}, Lcom/sec/internal/ims/core/sim/SimManagerUtils;->isISimAppPresent(ILcom/sec/internal/helper/os/ITelephonyManager;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 175
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const-string p1, "ISIM_LOADED"

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 176
    :cond_3
    const-string p2, "com.android.intent.isim_refresh"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/sim/SimManager;->hasVsim()Z

    move-result p2

    if-nez p2, :cond_4

    .line 177
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 178
    :cond_4
    const-string p2, "com.samsung.action.SIM_ICCID_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 179
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 171
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/sim/SimManager$1;->this$0:Lcom/sec/internal/ims/core/sim/SimManager;

    const-string/jumbo p1, "ss"

    .line 172
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_6
    :goto_1
    return-void
.end method
