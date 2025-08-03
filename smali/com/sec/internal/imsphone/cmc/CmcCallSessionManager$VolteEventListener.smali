.class Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;
.super Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;
.source "CmcCallSessionManager.java"


# instance fields
.field private mSession:Lcom/sec/ims/volte2/IImsCallSession;

.field final synthetic this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;


# direct methods
.method constructor <init>(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-direct {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener$Stub;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method


# virtual methods
.method public notifyReadyToHandleImsCallbacks()V
    .locals 0

    .line 0
    return-void
.end method

.method public onCallQualityChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onCalling()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 201
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onCalling()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onCalling()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfParticipantHeld(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 455
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantHeld(IZ)V

    return-void
.end method

.method public onConfParticipantResumed(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 463
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConfParticipantResumed(IZ)V

    return-void
.end method

.method public onConferenceEstablished()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 419
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 422
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onConferenceEstablished()V

    return-void
.end method

.method public onEPdgUnavailable(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onEarlyMediaStarted(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 237
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onEarlyMediaStarted()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEarlyMediaStarted(I)V

    return-void
.end method

.method public onEnded(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnded(), error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 339
    const-string p0, "already ended!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmIsReplacedSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Z)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MainSession: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", cmcType: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v4}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSession: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v3

    const/4 v4, 0x0

    if-eq v0, v3, :cond_2

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMainSession callState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v3}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSubSessionList size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->InCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_1

    .line 352
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result v2

    aget-object v0, v0, v2

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->AlertingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v2, :cond_1

    .line 353
    const-string v0, "CMC session ended, switch mainSession to p2p session."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 357
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmIsReplacedSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Z)V

    goto :goto_0

    .line 359
    :cond_1
    const-string p1, "SUB(WIFI or WIFI-DIRECT) session ended, ignore onEnded"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iput-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 364
    const-string p0, "Ignore onEnded as there are other call sessions waiting"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;I)V

    .line 368
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEnded(I)V

    .line 371
    iput-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public onEpdgStateChanged()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 488
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 491
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEpdgStateChanged()V

    return-void
.end method

.method public onError(ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onError(), error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 387
    const-string p0, "already ended!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onError(ILjava/lang/String;I)V

    const/16 p2, 0x451

    if-eq p1, p2, :cond_1

    const/16 p2, 0x452

    if-eq p1, p2, :cond_1

    const/16 p2, 0x45e

    if-eq p1, p2, :cond_1

    const/16 p2, 0x45f

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    .line 404
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    goto :goto_0

    .line 401
    :cond_1
    :pswitch_0
    const-string p0, "Do not set mSession to null"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x455
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onEstablished(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEstablished(), established on session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mainSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 247
    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    const/4 v3, 0x5

    if-eq v0, v2, :cond_0

    .line 252
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v2

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;I)V

    .line 255
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "prev main session terminate, replaced mainSessionId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmReplacedSessionId(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 258
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "main terminate failed.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :goto_0
    const-string/jumbo v0, "switch main session to p2p session."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {v0, v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fputmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;Lcom/sec/ims/volte2/IImsCallSession;)V

    .line 263
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onEstablished(I)V

    .line 269
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSubSessionList size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 272
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/ims/volte2/IImsCallSession;

    .line 273
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    iget-object v4, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 275
    :try_start_1
    invoke-interface {v0, v3}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "p2p terminate failed.."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onFailure(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onFailure() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CmcCallSessionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 287
    const-string p0, "already ended!!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v2}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 292
    const-string/jumbo p1, "remove session from mSubSessionList"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmSubSessionList(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSubSessionList size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->getP2pSessionSize()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onFailure(I)V

    const/4 p1, 0x0

    .line 298
    iput-object p1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    return-void
.end method

.method public onForwarded()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onForwarded()V

    return-void
.end method

.method public onHeld(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onHeld(ZZ)V

    return-void
.end method

.method public onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 501
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onImsGeneralEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onParticipantAdded(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 439
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantAdded(I)V

    return-void
.end method

.method public onParticipantRemoved(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 444
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 447
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantRemoved(I)V

    return-void
.end method

.method public onParticipantUpdated(I[Ljava/lang/String;[I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 428
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 431
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onParticipantUpdated(I[Ljava/lang/String;[I[I)V

    return-void
.end method

.method public onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 411
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 414
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onProfileUpdated(Lcom/sec/ims/volte2/data/MediaProfile;Lcom/sec/ims/volte2/data/MediaProfile;)V

    return-void
.end method

.method public onResumed(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onResumed(Z)V

    return-void
.end method

.method public onRetryingVoLteOrCsCall(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public onRingingBack()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onRingingBack()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onRingingBack()V

    return-void
.end method

.method public onSessionChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 496
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionChanged(I)V

    return-void
.end method

.method public onSessionProgress(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 228
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onSessionProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 232
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSessionProgress(I)V

    return-void
.end method

.method public onSessionUpdateRequested(I[B)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStopAlertTone()V
    .locals 0

    .line 0
    return-void
.end method

.method public onSwitched(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 303
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onSwitched()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 307
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onSwitched(I)V

    return-void
.end method

.method public onTrying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 210
    const-string v0, "CmcCallSessionManager"

    const-string/jumbo v1, "onTrying()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onTrying()V

    return-void
.end method

.method public onTtyTextRequest(I[B)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUssdReceived(II[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {v1}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmMainSession(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 479
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager$VolteEventListener;->this$0:Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;

    invoke-static {p0}, Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;->-$$Nest$fgetmImpleEventListener(Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;)Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->onUssdReceived(II[B)V

    return-void
.end method

.method public onUssdResponse(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method
