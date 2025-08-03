.class public Lcom/sec/internal/ims/core/handler/secims/UaProfile;
.super Ljava/lang/Object;
.source "UaProfile.java"


# static fields
.field public static final TEXT_MODE_CS_TTY:I = 0x1

.field public static final TEXT_MODE_NONE:I = 0x0

.field public static final TEXT_MODE_PS_TTY:I = 0x2

.field public static final TEXT_MODE_RTT:I = 0x3


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

.field impuPreference:I

.field imsiBasedImpu:Ljava/lang/String;

.field instanceId:Ljava/lang/String;

.field isCdmalessEnabled:Z

.field isEmergencyProfile:Z

.field isEnableGruu:Z

.field isEnableSessionId:Z

.field isEnableVcid:Z

.field isFullCodecOfferRequired:Z

.field isGcfConfigEnabled:Z

.field isMsrpBearerUsed:Z

.field isNsdsServiceEnabled:Z

.field isPrecondEnabled:Z

.field isPrecondInitialSendrecv:Z

.field isPttSupported:Z

.field isRcsTelephonyFeatureTagRequired:Z

.field isSimMobility:Z

.field isSoftphoneEnabled:Z

.field isSubscribeReg:Z

.field isTcpGracefulShutdownEnabled:Z

.field isTlsEnabled:Z

.field isTransportNeeded:Z

.field isUpdateSaOnAirplaneModeSupported:Z

.field isUpdateSaOnStartSupported:Z

.field isVceConfigEnabled:Z

.field isXqEnabled:Z

.field isipsec:Z

.field issipoutbound:Z

.field keepAliveFactor:I

.field lastPaniHeader:Ljava/lang/String;

.field linkedImpuList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIsRcsAsJibe:Z

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

.field sessionExpires:I

.field sessionRefresher:Ljava/lang/String;

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

