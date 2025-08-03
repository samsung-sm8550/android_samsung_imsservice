.class public Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;
.super Lcom/samsung/android/cmcp2phelper/transport/CphManager;
.source "CphHotspotManager.java"


# instance fields
.field mUnicastHotspotReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

.field mUnicastHotspotReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;-><init>(Landroid/content/Context;Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    return-void
.end method


# virtual methods
.method public sendCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 93
    const-string/jumbo v1, "swlan"

    iget-object v2, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-static {v1, v2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getIpAddress(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "can\'t find the ip address for socket binding to send commend message"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 100
    :cond_0
    :try_start_0
    invoke-static {v6}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getSubnetMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v6, v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotSpot Before sending commend message, Subnet of target ip ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") is mismatched with bound hotspot network ip("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 109
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->getNextMessageID()I

    move-result v19

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->getSendMessageSessionId()I

    move-result v5

    .line 112
    new-instance v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const v17, 0xc750

    const/4 v11, 0x3

    move-object v10, v1

    move-object/from16 v14, p2

    move-object/from16 v15, p1

    move-object/from16 v16, v6

    move/from16 v18, v19

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 113
    invoke-virtual {v1, v8, v5, v9}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->setExtraMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 114
    new-instance v10, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v1

    array-length v11, v1

    iget-object v12, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const v3, 0xc750

    move-object v1, v10

    move-object/from16 v2, p3

    move v15, v5

    move v5, v11

    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;-><init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 115
    invoke-static {v10}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 117
    new-instance v1, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    const v17, 0xcb38

    const/4 v11, 0x3

    move-object v10, v1

    move v2, v15

    move-object/from16 v15, p1

    invoke-direct/range {v10 .. v18}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 118
    invoke-virtual {v1, v8, v2, v9}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->setExtraMessage(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    new-instance v6, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v3

    invoke-virtual {v1}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v1

    array-length v4, v1

    iget-object v5, v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const v2, 0xcb38

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;-><init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 120
    invoke-static {v6}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 105
    :goto_0
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnknownHost Exception when checking subnet"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startDiscoveryUnicast(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10

    .line 57
    const-string/jumbo p1, "swlan"

    iget-object p2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    invoke-static {p1, p2}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getIpAddress(Ljava/lang/String;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    sget-object p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const-string p1, "can\'t find the ip address for socket binding to send discovery"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 63
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_1
    :goto_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 66
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->getSubnetMask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/samsung/android/cmcp2phelper/utils/P2pUtils;->isSameSubnet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    sget-object v1, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HotSpot before sending discovery message, Subnet of discovery target ip ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is matched with bound hotspot network ip("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 71
    sget-object p1, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "UnknownHost Exception when checking subnet"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->getNextMessageID()I

    move-result p5

    .line 77
    new-instance v9, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const v7, 0xc750

    const/4 v1, 0x1

    move-object v0, v9

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 78
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    .line 79
    new-instance v1, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;

    invoke-virtual {v9}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v5

    invoke-virtual {v9}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v2

    array-length v6, v2

    iget-object v7, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const v4, 0xc750

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;-><init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 80
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSender;->enableApplicationLog(Landroid/os/Handler;)V

    .line 81
    invoke-static {v1}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 84
    :cond_3
    new-instance v9, Lcom/samsung/android/cmcp2phelper/data/CphMessage;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const v7, 0xcb38

    const/4 v1, 0x1

    move-object v0, v9

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    move v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;-><init>(IDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 85
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    .line 86
    new-instance p2, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;

    invoke-virtual {v9}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object v3

    invoke-virtual {v9}, Lcom/samsung/android/cmcp2phelper/data/CphMessage;->getByte()[B

    move-result-object p3

    array-length v4, p3

    iget-object v5, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const v2, 0xcb38

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotSender;-><init>(Ljava/lang/String;I[BILcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    .line 87
    iget-object p3, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphSender;->enableApplicationLog(Landroid/os/Handler;)V

    .line 88
    invoke-static {p2}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_4
    return-void
.end method

.method public startReceive()V
    .locals 8

    .line 27
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start NSD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    iget-object v7, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const v5, 0xc750

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    .line 30
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 31
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->setNetworkType(I)V

    .line 32
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    invoke-static {v0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    if-nez v0, :cond_1

    .line 36
    new-instance v0, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    iget-object v3, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->serviceInfo:Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;

    iget-object v7, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->ipType:Lcom/samsung/android/cmcp2phelper/PreferredIpType;

    const v5, 0xcb38

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;ILcom/samsung/android/cmcp2phelper/MdmnServiceInfo;Lcom/samsung/android/cmcp2phelper/PreferredIpType;)V

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    .line 37
    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->mLogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->enableApplicationLog(Landroid/os/Handler;)V

    .line 38
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphReceiver;->setNetworkType(I)V

    .line 39
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    invoke-static {p0}, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public stopReceive()V
    .locals 2

    .line 44
    sget-object v0, Lcom/samsung/android/cmcp2phelper/transport/CphManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop NSD"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;->stop()V

    .line 47
    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;->stop()V

    .line 52
    iput-object v1, p0, Lcom/samsung/android/cmcp2phelper/transport/CphHotspotManager;->mUnicastHotspotReceiver2:Lcom/samsung/android/cmcp2phelper/transport/internal/CphUnicastHotspotReceiver;

    :cond_1
    return-void
.end method
