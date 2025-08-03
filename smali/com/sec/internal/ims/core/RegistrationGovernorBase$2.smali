.class Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorBase.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorBase;)V
    .locals 0

    .line 1366
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1369
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received UpsmEvent: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegiGvnBase"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationGovernorBase$2;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorBase;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->onUltraPowerSavingModeChanged()I

    return-void
.end method
