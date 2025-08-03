.class public Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;
.super Ljava/lang/Object;
.source "PresenceConfig.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PresenceConfig"

.field private static final MAX_NUMBER_LIMIT:I = 0x96


# instance fields
.field private mBadEventExpiry:J

.field private mContext:Landroid/content/Context;

.field private mDefaultDisc:I

.field private mIsGzipEnabled:Z

.field private mIsLocalConfigUsed:Z

.field private mIsSocialPresenceSupport:Z

.field private mMaxUri:I

.field private mPhoneId:I

.field private mPublishErrRetry:J

.field private mPublishTimer:J

.field private mPublishTimerExtended:J

.field private mRcsProfile:Ljava/lang/String;

.field private mRetryPublishTimer:J

.field private mRlsUri:Lcom/sec/ims/util/ImsUri;

.field private mSourceThrottlePublish:J

.field private mSourceThrottleSubscribe:J

.field private mTdelayPublish:J

.field private mUseAnonymousFetch:Z

.field private mUseSipUri:Z


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x4b0

    .line 41
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    const-wide/32 v0, 0x15180

    .line 43
    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    const/16 v0, 0x64

    .line 52
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    .line 59
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;)V
    .locals 3

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-wide/16 v1, 0x4b0

    .line 41
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    const-wide/32 v1, 0x15180

    .line 43
    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    const/16 v1, 0x64

    .line 52
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 53
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    .line 282
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->useAnonymousFetch:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    .line 283
    iget-boolean v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->isLocalConfigUsed:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    .line 284
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottlePublish:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 285
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->sourceThrottleSubscribe:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    .line 286
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->tDelayPublish:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    .line 287
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimer:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 288
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->retryPublishTimer:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    .line 289
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishTimerExtended:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    .line 290
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->publishErrRetry:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    .line 291
    iget-wide v0, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->badEventExpiry:J

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    .line 292
    iget p1, p1, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig$Builder;->maxUri:I

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    return-void
.end method


# virtual methods
.method public getBadEventExpiry()J
    .locals 2

    .line 248
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    return-wide v0
.end method

.method public getDefaultDisc()I
    .locals 0

    .line 264
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    return p0
.end method

.method public getMaxUri()I
    .locals 0

    .line 256
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    return p0
.end method

.method public getPublishErrRetry()J
    .locals 2

    .line 232
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    return-wide v0
.end method

.method public getPublishTimer()J
    .locals 2

    .line 228
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    return-wide v0
.end method

.method public getPublishTimerExtended()J
    .locals 2

    .line 240
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    return-wide v0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getRetryPublishTimer()J
    .locals 2

    .line 244
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    return-wide v0
.end method

.method public getRlsUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRlsUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getSourceThrottlePublish()J
    .locals 2

    .line 216
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    return-wide v0
.end method

.method public getSourceThrottleSubscribe()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    return-wide v0
.end method

.method public getTdelayPublish()J
    .locals 2

    .line 224
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    return-wide v0
.end method

.method public isGzipEnabled()Z
    .locals 0

    .line 208
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsGzipEnabled:Z

    return p0
.end method

.method public isLocalConfigUsed()Z
    .locals 0

    .line 212
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    return p0
.end method

.method public isSocialPresenceSupport()Z
    .locals 0

    .line 196
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsSocialPresenceSupport:Z

    return p0
.end method

