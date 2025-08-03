.class Lcom/sec/internal/ims/core/RegistrationObserverManager$2;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationObserverManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationObserverManager;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$2;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 97
    const-string p1, "android.location.extra.LOCATION_ENABLED"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Location mode is changed to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "RegiObsMgr"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationObserverManager$2;->this$0:Lcom/sec/internal/ims/core/RegistrationObserverManager;

    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/sec/internal/ims/core/RegistrationObserverManager;->onLocationModeChanged(IZ)V

    return-void
.end method
