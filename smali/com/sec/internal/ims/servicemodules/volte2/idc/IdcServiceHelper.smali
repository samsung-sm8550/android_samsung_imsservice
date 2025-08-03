.class public Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;
.super Landroid/os/Handler;
.source "IdcServiceHelper.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IIdcServiceHelper;


# static fields
.field private static final EVT_TRY_RECONNECT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "[IDC][FW]IdcServiceHelper"

.field private static final SERVICE_CLASS_NAME:Ljava/lang/String; = "com.samsung.android.imsdcservice.SecImsDataChannelService"

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.imsdcservice"

.field private static mImsDataChannelCallback:Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

.field protected static mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

.field protected mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field mServiceConn:Landroid/content/ServiceConnection;

.field private mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;


# direct methods
.method static bridge synthetic -$$Nest$fputmState(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    return-void
.end method

.method static bridge synthetic -$$Nest$monConnected(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->onConnected()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;)V
    .locals 0

    .line 107
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 38
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    .line 44
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;

    invoke-direct {p2, p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$1;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 108
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mContext:Landroid/content/Context;

    .line 109
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 110
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    return-void
.end method

.method private connectToDcManager()V
    .locals 4

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DcManager state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    if-eq v0, v2, :cond_0

    .line 123
    const-string v0, "connectToDcManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    const-string v1, "com.samsung.android.imsdcservice"

    const-string v2, "com.samsung.android.imsdcservice.SecImsDataChannelService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 127
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTING:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    :cond_0
    return-void
.end method

.method private onConnected()V
    .locals 2

    .line 135
    const-string v0, "[IDC][FW]IdcServiceHelper"

    const-string/jumbo v1, "onConnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    if-eqz v0, :cond_0

    .line 137
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    .line 138
    new-instance v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback-IA;)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsDataChannelCallback:Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;

    .line 140
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, v0, v1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setImsDataChannelCallback(Lcom/samsung/android/imsdcservice/IImsDataChannelCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private setLocalBdcTlsId(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)V
    .locals 3

    .line 395
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 396
    const-string p0, "\r\n"

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 397
    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p0, v0

    .line 398
    const-string v2, "a=tls-id:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p0, 0x9

    .line 399
    invoke-virtual {v1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setLocalBdcTlsId(Ljava/lang/String;)V

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setLocalBdcTlsId: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "[IDC][FW]IdcServiceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public createBootstrapDataChannel(I)V
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBootstrapDataChannel slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 220
    :cond_0
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->createBootstrapDataChannel(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 222
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public finishIDCApp()V
    .locals 0

    .line 0
    return-void
.end method

.method public getBootstrapLocalSdp(I)Ljava/lang/String;
    .locals 2

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBootstrapLocalSdp slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 233
    :cond_0
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->getBootstrapLocalSdp(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 235
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public getNegotiatedLocalSdp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNegotiatedLocalSdp telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 247
    :cond_0
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->getNegotiatedLocalSdp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 203
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->connectToDcManager()V

    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 114
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->IDLE:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    return-void
.end method

.method protected isBinderReady()Z
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;->SERVICE_CONNECTED:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    .line 388
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder not ready mState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mState:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$DcMgrState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public notifyCallEnded(II)V
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCallEnded slotId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sessionId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 322
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTelecomCallIdBySessionId(I)Ljava/lang/String;

    move-result-object p0

    .line 323
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyCallEnded telecomCallId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->endImsDataChannel(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 326
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public notifyCallEstablished(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public notifyErrorToSdpOffer(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .locals 4

    .line 188
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    .line 189
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTelecomCallIdBySessionId(I)Ljava/lang/String;

    move-result-object p0

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyErrorToSdpOffer telecomCallId : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " reqId : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string/jumbo v1, "req_id"

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " should_retry : "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "should_retry"

    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 191
    const-string v3, "[IDC][FW]IdcServiceHelper"

    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 195
    invoke-virtual {p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getInt(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 194
    :goto_0
    invoke-interface {p1, v1, v0, p0, p2}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->notifyErrorToSdpOffer(IILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 197
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public onImsIncomingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .locals 2

    .line 298
    const-string v0, "[IDC][FW]IdcServiceHelper"

    const-string/jumbo v1, "onImsIncomingCallIdcEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->createBootstrapDataChannel(I)V

    .line 300
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setBootstrapRemoteOfferSdp(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V

    .line 302
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->getBootstrapLocalSdp(I)Ljava/lang/String;

    move-result-object p2

    .line 303
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setLocalBdcSdp(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setLocalBdcTlsId(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)V

    return-void
.end method

.method public onImsOutgoingCallIdcEvent(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;)V
    .locals 4

    .line 283
    const-string/jumbo v0, "onImsOutgoingCallIdcEvent"

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->createBootstrapDataChannel(I)V

    .line 285
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->getBootstrapLocalSdp(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "localSdp : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setLocalBdcSdp(Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setLocalBdcTlsId(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getIsNotifiedTelecomCallId()Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getLocalBdcTlsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getIdcData()Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/core/imsdc/IdcImsCallSessionData;->setIsNotifiedTelecomCallId(Z)V

    :cond_0
    return-void
.end method

.method public onRegistered(Lcom/sec/ims/ImsRegistration;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 380
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {p1}, Lcom/sec/ims/ImsRegistration;->getPhoneId()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->isSupportImsDataChannel(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p1

    if-nez p1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->connectToDcManager()V

    :cond_0
    return-void
.end method

.method protected processingRFC8841v5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 343
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v0, "[IDC][FW]IdcServiceHelper"

    if-eqz p0, :cond_0

    .line 344
    const-string/jumbo p0, "processingRFC8841v5: sdp is null or empty"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 348
    :cond_0
    const-string p0, "UDP/DTLS/SCTP webrtc-datachannel"

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 350
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "processingRFC8841v5: isRFC8841currentVersion? "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 354
    :cond_1
    const-string/jumbo v1, "practice processingRFC8841v5()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 357
    const-string v1, "\\r?\\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 358
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_4

    aget-object v4, p1, v3

    .line 359
    const-string v5, " DTLS/SCTP "

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "\r\n"

    if-eqz v5, :cond_2

    .line 360
    const-string v5, "DTLS/SCTP"

    invoke-virtual {v4, v5, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 361
    const-string v5, "datachannel"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xb

    .line 362
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 363
    :cond_2
    const-string/jumbo v5, "sctpmap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 364
    const-string/jumbo v7, "sctp-port"

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 365
    const-string/jumbo v5, "webrtc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 366
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 368
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 371
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public receiveSdpAnswer(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .locals 2

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTelecomCallIdBySessionId(I)Ljava/lang/String;

    move-result-object p0

    .line 177
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receiveSdpAnswer telecomCallId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :try_start_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    const-string/jumbo v0, "req_id"

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "sdp"

    .line 180
    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, -0x1

    .line 179
    invoke-interface {p1, v0, p0, v1, p2}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->receiveSdpAnswer(ILjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 182
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public receiveSdpOffer(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .locals 2

    .line 164
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getTelecomCallIdBySessionId(I)Ljava/lang/String;

    move-result-object p0

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "receiveSdpOffer telecomCallId : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    const-string/jumbo v0, "sdp"

    .line 168
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    const/4 v1, -0x1

    .line 167
    invoke-interface {p1, p0, v1, p2, v0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->receiveSdpOffer(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 170
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setBootstrapRemoteAnswerSdp(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBootstrapRemoteAnswerSdp telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    const-string/jumbo v0, "sdp"

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->processingRFC8841v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 155
    :try_start_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "modifiedSDP : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setBootstrapRemoteAnswerSdp(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 158
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setBootstrapRemoteOfferSdp(ILcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;)V
    .locals 2

    .line 269
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    :try_start_0
    const-string/jumbo v0, "sdp"

    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcExtra;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->processingRFC8841v5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 274
    const-string p2, "[IDC][FW]IdcServiceHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "modifiedSDP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p2, p1, p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setBootstrapRemoteOfferSdp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 277
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTelecomCallId tlsId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->isBinderReady()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 261
    :cond_0
    :try_start_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mServiceBinder:Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/imsdcservice/IImsDataChannelServiceController;->setTelecomCallId(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method
