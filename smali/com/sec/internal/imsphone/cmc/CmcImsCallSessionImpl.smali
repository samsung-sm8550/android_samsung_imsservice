.class public Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;
.super Lcom/sec/internal/imsphone/ImsCallSessionImpl;
.source "CmcImsCallSessionImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CmcImsCallSessionImpl"


# instance fields
.field private mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;


# direct methods
.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    .line 47
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    .line 48
    invoke-virtual {p2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    if-nez p1, :cond_0

    .line 49
    const-string p1, "CmcImsCallSessionImpl"

    const-string p2, "mainSession is null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    .line 51
    const-string p1, "1"

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    const/4 p1, 0x1

    .line 52
    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallIdInt:I

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->initP2pImpl()V

    :goto_0
    return-void
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 198
    invoke-super {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public cancelTransferCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 366
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 367
    invoke-super {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->cancelTransferCall()V

    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 361
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V

    return-void
.end method

.method public getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    return-object p0
.end method

.method public getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 93
    invoke-super {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    return-object p0
.end method

.method public getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 98
    invoke-super {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 88
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 228
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public initP2pImpl()V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    const-string v1, "CmcImsCallSessionImpl"

    if-eqz v0, :cond_0

    .line 60
    const-string p0, "initP2pImpl(), already impl is initialized, just return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_0
    :try_start_0
    const-string v0, "initP2pImpl()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 68
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 69
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 70
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getCallId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallIdInt:I

    if-lez v0, :cond_1

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 78
    :cond_1
    :goto_0
    new-instance v0, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;-><init>(Lcom/sec/ims/volte2/IImsCallSession;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    return-void
.end method

.method public isInCall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 104
    invoke-super {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isInCall()Z

    move-result p0

    return p0
.end method

.method public isMultiparty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 264
    invoke-super {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isMultiparty()Z

    move-result p0

    return p0
.end method

.method public reject(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 204
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->reject(I)V

    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 234
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 240
    invoke-super {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 373
    invoke-super {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 337
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->sendRttMessage(Ljava/lang/String;)V

    return-void
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 343
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    return-void
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 349
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->sendRttModifyResponse(Z)V

    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 258
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->sendUssd(Ljava/lang/String;)V

    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 110
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 111
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 116
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 117
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x3

    .line 118
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setCallProfile(I)V

    .line 120
    iget-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {p2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    .line 121
    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getPhoneId()I

    move-result v2

    .line 122
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 125
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    .line 126
    invoke-virtual {v4}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->rilRadioTechnologyToNetworkType(I)I

    move-result v4

    .line 125
    const-string v5, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v3, v5, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 129
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    invoke-interface {v3, v2, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    .line 130
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 132
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallPull"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 133
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 134
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v2

    if-eqz v2, :cond_7

    if-eqz p1, :cond_7

    .line 138
    const-string v3, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 140
    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    if-nez v4, :cond_4

    goto :goto_0

    .line 146
    :cond_4
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 147
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_5

    .line 148
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 151
    :cond_5
    :try_start_0
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ne p1, v5, :cond_3

    .line 158
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 160
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 161
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v3

    iput v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 162
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 163
    invoke-virtual {p2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 164
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 165
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cmcEdCallSlot: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallSlot()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CmcImsCallSessionImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallSlot()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCmcEdCallSlot(I)V

    .line 169
    :cond_6
    :try_start_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v4}, Lcom/sec/ims/volte2/IImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    const/16 p1, 0x3f7

    goto :goto_2

    :cond_7
    const/16 p1, 0x65

    .line 179
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_a

    .line 180
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p2, p1, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 184
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result p1

    if-ltz p1, :cond_9

    goto :goto_3

    .line 185
    :cond_9
    new-instance p1, Landroid/os/RemoteException;

    const-string/jumbo p2, "start return -1"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 188
    :catch_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_a

    .line 189
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_a
    :goto_3
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 245
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 246
    invoke-super {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->startDtmf(C)V

    return-void
.end method

.method public stopDtmf()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 252
    invoke-super {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->stopDtmf()V

    return-void
.end method

.method public terminate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object p1

    const-string v0, "1"

    const/4 v1, 0x3

    invoke-interface {p1, v1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallEndReasonFromFW(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->terminate(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x1f5

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 219
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_1

    .line 220
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x67

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 354
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 355
    invoke-super {p0, p1, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->transfer(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateCallProfile()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 331
    invoke-super {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCallProfile()V

    return-void
.end method

.method public updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v1, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "com.samsung.telephony.extra.CMC_CS_DTMF_KEY"

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 273
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 278
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 281
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    .line 282
    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v4}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getSessionId()I

    move-result v4

    .line 284
    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isP2pPrimaryType(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    move v3, v6

    goto :goto_1

    .line 286
    :cond_3
    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v3, 0x2

    .line 289
    :cond_4
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCmcCallExtras(), SEM_EXTRA_CMC_TYPE: ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/sec/internal/imsphone/cmc/CmcImsCallSessionImpl;->mP2pCSM:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v7}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getMainSession()Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "CmcImsCallSessionImpl"

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v5, "com.samsung.telephony.extra.CMC_TYPE"

    invoke-virtual {v0, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 293
    const-string v5, "com.samsung.telephony.extra.CMC_SESSION_ID"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-ne v3, v6, :cond_8

    .line 295
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.samsung.telephony.extra.CMC_DIAL_TO"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDtmfKey()I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_9

    const/16 v6, 0xc

    if-ge v5, v6, :cond_9

    if-ltz v5, :cond_5

    const/16 v6, 0x9

    if-gt v5, v6, :cond_5

    add-int/lit8 v5, v5, 0x30

    int-to-char v5, v5

    goto :goto_2

    :cond_5
    const/16 v6, 0xa

    if-ne v5, v6, :cond_6

    const/16 v5, 0x2a

    goto :goto_2

    :cond_6
    const/16 v6, 0xb

    if-ne v5, v6, :cond_7

    const/16 v5, 0x23

    goto :goto_2

    :cond_7
    const/4 v5, 0x0

    .line 306
    :goto_2
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 308
    :cond_8
    invoke-static {v3}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 309
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object v2

    const-string v5, "com.samsung.telephony.extra.CMC_PD_CALL_CONNECT_TIME"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;->isSupportDualSimCMC()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 311
    const-string v2, "com.samsung.telephony.extra.CMC_EXTERNAL_CALL_SLOT"

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcEdCallSlot()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    :cond_9
    :goto_3
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 316
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getReplaceSipCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x7000000a

    const-string v7, ","

    if-nez v5, :cond_a

    .line 318
    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID_BY_SD"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",CMC_DEVICE_ID_BY_SD"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_b

    .line 321
    const-string v5, "com.samsung.telephony.extra.CMC_DEVICE_ID"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcCallTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",CMC_DEVICE_ID"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 326
    :cond_b
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
