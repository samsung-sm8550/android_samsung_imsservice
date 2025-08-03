.class Lcom/sec/internal/ims/core/WfcEpdgManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WfcEpdgManager.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/core/WfcEpdgManager;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 164
    invoke-static {}, Lcom/sec/internal/ims/core/WfcEpdgManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mWifiStateListener onLost"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/core/WfcEpdgManager$2;->this$0:Lcom/sec/internal/ims/core/WfcEpdgManager;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/WfcEpdgManager;->mIsWIFIConnected:Z

    return-void
.end method
