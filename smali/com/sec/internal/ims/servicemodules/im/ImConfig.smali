.class public Lcom/sec/internal/ims/servicemodules/im/ImConfig;
.super Ljava/lang/Object;
.source "ImConfig.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImConfig"

.field private static final UNLIMITED_MAX_SIZE_FILE_TR_INCOMING:J

.field private static sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private m1ToManySelectedTech:I

.field private mAutAccept:Z

.field private mAutAcceptGroupChat:Z

.field private mBotPrivacyDisable:Z

.field private mCallComposerTimerIdle:I

.field private mCatalogUri:Landroid/net/Uri;

.field private mCbftHTTPCSURI:Landroid/net/Uri;

.field private mCfsTrigger:Z

.field private mChatEnabled:Z

.field private mChatRevokeTimer:I

.field private mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

.field private mConfFctyUri:Lcom/sec/ims/util/ImsUri;

.field private mDeferredMsgFuncUri:Lcom/sec/ims/util/ImsUri;

.field private mDisplayNotificationSwitch:I

.field private mEnableFtAutoResumable:Z

.field private mEnableGroupChatListRetrieve:Z

.field private mExploderUri:Lcom/sec/ims/util/ImsUri;

.field protected mExtAttImMSRPFtMaxSize:J

.field protected mExtAttImSlmMaxRecipients:I

.field private mFirstMsgInvite:Z

.field private mFtAutAccept:Z

.field private mFtAutAcceptOriginalConfig:Z

.field private mFtCancelMemoryFull:Z

.field private mFtCapAlwaysOn:Z

.field private mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

.field private mFtEnabled:Z

.field private mFtFallbackAllFail:Z

.field private mFtFbDefault:I

.field private mFtHTTPExtraCSURI:Landroid/net/Uri;

.field private mFtHttpCapAlwaysOn:Z

.field private mFtHttpCsPwd:Ljava/lang/String;

.field private mFtHttpCsUri:Landroid/net/Uri;

.field private mFtHttpCsUser:Ljava/lang/String;

.field private mFtHttpDLUrl:Ljava/lang/String;

.field private mFtHttpEnabled:Z

.field private mFtHttpFallback:I

.field private mFtHttpTrustAllCerts:Z

.field private mFtMax1ToManyRecipients:I

.field private mFtStAndFwEnabled:Z

.field private mFtThumb:Z

.field private mFtWarnSize:J

.field private mGlsPullEnabled:Z

.field private mGlsPushEnabled:Z

.field private mGroupChatEnabled:Z

.field private mGroupChatFullStandFwd:Z

.field private mGroupChatOnlyFStandFwd:Z

.field private mImCapAlwaysOn:Z

.field private mImCapNonRcs:Z

.field private mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

.field private mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

.field private mImWarnIw:Z

.field private mImWarnSf:Z

.field private mIsAggrImdnSupported:Z

.field private mIsFullSFGroupChat:Z

.field private mJoynIntegratedMessaging:Z

.field private mLegacyLatching:Z

.field private mMax1ToManyRecipients:I

.field private mMaxAdhocGroupSize:I

.field private mMaxConcurrentSession:I

.field private mMaxSize:J

.field private mMaxSize1To1:J

.field private mMaxSize1ToM:J

.field private mMaxSizeExtraFileTr:J

.field private mMaxSizeFileTr:J

.field private mMaxSizeFileTrIncoming:J

.field private mMessagingUX:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

.field private mMsgCapValidityTime:I

.field private mMsgFbDefault:I

.field private mMultiMediaChat:Z

.field private mPagerModeLimit:I

.field private final mPhoneId:I

.field private mPlugInEnabled:Z

.field private mPresSrvCap:Z

.field private mPublicAccountAddr:Ljava/lang/String;

.field private mRcsProfile:Ljava/lang/String;

.field private mRealtimeUserAliasAuth:Z

.field private mReconnectGuardTimer:I

.field private mRespondDisplay:Z

.field private mServiceAvailabilityInfoExpiry:I

.field private mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

.field private mSlmMaxMsgSize:J

.field private mSlmSwitchOverSize:I

.field private mSmsFallbackAuth:Z

.field private mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

.field private mTimerIdle:I

.field private mUserAgent:Ljava/lang/String;

