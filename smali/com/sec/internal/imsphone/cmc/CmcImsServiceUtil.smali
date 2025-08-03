.class public Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;
.super Ljava/lang/Object;
.source "CmcImsServiceUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcImsServiceUtil"


# instance fields
.field private final P2P_CALL_SESSION_ID:I

.field private mCmcReady:Z

.field private mCmcRegHandle:I

.field mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

.field mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

.field mServiceProfile:Lcom/sec/internal/imsphone/ServiceProfile;

.field mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

.field private mp2pSecSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/ims/volte2/IImsCallSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/imsphone/MmTelFeatureImpl;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e7

    .line 46
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->P2P_CALL_SESSION_ID:I

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    .line 49
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 50
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    .line 51
    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/imsphone/ServiceProfile;

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    const/4 v0, -0x1

    .line 53
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    .line 59
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 60
    iput-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    return-void
.end method

.method private getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 439
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p0, :cond_1

    .line 440
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    goto :goto_0

    .line 443
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result p0

    if-ne p0, v1, :cond_0

    :goto_0
    return v0
.end method

.method private getCmcRegHandle(II)I
    .locals 5

    .line 74
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationInfo()[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    .line 75
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_4

    aget-object v3, p0, v1

    if-eqz v3, :cond_3

    .line 76
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result v4

    if-eq v4, p1, :cond_0

    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    :cond_0
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->hasVolteService()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/settings/ImsProfile;->getCmcType()I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 78
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isP2pPrimaryType(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 79
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p0

    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getRegistrationGovernor(I)Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 80
    invoke-interface {p0, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;->getP2pListSize(I)I

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    return v2

    .line 84
    :cond_2
    invoke-virtual {v3}, Lcom/sec/ims/ImsRegistration;->getHandle()I

    move-result p0

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v2
.end method

.method private setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z
    .locals 2

    .line 91
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "setBoundSessionInfo()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p2

    .line 93
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result p0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    .line 95
    const-string p0, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 98
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBoundSessionInfo(), boundSessionId: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p0, :cond_0

    .line 100
    invoke-virtual {p3, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 103
    :cond_0
    const-string p0, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    invoke-virtual {p2, p0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 107
    invoke-virtual {p3, p0}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public acquireP2pNetwork()V
    .locals 1

    .line 64
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p0, v0, :cond_0

    .line 65
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "MO call by PD. startCmcP2pConnection!"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public createCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Lcom/android/ims/internal/IImsCallSession;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 194
    const-string v0, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    sget-object v1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCallSession(), cmcType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mCmcRegHandle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCmcReady: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mp2pSecSessionMap size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 203
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getIncomingSessionPhoneIdForCmc()I

    move-result v0

    if-gez v0, :cond_2

    .line 208
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    const/4 v2, 0x5

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->getCsCallPhoneIdByState(I)I

    move-result v0

    goto :goto_1

    .line 212
    :cond_0
    iget-object v2, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v4, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 213
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 214
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    .line 216
    :goto_0
    const-string/jumbo v2, "persist.cmc.pref_callslot"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 218
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 221
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmcEdCallSlot: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual {p3, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcEdCallSlot(I)V

    .line 224
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x12

    const-string v4, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    const/4 v5, 0x1

    if-eqz v1, :cond_5

    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 225
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/volte2/IImsCallSession;

    .line 226
    invoke-virtual {p2, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v2, :cond_4

    goto :goto_3

    :cond_4
    move v5, v3

    :goto_3
    invoke-interface {v1, v5}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    goto :goto_2

    .line 228
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v5

    goto :goto_4

    :cond_6
    move v0, v3

    .line 230
    :goto_4
    iget-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v1, :cond_7

    .line 231
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget v8, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    invoke-interface {v1, p3, v8}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    goto :goto_5

    :cond_7
    if-ne p1, v6, :cond_8

    if-nez v0, :cond_8

    .line 234
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1, p3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    goto :goto_5

    :cond_8
    move-object v1, v7

    .line 238
    :goto_5
    iget-object v8, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v8}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 239
    iget-boolean v8, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    if-nez v8, :cond_c

    if-nez v0, :cond_c

    if-eq p1, v5, :cond_9

    if-eq p1, v6, :cond_9

    const/4 v6, 0x7

    if-eq p1, v6, :cond_9

    const/16 v6, 0x8

    if-ne p1, v6, :cond_c

    .line 244
    :cond_9
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p1, v0, :cond_a

    .line 245
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[P2P] create fake p2pSessionManager in PD"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 246
    :cond_a
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p1

    sget-object v0, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p1, v0, :cond_b

    .line 247
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "[P2P] create fake sessionManager in SD "

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string/jumbo v0, "there is no cmc, startCmcP2pConnection!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :goto_6
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    const/16 v0, 0x3e7

    invoke-interface {p1, v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pCallSessionId(I)V

    .line 256
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createCallSession, create imsCallSessionImpl for [P2P volte call]"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v1, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {v1, v7, v2, v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    .line 258
    new-instance v2, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-direct {v2, p2, v1, v7, v3}, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    .line 259
    invoke-virtual {v1, p3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->setReservedCallProfile(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 261
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0, v0, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setCallSession(ILcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 263
    const-string p0, "createCallSession, need timeout to wait p2p registration between PD and SD."

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 250
    :cond_b
    sget-object p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string p1, "[P2P] error: please check your P2pSwitchEnabled"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_c
    if-nez v1, :cond_e

    if-eqz v0, :cond_d

    goto :goto_7

    .line 269
    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_e
    :goto_7
    if-eqz v1, :cond_10

    .line 275
    invoke-virtual {p2, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v2, :cond_f

    move v3, v5

    :cond_f
    invoke-interface {v1, v3}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 276
    new-instance p1, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p1, v1, p3, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    if-eqz v0, :cond_13

    .line 278
    iget-object p3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_8
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 279
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p1, v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_8

    .line 284
    :cond_10
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object p3, v7

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    if-nez v3, :cond_11

    .line 286
    new-instance p3, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-direct {p3, v0, v1, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;-><init>(Lcom/sec/ims/volte2/IImsCallSession;Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;)V

    move v3, v5

    goto :goto_9

    .line 289
    :cond_11
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {p3, v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_9

    :cond_12
    move-object p1, p3

    .line 294
    :cond_13
    sget-object p3, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v0, "createCallSession, create imsCallSessionImpl for [CMC+D2D volte call]"

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance p3, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-direct {p3, p2, p1, v7, v0}, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    .line 297
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setCallSession(ILcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 300
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-virtual {p3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pCallSessionId(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p3

    .line 305
    :catch_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public createP2pCallSession()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 310
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "createP2pCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->needP2pCallSession(Z)V

    .line 314
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pCallSessionId()I

    move-result v1

    .line 315
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p2pSessionId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 317
    const-string/jumbo p0, "sub(wifi-direct) session is already created, just return"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 321
    :cond_0
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v4, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getCallSession(I)Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v1

    .line 322
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v4, v3}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pCallSessionId(I)V

    .line 325
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v4, :cond_2

    .line 326
    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getForegroundSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreSession.getCmcType(): "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string/jumbo p0, "pdcall is already connected. don\'t create subcallsession, just return"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 334
    :cond_1
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getExtMoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 335
    const-string/jumbo p0, "the call is MOcall. don\'t create subcallsession, just return"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 339
    :cond_2
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v4}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne v4, v5, :cond_3

    .line 340
    const-string p0, "Not support p2p"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    if-nez v1, :cond_4

    .line 344
    const-string/jumbo p0, "sessionImpl is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 348
    :cond_4
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v4

    .line 349
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v5

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v6

    invoke-static {v5, v6, v2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v5

    .line 350
    iget-object v6, v4, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v7, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 352
    const-string v7, "com.samsung.telephony.extra.CMC_BOUND_SESSION_ID"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 354
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 355
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "boundSessionId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v7, :cond_5

    .line 357
    invoke-virtual {v5, v7}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcBoundSessionId(I)V

    .line 360
    :cond_5
    const-string v7, "com.samsung.telephony.extra.CMC_DIAL_FROM"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 362
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 364
    invoke-virtual {v5, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLetteringText(Ljava/lang/String;)V

    .line 371
    :cond_6
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 372
    iget-object v7, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v7, :cond_b

    .line 374
    iget-object v7, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v7}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object v7

    .line 375
    sget-object v8, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    const-string v9, "not found P2P-SD"

    const-string v10, "create session on P2P-SD"

    if-ne v7, v8, :cond_8

    .line 376
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v7

    const/4 v8, 0x7

    invoke-direct {p0, v7, v8}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v7

    if-eq v7, v3, :cond_7

    .line 377
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v9, v5, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    :cond_7
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 382
    :cond_8
    sget-object v8, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->SDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne v7, v8, :cond_a

    .line 383
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v7

    const/16 v8, 0x8

    invoke-direct {p0, v7, v8}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v7

    if-eq v7, v3, :cond_9

    .line 384
    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v9, v5, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 387
    :cond_9
    invoke-static {v0, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 390
    :cond_a
    const-string v7, "not found P2P device, exception case"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_b
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "p2pSecSessionMap size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/ims/volte2/IImsCallSession;

    .line 397
    const-string v9, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v4, v9}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v9

    const/16 v10, 0x12

    if-ne v9, v10, :cond_c

    goto :goto_2

    :cond_c
    move v8, v2

    :goto_2
    invoke-interface {v7, v8}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    goto :goto_1

    .line 400
    :cond_d
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_13

    move v0, v8

    :goto_3
    const/4 v4, 0x5

    if-gt v0, v4, :cond_f

    .line 405
    invoke-virtual {v5}, Lcom/sec/ims/volte2/data/CallProfile;->getPhoneId()I

    move-result v4

    invoke-direct {p0, v4, v0}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v4

    if-eq v4, v3, :cond_e

    move v0, v8

    goto :goto_4

    :cond_e
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_f
    move v0, v2

    .line 410
    :goto_4
    sget-object v3, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "existMainSession: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    move-result-object v3

    .line 414
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    if-nez v2, :cond_11

    if-nez v0, :cond_10

    .line 417
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->setMainSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    move v2, v8

    goto :goto_5

    .line 420
    :cond_10
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v5}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_5

    .line 423
    :cond_11
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v3, v5}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->addP2pSession(Lcom/sec/ims/volte2/IImsCallSession;)V

    goto :goto_5

    .line 426
    :cond_12
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSubSessionList size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->initP2pImpl()V

    .line 429
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setCallSession(ILcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 432
    invoke-virtual {v3, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->startP2pSessions(Z)V

    :cond_13
    return-void
.end method

.method public getPendingCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 451
    sget-object v0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getPendingCallSession()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result p1

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    const-string v2, "com.samsung.telephony.extra.CMC_TYPE"

    const-string v3, "com.samsung.telephony.extra.CMC_SESSION_ID"

    const-string v4, ")"

    const-string v5, " -> "

    const-string v6, "getPendingCallSession(), SEM_EXTRA_CMC_TYPE: ("

    const/4 v7, 0x1

    if-eqz p1, :cond_4

    .line 453
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 454
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v8

    .line 455
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v9

    .line 457
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v10

    if-eqz v10, :cond_0

    goto :goto_0

    .line 459
    :cond_0
    invoke-static {v8}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x2

    goto :goto_0

    :cond_1
    move v7, v8

    .line 462
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-virtual {p1, v3, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 465
    invoke-virtual {p1, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 466
    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 467
    const-string v0, "com.samsung.telephony.extra.CMC_PHONE_ID"

    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I

    move-result p0

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 468
    :cond_2
    invoke-static {v7}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 469
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 470
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "put CMC_EXTERNAL_CALL_SLOT: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result p0

    const-string p3, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    invoke-virtual {p1, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    :cond_3
    :goto_1
    iget-object p0, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v1, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 476
    :cond_4
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 477
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p0

    sget-object p1, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->PDevice:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p0, p1, :cond_5

    .line 478
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 480
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p1

    .line 481
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p3

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual {p0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 484
    invoke-virtual {p0, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 485
    iget-object p1, p2, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v1, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public postProcessForCmcIncomingCall(ILandroid/content/Intent;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 7

    .line 506
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 507
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    .line 508
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    .line 509
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v3

    .line 511
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v1

    goto :goto_0

    .line 513
    :cond_0
    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x2

    .line 516
    :cond_1
    :goto_0
    sget-object v4, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postProcessForCmcIncomingCall(), SEM_EXTRA_CMC_TYPE: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v5, "com.samsung.telephony.extra.CMC_TYPE"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 519
    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne v2, v1, :cond_4

    .line 522
    const-string v2, "com.samsung.telephony.extra.CMC_DIAL_TO"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 524
    const-string v2, "com.samsung.telephony.extra.CMC_REPLACE_CALL_ID"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v2, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception p0

    goto/16 :goto_3

    .line 527
    :cond_2
    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 528
    const-string v2, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    :cond_3
    :goto_1
    const-string v0, "com.samsung.telephony.extra.CMC_PHONE_ID"

    invoke-direct {p0, p3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcPhoneId(Lcom/sec/ims/volte2/IImsCallSession;)I

    move-result v2

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 532
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "postProcessForCmcIncomingCall(), cmcEdCallSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v2, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 540
    invoke-interface {p3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p2

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    .line 541
    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->getP2pDeviceType()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;->None:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController$DeviceType;

    if-ne p2, p3, :cond_6

    const/4 p2, 0x7

    .line 542
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_6

    .line 543
    sget-object p1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "onIncomingCall: need wifi-direct connection, startCmcP2pConnection!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setP2pPD()V

    .line 549
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p0, v1}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->setCmcActivation(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 554
    :goto_3
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_6
    :goto_4
    return-void
.end method

.method public prepareCallSession(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    const/4 v1, 0x1

    .line 119
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 120
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 124
    :try_start_0
    invoke-direct {p0, p4, p2, p3}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->setBoundSessionInfo(ILandroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/data/CallProfile;)Z

    move-result v2

    .line 125
    sget-object v3, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepareCallSession(), isCmcRegExist: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    if-eqz v2, :cond_9

    if-ne p1, v1, :cond_4

    .line 129
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getCmcLineSlotIndex()I

    move-result p2

    .line 130
    invoke-direct {p0, p4, p1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v1

    iput v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-ne v1, v0, :cond_0

    .line 131
    const-string v1, "CMC PD is not registered."

    .line 132
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    goto :goto_0

    :cond_0
    if-eq p2, p4, :cond_1

    .line 134
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    const-string/jumbo v1, "phoneId and cmcLineSlotIndex are not matched"

    .line 136
    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    goto :goto_0

    .line 139
    :cond_1
    const-string/jumbo v1, "prepareCallSession, create session on CMC-PD"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmcLineSlotIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", phoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, p4, :cond_a

    .line 146
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x7

    goto :goto_1

    :cond_2
    const/4 p2, 0x5

    :goto_1
    const/4 v1, 0x3

    :goto_2
    if-gt v1, p2, :cond_a

    .line 150
    invoke-direct {p0, p4, v1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 151
    invoke-virtual {p3, v1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 152
    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v5, p3, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 156
    :cond_4
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSecondaryDevice()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 157
    const-string v1, "CallPull"

    invoke-virtual {p2, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x2

    if-eqz p2, :cond_5

    :goto_3
    move p1, v1

    goto :goto_4

    .line 159
    :cond_5
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/helper/os/TelephonyManagerWrapper;->getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ITelephonyManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/internal/helper/os/ITelephonyManager;->isVoiceCapable()Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_3

    .line 162
    :cond_6
    :goto_4
    invoke-direct {p0, p4, v1}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result p2

    iput p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcRegHandle:I

    if-eq p2, v0, :cond_7

    .line 163
    const-string p2, "create session on CMC SD"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 165
    :cond_7
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    :goto_5
    const/4 p2, 0x4

    .line 169
    invoke-direct {p0, p4, p2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result v1

    if-eq v1, v0, :cond_8

    .line 170
    const-string p4, "create session on WIFI-AP SD"

    invoke-static {v3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p3, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 172
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0, p3, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p0

    invoke-interface {p2, p4, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 174
    :cond_8
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {p2}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result p2

    if-eqz p2, :cond_a

    const/16 p2, 0x8

    .line 175
    invoke-direct {p0, p4, p2}, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->getCmcRegHandle(II)I

    move-result p4

    if-eq p4, v0, :cond_a

    .line 176
    const-string v0, "create session on WIFI-DIRECT SD"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p3, p2}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V

    .line 178
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mp2pSecSessionMap:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0, p3, p4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p0

    invoke-interface {p2, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 184
    :cond_9
    iput-boolean v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mCmcReady:Z

    .line 186
    :cond_a
    :goto_6
    invoke-virtual {p3, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return p1
.end method

.method public sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 493
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mConnectivityController:Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;

    invoke-interface {v0}, Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;->isEnabledWifiDirectFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    .line 497
    :goto_0
    sget-object v1, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendPublishDialog() callCnt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/internal/telephony/PublishDialog;->getCallCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :goto_1
    if-gt v1, v0, :cond_1

    .line 499
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setServiceProfile(Lcom/sec/internal/imsphone/ServiceProfile;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsServiceUtil;->mServiceProfile:Lcom/sec/internal/imsphone/ServiceProfile;

    return-void
.end method
