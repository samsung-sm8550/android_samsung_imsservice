.class public Lcom/sec/internal/helper/RegiConfig;
.super Ljava/lang/Object;
.source "RegiConfig.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RegiConfig"


# instance fields
.field private mAppRealm:Ljava/lang/String;

.field private mAppUserPwd:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndUserConfReqId:Ljava/lang/String;

.field private mHomeNetworkDomain:Ljava/lang/String;

.field private mIpType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKeepAlive:Z

.field private mLboPcscfAddress:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPcscfIdx:I

.field private mPhoneId:I

.field private mPrivateUserIdentity:Ljava/lang/String;

.field private mPublicUserIdentity:Ljava/lang/String;

.field private mQValue:Ljava/lang/String;

.field private mRcsVolteSingleReg:I

.field private mRegRetryBaseTime:I

.field private mRegRetryMaxTime:I

.field private mTimer1:I

.field private mTimer2:I

.field private mTimer4:I

.field private mTransProtoPsRoamSignaling:Ljava/lang/String;

.field private mTransProtoPsSignaling:Ljava/lang/String;

.field private mTransProtoWifiSignaling:Ljava/lang/String;

.field private mTransportPsMedia:Ljava/lang/String;

.field private mTransportPsMediaRoaming:Ljava/lang/String;

.field private mTransportWifiMedia:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    .line 57
    iput p1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 58
    iput-object p2, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->loadDefaultValues()V

    return-void
.end method