.field supportSubscribeDialogEvent:Z

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
.method public constructor <init>(Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;)V
    .locals 2

    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 754
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->profileId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->profileId:I

    .line 755
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->iface:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    .line 756
    iget-wide v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->netId:J

    iput-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->netId:J

    .line 757
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pdn:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    .line 758
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impi:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    .line 759
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impu:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    .line 760
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imsiBasedImpu:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    .line 761
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    .line 762
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->domain:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    .line 763
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->password:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    .line 764
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->issipoutbound:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    .line 765
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->qparam:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    .line 766
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->controlDscp:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->controlDscp:I

    .line 767
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->transtype:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    .line 768
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isemergencysupport:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    .line 769
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isipsec:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    .line 770
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsWifiPreConditionEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    .line 771
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mIsServerHeaderEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsServerHeaderEnabled:Z

    .line 772
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mUseCompactHeader:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    .line 773
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encralg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    .line 774
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->authalg:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    .line 775
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isenabletlsforsip:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTlsEnabled:Z

    .line 776
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->registeralgo:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    .line 777
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->preferredId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->preferredId:Ljava/lang/String;

    .line 778
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    .line 779
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mno:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    .line 780
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mvno:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mvno:Ljava/lang/String;

    .line 782
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hostname:Ljava/lang/String;

    .line 783
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfIp:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    .line 784
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->pcscfPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfPort:I

    .line 785
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->serviceList:Ljava/util/Set;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    .line 787
    :try_start_0
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->capabilities:Lcom/sec/ims/options/Capabilities;

    invoke-virtual {v0}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 789
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    .line 791
    :goto_0
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isprecondenabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondEnabled:Z

    .line 792
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ispreconinitialsendrecv:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPrecondInitialSendrecv:Z

    .line 793
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsTelephonyFeatureTagRequired:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isRcsTelephonyFeatureTagRequired:Z

    .line 794
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isFullCodecOfferRequired:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isFullCodecOfferRequired:Z

    .line 795
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionexpires:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionExpires:I

    .line 796
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->minSe:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->minSe:I

    .line 797
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sessionrefresher:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sessionRefresher:Ljava/lang/String;

    .line 798
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regExpires:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regExpires:I

    .line 799
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->userAgent:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    .line 800
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->displayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->displayName:Ljava/lang/String;

    .line 801
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->contactDisplayName:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->contactDisplayName:Ljava/lang/String;

    .line 802
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    .line 803
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->instanceId:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    .line 804
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->realm:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->realm:Ljava/lang/String;

    .line 805
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->imMsgTech:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    .line 806
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    .line 807
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcProfile:Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcProfile:Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    .line 808
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->mssSize:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mssSize:I

    .line 809
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sipMobility:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sipMobility:I

    .line 811
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer1:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer1:I

    .line 812
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer2:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer2:I

    .line 813
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timer4:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer4:I

    .line 814
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerA:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerA:I

    .line 815
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerB:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerB:I

    .line 816
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerC:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerC:I

    .line 817
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerD:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerD:I

    .line 818
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerE:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerE:I

    .line 819
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerF:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerF:I

    .line 820
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerG:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerG:I

    .line 821
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerH:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerH:I

    .line 822
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerI:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerI:I

    .line 823
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerJ:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerJ:I

    .line 824
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerK:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerK:I

    .line 825
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerTS:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerTS:I

    .line 827
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSoftphoneEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSoftphoneEnabled:Z

    .line 828
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isCdmalessEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isCdmalessEnabled:Z

    .line 829
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringbackTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    .line 830
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ringingTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    .line 831
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableGruu:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableGruu:Z

    .line 832
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableVcid:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableVcid:Z

    .line 833
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isEnableSessionId:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableSessionId:Z

    .line 834
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->audioEngineType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->audioEngineType:I

    .line 835
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->curPani:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    .line 836
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isVceConfigEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isVceConfigEnabled:Z

    .line 837
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isGcfConfigEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isGcfConfigEnabled:Z

    .line 838
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isNsdsServiceEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isNsdsServiceEnabled:Z

    .line 839
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isMsrpBearerUsed:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isMsrpBearerUsed:Z

    .line 840
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->subscriberTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->subscriberTimer:I

    .line 841
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSubscribeReg:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    .line 842
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useKeepAlive:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useKeepAlive:Z

    .line 843
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selfPort:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selfPort:I

    .line 844
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->scmVersion:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->scmVersion:I

    .line 845
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->activeDataPhoneId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->activeDataPhoneId:I

    .line 846
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->msrpTransType:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->msrpTransType:Ljava/lang/String;

    .line 847
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isXqEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    .line 848
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->textMode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->textMode:I

    .line 849
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rcsProfile:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rcsProfile:I

    .line 850
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTransportNeeded:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTransportNeeded:Z

    .line 851
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->rat:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rat:I

    .line 852
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->dbrTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->dbrTimer:I

    .line 853
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isTcpGracefulShutdownEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTcpGracefulShutdownEnabled:Z

    .line 854
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUacErrorcode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUacErrorcode:I

    .line 855
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tcpRstUasErrorcode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUasErrorcode:I

    .line 856
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->privacyHeaderRestricted:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->privacyHeaderRestricted:Ljava/lang/String;

    .line 857
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->usePemHeader:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->usePemHeader:Z

    .line 858
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->phoneId:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->phoneId:I

    .line 859
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportEct:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportEct:Z

    .line 860
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->earlyMediaRtpTimeoutTimer:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->earlyMediaRtpTimeoutTimer:I

    .line 861
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->timerEpsFbWatchdog:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerEpsFbWatchdog:I

    .line 862
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addHistinfo:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addHistinfo:Z

    .line 863
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportedGeolocationPhase:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportedGeolocationPhase:I

    .line 864
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfSipMsg:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfSipMsg:I

    .line 865
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needPidfRat:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfRat:I

    .line 866
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAltitude:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAltitude:Z

    .line 867
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->validLocationTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->validLocationTime:I

    .line 868
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useProvisionalResponse100rel:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useProvisionalResponse100rel:Z

    .line 869
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use183OnProgressIncoming:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use183OnProgressIncoming:Z

    .line 870
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useQ850causeOn480:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useQ850causeOn480:Z

    .line 871
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support183ForIr92v9Precondition:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support183ForIr92v9Precondition:Z

    .line 872
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportImsNotAvailable:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportImsNotAvailable:Z

    .line 873
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportLtePreferred:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportLtePreferred:Z

    .line 874
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->useSubcontactWhenResub:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useSubcontactWhenResub:Z

    .line 875
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUpgradePrecondition:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUpgradePrecondition:Z

    .line 876
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportReplaceMerge:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportReplaceMerge:Z

    .line 877
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportAccessType:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    .line 878
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->lastPaniHeader:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->lastPaniHeader:Ljava/lang/String;

    .line 879
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->oipFromPreferred:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->oipFromPreferred:Ljava/lang/String;

    .line 880
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->selectTransportAfterTcpReset:Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selectTransportAfterTcpReset:Ljava/lang/String;

    .line 881
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->srvccVersion:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->srvccVersion:I

    .line 882
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportScribeDialogEvent:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportSubscribeDialogEvent:Z

    .line 883
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isSimMobility:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    .line 884
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->videoCrbtSupportType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->videoCrbtSupportType:I

    .line 885
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->retryInviteOnTcpReset:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->retryInviteOnTcpReset:Z

    .line 886
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->enableVerstat:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->enableVerstat:Z

    .line 887
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryBaseTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryBaseTime:I

    .line 888
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->regRetryMaxTime:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryMaxTime:I

    .line 889
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDualRcs:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualRcs:Z

    .line 890
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->tryReregisterFromKeepalive:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tryReregisterFromKeepalive:Z

    .line 891
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isPttSupported:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPttSupported:Z

    .line 892
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sslType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sslType:I

    .line 893
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->support199ProvisionalResponse:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support199ProvisionalResponse:Z

    .line 894
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->send18xReliably:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->send18xReliably:Z

    .line 895
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->acb:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    .line 896
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->ignoreDisplayName:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ignoreDisplayName:Z

    .line 897
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportNetworkInitUssi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportNetworkInitUssi:Z

    .line 898
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->sendByeForUssi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sendByeForUssi:Z

    .line 899
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportRfc6337ForDelayedOffer:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportRfc6337ForDelayedOffer:Z

    .line 900
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->use200offerWhenRemoteNotSupport100rel:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use200offerWhenRemoteNotSupport100rel:Z

    .line 901
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->hashAlgoType:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hashAlgoType:I

    .line 902
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->vowifi5gsaMode:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->vowifi5gsaMode:I

    .line 903
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->excludePaniVowifiInitialRegi:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->excludePaniVowifiInitialRegi:Z

    .line 904
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->singleRegiEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->singleRegiEnabled:Z

    .line 905
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needCheckAllowedMethodForRefresh:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needCheckAllowedMethodForRefresh:Z

    .line 906
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->addMmtelCallComposerTag:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addMmtelCallComposerTag:Z

    .line 907
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->keepAliveFactor:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->keepAliveFactor:I

    .line 908
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->encrNullRoaming:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encrNullRoaming:Z

    .line 909
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportUac:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUac:Z

    .line 910
    iget-object v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->uacSipList:Ljava/util/List;

    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uacSipList:Ljava/util/List;

    .line 911
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->needVolteRetryInNr:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needVolteRetryInNr:Z

    .line 912
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->impuPreference:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impuPreference:I

    .line 913
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnStartSupported:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isUpdateSaOnStartSupported:Z

    .line 914
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isUpdateSaOnAirplaneModeSupported:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isUpdateSaOnAirplaneModeSupported:Z

    .line 915
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportDatachannelWithFeatureCaps:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDatachannelWithFeatureCaps:Z

    .line 916
    iget v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->supportB2cCallcomposerWithoutFeaturetag:I

    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportB2cCallcomposerWithoutFeaturetag:I

    .line 917
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->signDigestResponseEnabled:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->signDigestResponseEnabled:Z

    .line 918
    iget-boolean v0, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->cmcExtContentSupport:Z

    iput-boolean v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcExtContentSupport:Z

    .line 919
    iget-boolean p1, p1, Lcom/sec/internal/ims/core/handler/secims/UaProfile$Builder;->isRcsAsJibe:Z

    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsRcsAsJibe:Z

    return-void
