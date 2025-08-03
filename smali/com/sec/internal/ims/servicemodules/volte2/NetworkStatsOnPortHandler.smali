.class public Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;
.super Landroid/os/Handler;
.source "NetworkStatsOnPortHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "NetworkStatsOnPortHandler"

.field public static final START:I = 0x1

.field public static final STOP:I = 0x2


# instance fields
.field private mIface:Ljava/lang/String;

.field private mLocalVideoRtcp:I

.field private mLocalVideoRtp:I

.field mMno:Lcom/sec/internal/constants/Mno;

.field private mPhoneId:I

.field private mRemoteVideoRtcp:I

.field private mRemoteVideoRtp:I

.field private mReportingNetworkStatsOnPort:Z


# direct methods
.method public constructor <init>(ILcom/sec/internal/constants/Mno;Landroid/os/Looper;)V
    .locals 1

    .line 30
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 p3, 0x0

    .line 19
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    .line 20
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    .line 21
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    .line 22
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    .line 23
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mPhoneId:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    .line 25
    sget-char v0, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    .line 27
    iput-boolean p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    .line 31
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    .line 32
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mPhoneId:I

    return-void
.end method

.method private start()V
    .locals 6

    .line 36
    const-string v0, "NetworkStatsOnPort Start"

    const-string v1, "NetworkStatsOnPortHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->ROGERS:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_4

    sget-object v2, Lcom/sec/internal/constants/Mno;->CHATR:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_4

    .line 39
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isHkMo()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 44
    :cond_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 45
    const-string/jumbo p0, "startNetworkStatsOnPorts: already triggered, ignore"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 50
    :cond_1
    :try_start_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ")"

    if-eqz v0, :cond_2

    :try_start_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    if-eqz v0, :cond_2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNetworkStatsOnPorts: LocalVideoRtpPort("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") RemoteVideoRtpPort("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-direct {p0, v0, v4, v5}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 57
    :cond_2
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    if-eqz v0, :cond_3

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startNetworkStatsOnPorts: LocalVideoRtcpPort("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") RemoteVideoRtcpPort("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-direct {p0, v0, v1, v3}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->startNetworkStatsOnPorts(Ljava/lang/String;II)V

    .line 64
    :cond_3
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 66
    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2
    return-void

    .line 40
    :cond_4
    :goto_3
    const-string/jumbo p0, "skip startNetworkStatsOnPorts. (vendor req)"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 0

    .line 71
    const-string p0, "network_management"

    .line 72
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 71
    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/INetworkManagementService;->startNetworkStatsOnPorts(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private stop()V
    .locals 5

    .line 95
    const-string v0, "NetworkStatsOnPort Stop"

    const-string v1, "NetworkStatsOnPortHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    if-nez v0, :cond_0

    .line 98
    const-string/jumbo p0, "stopNetworkStatsOnPorts - startNetworkStatsOnPorts not called, ignore"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 104
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, ")"

    if-eqz v0, :cond_1

    :try_start_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopNetworkStatsOnPorts: LocalVideoRtpPort("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") RemoteVideoRtpPort("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-direct {p0, v0, v3, v4}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 110
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    if-eqz v0, :cond_2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopNetworkStatsOnPorts: LocalVideoRtcpPort("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") RemoteVideoRtcpPort("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V

    :cond_2
    const/4 v0, 0x0

    .line 117
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mReportingNetworkStatsOnPort:Z

    .line 118
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->setVideoPort(IIII)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 120
    :goto_1
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    .locals 0

    .line 83
    const-string p0, "network_management"

    .line 84
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 83
    invoke-static {p0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Landroid/os/INetworkManagementService;->stopNetworkStatsOnPorts(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized getNetworkStatsVideoCall()J
    .locals 10

    monitor-enter p0

    .line 145
    :try_start_0
    const-string v0, "network_management"

    .line 146
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    invoke-interface {v0, v3, v4, v5}, Landroid/os/INetworkManagementService;->getNetworkStatsVideoCall(Ljava/lang/String;II)J

    move-result-wide v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    :try_start_2
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    iget v7, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I

    invoke-interface {v0, v5, v6, v7}, Landroid/os/INetworkManagementService;->getNetworkStatsVideoCall(Ljava/lang/String;II)J

    move-result-wide v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v8, v1

    move-wide v1, v3

    move-wide v3, v8

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-wide v3, v1

    .line 156
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_0
    move-wide v3, v1

    :goto_1
    move-wide v8, v1

    move-wide v1, v3

    move-wide v3, v8

    .line 159
    :goto_2
    const-string v0, "NetworkStatsOnPortHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNetworkStatsVideoCall dataUsageRtp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", dataUsageRtcp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-long/2addr v3, v1

    .line 160
    monitor-exit p0

    return-wide v3

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStatsOnPortHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore Network Stat Event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_1
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->stop()V

    goto :goto_0

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->start()V

    :goto_0
    return-void
.end method

.method public declared-synchronized setInterface(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 172
    :try_start_0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mIface:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 174
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setVideoPort(IIII)V
    .locals 0

    monitor-enter p0

    .line 164
    :try_start_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtp:I

    .line 165
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtp:I

    .line 166
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mLocalVideoRtcp:I

    .line 167
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/NetworkStatsOnPortHandler;->mRemoteVideoRtcp:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
