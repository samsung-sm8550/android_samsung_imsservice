.class Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;
.super Landroid/content/BroadcastReceiver;
.source "RegistrationManagerHandler.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;


# direct methods
.method public static synthetic $r8$lambda$A5chgAMnguddRY0Hev97Jh2aPC4(Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->lambda$onT3396Expired$1(ILcom/sec/internal/ims/core/RegisterTask;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YrbtujY12g36A9UuxK1Zmc4CwjA(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->lambda$onT3396Expired$0(Lcom/sec/internal/ims/core/RegisterTask;)Z

    move-result p0

    return p0
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onT3396Expired$0(Lcom/sec/internal/ims/core/RegisterTask;)Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/RegisterTask;->getPdnType()I

    move-result p0

    const/16 v0, 0xb

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onT3396Expired$1(ILcom/sec/internal/ims/core/RegisterTask;)V
    .locals 0

    .line 319
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->isNonVoLteSimByPdnFail()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 320
    const-string p0, "RegiMgr-Handler"

    const-string p1, "ignore T3396 expired, it is Non Volte sim"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private onT3396Expired(I)V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object v0, v0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/NetworkEventController;->hasRetryIntentOnPdnFail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string p0, "RegiMgr-Handler"

    const-string p1, "Operator default timer is running, No need update T3396 timer"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 316
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getInstance(I)Lcom/sec/internal/ims/core/SlotBasedConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/SlotBasedConfig;->getRegistrationTasks()Lcom/sec/internal/ims/core/SlotBasedConfig$RegisterTaskList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda0;-><init>()V

    .line 317
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;I)V

    .line 318
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 298
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received Intent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegiMgr-Handler"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const-string p1, "android.intent.action.retryTimeExpired"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 302
    const-string p1, "EXTRA_PHONE_ID"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 303
    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->this$0:Lcom/sec/internal/ims/core/RegistrationManagerHandler;

    iget-object p0, p0, Lcom/sec/internal/ims/core/RegistrationManagerHandler;->mNetEvtCtr:Lcom/sec/internal/ims/core/NetworkEventController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/NetworkEventController;->onRetryTimeExpired(I)V

    goto :goto_0

    .line 304
    :cond_0
    const-string p1, "android.intent.action.retrySetupData"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 305
    const-string/jumbo p1, "phone"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 306
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/RegistrationManagerHandler$4;->onT3396Expired(I)V

    :cond_1
    :goto_0
    return-void
.end method
