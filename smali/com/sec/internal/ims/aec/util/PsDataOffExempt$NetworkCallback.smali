.class public Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "PsDataOffExempt.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;


# direct methods
.method public static synthetic $r8$lambda$QiBnu67BM7ujN2B2TGlWnFY-ZFI(Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->lambda$onAvailable$0(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private synthetic lambda$onAvailable$0(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 116
    :catch_0
    new-instance p0, Ljava/net/UnknownHostException;

    const-string/jumbo p1, "the address lookup fails"

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 111
    :cond_0
    new-instance p0, Ljava/net/UnknownHostException;

    const-string/jumbo p1, "there is no hostname"

    invoke-direct {p0, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iput-object p1, v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    .line 109
    new-instance p1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;)V

    iput-object p1, v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mDns:Lokhttp3/Dns;

    .line 119
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object v0, p1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 121
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object v1, v1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    iget-object p1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {p1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$fgetmConnMgr(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object v0, v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAvailable link properties InterfaceName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", LinkAddresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", DnsAddresses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v1}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v1

    .line 127
    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$fgetmWorkflowHandler(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/os/Handler;

    move-result-object p0

    const/16 p1, 0x3f0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 124
    :cond_1
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v0

    const-string/jumbo v1, "onAvailable: no link properties"

    invoke-static {p1, v1, v0}, Lcom/sec/internal/log/AECLog;->d(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    :goto_1
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 137
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLost: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result p0

    invoke-static {v0, p1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public onUnavailable()V
    .locals 3

    .line 142
    invoke-static {}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUnavailable: mNetworkCallback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", network = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    iget-object v2, v2, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-static {v2}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->-$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;->this$0:Lcom/sec/internal/ims/aec/util/PsDataOffExempt;

    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->unregisterNetworkCallback()V

    return-void
.end method
