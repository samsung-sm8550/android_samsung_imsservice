.class public Lcom/sec/internal/helper/os/SignalStrengthWrapper;
.super Ljava/lang/Object;
.source "SignalStrengthWrapper.java"


# instance fields
.field private final mSignalStrength:Landroid/telephony/SignalStrength;


# direct methods
.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->describeContents()I

    move-result p0

    return p0
.end method

.method public getCdmaDbm()I
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p0

    return p0
.end method

.method public getCdmaEcio()I
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result p0

    return p0
.end method

.method public getDbm(I)I
    .locals 2

    .line 75
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellSignalStrength;

    const/16 v1, 0xd

    if-ne p1, v1, :cond_1

    .line 76
    instance-of v1, v0, Landroid/telephony/CellSignalStrengthLte;

    if-eqz v1, :cond_1

    .line 77
    check-cast v0, Landroid/telephony/CellSignalStrengthLte;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 79
    instance-of v1, v0, Landroid/telephony/CellSignalStrengthCdma;

    if-eqz v1, :cond_2

    .line 80
    check-cast v0, Landroid/telephony/CellSignalStrengthCdma;

    goto :goto_0

    :cond_2
    const/16 v1, 0x11

    if-ne p1, v1, :cond_3

    .line 82
    instance-of v1, v0, Landroid/telephony/CellSignalStrengthTdscdma;

    if-eqz v1, :cond_3

    .line 83
    check-cast v0, Landroid/telephony/CellSignalStrengthTdscdma;

    goto :goto_0

    :cond_3
    const/16 v1, 0x10

    if-ne p1, v1, :cond_4

    .line 85
    instance-of v1, v0, Landroid/telephony/CellSignalStrengthGsm;

    if-eqz v1, :cond_4

    .line 86
    check-cast v0, Landroid/telephony/CellSignalStrengthGsm;

    goto :goto_0

    :cond_4
    const/16 v1, 0x14

    if-ne p1, v1, :cond_0

    .line 88
    instance-of v1, v0, Landroid/telephony/CellSignalStrengthNr;

    if-eqz v1, :cond_0

    .line 89
    check-cast v0, Landroid/telephony/CellSignalStrengthNr;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    const/4 p0, 0x0

    goto :goto_1

    .line 93
    :cond_6
    invoke-virtual {v0}, Landroid/telephony/CellSignalStrength;->getDbm()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getEvdoDbm()I
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result p0

    return p0
.end method

.method public getEvdoEcio()I
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoEcio()I

    move-result p0

    return p0
.end method

.method public getEvdoSnr()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result p0

    return p0
.end method

.method public getGsmBitErrorRate()I
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmBitErrorRate()I

    move-result p0

    return p0
.end method

.method public getGsmSignalStrength()I
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result p0

    return p0
.end method

.method public getInvalidSignalStrength()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getLevel()I
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result p0

    return p0
.end method

.method public getLteLevel()I
    .locals 1

    .line 132
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthLte;

    .line 133
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getLevel()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLteRsrp()I
    .locals 1

    .line 97
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthLte;

    .line 98
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRsrp()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getLteRsrq()I
    .locals 1

    .line 104
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthLte;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthLte;

    .line 105
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNrLevel()I
    .locals 1

    .line 139
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthNr;

    .line 140
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getLevel()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNrSsRsrp()I
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthNr;

    .line 112
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrp()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNrSsRsrq()I
    .locals 1

    .line 118
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthNr;

    .line 119
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getSsRsrq()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNrSsSinr()I
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    const-class v0, Landroid/telephony/CellSignalStrengthNr;

    invoke-virtual {p0, v0}, Landroid/telephony/SignalStrength;->getCellSignalStrengths(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellSignalStrengthNr;

    .line 126
    invoke-virtual {p0}, Landroid/telephony/CellSignalStrengthNr;->getSsSinr()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isGsm()Z
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result p0

    return p0
.end method

.method public isValidSignal()Z
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->getLteLevel()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/sec/internal/helper/os/SignalStrengthWrapper;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {p0, p1, p2}, Landroid/telephony/SignalStrength;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
