.class public Lcom/samsung/android/cmcsetting/CmcDeviceInfo;
.super Ljava/lang/Object;
.source "CmcDeviceInfo.java"


# instance fields
.field private mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

.field private mDeviceId:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

.field private mIsActivation:Z

.field private mIsCallActivation:Z

.field private mIsCallAllowedSdByPd:Z

.field private mIsEmergencyCallSupported:Z

.field private mIsMessageActivation:Z

.field private mIsMessageAllowedSdByPd:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    .line 21
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    .line 22
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    .line 23
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    .line 24
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsEmergencyCallSupported:Z

    return-void
.end method


# virtual methods
.method public getDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-object p0
.end method

.method public isEmergencyCallSupported()Z
    .locals 0

    .line 101
    iget-boolean p0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsEmergencyCallSupported:Z

    return p0
.end method

.method public setActivation(Z)V
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    return-void
.end method

.method public setCallActivation(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    return-void
.end method

.method public setCallAllowedSdByPd(Z)V
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    return-void
.end method

.method public setDeviceCategory(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    return-void
.end method

.method public setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    return-void
.end method

.method public setEmergencyCallSupported(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsEmergencyCallSupported:Z

    return-void
.end method

.method public setMessageActivation(Z)V
    .locals 0

    .line 84
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    return-void
.end method

.method public setMessageAllowedSdByPd(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceName:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceCategory:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceCategory:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceCategory;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",deviceType:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mDeviceType:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCallAllowedSdByPd:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallAllowedSdByPd:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isMessageAllowedSdByPd:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageAllowedSdByPd:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isMessageActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsMessageActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isCallActivation:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsCallActivation:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",isEmergencyCallSupported:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/samsung/android/cmcsetting/CmcDeviceInfo;->mIsEmergencyCallSupported:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
