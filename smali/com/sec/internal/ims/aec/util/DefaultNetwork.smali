.class public Lcom/sec/internal/ims/aec/util/DefaultNetwork;
.super Ljava/lang/Object;
.source "DefaultNetwork.java"


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mModuleHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmModuleHandler(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mModuleHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 19
    iput-object p2, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mModuleHandler:Landroid/os/Handler;

    .line 20
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mConnMgr:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 1

    .line 38
    new-instance v0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;-><init>(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)V

    return-object v0
.end method


# virtual methods
.method public registerDefaultNetworkCallback()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-nez v0, :cond_0

    .line 25
    invoke-direct {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->getDefaultNetworkCallback()Landroid/net/ConnectivityManager$NetworkCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 26
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    :cond_0
    return-void
.end method

.method public unregisterNetworkCallback()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->mDefaultNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method
