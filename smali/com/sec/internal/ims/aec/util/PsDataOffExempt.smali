.class public Lcom/sec/internal/ims/aec/util/PsDataOffExempt;
.super Ljava/lang/Object;
.source "PsDataOffExempt.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PsDataOffExempt"

.field private static final NETWORK_ACQUIRE_TIMEOUT_MILLIS:I = 0x7530


# instance fields
.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field protected mDns:Lokhttp3/Dns;

.field protected mNetwork:Landroid/net/Network;

.field protected mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

.field private final mPhoneId:I

.field protected mSocketFactory:Ljavax/net/SocketFactory;

.field private final mWorkflowHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmConnMgr(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/net/ConnectivityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkflowHandler(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mWorkflowHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mDns:Lokhttp3/Dns;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    .line 35
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 39
    iput p2, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    .line 40
    iput-object p3, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mWorkflowHandler:Landroid/os/Handler;

    .line 41
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    return-void
.end method


# virtual methods
.method public getDns()Lokhttp3/Dns;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mDns:Lokhttp3/Dns;

    return-object p0
.end method

.method public getNetwork()Landroid/net/Network;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mSocketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public hasXcapApn()Z
    .locals 1

    .line 61
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getUtServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/ss/IUtServiceModule;->checkXcapApn(I)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public requestNetwork()V
    .locals 6

    .line 69
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->hasXcapApn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    sget-object v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestNetwork: No XCAP PDN, don\'t try requestNetwork using xcap "

    iget p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/AECLog;->e(Ljava/lang/String;Ljava/lang/String;I)V

    return-void

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mWorkflowHandler:Landroid/os/Handler;

    const/16 v0, 0x3f0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    if-nez v0, :cond_2

    .line 79
    iget v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 81
    sget-object v1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNetwork: transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " capability "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " subId "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v5, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-static {v1, v2, v5}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    .line 83
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v1, v3}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    new-instance v2, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    .line 84
    invoke-virtual {v2, v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;-><init>(Lcom/sec/internal/ims/aec/util/PsDataOffExempt;)V

    iput-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    const/16 v2, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;I)V

    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestNetwork: network callback is already registered"

    iget p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public unregisterNetworkCallback()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    if-eqz v0, :cond_0

    .line 96
    iget-object v1, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 97
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mDns:Lokhttp3/Dns;

    .line 98
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetwork:Landroid/net/Network;

    .line 99
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mNetworkCallback:Lcom/sec/internal/ims/aec/util/PsDataOffExempt$NetworkCallback;

    .line 100
    iput-object v0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mSocketFactory:Ljavax/net/SocketFactory;

    .line 101
    sget-object v0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterNetworkCallback"

    iget p0, p0, Lcom/sec/internal/ims/aec/util/PsDataOffExempt;->mPhoneId:I

    invoke-static {v0, v1, p0}, Lcom/sec/internal/log/AECLog;->i(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