.field private mUserAlias:Ljava/lang/String;

.field private mUserAliasEnabled:Z

.field private mfThttpDefaultPdn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    .line 177
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    return-void
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 466
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 469
    :catch_0
    const-string p0, "ImConfig"

    const-string v0, "Failed to decrypt the data"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getImCapAlwaysOn(Landroid/content/Context;Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;)Z
    .locals 0

    .line 837
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p1, p0}, Lcom/sec/internal/helper/RcsConfigurationHelper;->isUp2NonTransitional(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 841
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string p1, "imcapalwayson"

    invoke-virtual {p2, p1, p0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static declared-synchronized getInstance(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 3

    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    monitor-enter v0

    .line 181
    :try_start_0
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->sInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    if-nez v1, :cond_0

    .line 183
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;-><init>(I)V

    .line 184
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->sInstances:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 186
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method private getSipUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 717
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v0, "user_agent"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 718
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 722
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalModel()Ljava/lang/String;

    move-result-object p1

    .line 723
    invoke-static {}, Lcom/sec/internal/ims/config/ConfigContract$BUILD;->getTerminalSwVersion()Ljava/lang/String;

    move-result-object v0

    .line 724
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v2, "rcs_client_version"

    const-string v3, "6.0"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    const-string v2, "VOD"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 728
    const-string v1, "4.1"

    .line 731
    :cond_1
    const-string v2, "DTM"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "DTR"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "SFR"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "TMZ"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    .line 734
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 732
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 736
    :cond_4
    :goto_1
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-static {p0, p1, v0, v1}, Lcom/sec/internal/ims/util/ConfigUtil;->getFormattedUserAgent(Lcom/sec/internal/constants/Mno;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initRcsConfiguration(Landroid/content/Context;)V
    .locals 2

    .line 206
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x64

    .line 207
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    const/16 p1, 0x3c

    .line 208
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    goto :goto_0

    .line 210
    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "max_adhoc_group_size"

    const/16 v1, 0xa

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    const/4 p1, 0x0

    .line 211
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    :goto_0
    return-void
.end method

.method private loadGlobalSettings(Landroid/content/Context;)V
    .locals 2

    .line 216
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSipUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAgent:Ljava/lang/String;

    .line 217
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "full_sf_group_chat"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsFullSFGroupChat:Z

    .line 218
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "aggr_imdn_supported"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsAggrImdnSupported:Z

    .line 219
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "enable_group_chat_list_retrieve"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableGroupChatListRetrieve:Z

    .line 220
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "fthttp_trust_all_certs"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpTrustAllCerts:Z

    .line 221
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "ft_cancel_memory_full"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCancelMemoryFull:Z

    .line 222
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "ft_fallback_all_fail"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFallbackAllFail:Z

    .line 223
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "enable_ft_auto_resumable"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableFtAutoResumable:Z

    .line 224
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v0, "fthttp_over_default_pdn"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mfThttpDefaultPdn:Z

    .line 225
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v0, "pager_mode_size_limit"

    invoke-static {p1, v0, v1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getInt(ILjava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPagerModeLimit:I

    return-void
.end method

.method private loadRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;)V
    .locals 12

    .line 232
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "ChatAuth"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatEnabled:Z

    .line 233
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "GroupChatAuth"

    invoke-virtual {p2, v2, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatEnabled:Z

    .line 234
    const-string v1, "ftAuth"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    .line 235
    const-string v1, "ftHTTPCSURI"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    .line 236
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p2, v1, v3}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getFtDefaultTech(Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    .line 237
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 239
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v1, :cond_0

    .line 237
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne v1, v7, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    .line 238
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v1

    .line 239
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v7

    array-length v7, v7

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 238
    const-string/jumbo v8, "standaloneMsgAuth"

    invoke-virtual {p2, v8, v6, v6, v7}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    .line 240
    const-string/jumbo v1, "smsfallbackauth"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSmsFallbackAuth:Z

    .line 241
    const-string v1, "geolocPushAuth"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPushEnabled:Z

    .line 242
    const-string v1, "geolocPullAuth"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v5

    :goto_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPullEnabled:Z

    .line 243
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v1

    .line 244
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v8

    array-length v8, v8

    sub-int/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 243
    const-string v9, "ChatbotMsgTech"

    invoke-virtual {p2, v9, v7, v6, v8}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    .line 249
    const-string/jumbo v1, "pres-srv-cap"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPresSrvCap:Z

    .line 250
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v7, "max_adhoc_group_size"

    invoke-virtual {p2, v7, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    .line 251
    const-string v1, "conf-fcty-uri"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mConfFctyUri:Lcom/sec/ims/util/ImsUri;

    .line 252
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v7, "mnoname"

    invoke-static {v1, v7, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    sget-object v7, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v7}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {v1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 254
    const-string v1, "mass-fcty-uri"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExploderUri:Lcom/sec/ims/util/ImsUri;

    goto :goto_2

    .line 256
    :cond_2
    const-string v1, "exploder-uri"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExploderUri:Lcom/sec/ims/util/ImsUri;

    .line 258
    :goto_2
    const-string v1, "deferred-msg-func-uri"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readImsUri(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDeferredMsgFuncUri:Lcom/sec/ims/util/ImsUri;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImCapAlwaysOn(Landroid/content/Context;Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    .line 260
    const-string v1, "imWarnSF"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnSf:Z

    .line 261
    const-string v1, "GroupChatFullStandFwd"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatFullStandFwd:Z

    .line 262
    const-string v1, "GroupChatOnlyFStandFwd"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatOnlyFStandFwd:Z

    .line 264
    const-string v1, "imCapNonRCS"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapNonRcs:Z

    .line 265
    const-string v1, "imwarniw"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnIw:Z

    .line 266
    const-string v1, "autaccept"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAccept:Z

    .line 268
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v1

    .line 269
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;->values()[Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    move-result-object v7

    array-length v7, v7

    sub-int/2addr v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 268
    const-string v8, "imsessionstart"

    invoke-virtual {p2, v8, v6, v6, v7}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readIntWithinRange(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v1, v1, v7

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    .line 270
    const-string v1, "autacceptgroupchat"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAcceptGroupChat:Z

    .line 271
    const-string v1, "firstMessageInvite"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    .line 272
    const-string v1, "TimerIdle"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTimerIdle:I

    .line 273
    const-string v1, "maxConcurrentSession"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxConcurrentSession:I

    .line 274
    const-string v1, "multiMediaChat"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMultiMediaChat:Z

    const-wide/16 v7, 0x0

    .line 275
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v9, "maxsize1to1"

    invoke-virtual {p2, v9, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    .line 276
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v9, "maxsize1tom"

    invoke-virtual {p2, v9, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    .line 277
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v9, "MaxSizeStandalone"

    invoke-virtual {p2, v9, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmMaxMsgSize:J

    cmp-long v1, v9, v7

    .line 278
    const-string v9, "MaxSize"

    if-nez v1, :cond_3

    .line 279
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v9, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmMaxMsgSize:J

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p2, v1, v10}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getImMsgTech(Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;Ljava/lang/String;I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    .line 286
    const-string v1, "ftHTTPCSUser"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    .line 287
    const-string v1, "ftHTTPCSPwd"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    .line 288
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v10, "MaxSizeFileTr"

    invoke-virtual {p2, v10, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    .line 289
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v10, "ftWarnSize"

    invoke-virtual {p2, v10, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtWarnSize:J

    .line 290
    const-string v1, "ftThumb"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    .line 291
    const-string v1, "ftStAndFwEnabled"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtStAndFwEnabled:Z

    .line 292
    const-string v1, "ftCapalwaysON"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCapAlwaysOn:Z

    .line 293
    const-string v1, "ftautaccept"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    .line 294
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAcceptOriginalConfig:Z

    .line 295
    const-string v1, "ftHTTPDLURI"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpDLUrl:Ljava/lang/String;

    const/16 v1, 0xb4

    .line 301
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 300
    const-string v10, "callComposerTimerIdle"

    invoke-virtual {p2, v10, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCallComposerTimerIdle:I

    .line 306
    const-string/jumbo v1, "root/application/1/serviceproviderext/joyn/ux/messagingUX"

    invoke-static {p1, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mJoynIntegratedMessaging:Z

    const/16 v1, 0x1e

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v10, "msgcapvalidity"

    invoke-virtual {p2, v10, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgCapValidityTime:I

    .line 313
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v10, "ftHTTPCapAlwaysOn"

    invoke-virtual {p2, v10, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    .line 318
    const-string v1, "ChatRevokeTimer"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatRevokeTimer:I

    .line 327
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 329
    const-string v10, "ignore_max_size_file_tr_for_unlimited_ft_download"

    invoke-interface {v1, v10}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-wide v10, v7

    goto :goto_3

    .line 330
    :cond_4
    iget-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    .line 329
    :goto_3
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 328
    const-string v10, "MaxSizeFileTrIncoming"

    invoke-virtual {p2, v10, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTrIncoming:J

    .line 335
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p2, v9, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize:J

    .line 336
    const-string v1, "ftHTTPFallback"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpFallback:I

    .line 341
    const-string/jumbo v1, "publicaccount/Addr"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPublicAccountAddr:Ljava/lang/String;

    .line 342
    const-string v1, "MaxSizeExtraFileTr"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v7, v1

    iput-wide v7, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeExtraFileTr:J

    .line 343
    const-string v1, "ftHTTPExtraCSURI"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHTTPExtraCSURI:Landroid/net/Uri;

    .line 344
    const-string v1, "cbftHTTPCSURI"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCbftHTTPCSURI:Landroid/net/Uri;

    .line 345
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string/jumbo v7, "support_realtime_user_alias"

    invoke-static {v1, v7, v5}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "ext/realtimeUserAliasAuth"

    .line 346
    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    move v1, v4

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_4
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRealtimeUserAliasAuth:Z

    .line 351
    const-string v1, "messagingUX"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->SEAMLESS:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    goto :goto_5

    .line 352
    :cond_6
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;->INTEGRATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    :goto_5
    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMessagingUX:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    .line 353
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRealtimeUserAliasAuth:Z

    if-nez v1, :cond_8

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v7, "userAliasAuth"

    invoke-virtual {p2, v7, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_6

    :cond_7
    move v1, v5

    goto :goto_7

    :cond_8
    :goto_6
    move v1, v4

    :goto_7
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    .line 354
    const-string v1, "msgFBDefault"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgFbDefault:I

    .line 355
    const-string/jumbo v1, "reconnectGuardTimer"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    .line 356
    const-string v1, "cfsTrigger"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCfsTrigger:Z

    .line 357
    const-string v1, "max1toManyRecipients"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMax1ToManyRecipients:I

    .line 358
    const-string v1, "1toManySelectedTech"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->m1ToManySelectedTech:I

    .line 359
    const-string v1, "displayNotificationSwitch"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDisplayNotificationSwitch:I

    .line 361
    const-string v1, "ftMax1ToManyRecipients"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtMax1ToManyRecipients:I

    .line 363
    const-string v1, "ftFBDefault"

    invoke-virtual {p2, v1, v6}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFbDefault:I

    .line 364
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 364
    const-string/jumbo v6, "serviceAvailabilityInfoExpiry"

    invoke-virtual {p2, v6, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    .line 370
    const-string v1, "catalogURI"

    invoke-virtual {p2, v1, v2}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readUri(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCatalogUri:Landroid/net/Uri;

    if-eqz v1, :cond_9

    .line 371
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    move v4, v5

    :goto_8
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPlugInEnabled:Z

    .line 377
    const-string v1, "PrivacyDisable"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mBotPrivacyDisable:Z

    const/16 v0, 0x514

    .line 382
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SwitchoverSize"

    invoke-virtual {p2, v1, v0}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmSwitchOverSize:I

    .line 388
    const-string/jumbo p2, "root/application/1/im/ext/att/slmMaxRecipients"

    invoke-static {p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 390
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 392
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImSlmMaxRecipients:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception p2

    .line 394
    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 397
    :cond_a
    :goto_9
    const-string/jumbo p2, "root/application/1/im/ext/att/MSRPFtMaxSize"

    invoke-static {p1, p2}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readStringParamWithPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 398
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 400
    :try_start_1
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImMSRPFtMaxSize:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception p0

    .line 402
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_b
    :goto_a
    return-void
.end method

.method private updateRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;)V
    .locals 8

    .line 409
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "ftHTTPCapAlwaysOn"

    const/16 v1, 0x78

    .line 418
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 409
    const-string/jumbo v2, "reconnectGuardTimer"

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 410
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p1, v5}, Lcom/sec/internal/helper/RcsConfigurationHelper;->isUp2NonTransitional(Ljava/lang/String;I)Z

    move-result p1

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 411
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    move p1, v5

    goto :goto_0

    :cond_0
    move p1, v4

    :goto_0
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    .line 412
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    goto :goto_2

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;->HTTP:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    if-ne p1, v6, :cond_2

    move p1, v5

    goto :goto_1

    :cond_2
    move p1, v4

    :goto_1
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    .line 416
    :goto_2
    iget-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize:J

    iput-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    .line 417
    iput-wide v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    .line 418
    invoke-virtual {p2, v2, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    .line 420
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v6, "legacy_latching"

    invoke-static {p1, v6, v4}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mLegacyLatching:Z

    .line 424
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v6, "firstMessageInvite"

    invoke-virtual {p2, v6, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 425
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-eq v6, v7, :cond_4

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move v5, v4

    :cond_4
    :goto_3
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    .line 426
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    .line 427
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    goto :goto_4

    .line 429
    :cond_5
    const-string p1, "joyn_cpr"

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 430
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    .line 434
    :cond_6
    :goto_4
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    const-string v5, "mnoname"

    invoke-static {p1, v5, v3}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 435
    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {v3}, Lcom/sec/internal/ims/util/ConfigUtil;->getAcsServerType(I)Ljava/lang/String;

    move-result-object v3

    .line 436
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {v5, v4}, Lcom/sec/internal/ims/util/ConfigUtil;->getAutoconfigSourceWithFeature(II)I

    move-result v4

    .line 437
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", rcs_local_config_server:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ImConfig"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-object v5, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v5}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 440
    invoke-virtual {p2, v2, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readInt(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    goto/16 :goto_5

    .line 441
    :cond_7
    sget-object v1, Lcom/sec/internal/constants/Mno;->RJIL:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 442
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;->readBool(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    goto :goto_5

    .line 443
    :cond_8
    sget-object p2, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    const-string p2, "jibe"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_9

    const/4 p1, 0x2

    if-eq v4, p1, :cond_b

    const/4 p1, 0x3

    if-eq v4, p1, :cond_b

    .line 450
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    .line 451
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    .line 452
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    if-eqz p1, :cond_b

    .line 453
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    goto :goto_5

    .line 456
    :cond_9
    sget-object p2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    sget-object p2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p2}, Lcom/sec/internal/constants/Mno;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    :cond_a
    if-nez v4, :cond_b

    .line 458
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    :cond_b
    :goto_5
    return-void
.end method


# virtual methods
.method public getBotPrivacyDisable()Z
    .locals 0

    .line 825
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mBotPrivacyDisable:Z

    return p0
.end method

.method public getCallComposerTimerIdle()I
    .locals 0

    .line 565
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCallComposerTimerIdle:I

    return p0
.end method

.method public getCatalogUri()Landroid/net/Uri;
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCatalogUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getCbftHTTPCSURI()Landroid/net/Uri;
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCbftHTTPCSURI:Landroid/net/Uri;

    return-object p0
.end method

.method public getChatEnabled()Z
    .locals 0

    .line 497
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatEnabled:Z

    return p0
.end method

.method public getChatRevokeTimer()I
    .locals 0

    .line 805
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatRevokeTimer:I

    return p0
.end method

.method public getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    return-object p0
.end method

.method public getConfFactoryUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 658
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mConfFctyUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getEnableFtAutoResumable()Z
    .locals 0

    .line 781
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableFtAutoResumable:Z

    return p0
.end method

.method public getExploderUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 662
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExploderUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getFtCancelMemoryFull()Z
    .locals 0

    .line 756
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCancelMemoryFull:Z

    return p0
.end method

.method public getFtDefaultMech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;
    .locals 0

    .line 630
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    return-object p0
.end method

.method public getFtEnabled()Z
    .locals 0

    .line 505
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    return p0
.end method

.method public getFtFallbackAllFail()Z
    .locals 0

    .line 760
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFallbackAllFail:Z

    return p0
.end method

.method public getFtHTTPExtraCSURI()Landroid/net/Uri;
    .locals 0

    .line 744
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHTTPExtraCSURI:Landroid/net/Uri;

    return-object p0
.end method

.method public getFtHttpCsPwd()Ljava/lang/String;
    .locals 0

    .line 626
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    return-object p0
.end method

.method public getFtHttpCsUri()Landroid/net/Uri;
    .locals 0

    .line 605
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getFtHttpCsUser()Ljava/lang/String;
    .locals 2

    .line 614
    const-string v0, "VZW"

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->get()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_1

    .line 615
    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    .line 616
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    invoke-interface {p0}, Lcom/sec/internal/helper/os/ITelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    .line 622
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    return-object p0
.end method

.method public getFtHttpDLUrl()Ljava/lang/String;
    .locals 0

    .line 609
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpDLUrl:Ljava/lang/String;

    return-object p0
.end method

.method public getFtHttpEnabled()Z
    .locals 0

    .line 509
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    return p0
.end method

.method public getFtWarnSize()J
    .locals 4

    .line 581
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtWarnSize:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getGlsPullEnabled()Z
    .locals 0

    .line 517
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPullEnabled:Z

    return p0
.end method

.method public getGlsPushEnabled()Z
    .locals 0

    .line 513
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPushEnabled:Z

    return p0
.end method

.method public getGroupChatEnabled()Z
    .locals 0

    .line 501
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatEnabled:Z

    return p0
.end method

.method public getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;
    .locals 0

    .line 525
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    return-object p0
.end method

.method public getImSessionStart()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;
    .locals 0

    .line 549
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    return-object p0
.end method

.method public getLegacyLatching()Z
    .locals 0

    .line 809
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mLegacyLatching:Z

    return p0
.end method

.method public getMaxAdhocGroupSize()I
    .locals 0

    .line 638
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    return p0
.end method

.method public getMaxConcurrentSession()I
    .locals 0

    .line 569
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxConcurrentSession:I

    return p0
.end method

.method public getMaxSize1To1()J
    .locals 2

    .line 573
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    return-wide v0
.end method

.method public getMaxSize1ToM()J
    .locals 2

    .line 577
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    return-wide v0
.end method

.method public getMaxSizeExtraFileTr()J
    .locals 4

    .line 740
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeExtraFileTr:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxSizeFileTr()J
    .locals 4

    .line 585
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMaxSizeFileTrIncoming()J
    .locals 4

    .line 589
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTrIncoming:J

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getMsgCapValidityTime()I
    .locals 0

    .line 713
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgCapValidityTime:I

    return p0
.end method

.method public getPagerModeLimit()I
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUp23AndUp24Profile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmSwitchOverSize:I

    return p0

    .line 816
    :cond_0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPagerModeLimit:I

    return p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 489
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    return p0
.end method

.method public getPlugInEnabled()Z
    .locals 0

    .line 833
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPlugInEnabled:Z

    return p0
.end method

.method public getRcsProfile()Ljava/lang/String;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    return-object p0
.end method

.method public getRealtimeUserAliasAuth()Z
    .locals 0

    .line 793
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRealtimeUserAliasAuth:Z

    return p0
.end method

.method public getReconnectGuardTimer()I
    .locals 0

    .line 797
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    return p0
.end method

.method public getRespondDisplay()Z
    .locals 3

    .line 766
    invoke-static {}, Lcom/sec/internal/ims/util/TapiServiceUtil;->isSupportTapi()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 767
    invoke-static {}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->getInstance()Lcom/sec/internal/ims/util/RcsSettingsUtils;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 769
    const-string v2, "ChatRespondToDisplayReports"

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/util/RcsSettingsUtils;->readParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    goto :goto_0

    .line 772
    :cond_0
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    .line 774
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/ims/settings/ImsProfile;->isRcsUpProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 775
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDisplayNotificationSwitch:I

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    .line 777
    :cond_3
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    return p0
.end method

.method public getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    return-object p0
.end method

.method public getSlmMaxMsgSize()J
    .locals 2

    .line 642
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmMaxMsgSize:J

    return-wide v0
.end method

.method public getTimerIdle()I
    .locals 0

    .line 561
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTimerIdle:I

    return p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 0

    .line 679
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAgent:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getUserAlias()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 683
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 684
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 686
    :cond_0
    :try_start_1
    const-string v0, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public getUserAliasEnabled()Z
    .locals 0

    .line 789
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    return p0
.end method

.method public declared-synchronized getUserAliasFromPreference(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 691
    :try_start_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getUserAlias(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isAggrImdnSupported()Z
    .locals 0

    .line 650
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsAggrImdnSupported:Z

    return p0
.end method

.method public isAutAccept()Z
    .locals 0

    .line 545
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAccept:Z

    return p0
.end method

.method public isAutAcceptGroupChat()Z
    .locals 0

    .line 553
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAcceptGroupChat:Z

    return p0
.end method

.method public isCfsTrigger()Z
    .locals 0

    .line 801
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCfsTrigger:Z

    return p0
.end method

.method public isEnableGroupChatListRetrieve()Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableGroupChatListRetrieve:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mConfFctyUri:Lcom/sec/ims/util/ImsUri;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFirstMsgInvite()Z
    .locals 0

    .line 557
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    return p0
.end method

.method public isFtAutAccept()Z
    .locals 0

    .line 601
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    return p0
.end method

.method public isFtHttpCapAlwaysOn()Z
    .locals 0

    .line 634
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    return p0
.end method

.method public isFtHttpOverDefaultPdn()Z
    .locals 0

    .line 785
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mfThttpDefaultPdn:Z

    return p0
.end method

.method public isFtHttpTrustAllCerts()Z
    .locals 0

    .line 752
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpTrustAllCerts:Z

    return p0
.end method

.method public isFtStAndFwEnabled()Z
    .locals 0

    .line 597
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtStAndFwEnabled:Z

    return p0
.end method

.method public isFtThumb()Z
    .locals 0

    .line 593
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    return p0
.end method

.method public isFullSFGroupChat()Z
    .locals 0

    .line 646
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsFullSFGroupChat:Z

    return p0
.end method

.method public isGroupChatFullStandFwd()Z
    .locals 0

    .line 537
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatFullStandFwd:Z

    return p0
.end method

.method public isImCapAlwaysOn()Z
    .locals 0

    .line 529
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    return p0
.end method

.method public isImWarnSf()Z
    .locals 0

    .line 533
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnSf:Z

    return p0
.end method

.method public isJoynIntegratedMessaging()Z
    .locals 0

    .line 709
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mJoynIntegratedMessaging:Z

    return p0
.end method

.method public isSmsFallbackAuth()Z
    .locals 0

    .line 541
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSmsFallbackAuth:Z

    return p0
.end method

.method public load(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 190
    const-string/jumbo v0, "root/*"

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-static {p1, v0, v1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->getConfigData(Landroid/content/Context;Ljava/lang/String;I)Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;

    move-result-object v0

    .line 192
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    .line 193
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->initRcsConfiguration(Landroid/content/Context;)V

    .line 194
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->loadGlobalSettings(Landroid/content/Context;)V

    .line 195
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->loadRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;)V

    .line 196
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->updateRcsConfiguration(Landroid/content/Context;Lcom/sec/internal/helper/RcsConfigurationHelper$ConfigData;)V

    .line 197
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->loadUserAlias(Landroid/content/Context;)V

    .line 200
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object p2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-virtual {p2, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->setFtAutAccept(Landroid/content/Context;IZ)V

    .line 201
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDefaultConst;->DEFAULT_CHAT_RESPOND_TO_DISPLAY_REPORTS:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iput-boolean p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    .line 202
    invoke-static {p1}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTelephony:Lcom/sec/internal/helper/os/ITelephonyManager;

    return-void
.end method

.method public loadUserAlias(Landroid/content/Context;)V
    .locals 1

    .line 481
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getUserAliasFromPreference(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    .line 484
    :cond_0
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setFtAutAccept(Landroid/content/Context;IZ)V
    .locals 2

    .line 666
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    .line 667
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getFtAutAccept(Landroid/content/Context;I)I

    move-result v1

    if-eq v1, p2, :cond_0

    .line 668
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->setFtAutAccept(Landroid/content/Context;II)V

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, p1, :cond_2

    if-nez p3, :cond_1

    .line 672
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAcceptOriginalConfig:Z

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    if-eq p2, p1, :cond_3

    if-ne p2, v1, :cond_4

    if-nez p3, :cond_4

    :cond_3
    move v0, v1

    .line 674
    :cond_4
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    :goto_0
    return-void
.end method

.method public declared-synchronized setUserAlias(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 695
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 697
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 699
    :cond_0
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    goto :goto_0

    .line 702
    :cond_1
    const-string v0, "ImConfig"

    const-string v1, "alias disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v1

    if-nez p2, :cond_2

    .line 705
    const-string p2, ""

    .line 704
    :cond_2
    invoke-virtual {v0, p1, v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImUserPreference;->setUserAlias(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 706
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImConfig(phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")[mRcsProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRcsProfile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupChatEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCsUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCsUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsUser:Ljava/lang/String;

    .line 851
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCsPwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCsPwd:Ljava/lang/String;

    .line 852
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpDLUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpDLUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSlmAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmAuth:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSmsFallbackAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSmsFallbackAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGlsPushEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPushEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGlsPullEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGlsPullEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPresSrvCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPresSrvCap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxAdhocGroupSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxAdhocGroupSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mConfFctyUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mConfFctyUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExploderUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExploderUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeferredMsgFuncUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDeferredMsgFuncUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImCapAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImWarnSf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnSf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupChatFullStandFwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatFullStandFwd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mGroupChatOnlyFStandFwd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mGroupChatOnlyFStandFwd:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImCapNonRcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImCapNonRcs:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImWarnIw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImWarnIw:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutAccept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mImSessionStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImSessionStart:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImSessionStart;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAutAcceptGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mAutAcceptGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFirstMsgInvite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFirstMsgInvite:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTimerIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mTimerIdle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxConcurrentSession="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxConcurrentSession:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMultiMediaChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMultiMediaChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSize1To1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1To1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSize1ToM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize1ToM:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSlmMaxMsgSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmMaxMsgSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mImMsgTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mImMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChatbotMsgTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatbotMsgTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeFileTr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtWarnSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtWarnSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtThumb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtThumb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtStAndFwEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtStAndFwEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtCapAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCapAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtAutAccept="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtAutAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtDefaultMech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtDefaultMech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$FtMech;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mJoynIntegratedMessaging="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mJoynIntegratedMessaging:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgCapValidityTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgCapValidityTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpCapAlwaysOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpCapAlwaysOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatRevokeTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mChatRevokeTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeFileTrIncoming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeFileTrIncoming:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpFallback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMessagingUX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMessagingUX:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingUX;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAliasEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAliasEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRealtimeUserAliasAuth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRealtimeUserAliasAuth:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMsgFbDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMsgFbDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mReconnectGuardTimer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mReconnectGuardTimer:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCfsTrigger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCfsTrigger:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMax1ToManyRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMax1ToManyRecipients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", m1ToManySelectedTech="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->m1ToManySelectedTech:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayNotificationSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mDisplayNotificationSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFtMax1ToManyRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtMax1ToManyRecipients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFtFbDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFbDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceAvailabilityInfoExpiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mServiceAvailabilityInfoExpiry:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPublicAccountAddr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPublicAccountAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxSizeExtraFileTr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mMaxSizeExtraFileTr:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHTTPExtraCSURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHTTPExtraCSURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCbftHTTPCSURI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCbftHTTPCSURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFullSFGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsFullSFGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsAggrImdnSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mIsAggrImdnSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mUserAlias:Ljava/lang/String;

    .line 915
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFtHttpTrustAllCerts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtHttpTrustAllCerts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtCancelMemoryFull="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtCancelMemoryFull:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFtFallbackAllFail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mFtFallbackAllFail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRespondDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mRespondDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableGroupChatListRetrieve="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableGroupChatListRetrieve:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableFtAutoResumable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mEnableFtAutoResumable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLegacyLatching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mLegacyLatching:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mExtAttImSlmMaxRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImSlmMaxRecipients:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExtAttImMSRPFtMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mExtAttImMSRPFtMaxSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mfThttpDefaultPdn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mfThttpDefaultPdn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPagerModeLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPagerModeLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBotPrivacyDisable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mBotPrivacyDisable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSwitchOverSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mSlmSwitchOverSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCatalogUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mCatalogUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPlugInEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->mPlugInEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
