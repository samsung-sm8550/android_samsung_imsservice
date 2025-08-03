.class public Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
.super Ljava/lang/Object;
.source "UaProfile.java"


# instance fields
.field acb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field activeDataPhoneId:I

.field addHistinfo:Z

.field addMmtelCallComposerTag:Z

.field audioEngineType:I

.field authalg:Ljava/lang/String;

.field callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

.field capabilities:Lcom/sec/ims/options/Capabilities;

.field cmcExtContentSupport:Z

.field cmcProfile:Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

.field contactDisplayName:Ljava/lang/String;

.field controlDscp:I

.field curPani:Ljava/lang/String;

.field dbrTimer:I

.field displayName:Ljava/lang/String;

.field domain:Ljava/lang/String;

.field earlyMediaRtpTimeoutTimer:I

.field enableVerstat:Z

.field encrNullRoaming:Z

.field encralg:Ljava/lang/String;

.field excludePaniVowifiInitialRegi:Z

.field hashAlgoType:I

.field hostname:Ljava/lang/String;

.field iface:Ljava/lang/String;

.field ignoreDisplayName:Z

.field imMsgTech:Ljava/lang/String;

.field impi:Ljava/lang/String;

.field impu:Ljava/lang/String;

.field impuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field impuPreference:I

.field imsiBasedImpu:Ljava/lang/String;

.field instanceId:Ljava/lang/String;

.field isCdmalessEnabled:Z

.field isEnableGruu:Z

.field isEnableSessionId:Z

.field isEnableVcid:Z

.field isFullCodecOfferRequired:Z

.field isGcfConfigEnabled:Z

.field isMsrpBearerUsed:Z

.field isNsdsServiceEnabled:Z

.field isPttSupported:Z

.field isRcsAsJibe:Z

.field isRcsTelephonyFeatureTagRequired:Z

.field isSimMobility:Z

.field isSoftphoneEnabled:Z

.field isSubscribeReg:Z

.field isTcpGracefulShutdownEnabled:Z

.field isTransportNeeded:Z

.field isUpdateSaOnAirplaneModeSupported:Z

.field isUpdateSaOnStartSupported:Z

.field isVceConfigEnabled:Z

.field isXqEnabled:Z

.field isemergencysupport:Z

.field isenabletlsforsip:Z

.field isipsec:Z

.field isprecondenabled:Z

.field ispreconinitialsendrecv:Z

.field issipoutbound:Z

.field keepAliveFactor:I

.field lastPaniHeader:Ljava/lang/String;

.field mIsServerHeaderEnabled:Z

.field mIsWifiPreConditionEnabled:Z

.field mUseCompactHeader:Z

.field minSe:I

.field mno:Lcom/sec/internal/constants/Mno;

.field msrpTransType:Ljava/lang/String;

.field mssSize:I

.field mvno:Ljava/lang/String;

.field needCheckAllowedMethodForRefresh:Z

.field needPidfRat:I

.field needPidfSipMsg:I

.field needVolteRetryInNr:Z

.field netId:J

.field oipFromPreferred:Ljava/lang/String;

.field password:Ljava/lang/String;

.field pcscfIp:Ljava/lang/String;

.field pcscfPort:I

.field pdn:Ljava/lang/String;

.field phoneId:I

.field preferredId:Ljava/lang/String;

.field privacyHeaderRestricted:Ljava/lang/String;

.field profileId:I

.field qparam:I

.field rat:I

.field rcsProfile:I

.field realm:Ljava/lang/String;

.field regExpires:I

.field regRetryBaseTime:I

.field regRetryMaxTime:I

.field registeralgo:Ljava/lang/String;

.field remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

.field retryInviteOnTcpReset:Z

.field ringbackTimer:I

.field ringingTimer:I

.field scmVersion:I

.field selectTransportAfterTcpReset:Ljava/lang/String;

.field selfPort:I

.field send18xReliably:Z

.field sendByeForUssi:Z

.field serviceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field sessionexpires:I

.field sessionrefresher:Ljava/lang/String;

.field signDigestResponseEnabled:Z

.field singleRegiEnabled:Z

.field sipMobility:I

.field srvccVersion:I

.field sslType:I

.field subscriberTimer:I

.field support183ForIr92v9Precondition:Z

.field support199ProvisionalResponse:Z

.field supportAccessType:Z

.field supportAltitude:Z

.field supportB2cCallcomposerWithoutFeaturetag:I

