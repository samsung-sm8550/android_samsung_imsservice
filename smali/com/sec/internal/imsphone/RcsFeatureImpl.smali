.class public Lcom/sec/internal/imsphone/RcsFeatureImpl;
.super Landroid/telephony/ims/feature/RcsFeature;
.source "RcsFeatureImpl.java"


# static fields
.field private static final CAP_TO_SERVICE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "RcsFeatureImpl"

.field private static final REG_TECH_TO_NET_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

.field private mIsReady:Z

.field mPhoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v1, 0x3

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 66
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->CAP_TO_SERVICE:Ljava/util/Map;

    .line 71
    const-string/jumbo v2, "options"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string/jumbo v1, "presence"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/Executor;)V
    .locals 0

    .line 46
    invoke-direct {p0, p2}, Landroid/telephony/ims/feature/RcsFeature;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p2, 0x0

    .line 41
    iput-boolean p2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mIsReady:Z

    const/4 p2, 0x0

    .line 42
    iput-object p2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 47
    iput p1, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 6

    .line 96
    iget p2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v0, "changeEnabledCapabilities"

    const-string v1, "RcsFeatureImpl"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/RcsFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;

    move-result-object p2

    .line 104
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 105
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->removeCapabilities(I)V

    .line 106
    iget v3, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeEnabledCapabilities: disabled capa = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 110
    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;->addCapabilities(I)V

    .line 111
    iget v2, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEnabledCapabilities: enabled capa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_2
    invoke-virtual {p0, p2}, Landroid/telephony/ims/feature/RcsFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/RcsFeature$RcsImsCapabilities;)V

    return-void
.end method

.method public createCapabilityExchangeImpl(Landroid/telephony/ims/stub/CapabilityExchangeEventListener;)Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;
    .locals 3

    .line 119
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string v1, "createCapabilityExchangeImpl"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 120
    iput-object p1, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    .line 121
    new-instance p1, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;

    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    invoke-direct {p1, p0}, Lcom/sec/internal/imsphone/RcsCapabilityExchangeImpl;-><init>(I)V

    return-object p1
.end method

.method public destroyCapabilityExchangeImpl(Landroid/telephony/ims/stub/RcsCapabilityExchangeImplBase;)V
    .locals 1

    .line 126
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string p1, "destroyCapabilityExchangeImpl"

    const-string v0, "RcsFeatureImpl"

    invoke-static {v0, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public isReady()Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mIsReady:Z

    return p0
.end method

.method public onFeatureReady()V
    .locals 1

    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mIsReady:Z

    const/4 v0, 0x2

    .line 58
    invoke-virtual {p0, v0}, Landroid/telephony/ims/feature/RcsFeature;->setFeatureState(I)V

    return-void
.end method

.method public onPublishUpdated(ILjava/lang/String;ILjava/lang/String;)V
    .locals 3

    .line 156
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo v1, "onPublishUpdated"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_2

    .line 159
    new-instance v0, Landroid/telephony/ims/SipDetails$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/telephony/ims/SipDetails$Builder;-><init>(I)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    const-string v1, ""

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseCode(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    move-object p4, v1

    .line 161
    :goto_1
    invoke-virtual {p1, p3, p4}, Landroid/telephony/ims/SipDetails$Builder;->setSipResponseReasonHeader(ILjava/lang/String;)Landroid/telephony/ims/SipDetails$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Landroid/telephony/ims/SipDetails$Builder;->build()Landroid/telephony/ims/SipDetails;

    move-result-object p1

    .line 163
    iget-object p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    invoke-interface {p0, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onPublishUpdated(Landroid/telephony/ims/SipDetails;)V

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    .line 165
    :cond_2
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo p1, "onPublishUpdated : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/telephony/ims/ImsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 168
    :goto_2
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;",
            ")V"
        }
    .end annotation

    .line 173
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo v1, "onRemoteCapabilityRequest"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1, p2, p3}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRemoteCapabilityRequest(Landroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 178
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo p1, "onRemoteCapabilityRequest : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onRequestPublishCapabilities(I)V
    .locals 3

    .line 130
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onRequestPublishCapabilities: publishTriggerType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onRequestPublishCapabilities(I)V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 135
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo p1, "onRequestPublishCapabilities : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onUnPublish()V
    .locals 3

    .line 143
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo v1, "onUnpublish"

    const-string v2, "RcsFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mCapabilityExchangeEventListener:Landroid/telephony/ims/stub/CapabilityExchangeEventListener;

    if-eqz v0, :cond_0

    .line 146
    invoke-interface {v0}, Landroid/telephony/ims/stub/CapabilityExchangeEventListener;->onUnpublish()V

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    .line 148
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo v0, "onUnpublish : mCapabilityExchangeEventListener is Null"

    invoke-static {v2, p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 151
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/ImsException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 5

    .line 77
    const-string/jumbo v0, "unknown"

    iget v1, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    const-string/jumbo v2, "queryCapabilityConfiguration"

    const-string v3, "RcsFeatureImpl"

    invoke-static {v3, v1, v2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 80
    :try_start_0
    sget-object v2, Lcom/sec/internal/imsphone/RcsFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, p2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 81
    sget-object v2, Lcom/sec/internal/imsphone/RcsFeatureImpl;->CAP_TO_SERVICE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 82
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 86
    :cond_0
    iget v0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 88
    iget p0, p0, Lcom/sec/internal/imsphone/RcsFeatureImpl;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "queryCapabilityConfiguration: failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method
