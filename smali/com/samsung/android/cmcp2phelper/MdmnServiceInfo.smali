.class public Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;
.super Ljava/lang/Object;
.source "MdmnServiceInfo.java"


# instance fields
.field deviceId:Ljava/lang/String;

.field lineId:Ljava/lang/String;

.field serviceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "samsung_cmc"

    iput-object v0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->serviceName:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->lineId:Ljava/lang/String;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->deviceId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->lineId:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.samsung.android.cmcp2phelper.MdmnServiceInfo{serviceName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->serviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", deviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/cmcp2phelper/MdmnServiceInfo;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
