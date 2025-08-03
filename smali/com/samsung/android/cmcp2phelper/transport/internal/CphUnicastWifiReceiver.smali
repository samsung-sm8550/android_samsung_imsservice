.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;
.source "CphUnicastWifiReceiver.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mRecvPort:I

.field private mSocket:Ljava/net/DatagramSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/2.1.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 0

    .line 30
    invoke-direct {p0, p5}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;-><init>(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    const/4 p5, 0x0

    .line 26
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    .line 31
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mCallbackHandler:Landroid/os/Handler;

    .line 32
    iput p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mRecvPort:I

    .line 33
    iput-object p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    .line 34
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isWifiConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2

    .line 45
    :try_start_1
    new-instance v1, Ljava/net/DatagramSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    const/4 v2, 0x1

    .line 46
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 47
    iget v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mRecvPort:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v1, :cond_1

    .line 49
    :try_start_2
    const-string/jumbo v1, "wlan"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-static {v1, v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getIpAddress(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Ljava/lang/String;

    move-result-object v1

    .line 50
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mRecvPort:I

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "try to binding wifi origin("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), with port("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mRecvPort:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->print(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto/16 :goto_2

    :catch_0
    move-exception v1

    .line 55
    :try_start_3
    invoke-virtual {v1}, Ljava/net/UnknownHostException;->printStackTrace()V

    .line 56
    monitor-exit v0

    return-void

    .line 60
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFi Start UDP server : binding ip - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", binding port - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->print(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_2

    .line 62
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLocalBindingIP:Ljava/lang/String;

    .line 67
    :cond_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69
    :cond_3
    :goto_1
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x578

    .line 70
    new-array v1, v0, [B

    .line 71
    new-instance v2, Ljava/net/DatagramPacket;

    invoke-direct {v2, v1, v0}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2

    .line 73
    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 74
    new-instance v0, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    invoke-direct {v0, v2}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(Ljava/net/DatagramPacket;)V

    .line 75
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WiFi [U<---]bound ip: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", from ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->print(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->handleReceivedMessage(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 80
    :catch_1
    :try_start_6
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "socket is closed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_3

    .line 83
    :cond_4
    const-string v0, "Stop Unicast Responder"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->print(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/net/SocketException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    .line 67
    :goto_2
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/net/SocketException; {:try_start_8 .. :try_end_8} :catch_2

    .line 85
    :goto_3
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    .line 86
    const-string v0, "SocketException- Unicast Receiver"

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->print(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public stop()V
    .locals 3

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->mSocket:Ljava/net/DatagramSocket;

    invoke-virtual {p0}, Ljava/net/DatagramSocket;->close()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 97
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    .line 99
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when socked is closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
