.class public Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DefaultNetworkNotifier.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultNetworkNotifier"


# instance fields
.field private final mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectivityMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$4tovoaBe2bjeFTaeWtKuvCKGAT8(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->lambda$unRegister$2(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CIAm5d_Inqb-UZzstvC5oFbYeXk(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->lambda$register$0(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vrEZJy8y9yUTYPqMtGF6Kbqm8xQ(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->lambda$notifyAvailable$1()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mExecutor:Ljava/util/concurrent/Executor;

    .line 30
    const-string p2, "connectivity"

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    .line 32
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method private synthetic lambda$notifyAvailable$1()V
    .locals 1

    .line 56
    iget-object p0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$register$0(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object p1, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 44
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->registerToConnectivityManager()V

    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 49
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->notifyAvailable()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$unRegister$2(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    iget-object p1, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->unRegisterToConnectivityManager()V

    :cond_0
    return-void
.end method

.method private notifyAvailable()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerToConnectivityManager()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultNetworkNotifier"

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->notifyAvailable()V

    return-void
.end method

.method register(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method unRegister(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;Lcom/sec/internal/ims/updater/DefaultNetworkNotifier$DefaultNetworkCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method unRegisterToConnectivityManager()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/sec/internal/ims/updater/DefaultNetworkNotifier;->mConnectivityMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 78
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unRegisterToConnectivityManager failed!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DefaultNetworkNotifier"

    invoke-static {v0, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