.end method


# virtual methods
.method public getAcb()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 648
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->acb:Ljava/util/List;

    return-object p0
.end method

.method public getAddHistinfo()Z
    .locals 0

    .line 528
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addHistinfo:Z

    return p0
.end method

.method public getAudioEngineType()I
    .locals 0

    .line 452
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->audioEngineType:I

    return p0
.end method

.method public getAuthalg()Ljava/lang/String;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->authalg:Ljava/lang/String;

    return-object p0
.end method

.method public getCallProfile()Lcom/sec/internal/ims/core/handler/secims/CallProfile;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-object p0
.end method

.method public getCmcExtContentSupport()Z
    .locals 0

    .line 747
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcExtContentSupport:Z

    return p0
.end method

.method public getCmcProfile()Lcom/sec/internal/ims/core/handler/secims/CmcProfile;
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->cmcProfile:Lcom/sec/internal/ims/core/handler/secims/CmcProfile;

    return-object p0
.end method

.method public getControlDscp()I
    .locals 0

    .line 256
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->controlDscp:I

    return p0
.end method

.method public getCurPani()Ljava/lang/String;
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    return-object p0
.end method

.method public getDbrTimer()I
    .locals 0

    .line 496
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->dbrTimer:I

    return p0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 0

    .line 240
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->domain:Ljava/lang/String;

    return-object p0
