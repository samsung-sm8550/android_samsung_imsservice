.class public Lcom/sec/internal/ims/core/PdnController;
.super Landroid/os/Handler;
.source "PdnController.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/IPdnController;


# static fields
.field private static final DBG:Z

.field protected static final ECC_IWLAN:Ljava/lang/String; = "IWLAN"

.field protected static final EVENT_CLEAR_EMERGENCY_QUALIFIEDNETWORK:I = 0x70

.field protected static final EVENT_DEFAULT_NETWORK_CHANGED:I = 0x6e

.field protected static final EVENT_EPDG_CONNECTION_CHANGED:I = 0x68

.field protected static final EVENT_EPDG_IKEERROR:I = 0x6d

.field protected static final EVENT_LINK_PROPERTIES_CHANGED:I = 0x6f

.field protected static final EVENT_PDN_CONNECTED:I = 0x6c

.field protected static final EVENT_PDN_DISCONNECTED:I = 0x67

.field protected static final EVENT_REQUEST_NETWORK:I = 0x65

.field protected static final EVENT_REQUEST_STOP_PDN:I = 0x6b

.field protected static final EVENT_STOP_PDN_COMPLETED:I = 0x66

.field protected static final EVENT_WIFI_CONNECTED:I = 0x69

.field protected static final EVENT_WIFI_DISCONNECTED:I = 0x6a

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static final PROPERTY_ECC_PATH:Ljava/lang/String; = "ril.subtype"

.field static final TEMP_SA_DISABLE:I = 0x4

.field static final TEMP_SA_ENABLE:I = 0x3

.field protected static mDataState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mActiveDataPhoneId:I

.field protected mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field final mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

