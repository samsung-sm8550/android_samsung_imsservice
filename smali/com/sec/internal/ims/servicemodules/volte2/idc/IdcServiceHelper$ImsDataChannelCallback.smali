.class Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;
.super Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub;
.source "IdcServiceHelper.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;


# direct methods
.method private constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    invoke-direct {p0}, Lcom/samsung/android/imsdcservice/IImsDataChannelCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;-><init>(Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;)V

    return-void
.end method


# virtual methods
.method public sendCallEnd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendCallEnd telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByTelecomCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x5

    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    const-string p0, "RemoteException on termiate callsession with id : "

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public sendNegotiatedLocalSdp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendNegotiatedLocalSdp telecomCallId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " negotiatedLocalSdp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[IDC][FW]IdcServiceHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByTelecomCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    const-string p2, "NO_DATA"

    :cond_0
    if-eqz p0, :cond_1

    .line 100
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->sendNegotiatedLocalSdp(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public sendSdpAnswer(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendSdpAnswer telecomCallId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sdpAnswer : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByTelecomCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 75
    invoke-virtual {p0, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->acceptIdc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSdpOffer(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 63
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sendSdpOffer reqId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " telecomCallId : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sdpOffer : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "[IDC][FW]IdcServiceHelper"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper$ImsDataChannelCallback;->this$0:Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/idc/IdcServiceHelper;->mImsCallSessionManager:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSessionManager;->getSessionByTelecomCallId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0, p1, p4}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->reInviteIdc(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
