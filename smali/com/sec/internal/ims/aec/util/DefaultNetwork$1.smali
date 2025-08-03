.class Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "DefaultNetwork.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->-$$Nest$fgetmModuleHandler(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/16 p1, 0xc

    .line 50
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x10

    .line 51
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/DefaultNetwork$1;->this$0:Lcom/sec/internal/ims/aec/util/DefaultNetwork;

    invoke-static {p0}, Lcom/sec/internal/ims/aec/util/DefaultNetwork;->-$$Nest$fgetmModuleHandler(Lcom/sec/internal/ims/aec/util/DefaultNetwork;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