.end method

.method public getEarlyMediaRtpTimeoutTimer()I
    .locals 0

    .line 532
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->earlyMediaRtpTimeoutTimer:I

    return p0
.end method

.method public getEnableVerstat()Z
    .locals 0

    .line 629
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->enableVerstat:Z

    return p0
.end method

.method public getEncrNullRoaming()Z
    .locals 0

    .line 726
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encrNullRoaming:Z

    return p0
.end method

.method public getEncralg()Ljava/lang/String;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->encralg:Ljava/lang/String;

    return-object p0
.end method

.method public getExcludePaniVowifiInitialRegi()Z
    .locals 0

    .line 673
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->excludePaniVowifiInitialRegi:Z

    return p0
.end method

.method public getHashAlgoTypeType()I
    .locals 0

    .line 675
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->hashAlgoType:I

    return p0
.end method

.method public getIface()Ljava/lang/String;
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->iface:Ljava/lang/String;

    return-object p0
.end method

.method public getImMsgTech()Ljava/lang/String;
    .locals 0

    .line 723
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    return-object p0
.end method

.method public getImpi()Ljava/lang/String;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impi:Ljava/lang/String;

    return-object p0
.end method

.method public getImpu()Ljava/lang/String;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    return-object p0
.end method

.method public getImpuPreference()I
    .locals 0

    .line 735
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impuPreference:I

    return p0
.end method

.method public getImsiBasedImpu()Ljava/lang/String;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    return-object p0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->instanceId:Ljava/lang/String;

    return-object p0
.end method

.method public getIsAddMmtelCallComposerTag()Z
    .locals 0

    .line 730
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addMmtelCallComposerTag:Z

    return p0
.end method

.method public getIsEnableGruu()Z
    .locals 0

    .line 440
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableGruu:Z

    return p0
.end method

.method public getIsEnableSessionId()Z
    .locals 0

    .line 448
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableSessionId:Z

    return p0
