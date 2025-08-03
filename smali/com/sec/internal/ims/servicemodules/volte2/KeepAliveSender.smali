.class Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;
.super Ljava/lang/Object;
.source "KeepAliveSender.java"


# static fields
.field private static final KEEPALIVE_INTERVAL:I = 0x7d0

.field private static final KEEPALIVE_INTERVAL_CMCC:I = 0x1f40

.field private static final PERSIST_VZW_KEEPALIVE:Ljava/lang/String; = "persist.sys.ims.vzw.keepalive"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field mIpAddr:Ljava/lang/String;

.field private volatile mIsRunning:Z

.field private final mLock:Ljava/lang/Object;

.field private mMno:Lcom/sec/internal/constants/Mno;

.field mPort:I

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mTask:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$tU6yPKkAR9ARKiqoSdaWoHt175Q(Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->lambda$start$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/ims/ImsRegistration;Ljava/lang/String;ILcom/sec/internal/constants/Mno;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mContext:Landroid/content/Context;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 25
    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    .line 32
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    .line 34
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    const/4 v1, 0x0

    .line 35
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 36
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 41
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    .line 42
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    .line 43
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    .line 45
    const-string/jumbo p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 46
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "KeepAlive"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private synthetic lambda$start$0()V
    .locals 9

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 81
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    const v3, 0xafd8

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    .line 83
    new-array v4, v0, [B

    fill-array-data v4, :array_0

    .line 87
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v5, :cond_0

    .line 88
    invoke-virtual {v5}, Lcom/sec/ims/ImsRegistration;->getNetwork()Landroid/net/Network;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    :goto_0
    move v5, v1

    .line 94
    :goto_1
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v6}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v7, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    if-eqz v5, :cond_4

    .line 95
    :cond_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_3

    .line 96
    const-string/jumbo v5, "persist.sys.ims.vzw.keepalive"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 97
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "KeepAliveSender: isAllowedByProperty="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    .line 100
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeepAliveSender: send dummy.txt UDP to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v5, Ljava/net/DatagramPacket;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-direct {v5, v4, v0, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 103
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    goto :goto_2

    .line 107
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeepAliveSender: send dummy.txt UDP to ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "]:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " ..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    new-instance v5, Ljava/net/DatagramPacket;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mPort:I

    invoke-direct {v5, v4, v0, v3, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 110
    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 114
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->VIVA_BAHRAIN:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->ETISALAT_UAE:Lcom/sec/internal/constants/Mno;

    filled-new-array {v6, v7, v8}, [Lcom/sec/internal/constants/Mno;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-wide/16 v5, 0x1f40

    .line 117
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    :cond_5
    const-wide/16 v5, 0x7d0

    .line 121
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 125
    :goto_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    iget-boolean v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    if-nez v6, :cond_6

    .line 127
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 131
    :try_start_3
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 129
    :cond_6
    :try_start_4
    monitor-exit v5

    const/4 v5, 0x1

    goto/16 :goto_1

    :goto_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 81
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/net/DatagramSocket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v2

    :try_start_7
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v0
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 132
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    :goto_8
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    return-void

    nop

    :array_0
    .array-data 1
        0xdt
        0xat
        0xdt
        0xat
    .end array-data
.end method


# virtual methods
.method public start()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: start: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 54
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KeepAliveSender: start() - already running."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 58
    :cond_0
    const-string/jumbo v0, "persist.sys.ims.blockvzwka"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v0, "KeepAliveSender: blocked by system properties!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 69
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: acquire WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_3

    .line 74
    const-string/jumbo v0, "persist.sys.ims.vzw.keepalive"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    .line 138
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 148
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: release WakeLock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->LOG_TAG:Ljava/lang/String;

    const-string v1, "KeepAliveSender: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 154
    :try_start_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mIsRunning:Z

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 160
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 164
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/KeepAliveSender;->mTask:Ljava/lang/Thread;

    return-void

    :catchall_0
    move-exception p0

    .line 155
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
