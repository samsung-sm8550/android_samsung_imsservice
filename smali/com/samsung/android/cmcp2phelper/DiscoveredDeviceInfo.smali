.class public Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;
.super Ljava/lang/Object;
.source "DiscoveredDeviceInfo.java"


# instance fields
.field deviceId:Ljava/lang/String;

.field isHotspotSupported:Z

.field lineId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->lineId:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->deviceId:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->isHotspotSupported:Z

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->lineId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lineId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->lineId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, "deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", hotspotSupported=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/cmcp2phelper/DiscoveredDeviceInfo;->isHotspotSupported:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
