.class public Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;
.super Ljava/lang/Object;
.source "CmcSettingManagerWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcSettingManagerWrapper"


# instance fields
.field private mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

.field mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

.field protected mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$2zblXnPModPecKwncF8IYix3lO4(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$4rFmTDck90dGOYSBc94muTUS8-U(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$54uLV7ru_8iH3NT4jfO6KBdne7c(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$K43OVSb_zv_gQTMMY52B4TKPOyw(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$MFf6FFUPnL1apCfKJ8eOQOkXUng(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$getPrimaryDeviceId$7(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$SxItVTGkCVPcL1kxntm7DJbfHSQ(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$iLy4o45TNV69o7gpbiOZ0AgtIY0(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$u61a_De9Jhnn-v2ETgciXtgJ8Io(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/core/cmc/CmcAccountManager;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    return-void
.end method

.method private synthetic lambda$getPrimaryDeviceId$7(Ljava/lang/String;)Z
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isPD(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$init$0()V
    .locals 2

    .line 43
    const-string v0, "CmcSettingManagerWrapper"

    const-string/jumbo v1, "onChangedCmcActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$1()V
    .locals 2

    .line 49
    const-string v0, "CmcSettingManagerWrapper"

    const-string/jumbo v1, "onChangedNetworkMode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcNwPrefChanged()V

    return-void
.end method

.method private synthetic lambda$init$2()V
    .locals 2

    .line 55
    const-string v0, "CmcSettingManagerWrapper"

    const-string/jumbo v1, "onChangedLineInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$3()V
    .locals 2

    .line 61
    const-string v0, "CmcSettingManagerWrapper"

    const-string/jumbo v1, "onChangedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$4()V
    .locals 2

    .line 67
    const-string v0, "CmcSettingManagerWrapper"

    const-string/jumbo v1, "onChangedCmcCallActivation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method

.method private synthetic lambda$init$5()V
    .locals 2

    .line 73
    const-string v0, "CmcSettingManagerWrapper"

    const-string/jumbo v1, "onChangedSamsungAccountInfo:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSaAccessToken()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->onChangedSamsungAccountInfo(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$init$6()V
    .locals 2

    .line 79
    const-string v0, "CmcSettingManagerWrapper"

    const-string/jumbo v1, "onChangedSameWifiOnly:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcAccountMgr:Lcom/sec/internal/ims/core/cmc/CmcAccountManager;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager;->notifyCmcDeviceChanged()V

    return-void
.end method


# virtual methods
.method public getCmcCallActivation(Ljava/lang/String;)Z
    .locals 0

    .line 169
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcCallActivation(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getCmcSaAccessToken()Ljava/lang/String;
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSamsungAccountInfo()Lcom/samsung/android/cmcsetting/CmcSaInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 175
    const-string p0, ""

    return-object p0

    .line 177
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSaInfo;->getSaAccessToken()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCmcSupported()Z
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getCmcSupported()Z

    move-result p0

    return p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDeviceIdList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceIdList()Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 132
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object p0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 94
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, v0, :cond_0

    .line 95
    const-string/jumbo p0, "pd"

    goto :goto_0

    .line 96
    :cond_0
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, v0, :cond_1

    .line 97
    const-string/jumbo p0, "sd"

    goto :goto_0

    .line 96
    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getDeviceTypeWithDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getDeviceType(Ljava/lang/String;)Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object p0

    .line 144
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, p1, :cond_0

    .line 145
    const-string/jumbo p0, "pd"

    goto :goto_0

    .line 146
    :cond_0
    sget-object p1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_SD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne p0, p1, :cond_1

    .line 147
    const-string/jumbo p0, "sd"

    goto :goto_0

    .line 146
    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public getLineId()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineId()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLineImpu()Ljava/lang/String;
    .locals 2

    .line 136
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLineImpu()Ljava/lang/String;

    move-result-object p0

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLineImpu: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManagerWrapper"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 138
    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method public getLineSlotId()I
    .locals 4

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSelectedSimSlotsOnPd()Ljava/util/List;

    move-result-object p0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLineSlotId: selectedSimSlotOnPd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 213
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 214
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 216
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLineSlotId: lineSlotId: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getOwnCmcActivation()Z
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnCmcActivation()Z

    move-result p0

    return p0
.end method

.method public getPcscfAddressList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 153
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getLinePcscfAddrList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredNetwork()I
    .locals 1

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnNetworkMode()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    move-result-object p0

    .line 109
    sget-object v0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 111
    :cond_0
    sget-object p0, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;->NETWORK_MODE_USE_MOBILE_NETWORK:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$NetworkMode;

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getPrimaryDeviceId()Ljava/lang/String;
    .locals 2

    .line 200
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 203
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPrimaryDeviceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcSettingManagerWrapper"

    invoke-static {v1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getServiceVersion()Ljava/lang/String;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnServiceVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasSecondaryDevice()Z
    .locals 2

    .line 221
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/cmc/CmcAccountManager$DeviceType;->isSD(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceIdList()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    return v1

    .line 227
    :cond_1
    const-string p0, "CmcSettingManagerWrapper"

    const-string v0, "hasSecondaryDevice: no SD with current PD"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 3

    .line 36
    const-string v0, "init"

    const-string v1, "CmcSettingManagerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance v0, Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-direct {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    .line 38
    iget-object v2, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->init(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "init listeners"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 46
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcActivationInfoChangedListener;)Z

    .line 48
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 52
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcNetworkModeInfoChangedListener;)Z

    .line 54
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda3;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 58
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcLineInfoChangedListener;)Z

    .line 60
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda4;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 64
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcDeviceInfoChangedListener;)Z

    .line 66
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda5;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 70
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcCallActivationInfoChangedListener;)Z

    .line 72
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda6;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 76
    iget-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSamsungAccountInfoChangedListener;)Z

    .line 78
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper$$ExternalSyntheticLambda7;-><init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;)V

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->registerListener(Lcom/samsung/android/cmcsetting/listeners/CmcSameWifiNetworkStatusListener;)Z

    :cond_0
    return-void
.end method

.method public isCallAllowedSdByPd(Ljava/lang/String;)Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getOwnDeviceType()Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;->DEVICE_TYPE_PD:Lcom/samsung/android/cmcsetting/CmcSettingManagerConstants$DeviceType;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 161
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0, p1}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDualCmc()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {v0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isDualSimSupportedOnPd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->getSelectedSimSlotsOnPd()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmergencyCallSupported()Z
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0
.end method

.method public isSameWifiNetworkOnly()Z
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->mCmcSettingManager:Lcom/samsung/android/cmcsetting/CmcSettingManager;

    invoke-virtual {p0}, Lcom/samsung/android/cmcsetting/CmcSettingManager;->isSameWifiNetworkOnly()Z

    move-result p0

    return p0
.end method