.field supportDatachannelWithFeatureCaps:Z

.field supportDualRcs:Z

.field supportEct:Z

.field supportImsNotAvailable:Z

.field supportLtePreferred:Z

.field supportNetworkInitUssi:Z

.field supportReplaceMerge:Z

.field supportRfc6337ForDelayedOffer:Z

.field supportScribeDialogEvent:Z

.field supportUac:Z

.field supportUpgradePrecondition:Z

.field supportedGeolocationPhase:I

.field tcpRstUacErrorcode:I

.field tcpRstUasErrorcode:I

.field textMode:I

.field timer1:I

.field timer2:I

.field timer4:I

.field timerA:I

.field timerB:I

.field timerC:I

.field timerD:I

.field timerE:I

.field timerEpsFbWatchdog:I

.field timerF:I

.field timerG:I

.field timerH:I

.field timerI:I

.field timerJ:I

.field timerK:I

.field timerTS:I

.field transtype:Ljava/lang/String;

.field tryReregisterFromKeepalive:Z

.field uacSipList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field use183OnProgressIncoming:Z

.field use200offerWhenRemoteNotSupport100rel:Z

.field useKeepAlive:Z

.field usePemHeader:Z

.field useProvisionalResponse100rel:Z

.field useQ850causeOn480:Z

.field useSubcontactWhenResub:Z

.field userAgent:Ljava/lang/String;

.field uuid:Ljava/lang/String;

.field validLocationTime:I

.field videoCrbtSupportType:I

