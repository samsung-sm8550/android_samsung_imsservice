.class public Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;
.super Lcom/samsung/android/cmcp2phelper/transport/internal/CphSender;
.source "CphUnicastHotspotSender.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

.field private length:I

.field private message:[B

.field private port:I

.field private retransmissionCount:I

.field private targetIP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/2.1.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSender;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->targetIP:Ljava/lang/String;

    .line 40
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->port:I

    .line 41
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->message:[B

    .line 42
    iput p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->length:I

    const/4 p1, 0x5

    .line 43
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->retransmissionCount:I

    .line 44
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;I)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSender;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->targetIP:Ljava/lang/String;

    .line 31
    iput p2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->port:I

    .line 32
    iput-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->message:[B

    .line 33
    iput p4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->length:I

    .line 34
    iput p6, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->retransmissionCount:I

    .line 35
    iput-object p5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->targetIP:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "invalid target IP address"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_4

    .line 55
    :cond_0
    new-instance v0, Ljava/net/DatagramSocket;

    const-string/jumbo v1, "swlan"

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-static {v1, v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getIpAddress(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Ljava/net/DatagramSocket;-><init>(ILjava/net/InetAddress;)V

    .line 56
    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->targetIP:Ljava/lang/String;

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 57
    new-instance v3, Ljava/net/DatagramPacket;

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->message:[B

    iget v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->length:I

    iget v6, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->port:I

    invoke-direct {v3, v4, v5, v1, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 59
    :goto_0
    iget v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->retransmissionCount:I

    if-ge v2, v1, :cond_1

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HotSpot [U--->]("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->targetIP:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->port:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;->message:[B

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    invoke-virtual {p0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSender;->print(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, v3}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v4, 0xc8

    .line 65
    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_3
    move-exception v1

    .line 67
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :goto_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 73
    :goto_3
    invoke-virtual {p0}, Ljava/net/UnknownHostException;->printStackTrace()V

    goto :goto_5

    .line 71
    :goto_4
    invoke-virtual {p0}, Ljava/net/SocketException;->printStackTrace()V

    :cond_1
    :goto_5
    return-void
.end method