.end method

.method public getIsEnableVcid()Z
    .locals 0

    .line 444
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEnableVcid:Z

    return p0
.end method

.method public getIsPttSupported()Z
    .locals 0

    .line 635
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isPttSupported:Z

    return p0
.end method

.method public getIsSimMobility()Z
    .locals 0

    .line 614
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSimMobility:Z

    return p0
.end method

.method public getIsTcpGracefulShutdownEnabled()Z
    .locals 0

    .line 500
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTcpGracefulShutdownEnabled:Z

    return p0
.end method

.method public getIsTransportNeeded()Z
    .locals 0

    .line 488
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTransportNeeded:Z

    return p0
.end method

.method public getIsXqEnabled()Z
    .locals 0

    .line 480
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isXqEnabled:Z

    return p0
.end method

.method public getKeepAliveFactor()I
    .locals 0

    .line 708
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->keepAliveFactor:I

    return p0
.end method

.method public getLastPaniHeader()Ljava/lang/String;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->lastPaniHeader:Ljava/lang/String;

    return-object p0
.end method

.method public getLinkedImpuList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    return-object p0
.end method

.method public getMno()Lcom/sec/internal/constants/Mno;
    .locals 0

    .line 348
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mno:Lcom/sec/internal/constants/Mno;

    return-object p0
.end method

.method public getMssSize()I
    .locals 0

    .line 428
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mssSize:I

    return p0
.end method

.method public getNeedCheckAllowedMethodForRefresh()Z
    .locals 0

    .line 700
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needCheckAllowedMethodForRefresh:Z

    return p0
.end method

.method public getNeedPidfRat()I
    .locals 0

    .line 547
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfRat:I

    return p0
.end method

.method public getNeedPidfSipMsg()I
    .locals 0

    .line 544
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needPidfSipMsg:I

    return p0
.end method

.method public getNeedVolteRetryInNr()Z
    .locals 0

    .line 733
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needVolteRetryInNr:Z

    return p0
.end method

.method public getNetId()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->netId:J

    return-wide v0
.end method

.method public getOipFromPreferred()Ljava/lang/String;
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->oipFromPreferred:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .locals 0

    .line 336
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    return-object p0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->password:Ljava/lang/String;

    return-object p0
.end method

.method public getPcscfIp()Ljava/lang/String;
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    return-object p0
.end method

.method public getPcscfPort()I
    .locals 0

    .line 316
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfPort:I

    return p0
.end method

.method public getPdn()Ljava/lang/String;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pdn:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 520
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->phoneId:I

    return p0
.end method

.method public getPrivacyHeaderRestricted()Ljava/lang/String;
    .locals 0

    .line 512
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->privacyHeaderRestricted:Ljava/lang/String;

    return-object p0
.end method

.method public getProfileId()I
    .locals 0

    .line 200
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->profileId:I

    return p0
.end method

.method public getQparam()I
    .locals 0

    .line 252
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->qparam:I

    return p0
.end method

.method public getRat()I
    .locals 0

    .line 492
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rat:I

    return p0
.end method

.method public getRcsProfile()I
    .locals 0

    .line 484
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->rcsProfile:I

    return p0
.end method

.method public getRegExpires()I
    .locals 0

    .line 320
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regExpires:I

    return p0
.end method

.method public getRegRetryBaseTime()I
    .locals 0

    .line 625
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryBaseTime:I

    return p0
.end method

.method public getRegRetryMaxTime()I
    .locals 0

    .line 627
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->regRetryMaxTime:I

    return p0
.end method

.method public getRegisteralgo()Ljava/lang/String;
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->registeralgo:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteuritype()Lcom/sec/ims/util/ImsUri$UriType;
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->remoteuritype:Lcom/sec/ims/util/ImsUri$UriType;

    return-object p0
.end method

