.class public Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;
.super Ljava/lang/Object;
.source "CmcHotspotManager.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

.field private final mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLastHotspotEnabledFromReceiver:Z


# direct methods
.method public static synthetic $r8$lambda$JxXpXu0ZknSE61i-aIgYYIKFew8(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->lambda$getHotspotAddressesInternal$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aLKITwQwl-lBAbmEj3AlaXPozeE(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;ZLjava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->lambda$getHotspotAddressesInternal$1(ZLjava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rOJzoSicGkBGrRnduUrlAFhoD30(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Ljava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->lambda$getHotspotAddressesInternal$0(Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$vXo7nL4CG6AmG4mrO8WGuG5FYBU(Ljava/net/NetworkInterface;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->lambda$getHotspotNetworkInterfaceAddresses$3(Ljava/net/NetworkInterface;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastHotspotEnabledFromReceiver(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mLastHotspotEnabledFromReceiver:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mnotifyHotspotStateChange(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->notifyHotspotStateChange()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetLastHotspotState(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->setLastHotspotState(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    .line 23
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/sec/internal/helper/RegistrantList;

    invoke-direct {v0}, Lcom/sec/internal/helper/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mLastHotspotEnabledFromReceiver:Z

    .line 59
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 29
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getHotspotAddressesInternal(Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotNetworkInterfaceAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda1;-><init>()V

    new-instance v2, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda2;-><init>()V

    .line 112
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 111
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V

    .line 115
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;Z)V

    .line 116
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;)V

    .line 117
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->peek(Ljava/util/function/Consumer;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 118
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private getHotspotNetworkInterfaceAddresses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 123
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager$$ExternalSyntheticLambda0;-><init>()V

    .line 124
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 125
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    if-nez v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getHotspotNetworkInterfaceAddresses: There\'s no hotspot network interface"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 130
    :cond_0
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 132
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method private getWifiApState()I
    .locals 1

    .line 90
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getWifiApState()I

    move-result p0

    return p0
.end method

.method private isValidAddress(Ljava/net/InetAddress;)Z
    .locals 0

    .line 146
    invoke-virtual {p1}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result p0

    if-nez p0, :cond_0

    .line 147
    invoke-virtual {p1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$getHotspotAddressesInternal$0(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 115
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InetAddress;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->isValidAddress(Ljava/net/InetAddress;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$getHotspotAddressesInternal$1(ZLjava/util/Map$Entry;)Ljava/lang/String;
    .locals 1

    .line 116
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->makeHotspotAddressFormat(Ljava/net/InetAddress;IZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getHotspotAddressesInternal$2(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHotspotAddresses: address: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getHotspotNetworkInterfaceAddresses$3(Ljava/net/NetworkInterface;)Z
    .locals 1

    .line 124
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "swlan"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeHotspotAddressFormat(Ljava/net/InetAddress;IZ)Ljava/lang/String;
    .locals 0

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 140
    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private notifyHotspotStateChange()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {p0}, Lcom/sec/internal/helper/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method private registerHotspotStateChangedReceiver()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private setLastHotspotState(Z)V
    .locals 0

    .line 74
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mLastHotspotEnabledFromReceiver:Z

    return-void
.end method

.method private unRegisterHotspotStateChangedReceiver()V
    .locals 3

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotspotStateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unRegisterHotspotStateChangedReceiver: Receiver was not registered: exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getHotspotAddresses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 95
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotAddressesInternal(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHotspotAddressesWithSubnetPrefix()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 99
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getHotspotAddressesInternal(Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isHotspotEnabled()Z
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->getWifiApState()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public registerHotspotStateChangeEvent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/helper/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 34
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->registerHotspotStateChangedReceiver()V

    return-void
.end method

.method public unregisterHotspotStateChangeEvent(Landroid/os/Handler;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->mHotSpotStateChangeRegistrant:Lcom/sec/internal/helper/RegistrantList;

    invoke-virtual {v0, p1}, Lcom/sec/internal/helper/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 39
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->unRegisterHotspotStateChangedReceiver()V

    const/4 p1, 0x0

    .line 40
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcHotspotManager;->setLastHotspotState(Z)V

    return-void
.end method
