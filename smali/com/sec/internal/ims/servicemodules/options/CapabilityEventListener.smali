.class public Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;
.super Ljava/lang/Object;
.source "CapabilityEventListener.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityEventListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CapabilityEventListener"


# instance fields
.field private mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

.field private mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCapabilityDiscovery(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;)Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    return-object p0
.end method

.method constructor <init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 31
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onCapabilityAndAvailabilityPublished(II)V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->notifyEABServiceAdvertiseResult(II)V

    return-void
.end method

.method public onCapabilityUpdate(Ljava/util/List;JLcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;J",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p1, "URIS"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 38
    const-string p1, "PIDF"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string p1, "FEATURES"

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 40
    const-string p1, "XBOTVERSION"

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string p1, "EXTENDEDMESSAGINGVERSION"

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string p1, "PHONEID"

    invoke-virtual {v0, p1, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 44
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, -0x1

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 43
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onCapabilityUpdate(Ljava/util/List;Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/CapabilityConstants$CapExResult;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;",
            ")V"
        }
    .end annotation

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPAssertedIdSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 51
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v3, "URIS"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 53
    const-string v2, "PIDF"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string p3, "FEATURES"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v2

    invoke-virtual {v1, p3, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    const-string p3, "LASTSEEN"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getLastSeen()I

    move-result v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string p3, "PHONEID"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string p3, "EXTFEATURE"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getExtFeature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p3, "ISTOKENUSED"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getIsTokenUsed()Z

    move-result v2

    invoke-virtual {v1, p3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    const-string p3, "PAID"

    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 60
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getfeatureTags()Ljava/util/List;

    move-result-object p3

    check-cast p3, Ljava/util/ArrayList;

    const-string v0, "CAPA_TAGS"

    invoke-virtual {v1, v0, p3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 61
    const-string p3, "REASON_HDR"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getReasonHdr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p3, "RESP_CODE"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getRespCode()I

    move-result v0

    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 63
    const-string p3, "IS_RESPONSE"

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isResponse()Z

    move-result v0

    invoke-virtual {v1, p3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 65
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v0, -0x1

    const/4 v2, 0x4

    invoke-virtual {p3, v2, p2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 64
    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 66
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->isResponse()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 68
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p3

    invoke-static {p2, p3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isImsSingleRegiRequired(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result p3

    invoke-static {p2, p3}, Lcom/sec/internal/ims/rcs/util/RcsUtils;->isSrRcsOptionsEnabled(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 71
    new-instance p2, Ljava/util/HashSet;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatureList()Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 72
    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatureList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    invoke-static {}, Lcom/sec/internal/google/SecImsNotifier;->getInstance()Lcom/sec/internal/google/SecImsNotifier;

    move-result-object p3

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v1}, Lcom/sec/ims/util/ImsUri;->uri()Lgov/nist/javax/sip/address/GenericURI;

    move-result-object v1

    invoke-virtual {v1}, Lgov/nist/javax/sip/address/GenericURI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;

    invoke-direct {v2, p0, p4, p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener$1;-><init>(Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;Ljava/util/List;)V

    invoke-virtual {p3, v0, v1, p2, v2}, Lcom/sec/internal/google/SecImsNotifier;->onRemoteCapabilityRequest(ILandroid/net/Uri;Ljava/util/Set;Landroid/telephony/ims/stub/CapabilityExchangeEventListener$OptionsRequestCallback;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getFeatures()J

    move-result-wide v5

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getTxId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getPhoneId()I

    move-result v8

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/options/OptionsEvent;->getExtFeature()Ljava/lang/String;

    move-result-object v9

    move-object v4, p1

    invoke-virtual/range {v3 .. v9}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->prepareResponse(Ljava/util/List;JLjava/lang/String;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMediaReady(ZZI)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMediaReady: ready "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isPresence "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CapabilityEventListener"

    invoke-static {v0, p3, p1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 102
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityConfig(I)Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/options/CapabilityConfig;->usePresence()Z

    move-result p1

    if-eq p1, p2, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 107
    invoke-interface {p1, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 109
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 108
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public onPollingRequested(ZI)V
    .locals 2

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPollingRequested: success "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CapabilityEventListener"

    invoke-static {v1, p2, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-eqz p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getPollingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    .line 127
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->getCapabilityControl(I)Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityExchangeControl;->isReadyToRequest(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->startPollingTimer(I)V

    goto :goto_0

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/CapabilityEventListener;->mCapabilityDiscovery:Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/CapabilityDiscoveryModule;->stopPollingTimer(I)V

    :cond_1
    :goto_0
    return-void
.end method
