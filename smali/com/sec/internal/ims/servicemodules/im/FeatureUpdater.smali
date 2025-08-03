.class public Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;
.super Ljava/lang/Object;
.source "FeatureUpdater.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FeatureUpdater"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFeatures:J

.field private mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private final mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    return-void
.end method

.method private isGlsEnabled(I)Z
    .locals 2

    .line 99
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v0, "geolocPushAuth"

    invoke-static {v0, p1}, Lcom/sec/internal/ims/util/ImsUtil;->getPathWithPhoneId(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sec/internal/helper/RcsConfigurationHelper;->readBoolParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    .line 100
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isEnableGls: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private updateChatBotFeatures()V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v1, "chatbot-communication"

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 167
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SESSION_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-ne v0, v1, :cond_2

    .line 168
    :cond_1
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 171
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->BOTH_SESSION_AND_SLM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 172
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatbotMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;->SLM_ONLY:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMsgTechConfig;

    if-ne v0, v1, :cond_4

    .line 173
    :cond_3
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_4
    return-void
.end method

.method private updateExtendedBotMsgFeature()V
    .locals 5

    .line 180
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 181
    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    invoke-static {v1, v2}, Lcom/sec/ims/presence/ServiceTuple;->getServiceTuple(J)Lcom/sec/ims/presence/ServiceTuple;

    move-result-object v1

    .line 182
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FEATURE_CHATBOT_EXTENDED_MSG enabled ver:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0.0"

    iget-object v1, v1, Lcom/sec/ims/presence/ServiceTuple;->version:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_CHAT_SESSION:J

    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_STANDALONE_MSG:J

    .line 186
    invoke-static {v0, v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityUtil;->hasFeature(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    :cond_1
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    goto :goto_1

    .line 184
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_EXTENDED_MSG:J

    not-long v2, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_3
    :goto_1
    return-void
.end method

.method private updateExtendedMessagingFeature()V
    .locals 5

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    const-string/jumbo v1, "support_extended_messaging"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SUPPORT_EXTENDED_MESSAGING enabled ver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v1, "^[0-9]*\\.?[0-9]+$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    :goto_0
    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 197
    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_EXTENDED_MESSAGING:J

    or-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 198
    invoke-static {v3, v4, v0}, Lcom/sec/ims/presence/ServiceTuple;->setServiceVersion(JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateFtFeatures()V
    .locals 6

    .line 131
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v1, "ft"

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isFtHttpOnlySupported(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    :cond_0
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtThumb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_THUMBNAIL:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v2, "ft_http"

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getFtHttpEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_HTTP:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_3
    return-void
.end method

.method private updateGlsFeatures()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v1, "gls"

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->isGlsEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGlsPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PUSH:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-eqz v0, :cond_1

    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEO_VIA_SMS:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGlsPullEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_GEOLOCATION_PULL:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_2
    :goto_0
    return-void
.end method

.method private updateImFeatures()V
    .locals 6

    .line 105
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string v1, "im"

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getGroupChatEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->SIMPLE_IM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v0, v2, :cond_1

    .line 110
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_SIMPLE_IM:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    goto :goto_0

    .line 112
    :cond_1
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT_CPM:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 116
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isGroupChatFullStandFwd()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFullSFGroupChat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    :cond_2
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_SF_GROUP_CHAT:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isJoynIntegratedMessaging()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->isDefaultMessageAppInUse()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 120
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v0, Lcom/sec/ims/options/Capabilities;->FEATURE_INTEGRATED_MSG:I

    int-to-long v4, v0

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v2}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object v0

    const-string/jumbo v2, "support_cancel_message"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 123
    iget-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v4, Lcom/sec/ims/options/Capabilities;->FEATURE_CANCEL_MESSAGE:J

    or-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 125
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "plug-in"

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v2, v3}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPlugInEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PLUG_IN:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_6
    :goto_1
    return-void
.end method

.method private updateMnoCustomizedFeatures()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget v1, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v1, v1

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_FT_VIA_SMS:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    sget-wide v1, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->isCustomizedFeature(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget-wide v2, Lcom/sec/ims/options/Capabilities;->FEATURE_PUBLIC_MSG:J

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_2
    return-void
.end method

.method private updateSlmFeatures()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "slm"

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    invoke-static {v0, v1, v2}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getSlmAuth()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;->DISABLED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$SlmAuth;

    if-eq v0, v1, :cond_0

    .line 89
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    sget v2, Lcom/sec/ims/options/Capabilities;->FEATURE_STANDALONE_MSG:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    :cond_0
    return-void
.end method


# virtual methods
.method public updateExtendedBotMsgFeature(IJ)J
    .locals 0

    .line 68
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    .line 69
    iput-wide p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 70
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateExtendedBotMsgFeature()V

    .line 71
    iget-wide p0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    return-wide p0
.end method

.method public updateFeatures(ILcom/sec/internal/ims/servicemodules/im/ImConfig;)J
    .locals 4

    .line 39
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "rcs"

    invoke-static {v0, v1, p1}, Lcom/sec/internal/helper/DmConfigHelper;->getImsSwitchValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    .line 47
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mPhoneId:I

    .line 48
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 49
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 52
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateImFeatures()V

    .line 53
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateFtFeatures()V

    .line 54
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateSlmFeatures()V

    .line 55
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateGlsFeatures()V

    .line 56
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateChatBotFeatures()V

    .line 57
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateMnoCustomizedFeatures()V

    .line 58
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateExtendedBotMsgFeature()V

    .line 59
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->updateExtendedMessagingFeature()V

    .line 61
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateFeatures: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    invoke-static {v0, v1}, Lcom/sec/ims/options/Capabilities;->dumpFeature(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-wide p0, p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->mFeatures:J

    return-wide p0

    .line 41
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/FeatureUpdater;->LOG_TAG:Ljava/lang/String;

    const-string p2, "RCS is disabled."

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 p0, 0x40000000    # 2.0f

    .line 42
    const-string p2, "none"

    invoke-static {p0, p1, p2}, Lcom/sec/internal/ims/util/ImsUtil;->listToDumpFormat(IILjava/lang/String;)V

    return-wide v2
.end method
