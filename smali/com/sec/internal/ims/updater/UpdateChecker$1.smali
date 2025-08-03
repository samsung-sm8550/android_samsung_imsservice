.class Lcom/sec/internal/ims/updater/UpdateChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "UpdateChecker.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/updater/UpdateChecker;


# direct methods
.method public static synthetic $r8$lambda$Xw-Ii06hdyzrV9uUsnkXUF-sXQo(Lcom/sec/internal/ims/updater/UpdateChecker$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/UpdateChecker$1;->lambda$onReceive$0()V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/updater/UpdateChecker;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sec/internal/ims/updater/UpdateChecker$1;->this$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private synthetic lambda$onReceive$0()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/updater/UpdateChecker$1;->this$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    iget-object v0, v0, Lcom/sec/internal/ims/updater/UpdateChecker;->mStubDataStore:Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;

    invoke-virtual {v0}, Lcom/sec/internal/ims/updater/stub/data/StubUpdateCheckDataStore;->clearNextScheduleTime()V

    .line 89
    iget-object p0, p0, Lcom/sec/internal/ims/updater/UpdateChecker$1;->this$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/UpdateChecker;->updateCheck()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 86
    const-string p1, "IMSUpdateChecker"

    const-string p2, "Received Update Check Intent"

    invoke-static {p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/sec/internal/ims/updater/UpdateChecker$1;->this$0:Lcom/sec/internal/ims/updater/UpdateChecker;

    invoke-static {p1}, Lcom/sec/internal/ims/updater/UpdateChecker;->-$$Nest$fgetmScheduler(Lcom/sec/internal/ims/updater/UpdateChecker;)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance p2, Lcom/sec/internal/ims/updater/UpdateChecker$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/updater/UpdateChecker$1$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/updater/UpdateChecker$1;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
