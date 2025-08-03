.class public Lcom/sec/internal/ims/core/cmc/CmcInfo;
.super Ljava/lang/Object;
.source "CmcInfo.java"


# instance fields
.field mAccessToken:Ljava/lang/String;

.field mActivation:Z

.field mCallforkingEnabled:Z

.field mDeviceId:Ljava/lang/String;

.field mDeviceType:Ljava/lang/String;

.field mHasSd:Z

.field mIsDualCmc:Z

.field mIsEmergencyCallSupported:Z

.field mIsSameWiFiOnly:Z

.field mLineId:Ljava/lang/String;

.field mLineImpu:Ljava/lang/String;

.field mLineOwnerDeviceId:Ljava/lang/String;

.field mLineSlotIndex:I

.field mNetworkPref:I

.field mOobe:Z

.field mPcscfAddrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSaServerUrl:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$Yn2qHP6s7UJssTVaNXoenH-XRhw(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->lambda$getChangedCmcInfoType$0(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 25
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 37
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 38
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    .line 39
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 25
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 27
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 28
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 34
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    const/4 v1, 0x1

    .line 35
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 36
    iput-boolean v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 37
    iput v1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 38
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    .line 39
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    .line 40
    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    .line 104
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getCmcSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    .line 105
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getOwnCmcActivation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    .line 106
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    .line 108
    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPrimaryDeviceId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineImpu()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPcscfAddressList()Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    .line 113
    iput-object p3, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getLineSlotId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    .line 115
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->hasSecondaryDevice()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    .line 116
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->getPreferredNetwork()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    .line 117
    iget-object p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isCallAllowedSdByPd(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    .line 118
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isEmergencyCallSupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    .line 119
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isSameWifiNetworkOnly()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    .line 120
    invoke-virtual {p1}, Lcom/sec/internal/ims/core/cmc/CmcSettingManagerWrapper;->isDualCmc()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    return-void
.end method

.method private checkValid(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z
    .locals 3

    .line 155
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;

    move-result-object p0

    .line 156
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->-$$Nest$fgetmDataType(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v2

    .line 161
    :cond_0
    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    .line 162
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 158
    :cond_2
    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    move v1, v2

    :cond_3
    return v1
.end method

.method private compare(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z
    .locals 5

    .line 124
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;

    move-result-object p0

    .line 125
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;

    move-result-object p2

    .line 127
    invoke-static {p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->-$$Nest$fgetmDataType(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Lcom/sec/internal/ims/core/cmc/CmcInfo$DataType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    return v0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p2, :cond_1

    .line 141
    move-object p1, p0

    check-cast p1, Ljava/util/List;

    .line 142
    move-object v2, p2

    check-cast v2, Ljava/util/List;

    .line 143
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 144
    invoke-interface {p1, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    if-nez p0, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    return v0

    :cond_3
    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    .line 134
    check-cast p0, Ljava/lang/String;

    .line 135
    check-cast p2, Ljava/lang/String;

    .line 136
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_4
    if-nez p0, :cond_5

    if-nez p2, :cond_5

    move v0, v1

    :cond_5
    return v0

    .line 131
    :cond_6
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p0, p1, :cond_7

    move v0, v1

    :cond_7
    return v0

    .line 129
    :cond_8
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-ne p0, p1, :cond_9

    move v0, v1

    :cond_9
    return v0
.end method

.method private synthetic lambda$getChangedCmcInfoType$0(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z
    .locals 0

    .line 180
    invoke-direct {p0, p2, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->compare(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;Lcom/sec/internal/ims/core/cmc/CmcInfo;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public getChangedCmcInfoType(Lcom/sec/internal/ims/core/cmc/CmcInfo;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/core/cmc/CmcInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;",
            ">;"
        }
    .end annotation

    .line 179
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/core/cmc/CmcInfo$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/sec/internal/ims/core/cmc/CmcInfo$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/core/cmc/CmcInfo;Lcom/sec/internal/ims/core/cmc/CmcInfo;)V

    .line 180
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 181
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getCmcInfoFailReason()Ljava/lang/String;
    .locals 5

    .line 169
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 170
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->checkValid(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 171
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " empty"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_1
    const-string p0, ""

    return-object p0
.end method

.method public getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;
    .locals 0

    .line 77
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 94
    :pswitch_0
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsDualCmc:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 93
    :pswitch_1
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsSameWiFiOnly:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 92
    :pswitch_2
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mIsEmergencyCallSupported:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 78
    :pswitch_3
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mOobe:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 91
    :pswitch_4
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mNetworkPref:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 90
    :pswitch_5
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mHasSd:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 89
    :pswitch_6
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mCallforkingEnabled:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 88
    :pswitch_7
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mPcscfAddrList:Ljava/util/List;

    return-object p0

    .line 87
    :pswitch_8
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mSaServerUrl:Ljava/lang/String;

    return-object p0

    .line 86
    :pswitch_9
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineImpu:Ljava/lang/String;

    return-object p0

    .line 85
    :pswitch_a
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineOwnerDeviceId:Ljava/lang/String;

    return-object p0

    .line 84
    :pswitch_b
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineId:Ljava/lang/String;

    return-object p0

    .line 83
    :pswitch_c
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mAccessToken:Ljava/lang/String;

    return-object p0

    .line 82
    :pswitch_d
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceId:Ljava/lang/String;

    return-object p0

    .line 81
    :pswitch_e
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mDeviceType:Ljava/lang/String;

    return-object p0

    .line 80
    :pswitch_f
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mLineSlotIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 79
    :pswitch_10
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/cmc/CmcInfo;->mActivation:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {}, Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;->values()[Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    const-string v4, ", "

    if-ge v3, v2, :cond_0

    aget-object v5, v1, v3

    .line 191
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/sec/internal/ims/core/cmc/CmcInfo;->getValue(Lcom/sec/internal/ims/core/cmc/CmcInfo$CmcInfoType;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 194
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_1

    .line 195
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 197
    :cond_1
    const-string p0, ">"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
