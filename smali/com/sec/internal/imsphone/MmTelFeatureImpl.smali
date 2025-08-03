.class public Lcom/sec/internal/imsphone/MmTelFeatureImpl;
.super Landroid/telephony/ims/feature/MmTelFeature;
.source "MmTelFeatureImpl.java"


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

.field private static final IMS_CALL_PERMISSION:Ljava/lang/String; = "android.permission.ACCESS_IMS_CALL_SERVICE"

.field private static final LOG_TAG:Ljava/lang/String; = "MmTelFeatureImpl"

.field private static final REGISTRATION_TECH_3G:I = 0x4

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

.field private static mCallSessionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/imsphone/ImsCallSessionImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;


# instance fields
.field private mConferenceHost:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

.field private mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

.field private mImsConferenceState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field mImsEcbm:Lcom/sec/internal/imsphone/ImsEcbmImpl;

.field mImsSmsImpl:Lcom/sec/internal/imsphone/ImsSmsImpl;

.field mImsUt:Lcom/android/ims/internal/IImsUt;

.field private mIsInitialMerge:Z

.field private mIsReady:Z

.field mMultEndPoint:Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;

.field private final mPhoneId:I

.field mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mServiceUrn:Ljava/lang/String;

.field public mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 93
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    const/4 v0, 0x0

    .line 101
    sput-object v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    const/4 v1, 0x3

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 132
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->CAP_TO_SERVICE:Ljava/util/Map;

    .line 139
    const-string v2, "mmtel"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v1, "mmtel-video"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "smsip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/concurrent/Executor;)V
    .locals 1

    .line 111
    invoke-direct {p0, p3}, Landroid/telephony/ims/feature/MmTelFeature;-><init>(Ljava/util/concurrent/Executor;)V

    const/4 p3, 0x0

    .line 88
    iput-boolean p3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mIsReady:Z

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mServiceUrn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConferenceHost:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    .line 108
    iput-boolean p3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mIsInitialMerge:Z

    .line 112
    iput-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    .line 113
    iput p2, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    const/4 p1, 0x2

    .line 115
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->setFeatureState(I)V

    .line 116
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 117
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 119
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getICmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 120
    sget-object p1, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    if-nez p1, :cond_0

    .line 121
    new-instance p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    iget-object p2, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object p3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p1, p0, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;-><init>(Lcom/sec/internal/imsphone/MmTelFeatureImpl;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    sput-object p1, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    :cond_0
    return-void
.end method

.method private getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;
    .locals 7

    .line 866
    const-string v6, ""

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    .line 870
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 871
    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string p2, "endpoint"

    invoke-virtual {p0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const-string/jumbo p2, "status"

    invoke-virtual {p0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    const-string p2, "display-text"

    invoke-virtual {p0, p2, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    const-string p2, "callId"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 876
    const-string p1, "cna"

    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const-string p1, "cnap"

    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 878
    const-string/jumbo p1, "oir"

    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 879
    invoke-virtual {p5}, Landroid/telephony/ims/ImsCallProfile;->getMediaProfile()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result p1

    const-string p2, "audioQuality"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 881
    const-string p1, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p2

    .line 880
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 883
    const-string p1, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {p5, p1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 882
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "confState : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MmTelFeatureImpl"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public static getRegistrationTech(IZ)I
    .locals 2

    .line 238
    invoke-static {p0}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/sec/ims/extensions/TelephonyManagerExt;->getNetworkClass(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/16 v0, 0x12

    if-ne p0, v0, :cond_3

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private isCrossSimTech(Lcom/sec/ims/ImsRegistration;)Z
    .locals 0

    .line 234
    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p0

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getRegistrationTech(IZ)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public changeAudioPath(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 695
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "changeAudioPath"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 699
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->updateAudioInterface(II)V

    return-void

    .line 697
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public changeEnabledCapabilities(Landroid/telephony/ims/feature/CapabilityChangeRequest;Landroid/telephony/ims/feature/ImsFeature$CapabilityCallbackProxy;)V
    .locals 6

    .line 165
    iget-object p2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v1, "changeEnabledCapabilities"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget p2, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    const-string v0, "MmTelFeatureImpl"

    invoke-static {v0, p2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 171
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/ims/feature/MmTelFeature;->queryCapabilityStatus()Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;

    move-result-object p2

    .line 174
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToDisable()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 175
    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->removeCapabilities(I)V

    .line 176
    iget v3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeEnabledCapabilities: disabled capa = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/ims/feature/CapabilityChangeRequest;->getCapabilitiesToEnable()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;

    .line 180
    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->addCapabilities(I)V

    .line 181
    iget v2, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeEnabledCapabilities: enabled capa = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/ims/feature/CapabilityChangeRequest$CapabilityPair;->getCapability()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_1

    .line 183
    :cond_2
    invoke-virtual {p0, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyCapabilitiesStatusChanged(Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;)V

    return-void
.end method

.method public clearConferenceStateList()V
    .locals 0

    .line 906
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public createCallProfile(II)Landroid/telephony/ims/ImsCallProfile;
    .locals 8

    .line 205
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "createCallProfile"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, p1, p2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    .line 207
    iget-object p2, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {p2, v1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 209
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p2, v3

    if-eqz v4, :cond_2

    .line 211
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    if-eq p1, v5, :cond_0

    .line 212
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->hasEmergencySupport()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 216
    :cond_0
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v6

    .line 217
    sget-object v7, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_1

    sget-object v7, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v6, v7, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    move v6, v2

    .line 218
    :goto_1
    const-string v7, "ResumeHostAndMerge"

    invoke-virtual {v0, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    if-eq p1, v5, :cond_2

    .line 222
    const-string v5, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-direct {p0, v4}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isCrossSimTech(Lcom/sec/ims/ImsRegistration;)Z

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 223
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_2

    .line 224
    const-string p0, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    return-object v0
.end method

.method public createCallSessionInterface(Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    const-string v0, "com.samsung.ims.extra.ECHO_CALL_ID"

    const-string v1, "com.samsung.telephony.extra.CMC_TYPE"

    iget-object v2, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v4, "createCallSessionInterface"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v2, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v2, :cond_e

    .line 266
    :try_start_0
    iget v3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v2

    sget v3, Lcom/sec/ims/extensions/Extensions$TelecomManager;->TTY_MODE_OFF:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    .line 267
    :goto_0
    iget v3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-static {v3, p1, v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    .line 272
    iget-object v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v6, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    const-string v6, "MmTelFeatureImpl"

    if-eqz v3, :cond_2

    .line 274
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 275
    invoke-virtual {v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v4

    .line 278
    :goto_1
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 279
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "get Echo Call ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move v1, v4

    .line 284
    :cond_3
    :goto_2
    sget-object v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    iget v3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;I)I

    move-result v0

    if-lez v0, :cond_4

    .line 287
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    invoke-virtual {p0, v0, p1, v2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p0

    return-object p0

    .line 290
    :cond_4
    iget-object v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget v3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {v1, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 292
    array-length v3, v1

    move v7, v4

    :goto_3
    if-ge v7, v3, :cond_8

    aget-object v8, v1, v7

    if-eqz v8, :cond_7

    .line 293
    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v8

    if-eq v0, v8, :cond_5

    goto :goto_4

    .line 297
    :cond_5
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getUrn()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "urn:service:unspecified"

    if-ne v8, v9, :cond_7

    .line 298
    iget-object v8, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 299
    const-string/jumbo v8, "urn:service:sos"

    invoke-virtual {v2, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    goto :goto_4

    .line 301
    :cond_6
    iget-object v8, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mServiceUrn:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 302
    const-string v8, ""

    iput-object v8, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mServiceUrn:Ljava/lang/String;

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 308
    :cond_8
    invoke-virtual {v2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 310
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v1

    const/4 v7, 0x7

    if-ne v1, v7, :cond_9

    const/16 v1, 0xd

    .line 311
    invoke-virtual {v2, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 312
    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setUrn(Ljava/lang/String;)V

    .line 315
    :cond_9
    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-static {v1}, Lcom/sec/internal/helper/SimUtil;->getMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 316
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getVolteRegHandle()I

    move-result v7

    .line 317
    invoke-virtual {v1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v8

    if-nez v8, :cond_a

    sget-object v8, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-eq v1, v8, :cond_a

    sget-object v8, Lcom/sec/internal/constants/Mno;->USCC:Lcom/sec/internal/constants/Mno;

    if-eq v1, v8, :cond_a

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, -0x1

    if-ne v7, v8, :cond_a

    iget-object v8, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    .line 318
    invoke-static {v8}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v0, :cond_a

    .line 319
    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v8

    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v8

    if-nez v8, :cond_a

    .line 320
    invoke-virtual {v2, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setForceCSFB(Z)V

    .line 322
    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mno: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phoneId: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cmcType: "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " volteRegHandle: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " isVoiceCap: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    .line 323
    invoke-static {v0}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " => isForceCSFB(): "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->isForceCSFB()Z

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 327
    :try_start_2
    iget-object v6, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v6, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 329
    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v2, :cond_c

    .line 333
    const-string v0, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {p1, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_b

    move v4, v5

    :cond_b
    invoke-interface {v2, v4}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 336
    :cond_c
    new-instance v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-direct {v0, p1, v2, v3, p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    .line 337
    sget-object p1, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isEnabledWifiDirectFeature()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 340
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->acquireP2pNetwork()V

    :cond_d
    return-object v0

    :catchall_0
    move-exception p0

    .line 329
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 330
    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 347
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    .line 262
    :cond_e
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public getCallSession(I)Lcom/sec/internal/imsphone/ImsCallSessionImpl;
    .locals 0

    .line 838
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    return-object p0
.end method

.method public getCmcImsServiceUtil()Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;
    .locals 0

    .line 826
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    return-object p0
.end method

.method public getCmcTypeFromRegHandle(I)I
    .locals 4

    .line 398
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    if-eqz v2, :cond_0

    .line 399
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result v3

    if-ne p1, v3, :cond_0

    .line 400
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 401
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConferenceHost:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    return-object p0
.end method

.method public getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;
    .locals 0

    .line 830
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p0

    return-object p0
.end method

.method public getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getEcbmInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsEcbm:Lcom/sec/internal/imsphone/ImsEcbmImpl;

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Lcom/sec/internal/imsphone/ImsEcbmImpl;

    invoke-direct {v0}, Lcom/sec/internal/imsphone/ImsEcbmImpl;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsEcbm:Lcom/sec/internal/imsphone/ImsEcbmImpl;

    .line 379
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsEcbm:Lcom/sec/internal/imsphone/ImsEcbmImpl;

    return-object p0
.end method

.method public getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;
    .locals 4

    .line 909
    new-instance v0, Landroid/telephony/ims/ImsConferenceState;

    invoke-direct {v0}, Landroid/telephony/ims/ImsConferenceState;-><init>()V

    .line 911
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 912
    iget-object v2, v0, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getImsEcbmImpl()Lcom/sec/internal/imsphone/ImsEcbmImpl;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getEcbmInterface()Lcom/android/ims/internal/IImsEcbm;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/imsphone/ImsEcbmImpl;

    return-object p0
.end method

.method public getInitialCallNetworkType(I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 807
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getInitialCallNetworkType"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_3

    .line 812
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getE911CallCount(I)I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 814
    iget-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, p1, v2

    if-eqz v4, :cond_0

    .line 815
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v5

    iget v6, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 816
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v5

    if-nez v5, :cond_0

    .line 817
    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v3

    invoke-virtual {v4}, Lcom/sec/ims/ImsRegistration;->isEpdgOverCellularData()Z

    move-result v4

    invoke-static {v3, v4}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getRegistrationTech(IZ)I

    move-result v3

    .line 818
    sget-object v4, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :cond_2
    return v0

    .line 809
    :cond_3
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public getMultiEndpointInterface()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getMultiEndpointInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mMultEndPoint:Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;

    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-direct {v0, v1}, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mMultEndPoint:Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;

    .line 394
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mMultEndPoint:Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;

    return-object p0
.end method

.method public getParticipantId(Ljava/lang/String;)I
    .locals 3

    .line 970
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 971
    iget-object v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return v0

    .line 977
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 978
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 487
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getPendingCallSession"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 493
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v1

    aget-object v0, v0, v1

    .line 494
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isEndCallState(Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 498
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 499
    new-instance v1, Landroid/telephony/ims/ImsCallProfile;

    .line 500
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v2

    .line 501
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getComposerData()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v4, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v3, v4}, Landroid/telephony/ims/ImsCallProfile;-><init>(IILandroid/os/Bundle;Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 503
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 506
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v6

    .line 507
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v7

    if-eqz v7, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v6

    invoke-static {v6}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    .line 510
    :cond_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v7

    const-string v8, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    if-eqz v7, :cond_1

    const/16 v7, 0xd

    .line 511
    invoke-virtual {v1, v8, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 513
    :cond_1
    invoke-virtual {v1, v8, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 515
    :goto_0
    const-string v7, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-direct {p0, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->isCrossSimTech(Lcom/sec/ims/ImsRegistration;)Z

    move-result v8

    invoke-virtual {v1, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    const/16 v7, 0x12

    if-ne v6, v7, :cond_2

    move v6, v5

    goto :goto_1

    :cond_2
    move v6, v4

    .line 516
    :goto_1
    invoke-interface {p1, v6}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgStateNoNotify(Z)V

    .line 517
    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v2, v3

    .line 520
    :goto_2
    const-string/jumbo v6, "oi"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v6

    iput-object v6, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 524
    sget-object v6, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne v2, v6, :cond_4

    .line 525
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    .line 527
    :cond_4
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 529
    const-string/jumbo v2, "unknown"

    .line 531
    :cond_5
    invoke-static {v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result v2

    .line 534
    :goto_3
    const-string/jumbo v6, "oir"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 535
    const-string v6, "cnap"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 537
    const-string v2, "cna"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    const-string v2, "com.samsung.telephony.extra.PHOTO_RING_AVAILABLE"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v2, v5

    const-string v6, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 540
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 541
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 542
    const-string v7, "android.telephony.ims.extra.FORWARDED_NUMBER"

    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 543
    const-string v2, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v2, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    iget-object v2, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/ims/volte2/data/MediaProfile;->getRttMode()I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 545
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 546
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 547
    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 548
    const-string v2, "anonymous"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    if-eqz v2, :cond_6

    .line 549
    invoke-virtual {v1, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 551
    :cond_6
    const-string v2, "0"

    invoke-virtual {v1, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_7
    :goto_4
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 556
    const-string v2, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TN-Validation-Passed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 558
    invoke-virtual {v1, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_5

    .line 559
    :cond_8
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v2

    const-string v6, "TN-Validation-Failed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x2

    .line 560
    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_5

    .line 562
    :cond_9
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    goto :goto_5

    .line 565
    :cond_a
    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallerNumberVerificationStatus(I)V

    .line 568
    :goto_5
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOrganization()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 569
    const-string v2, "com.samsung.telephony.extra.ims.ORG"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getOrganization()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_b
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v2

    if-ne v2, v5, :cond_c

    .line 573
    iput v4, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    goto :goto_6

    :cond_c
    const/4 v2, 0x3

    .line 575
    iput v2, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 578
    :goto_6
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 579
    const-string v2, "com.samsung.ims.extra.ECHO_CALL_ID"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCallId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v2, "com.samsung.ims.extra.EPSFB_SUCCESS"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v6

    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 583
    :cond_d
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 584
    const-string v2, "com.samsung.ims.extra.ECHO_CELL_ID"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    :cond_e
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v2

    const-string v6, "com.samsung.telephony.extra.VIDEO_CRT_MT"

    const-string v7, "com.samsung.telephony.extra.VIDEO_CRBT"

    const-string v8, "MmTelFeatureImpl"

    if-eqz v2, :cond_11

    .line 588
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-nez v2, :cond_f

    .line 589
    invoke-virtual {v1, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_8

    .line 590
    :cond_f
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-ne v2, v5, :cond_12

    .line 591
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v2

    if-eqz v2, :cond_10

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    goto :goto_7

    :cond_10
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_AVAILABLE:I

    .line 592
    :goto_7
    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 595
    sget v5, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_AVAILABLE:I

    if-ne v2, v5, :cond_12

    .line 596
    const-string/jumbo v2, "setVideoCrtAudio with false in default"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget v2, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-virtual {p0, v2, v4}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setVideoCrtAudio(IZ)V

    goto :goto_8

    .line 601
    :cond_11
    invoke-virtual {v1, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 602
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    invoke-virtual {v1, v6, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 605
    :cond_12
    :goto_8
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 606
    const-string v2, "com.samsung.telephony.extra.DTMF_EVENT"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_13
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 611
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update extra com.samsung.telephony.extra.QUANTUM_ENCRYPTION_STATUS: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v2

    const-string v4, "com.samsung.telephony.extra.QUANTUM_ENCRYPTION_STATUS"

    invoke-virtual {v1, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 615
    :cond_14
    sget-object v2, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    iget v4, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-virtual {v2, v4, v1, p1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 618
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    if-lez v2, :cond_15

    .line 619
    const-string v2, "getPendingCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    new-instance v2, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v4, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object v5, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {v2, p1, v4, v5}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 621
    new-instance p1, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;

    invoke-direct {p1, v1, v2, v3, p0}, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    goto :goto_9

    .line 623
    :cond_15
    const-string v2, "getPendingCallSession, create imsCallSessionImpl for [NORMAL volte call]"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    invoke-direct {v2, v1, p1, v3, p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    move-object p1, v2

    .line 626
    :goto_9
    sget-object v1, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    iget-object v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isNotifyRejectedCall(I)Z

    move-result p0

    if-eqz p0, :cond_16

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result p0

    if-eqz p0, :cond_16

    .line 628
    iget-object p0, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {p0, v2, v1}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCause()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->terminate(I)V

    :cond_16
    return-object p1

    .line 495
    :cond_17
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0

    .line 491
    :cond_18
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "Session does not exist"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSmsImplementation()Landroid/telephony/ims/stub/ImsSmsImplBase;
    .locals 3

    .line 685
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getSmsImplementation"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsSmsImpl:Lcom/sec/internal/imsphone/ImsSmsImpl;

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Lcom/sec/internal/imsphone/ImsSmsImpl;

    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-direct {v0, v1}, Lcom/sec/internal/imsphone/ImsSmsImpl;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsSmsImpl:Lcom/sec/internal/imsphone/ImsSmsImpl;

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsSmsImpl:Lcom/sec/internal/imsphone/ImsSmsImpl;

    return-object p0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getTrn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 744
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 742
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public getUtInterface()Lcom/android/ims/internal/IImsUt;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "getUtInterface"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsUt:Lcom/android/ims/internal/IImsUt;

    if-nez v0, :cond_0

    .line 368
    new-instance v0, Lcom/sec/internal/imsphone/ImsUtImpl;

    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-direct {v0, v1}, Lcom/sec/internal/imsphone/ImsUtImpl;-><init>(I)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsUt:Lcom/android/ims/internal/IImsUt;

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsUt:Lcom/android/ims/internal/IImsUt;

    return-object p0
.end method

.method public getVolteRegHandle()I
    .locals 6

    .line 351
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    .line 352
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    iget v5, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    if-ne v4, v5, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 353
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-nez v4, :cond_0

    .line 354
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public hasConferenceHost()Z
    .locals 0

    .line 857
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConferenceHost:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public initImsSmsImplAdapter()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 678
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v2, "initImsSmsImplAdapter"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initImsSmsImplAdapter["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeatureCompat"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 680
    iput-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsSmsImpl:Lcom/sec/internal/imsphone/ImsSmsImpl;

    return-void
.end method

.method public isCmcEmergencyCallSupported(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 759
    iget-object p0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string p1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string v0, "isCmcEmergencyCallSupported"

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 763
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isEmergencyCallSupported()Z

    move-result p0

    return p0

    .line 761
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public isEnabledWifiDirectFeature()Z
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p0

    return p0
.end method

.method public isInitialMerge()Z
    .locals 0

    .line 1023
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mIsInitialMerge:Z

    return p0
.end method

.method public isReady()Z
    .locals 0

    .line 126
    iget-boolean p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mIsReady:Z

    return p0
.end method

.method public notifyEpsFallbackResult(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 783
    iget-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v1, "notifyEpsFallbackResult"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p1, :cond_0

    .line 787
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->notifyEpsFallbackResult(II)V

    return-void

    .line 785
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public notifySrvccCanceled()V
    .locals 3

    .line 465
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "notifySrvccCanceled"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    return-void

    .line 470
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->CANCELED:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V

    return-void
.end method

.method public notifySrvccCompleted()V
    .locals 3

    .line 445
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "notifySrvccCompleted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "MmTelFeatureImpl"

    const-string/jumbo v1, "notifySrvccCompleted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    return-void

    .line 450
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->COMPLETED:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V

    return-void
.end method

.method public notifySrvccFailed()V
    .locals 3

    .line 455
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "notifySrvccFailed"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    return-void

    .line 460
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    sget-object v1, Lcom/android/internal/telephony/Call$SrvccState;->FAILED:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-interface {v0, p0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V

    return-void
.end method

.method public notifySrvccStarted(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/List<",
            "Landroid/telephony/ims/SrvccCall;",
            ">;>;)V"
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "notifySrvccStarted"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    return-void

    .line 430
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 432
    sget-object v1, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 433
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 434
    iget-object v3, v2, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v3, :cond_1

    .line 435
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->convertImsCalltoSrvccCall(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)Landroid/telephony/ims/SrvccCall;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 438
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 440
    iget-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    sget-object v0, Lcom/android/internal/telephony/Call$SrvccState;->STARTED:Lcom/android/internal/telephony/Call$SrvccState;

    invoke-interface {p1, p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->onSrvccStateChange(ILcom/android/internal/telephony/Call$SrvccState;)V

    return-void
.end method

.method public onCallClosed(I)V
    .locals 0

    .line 842
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onFeatureReady()V
    .locals 3

    .line 419
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "onFeatureReady"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    const-string/jumbo v1, "onFeatureReady called!"

    const-string v2, "MmTelFeatureImpl"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 421
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mIsReady:Z

    return-void
.end method

.method public onIncomingCall(ILandroid/os/Bundle;)V
    .locals 2

    .line 474
    const-string/jumbo v0, "onIncomingCall()"

    const-string v1, "MmTelFeatureImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :try_start_0
    const-string v0, "incoming call event"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getPendingCallSession(Ljava/lang/String;)Lcom/android/ims/internal/IImsCallSession;

    move-result-object p1

    .line 478
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/feature/MmTelFeature;->notifyIncomingCallSession(Lcom/android/ims/internal/IImsCallSession;Landroid/os/Bundle;)V

    .line 479
    const-string p0, "incoming call notified"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    const-string/jumbo p0, "onReceive: Couldn\'t get Incoming call session."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onTriggerEpsFallback(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 800
    const-string/jumbo v0, "onTriggerEpsFallback()"

    const-string v1, "MmTelFeatureImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    invoke-virtual {p0, p1}, Landroid/telephony/ims/feature/MmTelFeature;->triggerEpsFallback(I)V

    .line 802
    const-string/jumbo p0, "triggerEpsFallback notified"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public prepareComposerDataBundle(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2

    .line 635
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_6

    .line 636
    invoke-virtual {p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 637
    const-string v0, "importance"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    const-string v1, "EXTRA_CALL_IMPORTANCE"

    .line 639
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 638
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 642
    :cond_0
    const-string v0, "image"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 643
    const-string v1, "EXTRA_CALL_IMAGE"

    .line 644
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_1
    const-string/jumbo v0, "subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 648
    const-string v1, "EXTRA_CALL_SUBJECT"

    .line 649
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 648
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    :cond_2
    const-string v0, "longitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 653
    const-string v1, "EXTRA_CALL_LONGITUDE"

    .line 654
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :cond_3
    const-string v0, "latitude"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 658
    const-string v1, "EXTRA_CALL_LATITUDE"

    .line 659
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 658
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    :cond_4
    const-string/jumbo v0, "radius"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 663
    const-string v1, "EXTRA_CALL_RADIUS"

    .line 664
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    :cond_5
    const-string v0, "call_reason"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 669
    const-string v1, "EXTRA_CALL_CALLREASON"

    .line 670
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 669
    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-object p0
.end method

.method public preparePushCall(Lcom/sec/ims/DialogEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "preparePushCall(), size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MmTelFeatureImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 1032
    sget-object v0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1033
    const-string p0, "Push for [PD]"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1035
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    .line 1036
    iget-object v0, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 1037
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isP2pPrimaryType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x1777

    invoke-direct {p0, v0, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    .line 1040
    iget-object p1, p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1047
    const-string v0, "Push for [SD]"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    invoke-virtual {p1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCmcTypeFromRegHandle(I)I

    move-result v0

    .line 1049
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mMultEndPoint:Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/imsphone/ImsMultiEndPointImpl;->setP2pPushDialogInfo(Lcom/sec/ims/DialogEvent;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public putConferenceState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)V
    .locals 0

    .line 861
    invoke-direct/range {p0 .. p6}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 862
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putConferenceStateList(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/telephony/ims/ImsCallProfile;)V
    .locals 6

    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p7

    .line 891
    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConfStateBundle(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)Landroid/os/Bundle;

    move-result-object p2

    .line 893
    const-string/jumbo p3, "sipError"

    invoke-virtual {p2, p3, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 894
    const-string/jumbo p3, "uriType"

    const-string/jumbo p4, "tel"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string p3, "disconnected"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 897
    const-string p3, "disconnectCause"

    const/4 p4, 0x2

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 899
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public queryCapabilityConfiguration(II)Z
    .locals 5

    .line 146
    const-string/jumbo v0, "unknown"

    iget-object v1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v3, "queryCapabilityConfiguration"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget v1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    const-string v2, "MmTelFeatureImpl"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 150
    :try_start_0
    sget-object v3, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->REG_TECH_TO_NET_TYPE:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, p2, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 151
    sget-object v3, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->CAP_TO_SERVICE:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 156
    :cond_0
    iget v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-static {p1, p2, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->isServiceAvailable(Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 158
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "queryCapabilityConfiguration: failed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    return v1
.end method

.method public removeConferenceState(I)V
    .locals 0

    .line 903
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendDtmfEvent(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "sendDtmfEvent"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 735
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendDtmfEvent(ILjava/lang/String;)V

    return-void

    .line 733
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendMmsProcType(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 792
    iget-object p1, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v1, "sendMmsProcType"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p1, :cond_0

    .line 796
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {p1, p0, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendMmsProcType(IZ)V

    return-void

    .line 794
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "sendPublishDialog"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 754
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCmcImsServiceUtil:Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V

    return-void

    .line 751
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public setCallSession(ILcom/sec/internal/imsphone/ImsCallSessionImpl;)V
    .locals 0

    .line 834
    sget-object p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mCallSessionList:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V
    .locals 0

    .line 850
    iput-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mConferenceHost:Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    if-nez p1, :cond_0

    .line 853
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public setInitialMerge(Z)V
    .locals 0

    .line 1019
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mIsInitialMerge:Z

    return-void
.end method

.method public setServiceUrn(Ljava/lang/String;)V
    .locals 0

    .line 1027
    iput-object p1, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mServiceUrn:Ljava/lang/String;

    return-void
.end method

.method public setTtyMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 774
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setTtyMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 778
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setTtyMode(II)V

    return-void

    .line 776
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public setUiTtyMode(ILandroid/os/Message;)V
    .locals 3

    .line 410
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setUiTtyMode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    return-void

    .line 414
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mPhoneId:I

    invoke-interface {v0, p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setUiTTYMode(IILandroid/os/Message;)V

    return-void
.end method

.method public setVideoCrtAudio(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 722
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "setVideoCrtAudio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 726
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setVideoCrtAudio(IZ)V

    return-void

    .line 724
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 704
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "startLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 708
    invoke-interface {p0, p1, p2, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->startLocalRingBackTone(III)I

    move-result p0

    return p0

    .line 706
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public stopLocalRingBackTone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v2, "stopLocalRingBackTone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz p0, :cond_0

    .line 717
    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->stopLocalRingBackTone()I

    move-result p0

    return p0

    .line 715
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 768
    iget-object p0, p0, Landroid/telephony/ims/feature/MmTelFeature;->mContext:Landroid/content/Context;

    const-string v0, "android.permission.ACCESS_IMS_CALL_SERVICE"

    const-string/jumbo v1, "triggerAutoConfigurationForApp"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->triggerAutoConfigurationForApp(I)V

    return-void
.end method

.method public updateParticipant(ILjava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    .line 987
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateParticipant(ILjava/lang/String;I)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    .line 991
    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public updateParticipant(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 998
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 999
    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1003
    const-string p2, "endpoint"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1007
    const-string/jumbo p2, "status"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p2, -0x1

    if-eq p5, p2, :cond_3

    .line 1011
    const-string p2, "android.telephony.ims.extra.CALL_DISCONNECT_CAUSE"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1014
    :cond_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 10

    .line 919
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 920
    iget-object v1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string/jumbo v2, "secConferenceInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 922
    iget-object v3, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mImsConferenceState:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 923
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 924
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    .line 928
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 929
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 930
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 937
    invoke-virtual {v7, v4}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 938
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 940
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCallSession(I)Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v7

    .line 941
    const-string v8, "callId"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    if-lez v8, :cond_4

    .line 943
    invoke-virtual {p0, v8}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCallSession(I)Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v7

    :cond_4
    if-eqz v7, :cond_0

    .line 947
    invoke-virtual {v7}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v7

    .line 948
    const-string v8, "cna"

    invoke-virtual {v7, v8}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 953
    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    if-eqz v6, :cond_6

    .line 957
    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 958
    const-string v7, "com.samsung.telephony.extra.ims.VERSTAT"

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getVerstat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 965
    :cond_7
    iget-object p0, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
