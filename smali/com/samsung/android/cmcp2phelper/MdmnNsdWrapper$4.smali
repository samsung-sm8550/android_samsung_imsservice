.class Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "MdmnNsdWrapper.java"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

.field private wasWifiOn:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    const/4 p1, 0x0

    .line 366
    iput-boolean p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->wasWifiOn:Z

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 0

    .line 365
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->isIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;)V
    .locals 0

    .line 365
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->startReceive()V

    return-void
.end method

.method private isIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 1

    .line 411
    sget-object p0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV6_GLOBAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const-string/jumbo v0, "wlan"

    if-ne p1, p0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isIpv6Enabled(Ljava/lang/String;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isIpv4Enabled(Ljava/lang/String;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private startReceive()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->startReceive()V

    .line 417
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_0
    return-void
.end method

.method private startReceive(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 9

    .line 386
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpEnabledWaitThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 388
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 389
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4$1;

    const/4 v5, 0x5

    const/16 v8, 0x12c

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4$1;-><init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;Lcom/samsung/android/cmcp2phelper/PreferredIpType;ILandroid/os/Handler;I)V

    int-to-long p0, v8

    .line 407
    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 370
    iget-boolean p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->wasWifiOn:Z

    if-eqz p1, :cond_0

    return-void

    .line 371
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p1, p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-eq p1, v0, :cond_1

    .line 372
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWiFiAvailable : state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v1, v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p1, p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->startReceive(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    :cond_1
    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->wasWifiOn:Z

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 423
    iget-boolean p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->wasWifiOn:Z

    if-nez p1, :cond_0

    return-void

    .line 424
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "onWiFiLost"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v1, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne v1, v2, :cond_2

    .line 426
    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->stopReceive()V

    .line 427
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v1, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    .line 428
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The wifi transport manager is stopped, and State is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v1, v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p1, 0x0

    .line 430
    iput-boolean p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;->wasWifiOn:Z

    return-void
.end method