.method public getRetryInviteOnTcpReset()Z
    .locals 0

    .line 622
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->retryInviteOnTcpReset:Z

    return p0
.end method

.method public getRingbackTimer()I
    .locals 0

    .line 432
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringbackTimer:I

    return p0
.end method

.method public getRingingTimer()I
    .locals 0

    .line 436
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ringingTimer:I

    return p0
.end method

.method public getSelectTransportAfterTcpReset()Ljava/lang/String;
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->selectTransportAfterTcpReset:Ljava/lang/String;

    return-object p0
.end method

.method public getSend18xReliably()Z
    .locals 0

    .line 644
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->send18xReliably:Z

    return p0
.end method

.method public getSendByeForUssi()Z
    .locals 0

    .line 658
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sendByeForUssi:Z

    return p0
.end method

.method public getServiceList()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    return-object p0
.end method

.method public getSingleRegiEnabled()Z
    .locals 0

    .line 693
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->singleRegiEnabled:Z

    return p0
.end method

.method public getSipMobility()I
    .locals 0

    .line 356
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sipMobility:I

    return p0
.end method

.method public getSrvccVersion()I
    .locals 0

    .line 610
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->srvccVersion:I

    return p0
.end method

.method public getSslType()I
    .locals 0

    .line 637
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->sslType:I

    return p0
.end method

.method public getSupport183ForIr92v9Precondition()Z
    .locals 0

    .line 570
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support183ForIr92v9Precondition:Z

    return p0
.end method

.method public getSupport199ProvisionalResponse()Z
    .locals 0

    .line 640
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->support199ProvisionalResponse:Z

    return p0
.end method

.method public getSupportAccessType()Z
    .locals 0

    .line 594
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAccessType:Z

    return p0
.end method

.method public getSupportAltitude()Z
    .locals 0

    .line 550
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportAltitude:Z

    return p0
.end method

.method public getSupportB2cCallcomposerWithoutFeaturetag()I
    .locals 0

    .line 743
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportB2cCallcomposerWithoutFeaturetag:I

    return p0
.end method

.method public getSupportDatachannelWithFeatureCaps()Z
    .locals 0

    .line 741
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDatachannelWithFeatureCaps:Z

    return p0
.end method

.method public getSupportDualRcs()Z
    .locals 0

    .line 631
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportDualRcs:Z

    return p0
.end method

.method public getSupportEct()Z
    .locals 0

    .line 524
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportEct:Z

    return p0
.end method

.method public getSupportImsNotAvailable()Z
    .locals 0

    .line 574
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportImsNotAvailable:Z

    return p0
.end method

.method public getSupportLtePreferred()Z
    .locals 0

    .line 578
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportLtePreferred:Z

    return p0
.end method

.method public getSupportNetworkInitUssi()Z
    .locals 0

    .line 654
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportNetworkInitUssi:Z

    return p0
.end method

.method public getSupportReplaceMerge()Z
    .locals 0

    .line 590
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportReplaceMerge:Z

    return p0
.end method

.method public getSupportRfc6337ForDelayedOffer()Z
    .locals 0

    .line 662
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportRfc6337ForDelayedOffer:Z

    return p0
.end method

.method public getSupportUac()Z
    .locals 0

    .line 713
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUac:Z

    return p0
.end method

.method public getSupportUpgradePrecondition()Z
    .locals 0

    .line 586
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUpgradePrecondition:Z

    return p0
.end method

.method public getSupportedGeolocationPhase()I
    .locals 0

    .line 540
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportedGeolocationPhase:I

    return p0
.end method

.method public getTcpRstUacErrorcode()I
    .locals 0

    .line 504
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUacErrorcode:I

    return p0
.end method

.method public getTcpRstUasErrorcode()I
    .locals 0

    .line 508
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tcpRstUasErrorcode:I

    return p0
.end method

.method public getTextMode()I
    .locals 0

    .line 456
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->textMode:I

    return p0
.end method