.field protected mEPDNQN:[I

.field protected mEPDNintfName:[Ljava/lang/String;

.field protected mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

.field protected mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field protected mIsDisconnecting:Z

.field protected mNeedCellLocationUpdate:Z

.field protected final mNetworkCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            "Lcom/sec/internal/ims/core/NetworkCallback;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNetworkStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mNetworkStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/os/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private final mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

.field protected final mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mSimManagers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/sec/internal/interfaces/ims/core/ISimManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mTelephonyCallbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;",
            ">;"
        }
    .end annotation
.end field

.field protected mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

.field final mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static synthetic $r8$lambda$7_9p4pDahBQN0u6k83WY44dV8xE(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$getCurrentCellIdentity$0(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$BJRXMPEwfYT4dEmeBOqTOOTqC38(ILjava/util/Map$Entry;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$handlePcscfRestorationIntent$4(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$LHLoyreazeTlbzQO3HIuJxZrrVE(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->lambda$handlePcscfRestorationIntent$5(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QpI0i0uw_HfQOTTy6y0eYkfJTAI(Lcom/sec/internal/constants/ims/os/NetworkState;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/PdnController;->lambda$isEpdgConnected$2(Lcom/sec/internal/constants/ims/os/NetworkState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dTwWTGJkxbNx7DM7THpE-F7gjIA(Lcom/sec/internal/constants/ims/os/NetworkState;)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/ims/core/PdnController;->lambda$isEmergencyEpdgConnected$3(Lcom/sec/internal/constants/ims/os/NetworkState;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$pqlbpZWgwOrOeJ4a0p95PalQkSg(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->lambda$requestNetwork$1(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 85
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    .line 86
    const-class v0, Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 1

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 115
    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    const/4 p2, 0x0

    .line 116
    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 117
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    .line 119
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    .line 120
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    .line 121
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    .line 124
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 125
    iput-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    .line 387
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$1;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 400
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$2;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$2;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 1469
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$3;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/core/PdnController$3;-><init>(Lcom/sec/internal/ims/core/PdnController;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 131
    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    .line 132
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 133
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    .line 134
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    .line 135
    new-instance p2, Lcom/sec/internal/ims/core/ImsEpdgEventListener;

    invoke-direct {p2, p0, p3}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    .line 137
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    .line 138
    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    .line 139
    new-array p2, p2, [I

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    .line 141
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    .line 142
    new-instance p2, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object p3, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const/16 v0, 0xc8

    invoke-direct {p2, p1, p3, v0}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-void
.end method

.method private determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1112
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1117
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1119
    :catch_0
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "determineIpAddress: invalid address -  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 1113
    :cond_1
    :goto_0
    sget-object p1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "determineIpAddress: empty address."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/LinkProperties;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1268
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p0

    .line 1269
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1271
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1272
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 1273
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1274
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1275
    :cond_1
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1276
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1280
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1281
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getNetworkCapability(I)I
    .locals 0

    .line 0
    const/16 p0, 0xb

    if-eq p1, p0, :cond_2

    const/16 p0, 0xf

    if-eq p1, p0, :cond_1

    const/16 p0, 0x1b

    if-eq p1, p0, :cond_0

    const/16 p0, 0xc

    return p0

    :cond_0
    const/16 p0, 0x9

    return p0

    :cond_1
    const/16 p0, 0xa

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method private handleConnectedPdnType(IILcom/sec/internal/ims/core/NetworkCallback;Ljava/lang/String;)V
    .locals 5

    .line 779
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    const/16 v1, 0xb

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    .line 788
    iget-object p3, p3, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 789
    invoke-virtual {p3}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_1

    .line 790
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 791
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo p3, "onPdnConnected: epdg network for ims pdn"

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 792
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p1

    .line 793
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 794
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p4

    invoke-interface {p3, p4, v2, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 795
    const-string p4, "ims"

    invoke-interface {p3, p2, p4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(ILjava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 797
    :cond_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    const/16 p3, 0xf

    if-ne p1, p3, :cond_3

    .line 800
    const-string/jumbo p3, "ril.subtype"

    const-string v1, ""

    invoke-static {p3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 801
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "eccPath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 802
    const-string v1, "IWLAN"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 803
    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 805
    :cond_2
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object p4, p1, p2

    .line 806
    sget-object p1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleConnectedPdnType: eccPath="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "mEPDNintfName : "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object p0, p0, p2

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private static synthetic lambda$getCurrentCellIdentity$0(ILcom/sec/internal/helper/os/CellIdentityWrapper;)Z
    .locals 0

    .line 350
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->isMatched(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$handlePcscfRestorationIntent$4(ILjava/util/Map$Entry;)Z
    .locals 2

    .line 1497
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/NetworkCallback;

    iget v0, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 1498
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/NetworkCallback;

    iget p1, p1, Lcom/sec/internal/ims/core/NetworkCallback;->mPhoneId:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handlePcscfRestorationIntent$5(Ljava/util/List;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 1

    const/16 v0, 0xb

    .line 1500
    invoke-interface {p1, v0, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfRestorationNotified(ILjava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$isEmergencyEpdgConnected$3(Lcom/sec/internal/constants/ims/os/NetworkState;)Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0xf

    .line 1218
    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isEpdgConnected$2(Lcom/sec/internal/constants/ims/os/NetworkState;)Ljava/lang/Boolean;
    .locals 1

    const/16 v0, 0xb

    .line 1207
    invoke-virtual {p0, v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$requestNetwork$1(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V
    .locals 0

    .line 551
    iget-object p2, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    return-void
.end method

.method private needRequestMobileNetwork(II)Z
    .locals 3

    .line 710
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->getDefaultNetworkBearer()I

    move-result v0

    .line 711
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->translateNetworkBearer(I)I

    move-result v0

    .line 712
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v1

    .line 713
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->isDataRoaming(I)Z

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 714
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataOn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 715
    invoke-static {p2}, Lcom/sec/internal/helper/NetworkUtil;->isMobileDataPressed(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    if-eq v1, p2, :cond_0

    sget-object v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    .line 717
    invoke-virtual {v1, p0, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget v1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq p0, v1, :cond_0

    if-nez p1, :cond_0

    if-ne v0, p2, :cond_0

    return p2

    :cond_0
    return v2
.end method

.method private onDefaultNetworkChanged()V
    .locals 5

    .line 1045
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onDefaultNetworkChanged:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1047
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1048
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1049
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1050
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1054
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1055
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDefaultNetworkStateChanged(I)V

    goto :goto_1

    .line 1058
    :cond_2
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onEpdgConnected(ILjava/lang/String;Z)V
    .locals 8

    .line 885
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 890
    :cond_0
    const-string v1, "ims"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "emergency"

    .line 891
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 895
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EpdgEvent onEpdgConnected: apnType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " connected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " EpdgConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 897
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " EmergencyEpdgConnected="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xf

    .line 899
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 902
    const-string v2, "emergency"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 903
    const-string v2, "EpdgEvent EmergencyEpdgConnected"

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    move v3, v4

    .line 908
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 909
    iget v2, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-ne v2, v3, :cond_3

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 915
    :goto_0
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onEpdgConnected: existCallBack="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " connected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " dataRat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mobileDataRat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 918
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " voiceRat ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceNetworkType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 915
    invoke-static {v2, p1, v6}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez v1, :cond_5

    .line 922
    invoke-virtual {v0, v3, v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    return-void

    :cond_5
    const/16 v1, 0x12

    if-eqz p3, :cond_8

    .line 928
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result p3

    if-eqz p3, :cond_6

    return-void

    .line 931
    :cond_6
    invoke-virtual {v0, v3, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 932
    iget-object p3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p3

    .line 933
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 934
    invoke-interface {v0, v1, v4, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 935
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgConnected(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 937
    :cond_7
    monitor-exit p3

    goto :goto_4

    :goto_2
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 940
    :cond_8
    invoke-virtual {v0, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result p3

    if-nez p3, :cond_9

    return-void

    .line 943
    :cond_9
    invoke-virtual {v0, v3, v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 945
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p3

    if-ne p3, v1, :cond_a

    .line 947
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p3

    .line 954
    :cond_a
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 955
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 956
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v3

    invoke-interface {v2, p3, v3, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    .line 957
    invoke-interface {v2, p1, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgDisconnected(ILjava/lang/String;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_5

    .line 959
    :cond_b
    monitor-exit v0

    :goto_4
    return-void

    :goto_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method private onEpdgIkeError(I)V
    .locals 2

    .line 877
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 878
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 879
    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onIKEAuthFAilure(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 881
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onLinkPropertiesChanged(ILandroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V
    .locals 6

    .line 843
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 844
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 845
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 848
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string p1, "ignore onLinkPropertiesChanged as requestStopNetwork preceded this"

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 851
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLinkPropertiesChanged: networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 852
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLinkPropertiesChanged: linkProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    new-instance v0, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v0, p4}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 854
    const-string p4, ""

    const/16 v2, 0xb

    if-ne p1, v2, :cond_1

    .line 856
    move-object p4, p3

    check-cast p4, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p4}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p4

    invoke-interface {p4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p4

    .line 859
    :cond_1
    invoke-virtual {v1, v0, p4}, Lcom/sec/internal/ims/core/NetworkCallback;->isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;Ljava/lang/String;)I

    move-result p4

    .line 860
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/NetworkCallback;->isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result v2

    const/4 v3, 0x1

    if-ge p4, v3, :cond_2

    if-eqz v2, :cond_5

    .line 862
    :cond_2
    iput-object v0, v1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-lt p4, v3, :cond_4

    .line 865
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onLinkPropertiesChanged: LinkProperties changed type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " call onLocalIpChanged"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    const/4 v1, 0x2

    if-ne p4, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .line 866
    :goto_0
    invoke-interface {p3, p1, p2, v3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(ILandroid/net/Network;Z)V

    :cond_4
    if-eqz v2, :cond_5

    .line 870
    iget-object p4, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string/jumbo v1, "onLinkPropertiesChanged: LinkProperties changed call onPcscfAddressChanged"

    invoke-virtual {p4, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 871
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p1, p2, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    .line 845
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 5

    .line 812
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPdnDisconnected: networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 813
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 815
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    const/16 v1, 0xb

    const/16 v2, 0xf

    const/4 v3, 0x0

    if-ne p1, v1, :cond_0

    .line 817
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 818
    invoke-virtual {v0, p1, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 820
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0, v4, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    .line 821
    invoke-virtual {v0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 822
    invoke-virtual {v0, p1, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-ne p1, v2, :cond_2

    .line 826
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aput-object v0, v1, p2

    .line 829
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter p2

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 831
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onDisconnected(I)V

    .line 832
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 833
    new-instance p1, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 834
    iput-object v0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    .line 835
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 837
    :cond_3
    :goto_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onStopPdnCompleted()V
    .locals 5

    .line 698
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    const/4 v1, 0x0

    .line 699
    :try_start_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    .line 702
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 703
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {p0, v3, v4, v2}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 705
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 706
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private onWifiConnected()V
    .locals 7

    .line 964
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWifiConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 966
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 967
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 968
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 969
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 973
    :cond_1
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-interface {v3, v6, v2, v5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 977
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 978
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 979
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 983
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-interface {v3, v5, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_1

    .line 986
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 988
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 990
    :try_start_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v3, "mmtel"

    .line 992
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const/16 v5, 0x14

    .line 991
    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 993
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 994
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const/4 v3, 0x4

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 998
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_6
    return-void

    .line 986
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private onWifiDisconnected()V
    .locals 7

    .line 1004
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onWifiDisConnected:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter v0

    .line 1006
    :try_start_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1007
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1008
    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1009
    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_0

    .line 1013
    :cond_1
    invoke-virtual {v6}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v6

    invoke-interface {v5}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v5

    invoke-interface {v3, v6, v2, v5}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 1017
    :cond_2
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1018
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v4

    .line 1019
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 1023
    :cond_3
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-interface {v3, v5, v2, v4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_1

    .line 1026
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 1030
    :try_start_1
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimMno()Lcom/sec/internal/constants/Mno;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/Mno;->ZAIN_KUWAIT:Lcom/sec/internal/constants/Mno;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    const-string v3, "mmtel"

    .line 1032
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v4

    const/16 v5, 0x14

    .line 1031
    invoke-interface {v2, v3, v5, v4}, Lcom/sec/internal/interfaces/ims/IImsFramework;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1033
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->getCallState(I)I

    move-result v2

    if-nez v2, :cond_5

    .line 1034
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    const/4 v3, 0x3

    invoke-interface {v2, v1, v3}, Lcom/sec/internal/helper/os/ITelephonyManager;->semSetNrMode(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 1038
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_6
    return-void

    .line 1026
    :goto_3
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 7

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    .line 636
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    .line 639
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v1

    .line 641
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 643
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 644
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 646
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v2

    .line 647
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 648
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "requestStopNetwork: network "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", callback is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    .line 649
    const-string v5, "exist"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    const-string/jumbo v5, "null"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 648
    invoke-virtual {v3, p2, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4

    .line 651
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumed(I)V

    .line 652
    invoke-interface {p3, p1}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onResumedBySnapshot(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    :try_start_2
    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v5, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 656
    :try_start_3
    sget-object v5, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :goto_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iput-boolean v3, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    const/16 p3, 0x66

    .line 666
    invoke-virtual {p0, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 672
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 674
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->needRequestMobileNetwork(II)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v4

    .line 675
    :goto_2
    invoke-virtual {p0, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p3

    if-eqz v1, :cond_3

    const-wide/16 v5, 0x7d0

    goto :goto_3

    :cond_3
    const-wide/16 v5, 0x3e8

    :goto_3
    invoke-virtual {p0, p3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 677
    :cond_4
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 678
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p3

    const/16 v1, 0xb

    if-ne p1, v1, :cond_5

    .line 679
    invoke-virtual {p3, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 682
    invoke-virtual {p3, p1, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 683
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_7

    .line 684
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p1

    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p3

    invoke-virtual {p0, p1, p3, v3, p2}, Lcom/sec/internal/ims/core/PdnController;->notifyDataConnectionState(IIZI)V

    goto :goto_4

    :cond_5
    if-ne p1, v0, :cond_7

    .line 687
    invoke-virtual {p3, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 688
    invoke-virtual {p3, p1, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgConnected(IZ)V

    .line 691
    :cond_6
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aput v4, p1, p2

    .line 692
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    :cond_7
    :goto_4
    return-void

    .line 677
    :goto_5
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 644
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0
.end method


# virtual methods
.method protected applyEmergencyQualifiedNetowrk(I)V
    .locals 5

    .line 1435
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 1436
    sget-object v1, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->SOFTBANK:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->RAKUTEN_JAPAN:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x70

    .line 1439
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1440
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->getEpdgMgr()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1442
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEmergencyRat: set ePDN QN to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1443
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aget p0, p0, p1

    invoke-virtual {v0, p1, p0}, Lcom/sec/epdg/EpdgManager;->setEmergencyQualifiedNetwork(II)V

    const-wide/16 p0, 0xc8

    .line 1447
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1449
    sget-object p1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sleep exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1452
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "setEmergencyRat: em is null"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public dump()V
    .locals 3

    .line 1385
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1387
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    const-string v1, "History of PdnController:"

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 1390
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 1391
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    .line 1392
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method public filterAddresses(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .line 1086
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 1088
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 1089
    sget-boolean v1, Lcom/sec/internal/ims/core/PdnController;->DBG:Z

    if-eqz v1, :cond_1

    .line 1090
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpAddressList: inetAddress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_0

    .line 1094
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1095
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    .line 1097
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpAddressList: inetAddress IP: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_2
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1101
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 1100
    invoke-static {v1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1102
    :cond_3
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object p0
.end method

.method public getAllCellInfo(IZ)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .line 292
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 293
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllCellInfo mNeedCellLocationUpdate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 306
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    if-eqz v0, :cond_0

    .line 307
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    if-nez p2, :cond_0

    iget-boolean p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    if-nez p2, :cond_0

    const/4 p2, -0x1

    if-ne v2, p2, :cond_1

    .line 308
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p2, v2}, Lcom/sec/internal/helper/os/ITelephonyManager;->getAllCellInfoBySubId(I)Ljava/util/List;

    move-result-object p2

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get latest cellInfo and store, subId = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 310
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 311
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    const/4 p1, 0x0

    .line 312
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    :cond_1
    return-object v0
.end method

.method public getCellIdentity(IZ)Landroid/telephony/CellIdentity;
    .locals 1

    if-eqz p2, :cond_0

    .line 321
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p2

    goto :goto_0

    .line 323
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p2

    if-nez p2, :cond_1

    .line 325
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v0, "reget cid from ril since null restored value"

    invoke-static {p2, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 326
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/util/SemTelephonyAdapter;->getCellIdentityFromSemTelephony(ILjava/lang/String;Ljava/lang/String;)Landroid/telephony/CellIdentity;

    move-result-object p2

    .line 330
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    return-object p2
.end method

.method public getCurrentCellIdentity(II)Lcom/sec/internal/helper/os/CellIdentityWrapper;
    .locals 2

    .line 336
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->getCellIdentity(IZ)Landroid/telephony/CellIdentity;

    move-result-object p0

    .line 338
    invoke-static {p0}, Lcom/sec/internal/helper/os/CellIdentityWrapper;->from(Landroid/telephony/CellIdentity;)Lcom/sec/internal/helper/os/CellIdentityWrapper;

    move-result-object p0

    return-object p0

    .line 341
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->getAllCellInfo(IZ)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    .line 343
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getCurrentCellIdentity: getAllCellInfo null"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    sget-object p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-object p0

    .line 347
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda1;-><init>()V

    .line 348
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda2;-><init>()V

    .line 349
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;

    invoke-direct {p1, p2}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 350
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 351
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/helper/os/CellIdentityWrapper;->DEFAULT:Lcom/sec/internal/helper/os/CellIdentityWrapper;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/helper/os/CellIdentityWrapper;

    return-object p0
.end method

.method public getDataState(I)I
    .locals 1

    .line 1420
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1421
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getDefaultNetworkBearer()I
    .locals 3

    .line 1397
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    .line 1398
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 1399
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xc

    .line 1400
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1404
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultNetworkBearer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_1

    .line 1405
    const-string v2, "CELLULAR"

    goto :goto_1

    :cond_1
    const-string v2, " WIFI"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1404
    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getDnsServers(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/core/PdnEventListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1252
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1253
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p1, :cond_0

    .line 1254
    iget-object p1, p1, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-eqz p1, :cond_0

    .line 1255
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1257
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDnsServersByNetType()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1263
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->getDnsServers(Landroid/net/LinkProperties;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEmcBsIndication(I)Lcom/sec/internal/constants/ims/os/EmcBsIndication;
    .locals 0

    .line 287
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object p0

    return-object p0
.end method

.method public getEpdgPhysicalInterface(I)I
    .locals 1

    .line 264
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEpdgPhysicalInterface()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 266
    :catch_0
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Network State is NULL"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected getEventLog()Lcom/sec/internal/helper/SimpleEventLog;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    return-object p0
.end method

.method public getInterfaceName(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Ljava/lang/String;
    .locals 1

    .line 1237
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1238
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p0, :cond_0

    .line 1239
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    if-eqz p0, :cond_0

    .line 1240
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1242
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1245
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIntfNameByNetType()Ljava/lang/String;
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/PdnController;->getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIntfNameByNetType(Landroid/net/Network;)Ljava/lang/String;
    .locals 0

    .line 1293
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1295
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLinkProperties(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Lcom/sec/internal/helper/os/LinkPropertiesWrapper;
    .locals 0

    .line 1196
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/core/NetworkCallback;

    if-eqz p0, :cond_0

    .line 1198
    iget-object p0, p0, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMobileDataNetworkType(I)I
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataNetworkType()I

    move-result p0

    return p0
.end method

.method public getMobileDataRegState(I)I
    .locals 0

    .line 273
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getMobileDataRegState()I

    move-result p0

    return p0
.end method

.method public getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;
    .locals 2

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 365
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    .line 369
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "NetworkState is not exist. Return default NetworkState."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 370
    invoke-static {p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->create(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    return-object p0
.end method

.method public getVoiceRegState(I)I
    .locals 0

    .line 258
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVoiceRegState()I

    move-result p0

    return p0
.end method

.method public getVopsIndication(I)Lcom/sec/internal/constants/ims/os/VoPsIndication;
    .locals 0

    .line 245
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object p0

    return-object p0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 440
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: what "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 490
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    goto/16 :goto_1

    .line 464
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;

    .line 465
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getNetwork()Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getListener()Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v2

    .line 466
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/core/LinkPropertiesChangedEvent;->getLinkProperties()Landroid/net/LinkProperties;

    move-result-object v0

    .line 465
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/sec/internal/ims/core/PdnController;->onLinkPropertiesChanged(ILandroid/net/Network;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/LinkProperties;)V

    goto :goto_1

    .line 486
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onDefaultNetworkChanged()V

    goto :goto_1

    .line 482
    :pswitch_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->onEpdgIkeError(I)V

    goto :goto_1

    .line 455
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;

    .line 456
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->-$$Nest$fgetmListener(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;->-$$Nest$fgetmNetwork(Lcom/sec/internal/ims/core/PdnController$PdnConnectedEvent;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/sec/internal/ims/core/PdnController;->onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V

    goto :goto_1

    .line 447
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->requestStopNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_1

    .line 478
    :pswitch_6
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiDisconnected()V

    goto :goto_1

    .line 474
    :pswitch_7
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onWifiConnected()V

    goto :goto_1

    .line 470
    :pswitch_8
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg2:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/core/PdnController;->onEpdgConnected(ILjava/lang/String;Z)V

    goto :goto_1

    .line 460
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->onPdnDisconnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_1

    .line 451
    :pswitch_a
    invoke-direct {p0}, Lcom/sec/internal/ims/core/PdnController;->onStopPdnCompleted()V

    goto :goto_1

    .line 443
    :pswitch_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/core/PdnController;->requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handlePcscfRestorationIntent(Landroid/content/Intent;)V
    .locals 4

    .line 1480
    const-string v0, "V4"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 1481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1483
    :cond_0
    const-string v0, "V6"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v3, ","

    if-eqz v1, :cond_2

    .line 1484
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1485
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1487
    :cond_2
    const-string v0, "PhoneId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1488
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1489
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", pcscfList for restoration="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1492
    const-string p0, "invalid pcscf restoration intent"

    invoke-static {v1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1495
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda7;-><init>(I)V

    .line 1496
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda8;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda8;-><init>()V

    .line 1499
    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1500
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda9;

    invoke-direct {p1, v0}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda9;-><init>(Ljava/util/List;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public hasEmergencyServiceOnly(I)Z
    .locals 0

    .line 239
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result p1

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0, p1}, Lcom/sec/internal/helper/os/ITelephonyManager;->getDataServiceState(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initSequentially()V
    .locals 3

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 152
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->create(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mSimManagers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/interfaces/ims/core/ISimManager;

    .line 156
    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/core/PdnController;->registerTelephonyCallback(I)V

    goto :goto_1

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEpdgHandoverListener:Lcom/sec/ims/ImsManager$EpdgListener;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;->registerEpdgHandoverListener(Lcom/sec/ims/IEpdgListener;)V

    .line 159
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 161
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mWifiStateListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 164
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mDefaultNetworkListener:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 166
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 167
    const-string v1, "com.samsung.intent.action.UPDATE_PCSCF_RESTORATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mPcscfRestorationEventReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .locals 4

    const/16 v0, 0xf

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 1159
    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getPhoneId()I

    move-result p1

    .line 1160
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNintfName:[Ljava/lang/String;

    aget-object p0, p0, p1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 1165
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1166
    :try_start_0
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1167
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "isConnected: No callback exists"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 1170
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 1171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_7

    .line 1173
    iget-object v0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_7

    iget v0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-eq v0, p1, :cond_3

    goto :goto_3

    .line 1177
    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/core/NetworkCallback;->isDisconnectRequested()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1178
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isConnected: Disconnect msg is in queue for networkType ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return v2

    :cond_4
    if-eqz p1, :cond_6

    if-ne p1, v1, :cond_5

    goto :goto_1

    .line 1188
    :cond_5
    iget-boolean p0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    goto :goto_2

    .line 1186
    :cond_6
    :goto_1
    iget-object p0, p2, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {p0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v1

    .line 1190
    :goto_2
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isConnected:  ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] networktype ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_7
    :goto_3
    return v2

    .line 1171
    :goto_4
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isDataRoaming(I)Z
    .locals 0

    .line 254
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result p0

    return p0
.end method

.method public isDisconnecting()Z
    .locals 0

    .line 1362
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    return p0
.end method

.method public isEmergencyEpdgConnected(I)Z
    .locals 0

    .line 1217
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda0;-><init>()V

    .line 1218
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1219
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEpdgAvailable(I)Z
    .locals 0

    .line 1212
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda5;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEpdgConnected(I)Z
    .locals 0

    .line 1206
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda4;-><init>()V

    .line 1207
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    .line 1208
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isEpsOnlyReg(I)Z
    .locals 0

    .line 234
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p0

    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInternationalRoaming(I)Z
    .locals 0

    .line 355
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isInternationalRoaming()Z

    move-result p0

    return p0
.end method

.method public isNeedCellLocationUpdate()Z
    .locals 0

    .line 359
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNeedCellLocationUpdate:Z

    return p0
.end method

.method public isNetworkAvailable(III)Z
    .locals 6

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p2, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 1305
    :cond_0
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    .line 1307
    sget-object v2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNetworkAvailable: isEpdgConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    .line 1308
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " getDataNetworkType()="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1309
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1307
    invoke-static {v2, p3, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 p3, 0x12

    const/4 v2, 0x0

    if-ne p1, p3, :cond_3

    if-eq p2, v1, :cond_3

    .line 1311
    invoke-virtual {v0, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 1312
    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p0

    if-ne p0, p3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1

    .line 1314
    :cond_3
    sget-object p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE:Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, v2}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings$SettingsItem;->get(Landroid/content/Context;I)I

    move-result p0

    sget p1, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->AIRPLANE_MODE_ON:I

    if-eq p0, p1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :cond_5
    :goto_1
    return v1
.end method

.method public isNetworkRequested(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z
    .locals 0

    .line 1320
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPendedEPDGWeakSignal(I)Z
    .locals 0

    .line 206
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result p0

    return p0
.end method

.method public isPsOnlyReg(I)Z
    .locals 0

    .line 282
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPsOnlyReg()Z

    move-result p0

    return p0
.end method

.method public isVoiceRoaming(I)Z
    .locals 0

    .line 250
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result p0

    return p0
.end method

.method public isWifiConnected()Z
    .locals 3

    .line 1224
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1226
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isWifiConnected: Default NW is null "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1230
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    .line 1231
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xc

    .line 1232
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    .line 1233
    invoke-virtual {p0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method notifyDataConnectionState(IIZI)V
    .locals 5

    .line 1324
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyDataConnectionState"

    invoke-static {v0, p4, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1326
    invoke-virtual {p0, p4}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v1

    .line 1328
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1329
    const-string v2, "initialize PendedEPDGWeakSignal flag"

    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v2, 0x0

    .line 1330
    invoke-virtual {p0, p4, v2}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 1333
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDataConnectionState: needNotify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " networkType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isEpdgConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xb

    .line 1335
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " dataNetType="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1336
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "=>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dataRegState="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1337
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "=>"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1333
    invoke-static {v0, p4, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 1339
    invoke-virtual {v1, v3}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_1

    .line 1341
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_1

    .line 1344
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1345
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    :cond_1
    if-nez p3, :cond_2

    .line 1348
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result p3

    if-ne p1, p3, :cond_2

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p3

    if-eq p2, p3, :cond_4

    .line 1349
    :cond_2
    invoke-virtual {v1, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 1350
    invoke-virtual {v1, p2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 1352
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    monitor-enter p1

    .line 1353
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 1354
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v2

    invoke-interface {p3, v0, v2, p4}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onDataConnectionStateChanged(IZI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1356
    :cond_3
    monitor-exit p1

    :cond_4
    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method onPdnConnected(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;Landroid/net/Network;)V
    .locals 7

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 727
    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->setPdnEndTime(I)V

    .line 728
    move-object v1, p3

    check-cast v1, Lcom/sec/internal/ims/core/RegisterTask;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PDN SETUP TIME : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnEndTime(I)J

    move-result-wide v3

    invoke-static {p2}, Lcom/sec/internal/log/IMSLogTimer;->getPdnStartTime(I)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-double v3, v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 728
    invoke-static {v1, v2}, Lcom/sec/internal/log/IMSLog;->lazer(Lcom/sec/internal/interfaces/ims/core/IRegisterTask;Ljava/lang/String;)V

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v1

    .line 733
    :try_start_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 734
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 737
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ignore onPdnConnected: network "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " as requestStopNetwork preceded this"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    return-void

    .line 741
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 742
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    goto/16 :goto_2

    .line 748
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onPdnConnected: network="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 749
    iput-object p4, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mNetwork:Landroid/net/Network;

    const/4 v3, 0x1

    .line 750
    iput-boolean v3, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mPdnConnected:Z

    .line 752
    new-instance v4, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-direct {v4, v1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;-><init>(Landroid/net/LinkProperties;)V

    .line 754
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onPdnConnected: link properties "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 756
    invoke-virtual {v4}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v2, v1}, Lcom/sec/internal/ims/core/PdnController;->handleConnectedPdnType(IILcom/sec/internal/ims/core/NetworkCallback;Ljava/lang/String;)V

    .line 757
    const-string p2, ""

    if-ne p1, v0, :cond_3

    .line 759
    move-object p2, p3

    check-cast p2, Lcom/sec/internal/ims/core/RegisterTask;

    invoke-virtual {p2}, Lcom/sec/internal/ims/core/RegisterTask;->getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getCurrentPcscfIp()Ljava/lang/String;

    move-result-object p2

    .line 762
    :cond_3
    iget-object v0, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    invoke-virtual {v0}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 763
    invoke-virtual {v2, v4, p2}, Lcom/sec/internal/ims/core/NetworkCallback;->isLocalIpChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;Ljava/lang/String;)I

    move-result p2

    if-lt p2, v3, :cond_5

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    .line 765
    :goto_0
    invoke-interface {p3, p1, p4, v3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onLocalIpChanged(ILandroid/net/Network;Z)V

    .line 767
    :cond_5
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/core/NetworkCallback;->isPcscfAddressChanged(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 768
    invoke-virtual {p0, v4}, Lcom/sec/internal/ims/core/PdnController;->readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p3, p1, p4, p0}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onPcscfAddressChanged(ILandroid/net/Network;Ljava/util/List;)V

    .line 770
    :cond_6
    iput-object v4, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    goto :goto_1

    .line 773
    :cond_7
    iput-object v4, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mLinkProperties:Lcom/sec/internal/helper/os/LinkPropertiesWrapper;

    .line 774
    iget-object p0, v2, Lcom/sec/internal/ims/core/NetworkCallback;->mListener:Lcom/sec/internal/interfaces/ims/core/PdnEventListener;

    invoke-interface {p0, p1, p4}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onConnected(ILandroid/net/Network;)V

    :goto_1
    return-void

    .line 743
    :cond_8
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "onPdnConnected: linkProperties or interface name is null, wait for next onPdnConnected()"

    invoke-static {p0, p2, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 734
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method protected readPcscfFromLinkProperties(Lcom/sec/internal/helper/os/LinkPropertiesWrapper;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/os/LinkPropertiesWrapper;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 416
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "readPcscfFromLinkProperties: lp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "not null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_1

    return-object p0

    .line 422
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/helper/os/LinkPropertiesWrapper;->getPcscfServers()Ljava/util/List;

    move-result-object p1

    .line 423
    invoke-static {p1}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 425
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 426
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0.0.0.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0:0:0:0:0:0:0:0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "::"

    .line 427
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 430
    :cond_3
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "readPcscfFromLinkProperties: Valid pcscf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public registerForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .locals 0

    .line 522
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTelephonyCallback(I)V
    .locals 5

    .line 172
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v0

    .line 173
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerPhoneStateListener subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-gez v0, :cond_0

    return-void

    .line 178
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    if-eqz v2, :cond_2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerPhoneStateListener: callback exits subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->getSubId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    invoke-virtual {v2}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;->getSubId()I

    move-result v1

    if-ne v1, v0, :cond_1

    return-void

    .line 184
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->unRegisterTelephonyCallback(I)V

    .line 188
    :cond_2
    new-instance v1, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;-><init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;II)V

    .line 190
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {v0, p1, p0, v1}, Lcom/sec/internal/helper/os/ITelephonyManager;->registerTelephonyCallbackForSlot(ILjava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    return-void
.end method

.method public removeRouteToHostAddress(ILjava/lang/String;)Z
    .locals 3

    .line 1139
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRouteToHostAddress: hostAddress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1149
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {p0, p1, p2}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->removeRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method requestNetwork(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)V
    .locals 9

    .line 538
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 539
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestNetwork: networkType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", callback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    .line 540
    const-string/jumbo v3, "null"

    goto :goto_0

    :cond_0
    iget v3, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    invoke-virtual {v1, p2, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v0, :cond_3

    .line 542
    iget v1, v0, Lcom/sec/internal/ims/core/NetworkCallback;->mNetworkType:I

    if-eq v1, p1, :cond_1

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 546
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 550
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/sec/internal/ims/core/PdnController;->isConnected(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 551
    new-instance p2, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;

    invoke-direct {p2, p3, p1, v0}, Lcom/sec/internal/ims/core/PdnController$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/interfaces/ims/core/PdnEventListener;ILcom/sec/internal/ims/core/NetworkCallback;)V

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 557
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    monitor-enter v0

    .line 558
    :try_start_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    if-eqz v1, :cond_5

    .line 559
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Wait until ongoing stop request done."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mPendingRequests:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/16 p1, 0x66

    .line 564
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p2

    if-nez p2, :cond_4

    .line 565
    const-string/jumbo p2, "requestNetwork: Unexpected event missing case. Send EVENT_STOP_PDN_COMPLETED again"

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_7

    .line 569
    :cond_4
    :goto_2
    monitor-exit v0

    return-void

    .line 571
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v0

    .line 575
    :goto_3
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkCapability(I)I

    move-result v3

    .line 580
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 581
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/PdnController;->needRequestMobileNetwork(II)Z

    move-result v4

    if-eqz v4, :cond_7

    move v0, v1

    :cond_7
    if-eqz v0, :cond_8

    const/16 v3, 0xc

    .line 589
    :cond_8
    sget-object v4, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startPdnConnectivity: transport "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " capability "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " needRequestMobileNetwork "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, p2, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 592
    new-instance v4, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v4}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 594
    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    if-nez v2, :cond_9

    .line 597
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSubId(I)I

    move-result v2

    if-lez v2, :cond_9

    .line 598
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isDualIMS()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 599
    new-instance v3, Landroid/net/TelephonyNetworkSpecifier$Builder;

    invoke-direct {v3}, Landroid/net/TelephonyNetworkSpecifier$Builder;-><init>()V

    invoke-virtual {v3, v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->setSubscriptionId(I)Landroid/net/TelephonyNetworkSpecifier$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/TelephonyNetworkSpecifier$Builder;->build()Landroid/net/TelephonyNetworkSpecifier;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/net/NetworkRequest$Builder;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkRequest$Builder;

    .line 603
    :cond_9
    invoke-virtual {v4}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    .line 605
    new-instance v6, Lcom/sec/internal/ims/core/NetworkCallback;

    invoke-direct {v6, p0, p1, p3, p2}, Lcom/sec/internal/ims/core/NetworkCallback;-><init>(Lcom/sec/internal/ims/core/PdnController;ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)V

    .line 606
    iget-object v3, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v3, p3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v3, 0xf

    if-ne p1, v3, :cond_a

    .line 610
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->applyEmergencyQualifiedNetowrk(I)V

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    :cond_a
    :goto_4
    if-eq p1, v1, :cond_b

    if-nez p1, :cond_c

    :cond_b
    if-eqz v0, :cond_f

    .line 614
    :cond_c
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->isSipTest()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 615
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 616
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->getSipTestManager()Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v5, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    move v7, p1

    move v8, p2

    invoke-interface/range {v3 .. v8}, Lcom/sec/internal/interfaces/ims/core/ISipTestManager;->requestNetwork(Landroid/net/ConnectivityManager;Ljava/util/Set;Lcom/sec/internal/ims/core/NetworkCallback;II)V

    goto :goto_6

    .line 618
    :cond_d
    invoke-static {}, Lcom/sec/internal/ims/core/SipTestManagerFactory;->getSipTestManager()Lcom/sec/internal/interfaces/ims/core/ISipTestManager;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/sec/internal/interfaces/ims/core/ISipTestManager;->clearNetwork(Ljava/util/Map;Lcom/sec/internal/interfaces/ims/core/PdnEventListener;)V

    goto :goto_6

    .line 621
    :cond_e
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2, v6}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_6

    .line 624
    :cond_f
    iget-object p1, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v2, v6}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    .line 627
    :goto_5
    sget-object p2, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-interface {p3}, Lcom/sec/internal/interfaces/ims/core/PdnEventListener;->onNetworkRequestFail()V

    .line 630
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {p0, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_6
    return-void

    .line 571
    :goto_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public requestRouteToHostAddress(ILjava/lang/String;)Z
    .locals 4

    .line 1127
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/core/PdnController;->determineIpAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1129
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-static {p0, p1, v0}, Lcom/sec/ims/extensions/ConnectivityManagerExt;->requestRouteToHostAddress(Landroid/net/ConnectivityManager;ILjava/net/InetAddress;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1132
    :goto_0
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRouteToHostAddress: hostAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " networkType="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " address="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " result : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1132
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public resetNetworkState(I)V
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 376
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataNetworkType(I)V

    .line 377
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataNetworkType(I)V

    const/4 p1, 0x1

    .line 378
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setDataRegState(I)V

    .line 379
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setVoiceRegState(I)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setMobileDataRegState(I)V

    .line 381
    sget p1, Lcom/sec/ims/extensions/ServiceStateExt;->SNAPSHOT_STATUS_DEACTIVATED:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setSnapshotState(I)V

    const/4 p1, 0x0

    .line 382
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setAllCellInfo(Ljava/util/List;)V

    .line 383
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setCellIdentity(Landroid/telephony/CellIdentity;)V

    :cond_0
    return-void
.end method

.method public setDataState(II)V
    .locals 0

    .line 1427
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->mDataState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setEmergencyQualifiedNetowrk(II)V
    .locals 0

    .line 1431
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mEPDNQN:[I

    aput p2, p0, p1

    return-void
.end method

.method public setPendedEPDGWeakSignal(IZ)V
    .locals 5

    .line 211
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPendedEPDGWeakSignal"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object p0

    if-eqz p2, :cond_1

    .line 214
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 215
    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DISH:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v1, v2, v3, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 216
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataRegState()I

    move-result p2

    .line 217
    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/os/NetworkState;->getDataNetworkType()I

    move-result v1

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    const/4 v3, 0x3

    if-eq p2, v3, :cond_0

    const/16 v3, 0xd

    if-eq v1, v3, :cond_2

    const/16 v3, 0xe

    if-eq v1, v3, :cond_2

    if-nez p2, :cond_2

    .line 222
    :cond_0
    const-string p2, "VzW/ATT/TMOUS/DISH : LOST_LTE_WIFI_CONNECTION:12"

    invoke-static {v0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 228
    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/ims/os/NetworkState;->setPendedEpdgWeakSignal(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;I)I
    .locals 3

    .line 532
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startPdnConnectivity: networkType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/16 v0, 0x65

    .line 533
    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .locals 5

    .line 1067
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    monitor-enter v0

    .line 1068
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkCallbacks:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/core/NetworkCallback;

    .line 1069
    iget-object v2, p0, Lcom/sec/internal/ims/core/PdnController;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopPdnConnectivity: network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", callback is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 1070
    const-string v4, "exist"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const-string/jumbo v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1069
    invoke-virtual {v2, p2, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    if-eqz v1, :cond_1

    .line 1072
    invoke-virtual {v1}, Lcom/sec/internal/ims/core/NetworkCallback;->setDisconnectRequested()V

    goto :goto_1

    .line 1074
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestStopNetwork: callback not found"

    invoke-static {v1, p2, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 1075
    invoke-static {p2}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1076
    monitor-exit v0

    const/4 p0, 0x2

    return p0

    .line 1079
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v0, 0x6b

    .line 1081
    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 p0, 0x1

    return p0

    .line 1079
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public stopPdnConnectivity(ILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I
    .locals 1

    .line 1062
    iget v0, p0, Lcom/sec/internal/ims/core/PdnController;->mActiveDataPhoneId:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/core/PdnController;->stopPdnConnectivity(IILcom/sec/internal/interfaces/ims/core/PdnEventListener;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1368
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/os/NetworkState;

    .line 1369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getSimSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsEpdgConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    invoke-virtual {v2, v4}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEpdgConnected(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isWifiConnected: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVopsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getVopsIndication()Lcom/sec/internal/constants/ims/os/VoPsIndication;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataRoaming:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mDataConnectionState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isDataConnectedState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mVoiceRoaming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isVoiceRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmergencyOnly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isEmergencyOnly()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsDisconnecting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/sec/internal/ims/core/PdnController;->mIsDisconnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mPendedEPDGWeakSignal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->isPendedEPDGWeakSignal()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mEmcbsIndication: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->getEmcBsIndication()Lcom/sec/internal/constants/ims/os/EmcBsIndication;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1381
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public translateNetworkBearer(I)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    if-ne p0, p1, :cond_1

    return p0

    .line 1415
    :cond_1
    sget-object p0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid bearer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public unRegisterTelephonyCallback(I)V
    .locals 2

    .line 195
    sget-object v0, Lcom/sec/internal/ims/core/PdnController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unRegisterTelephonyCallback:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/core/TelephonyCallbackForPdnController;

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {v1, p1, v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->unregisterTelephonyCallbackForSlot(ILandroid/telephony/TelephonyCallback;)V

    .line 201
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyCallbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public unregisterForNetworkState(Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