.field vowifi5gsaMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newBuilder()Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1

    .line 1097
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addService(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 1

    .line 1250
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 1251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/sec/internal/ims/core/handler/secims/UaProfile;
    .locals 1

    .line 1101
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/handler/secims/UaProfile;-><init>(Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)V

    return-object v0
.end method

.method public setAcb(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1779
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->acb:Ljava/util/List;

    return-object p0
.end method

.method public setActiveDataPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1529
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->activeDataPhoneId:I

    return-object p0
.end method

.method public setAddHistinfo(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1614
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addHistinfo:Z

    return-object p0
.end method

.method public setAddMmtelCallComposerTag(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1834
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addMmtelCallComposerTag:Z

    return-object p0
.end method

.method public setAudioEngineType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1474
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->audioEngineType:I

    return-object p0
.end method

.method public setAuthAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1215
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authalg:Ljava/lang/String;

    return-object p0
.end method

.method public setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1349
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-object p0
.end method

.method public setCmcExtContentSupport(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1894
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcExtContentSupport:Z

    return-object p0
.end method

.method public setCmcProfile(Lcom/sec/internal/ims/core/handler/secims/CmcProfile;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1899
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcProfile:Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    return-object p0
.end method

.method public setContactDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1324
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->contactDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public setControlDscp(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1180
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->controlDscp:I

    return-object p0
.end method

.method public setCurPani(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1479
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->curPani:Ljava/lang/String;

    return-object p0
.end method

.method public setDbrTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1564
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->dbrTimer:I

    return-object p0
.end method

.method public setDisplayName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1319
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->displayName:Ljava/lang/String;

    return-object p0
.end method

.method public setDomain(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1155
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public setEanbleVerstat(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1734
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->enableVerstat:Z

    return-object p0
.end method

.method public setEarlyMediaRtpTimeoutTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1604
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->earlyMediaRtpTimeoutTimer:I

    return-object p0
.end method

.method public setEmergencyProfile(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1240
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isemergencysupport:Z

    return-object p0
.end method

.method public setEncrAlg(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1220
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encralg:Ljava/lang/String;

    return-object p0
.end method

.method public setEncrNullRoaming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1844
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encrNullRoaming:Z

    return-object p0
.end method

.method public setExcludePaniVowifiInitialRegi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1809
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->excludePaniVowifiInitialRegi:Z

    return-object p0
.end method

.method public setGcfConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1489
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isGcfConfigEnabled:Z

    return-object p0
.end method

.method public setHashAlgoType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1814
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hashAlgoType:I

    return-object p0
.end method

.method public setHostname(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1225
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hostname:Ljava/lang/String;

    return-object p0
.end method

.method public setIface(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1110
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->iface:Ljava/lang/String;

    return-object p0
.end method

.method public setIgnoreDisplayName(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1784
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ignoreDisplayName:Z

    return-object p0
.end method

.method public setImMsgTech(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1344
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imMsgTech:Ljava/lang/String;

    return-object p0
.end method

.method public setImpi(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impi:Ljava/lang/String;

    return-object p0
.end method

.method public setImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1130
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impu:Ljava/lang/String;

    return-object p0
.end method

.method public setImpuPreference(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1864
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuPreference:I

    return-object p0
.end method

.method public setImsiBasedImpu(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1135
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imsiBasedImpu:Ljava/lang/String;

    return-object p0
.end method

.method public setInstanceId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1334
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public setIsCdmalessEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1434
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isCdmalessEnabled:Z

    return-object p0
.end method

.method public setIsEnableGruu(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1459
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableGruu:Z

    return-object p0
.end method

.method public setIsEnableSessionId(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1469
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableSessionId:Z

    return-object p0
.end method

.method public setIsEnableVcid(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1464
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableVcid:Z

    return-object p0
.end method

.method public setIsFullCodecOfferRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1289
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isFullCodecOfferRequired:Z

    return-object p0
.end method

.method public setIsIpSec(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1195
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isipsec:Z

    return-object p0
.end method

.method public setIsRcsAsJibe(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1904
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsAsJibe:Z

    return-object p0
.end method

.method public setIsRcsTelephonyFeatureTagRequired(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1284
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsTelephonyFeatureTagRequired:Z

    return-object p0
.end method

.method public setIsServerHeaderEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1205
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsServerHeaderEnabled:Z

    return-object p0
.end method

.method public setIsSimMobility(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1719
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSimMobility:Z

    return-object p0
.end method

.method public setIsSoftphoneEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1429
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSoftphoneEnabled:Z

    return-object p0
.end method

.method public setIsTcpGracefulShutdownEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1569
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTcpGracefulShutdownEnabled:Z

    return-object p0
.end method

.method public setIsTransportNeeded(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1554
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTransportNeeded:Z

    return-object p0
.end method

.method public setIsUpdateSaOnAirplaneModeSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1874
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnAirplaneModeSupported:Z

    return-object p0
.end method

.method public setIsUpdateSaOnStartSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1869
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnStartSupported:Z

    return-object p0
.end method

.method public setIsXqEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1539
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isXqEnabled:Z

    return-object p0
.end method

.method public setKeepAliveFactor(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1839
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->keepAliveFactor:I

    return-object p0
.end method

.method public setLastPaniHeader(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1694
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->lastPaniHeader:Ljava/lang/String;

    return-object p0
.end method

.method public setLinkedImpuList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1140
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuList:Ljava/util/List;

    return-object p0
.end method

.method public setMinSe(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1299
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->minSe:I

    return-object p0
.end method

.method public setMno(Lcom/sec/internal/constants/Mno;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1264
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public setMsrpBearerUsed(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1499
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isMsrpBearerUsed:Z

    return-object p0
.end method

.method public setMsrpTransType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1534
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->msrpTransType:Ljava/lang/String;

    return-object p0
.end method

.method public setMssSize(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1439
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mssSize:I

    return-object p0
.end method

.method public setMvnoName(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1269
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mvno:Ljava/lang/String;

    return-object p0
.end method

.method public setNeedCheckAllowedMethodForRefresh(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1829
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needCheckAllowedMethodForRefresh:Z

    return-object p0
.end method

.method public setNeedPidfRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1629
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfRat:I

    return-object p0
.end method

.method public setNeedPidfSipMsg(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1624
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfSipMsg:I

    return-object p0
.end method

.method public setNeedVolteRetryInNr(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1859
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needVolteRetryInNr:Z

    return-object p0
.end method

.method public setNetId(J)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1115
    iput-wide p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->netId:J

    return-object p0
.end method

.method public setNsdsServiceEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1494
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isNsdsServiceEnabled:Z

    return-object p0
.end method

.method public setOipFromPreferred(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1699
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->oipFromPreferred:Ljava/lang/String;

    return-object p0
.end method

.method public setOutboundSip(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1170
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->issipoutbound:Z

    return-object p0
.end method

.method public setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1259
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->capabilities:Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->password:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscfIp(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1230
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfIp:Ljava/lang/String;

    return-object p0
.end method

.method public setPcscfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1235
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfPort:I

    return-object p0
.end method

.method public setPdn(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1120
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pdn:Ljava/lang/String;

    return-object p0
.end method

.method public setPhoneId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1594
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->phoneId:I

    return-object p0
.end method

.method public setPrecondEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1274
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isprecondenabled:Z

    return-object p0
.end method

.method public setPrecondInitialSendrecv(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1279
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ispreconinitialsendrecv:Z

    return-object p0
.end method

.method public setPreferredId(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1145
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->preferredId:Ljava/lang/String;

    return-object p0
.end method

.method public setPrivacyHeaderRestricted(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1584
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->privacyHeaderRestricted:Ljava/lang/String;

    return-object p0
.end method

.method public setProfileId(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1105
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->profileId:I

    return-object p0
.end method

.method public setPttSupported(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1759
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isPttSupported:Z

    return-object p0
.end method

.method public setQparam(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1175
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->qparam:I

    return-object p0
.end method

.method public setRat(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1559
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rat:I

    return-object p0
.end method

.method public setRcsProfile(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1549
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rcsProfile:I

    return-object p0
.end method

.method public setRealm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1339
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->realm:Ljava/lang/String;

    return-object p0
.end method

.method public setRegExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1309
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regExpires:I

    return-object p0
.end method

.method public setRegRetryBaseTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1739
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryBaseTime:I

    return-object p0
.end method

.method public setRegRetryMaxTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1744
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryMaxTime:I

    return-object p0
.end method

.method public setRegiAlgorithm(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->registeralgo:Ljava/lang/String;

    return-object p0
.end method

.method public setRemoteUriType(Lcom/sec/ims/util/ImsUri$UriType;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1150
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method public setRetryInviteOnTcpReset(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1729
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->retryInviteOnTcpReset:Z

    return-object p0
.end method

.method public setRingbackTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1444
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringbackTimer:I

    return-object p0
.end method

.method public setRingingTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1449
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringingTimer:I

    return-object p0
.end method

.method public setScmVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1524
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->scmVersion:I

    return-object p0
.end method

.method public setSelectTransportAfterTcpReset(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1704
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selectTransportAfterTcpReset:Ljava/lang/String;

    return-object p0
.end method

.method public setSelfPort(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1519
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selfPort:I

    return-object p0
.end method

.method public setSend18xReliably(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1774
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->send18xReliably:Z

    return-object p0
.end method

.method public setSendByeForUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1794
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sendByeForUssi:Z

    return-object p0
.end method

.method public setServiceList(Ljava/util/Set;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1245
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    return-object p0
.end method

.method public setSessionExpires(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1294
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionexpires:I

    return-object p0
.end method

.method public setSessionRefresher(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1304
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionrefresher:Ljava/lang/String;

    return-object p0
.end method

.method public setSignDigestResponseEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1889
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->signDigestResponseEnabled:Z

    return-object p0
.end method

.method public setSingleRegiEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1824
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->singleRegiEnabled:Z

    return-object p0
.end method

.method public setSipMobility(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1454
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sipMobility:I

    return-object p0
.end method

.method public setSrvccVersion(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1709
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->srvccVersion:I

    return-object p0
.end method

.method public setSslType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1764
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sslType:I

    return-object p0
.end method

.method public setSubscribeDialogEvent(Ljava/lang/Boolean;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1714
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportScribeDialogEvent:Z

    return-object p0
.end method

.method public setSubscribeReg(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1509
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSubscribeReg:Z

    return-object p0
.end method

.method public setSubscriberTimer(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1504
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->subscriberTimer:I

    return-object p0
.end method

.method public setSupport183ForIr92v9Precondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1664
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support183ForIr92v9Precondition:Z

    return-object p0
.end method

.method public setSupport199ProvisionalResponse(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1769
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support199ProvisionalResponse:Z

    return-object p0
.end method

.method public setSupportAccessType(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1689
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAccessType:Z

    return-object p0
.end method

.method public setSupportAltitude(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1634
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAltitude:Z

    return-object p0
.end method

.method public setSupportB2cCallcomposerWithoutFeaturetag(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1884
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportB2cCallcomposerWithoutFeaturetag:I

    return-object p0
.end method

.method public setSupportDatachannelWithFeatureCaps(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1879
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDatachannelWithFeatureCaps:Z

    return-object p0
.end method

.method public setSupportDualRcs(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1749
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualRcs:Z

    return-object p0
.end method

.method public setSupportEct(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1599
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportEct:Z

    return-object p0
.end method

.method public setSupportImsNotAvailable(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1669
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportImsNotAvailable:Z

    return-object p0
.end method

.method public setSupportLtePreferred(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1674
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportLtePreferred:Z

    return-object p0
.end method

.method public setSupportNetworkInitUssi(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1789
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportNetworkInitUssi:Z

    return-object p0
.end method

.method public setSupportReplaceMerge(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1684
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportReplaceMerge:Z

    return-object p0
.end method

.method public setSupportRfc6337ForDelayedOffer(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1799
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportRfc6337ForDelayedOffer:Z

    return-object p0
.end method

.method public setSupportUac(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1849
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUac:Z

    return-object p0
.end method

.method public setSupportUpgradePrecondition(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1679
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUpgradePrecondition:Z

    return-object p0
.end method

.method public setSupportedGeolocationPhase(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1619
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportedGeolocationPhase:I

    return-object p0
.end method

.method public setTcpRstUacErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1574
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUacErrorcode:I

    return-object p0
.end method

.method public setTcpRstUasErrorcode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1579
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUasErrorcode:I

    return-object p0
.end method

.method public setTextMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1544
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->textMode:I

    return-object p0
.end method

.method public setTimer1(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1354
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer1:I

    return-object p0
.end method

.method public setTimer2(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1359
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer2:I

    return-object p0
.end method

.method public setTimer4(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1364
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer4:I

    return-object p0
.end method

.method public setTimerA(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1369
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerA:I

    return-object p0
.end method

.method public setTimerB(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1374
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerB:I

    return-object p0
.end method

.method public setTimerC(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1379
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerC:I

    return-object p0
.end method

.method public setTimerD(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1384
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerD:I

    return-object p0
.end method

.method public setTimerE(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1389
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerE:I

    return-object p0
.end method

.method public setTimerEpsFbWatchdog(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1609
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerEpsFbWatchdog:I

    return-object p0
.end method

.method public setTimerF(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1394
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerF:I

    return-object p0
.end method

.method public setTimerG(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1399
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerG:I

    return-object p0
.end method

.method public setTimerH(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1404
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerH:I

    return-object p0
.end method

.method public setTimerI(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1409
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerI:I

    return-object p0
.end method

.method public setTimerJ(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1414
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerJ:I

    return-object p0
.end method

.method public setTimerK(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1419
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerK:I

    return-object p0
.end method

.method public setTimerTS(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1424
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerTS:I

    return-object p0
.end method

.method public setTransportType(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1185
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->transtype:Ljava/lang/String;

    return-object p0
.end method

.method public setTryReregisterFromKeepalive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1754
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tryReregisterFromKeepalive:Z

    return-object p0
.end method

.method public setUacSipList(Ljava/util/List;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;"
        }
    .end annotation

    .line 1854
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uacSipList:Ljava/util/List;

    return-object p0
.end method

.method public setUse183OnProgressIncoming(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1654
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use183OnProgressIncoming:Z

    return-object p0
.end method

.method public setUse200offerWhenRemoteNotSupport100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1804
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use200offerWhenRemoteNotSupport100rel:Z

    return-object p0
.end method

.method public setUseCompactHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1210
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mUseCompactHeader:Z

    return-object p0
.end method

.method public setUseKeepAlive(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1514
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useKeepAlive:Z

    return-object p0
.end method

.method public setUsePemHeader(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1589
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->usePemHeader:Z

    return-object p0
.end method

.method public setUseProvisionalResponse100rel(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1649
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useProvisionalResponse100rel:Z

    return-object p0
.end method

.method public setUseQ850causeOn480(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1659
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useQ850causeOn480:Z

    return-object p0
.end method

.method public setUseSubcontactWhenResub(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1644
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useSubcontactWhenResub:Z

    return-object p0
.end method

.method public setUseTls(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1190
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isenabletlsforsip:Z

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1314
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public setUuid(Ljava/lang/String;)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1329
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public setValidLocationTime(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1639
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->validLocationTime:I

    return-object p0
.end method

.method public setVceConfigEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1484
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isVceConfigEnabled:Z

    return-object p0
.end method

.method public setVideoCrbtSupportType(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1724
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->videoCrbtSupportType:I

    return-object p0
.end method

.method public setVowifi5gsaMode(I)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1819
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->vowifi5gsaMode:I

    return-object p0
.end method

.method public setWifiPreConditionEnabled(Z)Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;
    .locals 0

    .line 1200
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsWifiPreConditionEnabled:Z

    return-object p0
.end method
