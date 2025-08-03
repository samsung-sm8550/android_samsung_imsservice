.class Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "SoftphoneStateHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 91
    iget-object v0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receive Alarm Intent, action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 93
    const-string/jumbo v0, "refresh_token"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    sget-object v0, Lcom/sec/internal/constants/ims/entitilement/SoftphoneNamespaces;->mTimeoutType4:[J

    aget-wide v2, v0, v1

    long-to-int v0, v2

    const/4 v2, 0x0

    const/16 v3, 0xf

    invoke-virtual {p1, v3, v1, v0, v2}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x3

    .line 95
    const-string v1, "attempt"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 96
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 97
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 100
    :cond_0
    const-string/jumbo p2, "resend_sms"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 102
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x3fc

    invoke-virtual {p1, p2}, Lcom/sec/internal/helper/StateMachine;->removeMessages(I)V

    .line 103
    iget-object p1, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p2, 0x10

    invoke-virtual {p1, p2, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(II)V

    .line 104
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;->mClient:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;

    invoke-virtual {p0}, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneClient;->scheduleSmsAlarm()V

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo p2, "refresh_identity"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    iget-object p0, p0, Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler$1;->this$0:Lcom/sec/internal/ims/entitlement/softphone/SoftphoneStateHandler;

    const/16 p1, 0x404

    invoke-virtual {p0, p1, v1, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(III)V

    :cond_2
    :goto_0
    return-void
.end method
