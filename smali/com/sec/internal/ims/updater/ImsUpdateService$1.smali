.class Lcom/sec/internal/ims/updater/ImsUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsUpdateService.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/updater/ImsUpdateService;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/sec/internal/ims/updater/ImsUpdateService$1;->this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v0, -0x1

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 56
    const-string v2, "ImsUpdateService"

    if-nez v1, :cond_0

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "action is null! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v3, v0

    goto :goto_1

    :sswitch_0
    const-string v3, "com.samsung.intent.action.update_ims"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "com.samsung.intent.action.imsservice.install_session_state_changed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "com.samsung.intent.action.update_reset"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown action: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :pswitch_0
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService$1;->this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService;->-$$Nest$monForcedUpdateTriggered(Lcom/sec/internal/ims/updater/ImsUpdateService;Landroid/content/Context;)V

    goto :goto_2

    .line 67
    :pswitch_1
    const-string p1, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService$1;->this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/updater/ImsUpdateService;->-$$Nest$monInstallSessionStateChanged(Lcom/sec/internal/ims/updater/ImsUpdateService;I)V

    goto :goto_2

    .line 72
    :pswitch_2
    iget-object p0, p0, Lcom/sec/internal/ims/updater/ImsUpdateService$1;->this$0:Lcom/sec/internal/ims/updater/ImsUpdateService;

    invoke-static {p0}, Lcom/sec/internal/ims/updater/ImsUpdateService;->-$$Nest$monForcedUpdateReset(Lcom/sec/internal/ims/updater/ImsUpdateService;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x324ea540 -> :sswitch_2
        0xdda5f78 -> :sswitch_1
        0x171f7d80 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
