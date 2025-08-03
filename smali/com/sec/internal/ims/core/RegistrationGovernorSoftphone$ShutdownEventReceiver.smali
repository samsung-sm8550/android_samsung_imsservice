.class public Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationGovernorSoftphone.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;


# direct methods
.method protected constructor <init>(Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/internal/ims/core/RegistrationGovernor;->mIsPermanentStopped:Z

    .line 119
    const-string p1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 120
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mRegMan:Lcom/sec/internal/ims/core/RegistrationManagerInternal;

    const/16 p2, 0xd

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->sendDeregister(I)V

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 125
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->REGISTERED:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone$ShutdownEventReceiver;->this$0:Lcom/sec/internal/ims/core/RegistrationGovernorSoftphone;

    iget-object p1, p1, Lcom/sec/internal/ims/core/RegistrationGovernorBase;->mTask:Lcom/sec/internal/ims/core/RegisterTask;

    .line 126
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/RegisterTask;->getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    move-result-object p1

    sget-object p2, Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;->DEREGISTERING:Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;

    if-ne p1, p2, :cond_1

    :cond_0
    const-wide/16 p1, 0x1f4

    .line 131
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Sleep exception : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RegiGvnSoftp"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    return-void
.end method
