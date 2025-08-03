.class public Lcom/sec/internal/helper/os/ServiceStateWrapper;
.super Ljava/lang/Object;
.source "ServiceStateWrapper.java"


# static fields
.field public static final NR_5G_BEARER_STATUS_ALLOCATED:I = 0x1

.field public static final NR_5G_BEARER_STATUS_MMW_ALLOCATED:I = 0x2

.field public static final NR_5G_BEARER_STATUS_NOT_ALLOCATED:I = 0x0

.field public static final ROAMING_TYPE_DOMESTIC:I = 0x2

.field public static final ROAMING_TYPE_INTERNATIONAL:I = 0x3

.field public static final ROAMING_TYPE_NOT_ROAMING:I = 0x0

.field public static final ROAMING_TYPE_UNKNOWN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ServiceStateWrapper"


# instance fields
.field private final mServiceState:Landroid/telephony/ServiceState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ServiceState;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    return-void
.end method

.method public static rilRadioTechnologyToNetworkType(I)I
    .locals 0

    .line 152
    invoke-static {p0}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->describeContents()I

    move-result p0

    return p0
.end method

.method public getCellIdentity()Landroid/telephony/CellIdentity;
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 118
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataNetworkType()I
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    return p0
.end method

.method public getDataRegState()I
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p0

    return p0
.end method

.method public getDataRoaming()Z
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    return p0
.end method

.method public getImsVoiceAvail()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIsEbSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getIsManualSelection()Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result p0

    return p0
.end method

.method protected getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;
    .locals 2

    .line 132
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getMobileDataNetworkType()I
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->getMobileDataNetworkRegistrationInfo()Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMobileDataRegState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getNrFrequencyRange()I
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result p0

    return p0
.end method

.method public getOperatorAlphaLong()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorAlphaShort()Ljava/lang/String;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorAlphaShort()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOperatorNumeric()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRoaming()Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p0

    return p0
.end method

.method public getSnapshotStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getState()I

    move-result p0

    return p0
.end method

.method public getVoiceNetworkType()I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result p0

    return p0
.end method

.method public getVoiceRegState()I
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result p0

    return p0
.end method

.method public getVoiceRoaming()Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result p0

    return p0
.end method

.method public getVoiceRoamingType()I
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result p0

    return p0
.end method

.method public isPsOnlyReg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUsingNonTerrestrialNetwork()Z
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->isUsingNonTerrestrialNetwork()Z

    move-result p0

    return p0
.end method

.method public setIsManualSelection(Z)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    return-void
.end method

.method public setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1, p2, p3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRoaming(Z)V
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    return-void
.end method

.method public setState(I)V
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1}, Landroid/telephony/ServiceState;->setState(I)V

    return-void
.end method

.method public setStateOff()V
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->setStateOff()V

    return-void
.end method

.method public setStateOutOfService()V
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/sec/internal/helper/os/ServiceStateWrapper;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
