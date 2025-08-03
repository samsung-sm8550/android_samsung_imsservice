.class public Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;
.super Ljava/lang/Object;
.source "MdmnNsdWrapper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field context:Landroid/content/Context;

.field curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

.field private final hotspotBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

.field ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

.field serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

.field private final wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/2.1.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    .line 294
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$3;-><init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 365
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$4;-><init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 41
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "version 2.1.06"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 43
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    .line 44
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    .line 45
    new-instance p2, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p2, p1, v0, p3}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    .line 46
    new-instance p2, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p2, p1, v0, p3}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->isWiFiIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startReceiveFromWiFi()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->isHotspotIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startReceiveFromHotspot()V

    return-void
.end method

.method private isConfigurationValid(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 84
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :cond_2
    :goto_0
    return p0
.end method

.method private isHotspotIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 1

    .line 268
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

.method private isWiFiIpAddressEnabled(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Z
    .locals 1

    .line 224
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

.method private registerNetworkListener()V
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->registerWiFiNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 125
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->registerHotspotNetworkCallback(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private startReceiveFromHotspot()V
    .locals 1

    .line 261
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->startReceive()V

    .line 263
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_0
    return-void
.end method

.method private startReceiveFromHotspot(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 9

    .line 236
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpEnabledWaitThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 238
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 239
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$2;

    const/4 v5, 0x5

    const/16 v8, 0x12c

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$2;-><init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;Lcom/samsung/android/cmcp2phelper/PreferredIpType;ILandroid/os/Handler;I)V

    int-to-long p0, v8

    .line 257
    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startReceiveFromWiFi()V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->startReceive()V

    .line 219
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    :cond_0
    return-void
.end method

.method private startReceiveFromWiFi(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 9

    .line 192
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IpEnabledWaitThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 194
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 195
    new-instance v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;

    const/4 v5, 0x5

    const/16 v8, 0x12c

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v6, v1

    move v7, v8

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$1;-><init>(Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;Lcom/samsung/android/cmcp2phelper/PreferredIpType;ILandroid/os/Handler;I)V

    int-to-long p0, v8

    .line 213
    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private unregisterNetworkListener()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiNetworkStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->unregisterWifiNetworkCallback(Landroid/content/Context;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->unregisterHotspotNetworkCallback(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public getSupportDevices()Ljava/util/Collection;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->getDeviceList(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public sendCommand(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-eq v0, v1, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->getTargetIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 280
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v7

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v2}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v3}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    move-object v4, v7

    move-object v5, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setCommandListener(Lcom/samsung/android/cmcp2phelper/CommandListener;)V
    .locals 0

    .line 291
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setCommandListener(Lcom/samsung/android/cmcp2phelper/CommandListener;)V

    return-void
.end method

.method public setServiceInfo(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)V
    .locals 3

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->isConfigurationValid(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 58
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->stopReceive()V

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->stopReceive()V

    .line 62
    :cond_2
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    .line 63
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {v0, v1, p1, v2}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    .line 65
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne p1, v0, :cond_5

    .line 66
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 67
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-void

    .line 71
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 72
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->startReceive()V

    .line 75
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 76
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->startReceive()V

    :cond_5
    return-void
.end method

.method public start()V
    .locals 4

    .line 91
    sget-object v0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->isConfigurationValid(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-eq v1, v2, :cond_5

    sget-object v3, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne v1, v3, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 101
    const-string v1, "WiFi or Hotspot are not connected to receive discovery packet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iput-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    .line 103
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->registerNetworkListener()V

    return-void

    .line 107
    :cond_2
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->createSession()V

    .line 109
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    const-string v1, "WiFi is connected to receive discovery packet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startReceiveFromWiFi(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    const-string v1, "Hotspot is connected to receive discovery packet"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startReceiveFromHotspot(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 119
    :cond_4
    iput-object v3, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->registerNetworkListener()V

    return-void

    .line 96
    :cond_5
    :goto_0
    const-string p0, "cmcp2phelper is already started"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDiscovery(Landroid/os/Handler;ILjava/util/ArrayList;)I
    .locals 8

    const/4 v0, 0x0

    if-nez p3, :cond_0

    .line 146
    sget-object p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "No ip list for p2p discovery"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-direct {p0, v1}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->isConfigurationValid(Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 152
    :cond_1
    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try discovery : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->clearDiscoveredPeers()V

    .line 154
    invoke-static {p3}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setDiscoveryTargets(Ljava/util/ArrayList;)V

    .line 155
    invoke-static {p1, p2}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->setCallback(Landroid/os/Handler;I)V

    .line 157
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 158
    const-string p1, "WiFi or HotSpot are not enabled for p2p discovery"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->stopReceive()V

    .line 160
    iget-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->stopReceive()V

    .line 161
    sget-object p1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTING:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return v0

    .line 165
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 166
    const-string v0, "WiFi is connected for p2p discovery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v2, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-eq v0, v2, :cond_3

    .line 168
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startReceiveFromWiFi(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 170
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v6

    move-object v3, p1

    move v4, p2

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 173
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isHotspotTurnedOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 174
    const-string v0, "HotSpot is enabled for p2p discovery"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->STARTED:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-eq v0, v1, :cond_5

    .line 176
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-direct {p0, v0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->startReceiveFromHotspot(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 178
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v5

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public stop()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    sget-object v1, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;->IDLE:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    if-ne v0, v1, :cond_0

    .line 130
    sget-object p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->LOG_TAG:Ljava/lang/String;

    const-string v0, "cmcp2phelper is already stopped"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->hotspotTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->stopReceive()V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->wifiTransportManager:Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphWifiManager;->stopReceive()V

    .line 135
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->unregisterNetworkListener()V

    .line 136
    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper;->curStatus:Lcom/samsung/android/cmcp2phelper/MdmnNsdWrapper$TransportStatus;

    return-void
.end method
