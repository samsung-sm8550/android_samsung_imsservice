.class public Lcom/sec/internal/ims/util/ChatbotUriUtil;
.super Ljava/lang/Object;
.source "ChatbotUriUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ChatbotUriUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static hasChatbotRoleCapability(ILcom/sec/ims/util/ImsUri;)Z
    .locals 2

    .line 99
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 100
    sget-object v1, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-interface {v0, p1, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilities(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/options/CapabilityRefreshType;I)Lcom/sec/ims/options/Capabilities;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const/4 p0, 0x0

    return p0

    .line 105
    :cond_2
    invoke-static {p0}, Lcom/sec/internal/ims/rcs/RcsPolicyManager;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p0

    const-string/jumbo p1, "use_available_features_for_chatbot"

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 106
    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-virtual {v1, p0, p1}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(J)Z

    move-result p0

    goto :goto_1

    :cond_3
    sget-wide p0, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-virtual {v1, p0, p1}, Lcom/sec/ims/options/Capabilities;->hasFeature(J)Z

    move-result p0

    :goto_1
    return p0
.end method

.method public static hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 1

    .line 72
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;

    move-result-object v0

    invoke-static {p1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getImsiFromPhoneId(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->isChatbotRoleUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static hasChatbotUri(Ljava/util/Collection;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 45
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    .line 46
    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotRoleSession(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v1, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->isKnownBotServiceId(Lcom/sec/ims/util/ImsUri;I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, v1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotRoleCapability(ILcom/sec/ims/util/ImsUri;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static hasUriBotPlatform(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 54
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getUriType()Lcom/sec/ims/util/ImsUri$UriType;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/util/ImsUri$UriType;->SIP_URI:Lcom/sec/ims/util/ImsUri$UriType;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    const-string v1, "bot_service_id_prefix_list"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 63
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 64
    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static isChatbotUri(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 0

    .line 27
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/sec/internal/ims/util/ChatbotUriUtil;->hasChatbotUri(Ljava/util/Collection;I)Z

    move-result p0

    return p0
.end method

.method public static isKnownBotServiceId(Lcom/sec/ims/util/ImsUri;I)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 76
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->getInstance()Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/ims/util/ImsUri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/options/BotServiceIdTranslator;->contains(Ljava/lang/String;I)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static updateChatbotCapability(ILcom/sec/ims/util/ImsUri;Z)V
    .locals 19

    move/from16 v0, p0

    .line 80
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->isReady()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 81
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->get(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/options/Capabilities;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    return-void

    :cond_2
    if-eqz p2, :cond_3

    .line 87
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/options/Capabilities;->addFeature(J)V

    goto :goto_1

    .line 89
    :cond_3
    sget-wide v3, Lcom/sec/ims/options/Capabilities;->FEATURE_CHATBOT_ROLE:J

    invoke-virtual {v2, v3, v4}, Lcom/sec/ims/options/Capabilities;->removeFeature(J)V

    .line 91
    :goto_1
    sget-object v3, Lcom/sec/internal/ims/util/ChatbotUriUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addChatbotCapability : capabilities"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-interface {v1, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getCapabilitiesCache(I)Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getFeature()J

    move-result-wide v7

    .line 94
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getAvailableFeatures()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getPidf()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getLastSeen()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getTimestamp()Ljava/util/Date;

    move-result-object v14

    .line 95
    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getPAssertedId()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getExtFeatureAsJoinedString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getXbotVersion()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v2}, Lcom/sec/ims/options/Capabilities;->getExtendedMessagingVersion()Ljava/lang/String;

    move-result-object v18

    .line 93
    invoke-virtual/range {v5 .. v18}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->update(Lcom/sec/ims/util/ImsUri;JJLjava/lang/String;JLjava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