.method public getTimer1()I
    .locals 0

    .line 368
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer1:I

    return p0
.end method

.method public getTimer2()I
    .locals 0

    .line 372
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer2:I

    return p0
.end method

.method public getTimer4()I
    .locals 0

    .line 376
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timer4:I

    return p0
.end method

.method public getTimerA()I
    .locals 0

    .line 380
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerA:I

    return p0
.end method

.method public getTimerB()I
    .locals 0

    .line 384
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerB:I

    return p0
.end method

.method public getTimerC()I
    .locals 0

    .line 388
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerC:I

    return p0
.end method

.method public getTimerD()I
    .locals 0

    .line 392
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerD:I

    return p0
.end method

.method public getTimerE()I
    .locals 0

    .line 396
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerE:I

    return p0
.end method

.method public getTimerEpsFbWatchdog()I
    .locals 0

    .line 536
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerEpsFbWatchdog:I

    return p0
.end method

.method public getTimerF()I
    .locals 0

    .line 400
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerF:I

    return p0
.end method

.method public getTimerG()I
    .locals 0

    .line 404
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerG:I

    return p0
.end method

.method public getTimerH()I
    .locals 0

    .line 408
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerH:I

    return p0
.end method

.method public getTimerI()I
    .locals 0

    .line 412
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerI:I

    return p0
.end method

.method public getTimerJ()I
    .locals 0

    .line 416
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerJ:I

    return p0
.end method

.method public getTimerK()I
    .locals 0

    .line 420
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerK:I

    return p0
.end method

.method public getTimerTS()I
    .locals 0

    .line 424
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->timerTS:I

    return p0
.end method

.method public getTranstype()Ljava/lang/String;
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->transtype:Ljava/lang/String;

    return-object p0
.end method

.method public getTryReregisterFromKeepalive()Z
    .locals 0

    .line 633
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->tryReregisterFromKeepalive:Z

    return p0
.end method

.method public getUacSipList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 717
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uacSipList:Ljava/util/List;

    return-object p0
.end method

.method public getUse183OnProgressIncoming()Z
    .locals 0

    .line 562
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use183OnProgressIncoming:Z

    return p0
.end method

.method public getUse200offerWhenRemoteNotSupport100rel()Z
    .locals 0

    .line 666
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->use200offerWhenRemoteNotSupport100rel:Z

    return p0
.end method

.method public getUsePemHeader()Z
    .locals 0

    .line 516
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->usePemHeader:Z

    return p0
.end method

.method public getUseProvisionalResponse100rel()Z
    .locals 0

    .line 558
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useProvisionalResponse100rel:Z

    return p0
.end method

.method public getUseQ850causeOn480()Z
    .locals 0

    .line 566
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useQ850causeOn480:Z

    return p0
.end method

.method public getUseSubcontactWhenResub()Z
    .locals 0

    .line 582
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->useSubcontactWhenResub:Z

    return p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 0

    .line 352
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uuid:Ljava/lang/String;

    return-object p0
.end method

.method public getValidLocationTime()I
    .locals 0

    .line 554
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->validLocationTime:I

    return p0
.end method

.method public getVideoCrbtSupportType()I
    .locals 0

    .line 618
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->videoCrbtSupportType:I

    return p0
.end method

.method public getVowifi5gsaMode()I
    .locals 0

    .line 670
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->vowifi5gsaMode:I

    return p0
.end method

.method public getisSubscribeReg()Z
    .locals 0

    .line 476
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isSubscribeReg:Z

    return p0
.end method

.method public getpreferredId()Ljava/lang/String;
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->preferredId:Ljava/lang/String;

    return-object p0
.end method

.method public isDisplayNameIgnored()Z
    .locals 0

    .line 651
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->ignoreDisplayName:Z

    return p0
.end method

.method public isIsEmergencyProfile()Z
    .locals 0

    .line 264
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isEmergencyProfile:Z

    return p0
.end method

