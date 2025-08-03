.class Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MCSClient.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;


# direct methods
.method constructor <init>(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result v1

    const-string/jumbo v2, "onAvailable"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 757
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->getProvisionStatus()Z

    move-result p1

    if-nez p1, :cond_0

    .line 758
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$mstartProvisioning(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)V

    :cond_0
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 763
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/mcs/MCSClient$2;->this$0:Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-static {p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/cmstore/mcs/MCSClient;)I

    move-result p0

    const-string/jumbo v0, "onLost"

    invoke-static {p1, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
