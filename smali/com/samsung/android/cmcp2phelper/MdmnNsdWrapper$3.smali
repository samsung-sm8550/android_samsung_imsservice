.class Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;
.super Landroid/content/BroadcastReceiver;
.source "MdmnNsdWrapper.java"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

.field private wasHotspotOn:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 295
    iput-boolean p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->wasHotspotOn:Z

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 0

    .line 294
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->isIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;)V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->startReceive()V

    return-void
.end method

.method private isIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 1

    .line 347
    sget-object p0, Lcom/samsung/android/cmcp2phelper/PreferredIpType;->IPV6_GLOBAL:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const-string/jumbo v0, "swlan"

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

    .line 351
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->startReceive()V

    .line 353
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_0
    return-void
.end method

.method private startReceive(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 9

    .line 322
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpEnabledWaitThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 324
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 325
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3$1;

    const/4 v5, 0x5

    const/16 v8, 0x12c

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3$1;-><init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;Lcom/samsung/android/cmcp2phelper/PreferredIpType;ILandroid/os/Handler;I)V

    int-to-long p0, v8

    .line 343
    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stopReceive()V
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->stopReceive()V

    .line 359
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 299
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 300
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result p1

    .line 301
    iget-boolean p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->wasHotspotOn:Z

    if-ne p2, p1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 304
    iget-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v0, p2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-eq v0, v1, :cond_1

    iget-object p2, p2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {p0, p2}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->startReceive(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 305
    :cond_1
    sget-object p2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHotspotAvailable : state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v1, v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 307
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object p2, p2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne p2, v0, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->stopReceive()V

    .line 308
    :cond_3
    sget-object p2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onHotspotLost : state is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->this$0:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    iget-object v1, v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;->wasHotspotOn:Z

    :cond_4
    return-void
.end method
