.class public interface abstract Lcom/sec/internal/ims/servicemodules/volte2/ICmcServiceHelperInternal;
.super Ljava/lang/Object;
.source "ICmcServiceHelperInternal.java"


# virtual methods
.method public abstract getActiveSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getCmcCallEstablishTime(Ljava/lang/String;)J
.end method

.method public abstract getCmcCallInfo()Lcom/sec/ims/cmc/CmcCallInfo;
.end method

.method public getCmcRegistration(II)Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getCsCallPhoneIdByState(I)I
.end method

.method public abstract getSessionByCmcType(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getSessionByCmcTypeAndState(ILcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
.end method

.method public abstract getSessionCountByCmcType(II)I
.end method

.method public abstract hasActiveCmcCallsession(I)Z
.end method

.method public abstract isCmcRegExist(I)Z
.end method

.method public abstract onCmcDtmfInfo(Lcom/sec/internal/ims/servicemodules/volte2/data/DtmfInfo;)V
.end method

.method public abstract onRegEventContactUriNotification(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract sendDummyPublishDialog(II)V
.end method

.method public abstract sendPublishDialog(ILcom/android/internal/telephony/PublishDialog;I)V
.end method

.method public abstract sendPublishDialogInternal(II)V
.end method

.method public abstract setCallEstablishTimeExtra(J)V
.end method

.method public abstract setP2pServiceInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startP2p(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract startP2pDiscovery(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract stopCmcHandoverTimer(Lcom/sec/ims/ImsRegistration;)V
.end method
