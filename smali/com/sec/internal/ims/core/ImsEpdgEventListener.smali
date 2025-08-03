.class Lcom/sec/internal/ims/core/ImsEpdgEventListener;
.super Lcom/sec/ims/ImsManager$EpdgListener;
.source "ImsEpdgEventListener.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

.field private final mPdnController:Lcom/sec/internal/ims/core/PdnController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/core/PdnController;Lcom/sec/internal/interfaces/ims/IImsFramework;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sec/ims/ImsManager$EpdgListener;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    .line 22
    iput-object p2, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    return-void
.end method

.method private eventLog(ILjava/lang/String;)V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p0}, Lcom/sec/internal/ims/core/PdnController;->getEventLog()Lcom/sec/internal/helper/SimpleEventLog;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_0

    .line 122
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private notifyEpdgRequest(IZZ)V
    .locals 2

    .line 107
    sget-object v0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "notifyEpdgRequest:"

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    if-eqz p3, :cond_0

    .line 110
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgRegisterRequested(IZ)V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgDeregisterRequested(I)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public onEpdgAvailable(III)V
    .locals 5

    .line 27
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/core/PdnController;->getNetworkState(I)Lcom/sec/internal/constants/ims/os/NetworkState;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 29
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onEpdgAvailable: availability="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " physicalInterface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->eventLog(ILjava/lang/String;)V

    .line 31
    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgAvailable(Z)V

    .line 32
    invoke-virtual {v0, p3}, Lcom/sec/internal/constants/ims/os/NetworkState;->setEpdgPhysicalInterface(I)V

    .line 33
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p3, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 35
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mImsFramework:Lcom/sec/internal/interfaces/ims/IImsFramework;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/IImsFramework;->getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 37
    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IGeolocationController;->notifyEpdgAvailable(II)V

    :cond_1
    return-void
.end method

.method public onEpdgDeregister(I)V
    .locals 2

    .line 57
    const-string/jumbo v0, "onEpdgDeregister"

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->eventLog(ILjava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0, v0}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->notifyEpdgRequest(IZZ)V

    return-void
.end method

.method public onEpdgHandoverEnableChanged(IZ)V
    .locals 1

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 102
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgHandoverEnableChanged(IZ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEpdgHandoverResult(IIILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    if-ne p2, v1, :cond_1

    .line 44
    const-string v1, "LTE_TO_WLAN"

    goto :goto_1

    :cond_1
    const-string v1, "WLAN_TO_LTE"

    .line 45
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEpdgHandoverResult:  Direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " result="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->eventLog(ILjava/lang/String;)V

    if-eqz p3, :cond_2

    .line 48
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {p3, p1, v0}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 49
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/16 p3, 0x68

    .line 50
    invoke-virtual {p0, p3, p1, p2, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method

.method public onEpdgIpsecConnection(ILjava/lang/String;II)V
    .locals 2

    .line 64
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onEpdgIpsecConnection:  ikeError="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " apnType="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p0, p1, p4}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->eventLog(ILjava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataSubscriptionId()I

    move-result p4

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    .line 66
    invoke-static {p4}, Lcom/sec/internal/helper/SimUtil;->getSlotId(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    :goto_0
    if-nez p3, :cond_2

    .line 67
    iget-object v1, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/PdnController;->isWifiConnected()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object v0, v0, Lcom/sec/internal/ims/core/PdnController;->mTelephonyManager:Lcom/sec/internal/helper/os/ITelephonyManager;

    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0, p4}, Lcom/sec/internal/helper/os/ITelephonyManager;->semGetDataState(I)I

    move-result p4

    const/4 v0, 0x2

    if-ne p4, v0, :cond_2

    .line 71
    :cond_1
    iget-object p3, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/4 p4, 0x0

    invoke-virtual {p3, p1, p4}, Lcom/sec/internal/ims/core/PdnController;->setPendedEPDGWeakSignal(IZ)V

    .line 72
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    const/16 p3, 0x68

    const/4 p4, 0x1

    .line 73
    invoke-virtual {p0, p3, p1, p4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 72
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    const/16 p2, 0x18

    if-ne p3, p2, :cond_3

    .line 75
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0x6d

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onEpdgIpsecDisconnection(ILjava/lang/String;)V
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEpdgIpsecDisconnection:  apnType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->eventLog(ILjava/lang/String;)V

    .line 82
    const-string v0, "ims"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 83
    iget-object p0, p0, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->mPdnController:Lcom/sec/internal/ims/core/PdnController;

    iget-object p0, p0, Lcom/sec/internal/ims/core/PdnController;->mNetworkStateListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;

    .line 84
    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/NetworkStateListener;->onEpdgIpsecDisconnected(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEpdgRegister(IZ)V
    .locals 2

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEpdgRegister: cdmaAvailability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->eventLog(ILjava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/ims/core/ImsEpdgEventListener;->notifyEpdgRequest(IZZ)V

    return-void
.end method

.method public onEpdgShowPopup(II)V
    .locals 0

    .line 0
    return-void
.end method