.method public isIsSipOutbound()Z
    .locals 0

    .line 248
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->issipoutbound:Z

    return p0
.end method

.method public isIsipsec()Z
    .locals 0

    .line 268
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isipsec:Z

    return p0
.end method

.method public isRcsAsJibe()Z
    .locals 0

    .line 678
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsRcsAsJibe:Z

    return p0
.end method

.method public isServerHeaderEnabled()Z
    .locals 0

    .line 276
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsServerHeaderEnabled:Z

    return p0
.end method

.method public isSignDigestResponseEnabled()Z
    .locals 0

    .line 745
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->signDigestResponseEnabled:Z

    return p0
.end method

.method public isTlsEnabled()Z
    .locals 0

    .line 292
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isTlsEnabled:Z

    return p0
.end method

.method public isUpdateSaOnAirplaneModeSupported()Z
    .locals 0

    .line 739
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isUpdateSaOnAirplaneModeSupported:Z

    return p0
.end method

.method public isUpdateSaOnStartSupported()Z
    .locals 0

    .line 737
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->isUpdateSaOnStartSupported:Z

    return p0
.end method

.method public isWifiPreConditionEnabled()Z
    .locals 0

    .line 272
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsWifiPreConditionEnabled:Z

    return p0
.end method

.method public setAddMmtelCallComposerTag(Z)V
    .locals 0

    .line 690
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->addMmtelCallComposerTag:Z

    return-void
.end method

.method public setCallProfile(Lcom/sec/internal/ims/core/handler/secims/CallProfile;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->callProfile:Lcom/sec/internal/ims/core/handler/secims/CallProfile;

    return-void
.end method

.method public setCurPani(Ljava/lang/String;)V
    .locals 0

    .line 464
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->curPani:Ljava/lang/String;

    return-void
.end method

.method public setImMsgTech(Ljava/lang/String;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imMsgTech:Ljava/lang/String;

    return-void
.end method

.method public setImpu(Ljava/lang/String;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->impu:Ljava/lang/String;

    return-void
.end method

.method public setImsiBasedImpu(Ljava/lang/String;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->imsiBasedImpu:Ljava/lang/String;

    return-void
.end method

.method public setIsRcsAsJibe(Z)V
    .locals 0

    .line 682
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mIsRcsAsJibe:Z

    return-void
.end method

.method public setKeepAliveFactor(I)V
    .locals 0

    .line 704
    iput p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->keepAliveFactor:I

    return-void
.end method

.method public setLinkedImpuList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 332
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->linkedImpuList:Ljava/util/List;

    return-void
.end method

.method public setNeedCheckAllowedMethodForRefresh(Z)V
    .locals 0

    .line 696
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->needCheckAllowedMethodForRefresh:Z

    return-void
.end method

.method public setOwnCapabilities(Lcom/sec/ims/options/Capabilities;)V
    .locals 0

    .line 341
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/ims/options/Capabilities;->clone()Lcom/sec/ims/options/Capabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 343
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->capabilities:Lcom/sec/ims/options/Capabilities;

    :goto_0
    return-void
.end method

.method public setPcscfIp(Ljava/lang/String;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->pcscfIp:Ljava/lang/String;

    return-void
.end method

.method public setServiceList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->serviceList:Ljava/util/Set;

    return-void
.end method

.method public setSingleRegiEnabled(Z)V
    .locals 0

    .line 686
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->singleRegiEnabled:Z

    return-void
.end method

.method public setSupportUac(Z)V
    .locals 0

    .line 711
    iput-boolean p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->supportUac:Z

    return-void
.end method

.method public setUacSipList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 715
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->uacSipList:Ljava/util/List;

    return-void
.end method

.method public shouldUseCompactHeader()Z
    .locals 0

    .line 280
    iget-boolean p0, p0, Lcom/sec/internal/ims/core/handler/secims/UaProfile;->mUseCompactHeader:Z

    return p0
.end method
