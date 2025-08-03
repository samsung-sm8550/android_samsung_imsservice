.class Lcom/sec/internal/ims/core/PdnController$3;
.super Landroid/content/BroadcastReceiver;
.source "PdnController.java"


# instance fields
.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field final synthetic this$0:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method public static synthetic $r8$lambda$kslxcqo4Z68Dn4VoRcnBfFjEqnE(Lcom/sec/internal/ims/core/PdnController$3;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController$3;->lambda$onReceive$0(Landroid/content/Intent;)V

    return-void
.end method

.method constructor <init>(Lcom/sec/internal/ims/core/PdnController;)V
    .locals 0

    .line 1469
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$3;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x1

    .line 1470
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController$3;->mExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private synthetic lambda$onReceive$0(Landroid/content/Intent;)V
    .locals 0

    .line 1474
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController$3;->this$0:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->handlePcscfRestorationIntent(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1473
    invoke-static {}, Lcom/sec/internal/ims/core/PdnController;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1474
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController$3;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sec/internal/ims/core/PdnController$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/sec/internal/ims/core/PdnController$3$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/PdnController$3;Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