.method private determineIpType(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 294
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv6Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 295
    const-string p0, "ipv6"

    return-object p0

    .line 297
    :cond_0
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isIPv4Address(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 298
    const-string p0, "ipv4"

    return-object p0

    .line 300
    :cond_1
    invoke-static {p1}, Lcom/sec/internal/helper/NetworkUtil;->isDomainPattern(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 301
    const-string p0, "FQDN"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private loadDefaultValues()V
    .locals 2

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    .line 64
    const-string v1, "MSRPoTLS"

    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportWifiMedia:Ljava/lang/String;

    .line 65
    const-string v1, "MSRP"

    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMediaRoaming:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mQValue:Ljava/lang/String;

    .line 68
    const-string v1, "SIPoTLS"

    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoWifiSignaling:Ljava/lang/String;

    .line 69
    const-string v1, "SIPoUDP"

    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mEndUserConfReqId:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsRoamSignaling:Ljava/lang/String;

    const/4 v0, 0x1

    .line 72
    iput-boolean v0, p0, Lcom/sec/internal/helper/RegiConfig;->mKeepAlive:Z

    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRcsVolteSingleReg:I

    .line 74
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer1:I

    .line 75
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer2:I

    .line 76
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer4:I

    .line 77
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryBaseTime:I

    .line 78
    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryMaxTime:I

    return-void
.end method

.method private setAppRealm()V
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "realm"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 127
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 126
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppRealm:Ljava/lang/String;

    return-void
.end method

.method private setAppUserPwd()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "UserPwd"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 122
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 121
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    return-void
.end method

.method private setEndUserConfReqId()V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "endUserConfReqId"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mEndUserConfReqId:Ljava/lang/String;

    return-void
.end method

.method private setHomeNetworkDomain()V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "home_network_domain_name"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 117
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 116
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mHomeNetworkDomain:Ljava/lang/String;

    return-void
.end method

.method private setKeepAlive()V
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "keep_alive_enabled"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 144
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 143
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/helper/RegiConfig;->mKeepAlive:Z

    return-void
.end method

.method private setPcscfAddress()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "address"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 101
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readListStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "addresstype"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 103
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readListStringParam(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mIpType:Ljava/util/List;

    return-void
.end method

.method private setPrivateUserIdentity()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "private_user_identity"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 108
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 107
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPrivateUserIdentity:Ljava/lang/String;

    return-void
.end method

.method private setPublicUserIdentity()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getImpu(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPublicUserIdentity:Ljava/lang/String;

    return-void
.end method

.method private setRcsVolteSingleReg()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcsVolteSingleRegistration"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 170
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 169
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRcsVolteSingleReg:I

    return-void
.end method

.method private setRegRetryTime()V
    .locals 4

    .line 182
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "RegRetryBaseTime"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 183
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 182
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryBaseTime:I

    .line 184
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "RegRetryMaxTime"

    iget v3, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 185
    invoke-static {v1, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryMaxTime:I

    return-void
.end method

.method private setTimer()V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "Timer_T1"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer1:I

    .line 175
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "Timer_T2"

    iget v3, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 176
    invoke-static {v1, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer2:I

    .line 177
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string v1, "Timer_T4"

    iget v3, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 178
    invoke-static {v1, v3}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 177
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readIntParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer4:I

    return-void
.end method

.method private setTransportProtoSignaling()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifisignalling"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 154
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIPoTLS"

    .line 153
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoWifiSignaling:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pssignalling"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 157
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIPoUDP"

    .line 156
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "pssignallingroaming"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 160
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    .line 159
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsRoamSignaling:Ljava/lang/String;

    return-void
.end method

.method private setTransportPsMedia()V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psmedia"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 137
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSRP"

    .line 136
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "psmediaroaming"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 139
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    .line 138
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMediaRoaming:Ljava/lang/String;

    return-void
.end method

.method private setTransportWifiMedia()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifimedia"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 132
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSRPoTLS"

    .line 131
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportWifiMedia:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppRealm()Ljava/lang/String;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppRealm:Ljava/lang/String;

    return-object p0
.end method

.method public getAppUserPwd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sec/internal/helper/RegiConfig;->mAppUserPwd:Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public getEndUserConfReqId()Ljava/lang/String;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mEndUserConfReqId:Ljava/lang/String;

    return-object p0
.end method

.method public getHomeNetworkDomain()Ljava/lang/String;
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mHomeNetworkDomain:Ljava/lang/String;

    return-object p0
.end method

.method public getKeepAlive()Z
    .locals 0

    .line 221
    iget-boolean p0, p0, Lcom/sec/internal/helper/RegiConfig;->mKeepAlive:Z

    return p0
.end method

.method public getLboPcscfAddressAndIpType()Landroid/os/Bundle;
    .locals 6

    .line 271
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-static {v0}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 272
    iget v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/ims/util/ConfigUtil;->isRcsChn(Lcom/sec/internal/constants/Mno;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 273
    iget v0, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    iget-object v2, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 274
    sget-object v0, Lcom/sec/internal/helper/RegiConfig;->LOG_TAG:Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    const-string v3, "getRcsPcscfAddress : reset pcscfIdx because lboPcscflist is changed"

    invoke-static {v0, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 275
    iput v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    iget v1, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/sec/internal/helper/RegiConfig;->mIpType:Ljava/util/List;

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 279
    sget-object v2, Lcom/sec/internal/helper/RegiConfig;->LOG_TAG:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRcsPcscfAddress mPcscfIdx:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " lboPcscfAddress:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ipType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;ILjava/lang/String;)V

    .line 281
    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPcscfIdx:I

    goto :goto_1

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mLboPcscfAddress:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 284
    iget-object v2, p0, Lcom/sec/internal/helper/RegiConfig;->mIpType:Ljava/util/List;

    invoke-static {v2}, Lcom/sec/internal/helper/CollectionUtils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0, v0}, Lcom/sec/internal/helper/RegiConfig;->determineIpType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mIpType:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move-object v1, v0

    .line 287
    :goto_1
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 288
    const-string v2, "address"

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v0, "addresstype"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public getPrivateUserIdentity()Ljava/lang/String;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mPrivateUserIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getPublicUserIdentity()Ljava/lang/String;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mPublicUserIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getQValue()Ljava/lang/String;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mQValue:Ljava/lang/String;

    return-object p0
.end method

.method public getRcsVolteSingleReg()I
    .locals 0

    .line 245
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mRcsVolteSingleReg:I

    return p0
.end method

.method public getRegRetryBaseTime(I)I
    .locals 1

    .line 261
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryBaseTime:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getRegRetryMaxTime(I)I
    .locals 1

    .line 265
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mRegRetryMaxTime:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTimer1(I)I
    .locals 1

    .line 249
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer1:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTimer2(I)I
    .locals 1

    .line 253
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer2:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTimer4(I)I
    .locals 1

    .line 257
    iget p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTimer4:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public getTransProtoPsRoamSignaling()Ljava/lang/String;
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsRoamSignaling:Ljava/lang/String;

    return-object p0
.end method

.method public getTransProtoPsSignaling()Ljava/lang/String;
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoPsSignaling:Ljava/lang/String;

    return-object p0
.end method

.method public getTransProtoWifiSignaling()Ljava/lang/String;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransProtoWifiSignaling:Ljava/lang/String;

    return-object p0
.end method

.method public getTransportPsMedia()Ljava/lang/String;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMedia:Ljava/lang/String;

    return-object p0
.end method

.method public getTransportPsMediaRoaming()Ljava/lang/String;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportPsMediaRoaming:Ljava/lang/String;

    return-object p0
.end method

.method public getTransportWifiMedia()Ljava/lang/String;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sec/internal/helper/RegiConfig;->mTransportWifiMedia:Ljava/lang/String;

    return-object p0
.end method

.method public load()V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setPcscfAddress()V

    .line 83
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setPrivateUserIdentity()V

    .line 84
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setPublicUserIdentity()V

    .line 85
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setAppRealm()V

    .line 86
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setAppUserPwd()V

    .line 87
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setHomeNetworkDomain()V

    .line 88
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTransportWifiMedia()V

    .line 89
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTransportPsMedia()V

    .line 90
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setKeepAlive()V

    .line 91
    invoke-virtual {p0}, Lcom/sec/internal/helper/RegiConfig;->setQValue()V

    .line 92
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTransportProtoSignaling()V

    .line 93
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setEndUserConfReqId()V

    .line 94
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setRcsVolteSingleReg()V

    .line 95
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setTimer()V

    .line 96
    invoke-direct {p0}, Lcom/sec/internal/helper/RegiConfig;->setRegRetryTime()V

    return-void
.end method

.method public setQValue()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "q-value"

    iget v2, p0, Lcom/sec/internal/helper/RegiConfig;->mPhoneId:I

    .line 149
    invoke-static {v1, v2}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 148
    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/RegiConfig;->mQValue:Ljava/lang/String;

    return-void
.end method