.method public load()V
    .locals 16

    move-object/from16 v0, p0

    .line 63
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object v1

    .line 64
    const-string v2, "PresenceConfig"

    if-nez v1, :cond_0

    .line 65
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string v1, "load: registrationManager is null"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 69
    :cond_0
    iget v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    sget-object v4, Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;->RCS:Lcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;

    invoke-interface {v1, v3, v4}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getImsProfile(ILcom/sec/ims/settings/ImsProfile$PROFILE_TYPE;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 70
    const-string/jumbo v3, "presence"

    invoke-virtual {v1, v3}, Lcom/sec/ims/settings/ImsProfile;->hasService(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_3

    .line 75
    :cond_1
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-static {v3, v4, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getRcsProfileWithFeature(Landroid/content/Context;ILcom/sec/ims/settings/ImsProfile;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRcsProfile:Ljava/lang/String;

    .line 83
    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "root/application/*"

    iget v5, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 84
    invoke-static {v3, v4, v5}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;

    move-result-object v3

    if-nez v3, :cond_2

    .line 86
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string v1, "load: configData is not found"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 91
    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 90
    const-string/jumbo v5, "presencePrfl"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsSocialPresenceSupport:Z

    .line 93
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPublishTimer()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const-wide/16 v8, 0x4b0

    if-gtz v4, :cond_3

    .line 96
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 95
    const-string v5, "PublishTimer"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    .line 100
    :cond_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 99
    const-string/jumbo v5, "source-throttlepublish"

    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 101
    iput-wide v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    .line 103
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v4

    .line 104
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getSubscribeMaxEntry()I

    move-result v10

    const/16 v11, 0x64

    const-string v12, "max-number-ofsubscriptions-inpresence-list"

    if-nez v10, :cond_4

    .line 106
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 105
    invoke-virtual {v3, v12, v10}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 109
    invoke-virtual {v4}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    const/16 v13, 0x96

    if-le v10, v13, :cond_5

    .line 110
    iput v13, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    goto :goto_0

    .line 113
    :cond_4
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getSubscribeMaxEntry()I

    move-result v10

    iput v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 116
    :cond_5
    :goto_0
    const-string v10, "RLS-URI"

    const-string v13, ""

    invoke-virtual {v3, v10, v13}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 118
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 119
    invoke-static {v10}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v10

    iput-object v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRlsUri:Lcom/sec/ims/util/ImsUri;

    .line 122
    :cond_6
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isAnonymousFetch()Z

    move-result v10

    iput-boolean v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    const/4 v10, 0x0

    .line 124
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "defaultdisc"

    invoke-virtual {v3, v14, v13}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iput v13, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    .line 126
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v13

    const v14, 0x3f480

    if-ne v13, v14, :cond_7

    const-wide/32 v13, 0x3f480

    .line 129
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 128
    const-string v14, "nonRCScapInfoExpiry"

    invoke-virtual {v3, v14, v13}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    goto :goto_1

    .line 131
    :cond_7
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getBadEventExpiry()I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    .line 134
    :goto_1
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPublishErrRetryTimer()I

    move-result v13

    int-to-long v13, v13

    iput-wide v13, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    .line 136
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x5

    .line 137
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string/jumbo v6, "t_delay"

    invoke-static {v13, v6, v14, v15}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    .line 139
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getExtendedPublishTimer()I

    move-result v6

    int-to-long v6, v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    .line 141
    iput-boolean v10, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseSipUri:Z

    .line 143
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isGzipEnabled()Z

    move-result v6

    iput-boolean v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsGzipEnabled:Z

    .line 145
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v4, v6, :cond_a

    .line 147
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 146
    const-string/jumbo v7, "omadm/./3GPP_IMS/PUBLISH_TIMER"

    invoke-static {v13, v7, v4, v6}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    const-wide/32 v6, 0x15180

    .line 149
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 148
    const-string/jumbo v7, "omadm/./3GPP_IMS/PUBLISH_TIMER_EXTEND"

    invoke-static {v13, v7, v4, v6}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    const-wide/16 v6, 0x5460

    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 150
    const-string/jumbo v7, "omadm/./3GPP_IMS/PUBLISH_ERR_RETRY_TIMER"

    invoke-static {v13, v7, v4, v6}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    .line 152
    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mContext:Landroid/content/Context;

    const-wide/16 v6, 0x3c

    .line 153
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 152
    const-string/jumbo v8, "omadm/./3GPP_IMS/SRC_THROTTLE_PUBLISH"

    invoke-static {v4, v8, v6, v7}, Lcom/sec/internal/helper/DmConfigHelper;->readLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;I)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 154
    iput-wide v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    .line 156
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    .line 155
    const-string/jumbo v7, "omadm/./3GPP_IMS/SUBSCRIBE_MAX_ENTRY"

    invoke-static {v13, v7, v4, v6}, Lcom/sec/internal/helper/DmConfigHelper;->readInt(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 157
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "load: mSourceThrottlePublishFromDM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", mSourceThrottleSubscribeFromDM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", mMaxUriFromDM: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 160
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-static {v4}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 161
    invoke-interface {v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isLocalConfigUsed()Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    move v4, v10

    :goto_2
    iput-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    if-nez v4, :cond_a

    const-wide/16 v6, 0x0

    .line 164
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 163
    invoke-virtual {v3, v5, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v8, v4, v6

    if-lez v8, :cond_9

    .line 166
    iget v6, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "load: change mSourceThrottlePublish to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 167
    iput-wide v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    .line 170
    :cond_9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 169
    invoke-virtual {v3, v12, v4}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_a

    .line 172
    iget v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load: change mMaxUri to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 173
    iput v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    .line 182
    :cond_a
    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    iput-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_b

    .line 184
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPublishExpiry()I

    move-result v1

    int-to-long v3, v1

    iput-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    .line 187
    :cond_b
    iget v1, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const v3, 0x12090006

    invoke-static {v3, v1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRlsUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseSipUri:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return-void

    .line 71
    :cond_c
    :goto_3
    iget v0, v0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    const-string v1, "load: profile is null"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public setPublishErrRetry(J)V
    .locals 0

    .line 236
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    const-string v1, "PresenceConfig [mPhoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mUseAnonymousFetch="

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsLocalConfigUsed="

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mIsLocalConfigUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceThrottlePublish="

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottlePublish:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSourceThrottleSubscribe="

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mSourceThrottleSubscribe:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mTdelayPublish="

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mTdelayPublish:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPublishTimer="

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryPublishTimer="

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mRetryPublishTimer:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPublishTimerExtended="

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishTimerExtended:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPublishErrRetry="

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mPublishErrRetry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBadEventExpiry="

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mBadEventExpiry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxUri="

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mMaxUri:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultDisc="

    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mDefaultDisc:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public useAnonymousFetch()Z
    .locals 0

    .line 200
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseAnonymousFetch:Z

    return p0
.end method

.method public useSipUri()Z
    .locals 0

    .line 204
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/presence/PresenceConfig;->mUseSipUri:Z

    return p0
.end method
