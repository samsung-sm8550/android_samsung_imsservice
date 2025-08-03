.class Lcom/sec/internal/ims/core/WfcEpdgManager$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WfcEpdgManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iget-object v0, v0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    .line 128
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultNetworkCallback onAvailable isWifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 129
    iget-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/core/WfcEpdgManager;->isWifiConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    const/4 p1, 0x3

    .line 131
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 133
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 5

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 143
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 147
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 148
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultNetworkCallback onCapabilitiesChanged(): isWifi :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",validated :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    .line 149
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 151
    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 152
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    const/4 p1, 0x3

    .line 153
    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/StateMachine;->sendMessage(I)V

    goto :goto_0

    .line 156
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$1;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    :cond_3
    :goto_0
    return-void
.end method
