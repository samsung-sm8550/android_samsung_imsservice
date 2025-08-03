.class public abstract Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;
.super Ljava/lang/Object;
.source "CphReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

.field protected lock:Ljava/lang/Object;

.field protected mCallbackHandler:Landroid/os/Handler;

.field protected mContext:Landroid/content/Context;

.field protected mLocalBindingIP:Ljava/lang/String;

.field protected mLogHandler:Landroid/os/Handler;

.field protected mNetworkType:I

.field protected mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cmcp2phelper/2.1.06/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->lock:Ljava/lang/Object;

    .line 35
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    return-void
.end method

.method private sendDiscoveryResponse(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    .locals 16

    move-object/from16 v0, p0

    .line 109
    new-instance v8, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    iget-object v1, v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMessageId()I

    move-result v7

    const/4 v2, 0x2

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;I)V

    .line 111
    iget v1, v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mNetworkType:I

    if-nez v1, :cond_0

    .line 112
    new-instance v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiSender;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderPort()I

    move-result v11

    invoke-virtual {v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v12

    invoke-virtual {v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v2

    array-length v13, v2

    iget-object v14, v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const/4 v15, 0x1

    move-object v9, v1

    invoke-direct/range {v9 .. v15}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastWifiSender;-><init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;I)V

    goto :goto_0

    .line 114
    :cond_0
    new-instance v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderPort()I

    move-result v4

    invoke-virtual {v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v5

    invoke-virtual {v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v2

    array-length v6, v2

    iget-object v7, v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const/4 v8, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;-><init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;I)V

    .line 116
    :goto_0
    iget-object v0, v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 117
    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSender;->enableApplicationLog(Landroid/os/Handler;)V

    .line 119
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public enableApplicationLog(Landroid/os/Handler;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLogHandler:Landroid/os/Handler;

    return-void
.end method

.method protected handleReceivedMessage(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V
    .locals 3

    .line 64
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    sget-object p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->LOG_TAG:Ljava/lang/String;

    const-string p1, "invalid message"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Line id not matched with received lineidlocal line id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getLineId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , recv line id : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getLineId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLocalBindingIP:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getSubnetMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking subnet for receiving packet, Subnet of target ip ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is mismatched with bound wifi network ip("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLocalBindingIP:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getMsgType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 104
    sget-object p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid message type("

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") has been received"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getTargetDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mServiceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->getDeviceId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 99
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->onReceivedCommand(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    goto :goto_0

    .line 94
    :cond_4
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    goto :goto_0

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLocalBindingIP:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getResponderIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->sendDiscoveryResponse(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    .line 90
    :cond_6
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/data/CphDeviceManager;->addToCache(Lcom/samsung/android/cmcp2phelper/data/CphMessage;)V

    :cond_7
    :goto_0
    return-void

    .line 80
    :goto_1
    sget-object p1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnknownHost Exception when checking subnet"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 4

    .line 44
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLogHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 51
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->mNetworkType:I

    return-void
.end method
