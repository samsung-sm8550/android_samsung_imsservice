.class public interface abstract Lcom/sec/internal/interfaces/ims/core/IRegisterTask;
.super Ljava/lang/Object;
.source "IRegisterTask.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/PdnEventListener;


# virtual methods
.method public abstract clearNotAvailableReason()V
.end method

.method public abstract clearSuspended()V
.end method

.method public abstract clearSuspendedBySnapshot()V
.end method

.method public abstract clearUpdateRegisteringFlag()V
.end method

.method public abstract clearUserAgent()V
.end method

.method public abstract getDeregiCause(Lcom/sec/ims/util/SipError;)I
.end method

.method public abstract getDeregiReason()I
.end method

.method public abstract getDnsQueryRetryCount()I
.end method

.method public abstract getFilteredReason()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGovernor()Lcom/sec/internal/interfaces/ims/core/IRegistrationGovernor;
.end method

.method public abstract getImsRegistration()Lcom/sec/ims/ImsRegistration;
.end method

.method public abstract getLastRegiFailReason()I
.end method

.method public abstract getMno()Lcom/sec/internal/constants/Mno;
.end method

.method public abstract getNetworkConnected()Landroid/net/Network;
.end method

.method public abstract getNotAvailableReason()I
.end method

.method public abstract getPani()Ljava/lang/String;
.end method

.method public abstract getPcscfHostname()Ljava/lang/String;
.end method

.method public abstract getPdnType()I
.end method

.method public abstract getPhoneId()I
.end method

.method public abstract getProfile()Lcom/sec/ims/settings/ImsProfile;
.end method

.method public abstract getRcsRegistrationBuilder()Lcom/sec/internal/ims/core/RcsRegistration$Builder;
.end method

.method public abstract getReason()Ljava/lang/String;
.end method

.method public abstract getRecoveryReason()Ljava/lang/String;
.end method

.method public abstract getRegiFailReason()I
.end method

.method public abstract getRegiRequestType()Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;
.end method

.method public abstract getRegistrationRat()I
.end method

.method public abstract getResultMessage()Landroid/os/Message;
.end method

.method public abstract getState()Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;
.end method

.method public abstract getUserAgent()Lcom/sec/internal/interfaces/ims/core/IUserAgent;
.end method

.method public abstract hasForcedPendingUpdate()Z
.end method

.method public abstract hasPendingDeregister()Z
.end method

.method public abstract hasPendingEpdgHandover()Z
.end method

.method public abstract hasPendingUpdate()Z
.end method

.method public abstract isEpdgHandoverInProgress()Z
.end method

.method public abstract isImmediatePendingUpdate()Z
.end method

.method public abstract isKeepPdn()Z
.end method

.method public abstract isNeedOmadmConfig()Z
.end method

.method public varargs abstract isOneOf([Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)Z
.end method

.method public abstract isRcsOnly()Z
.end method

.method public abstract isRefreshReg()Z
.end method

.method public abstract isSuspended()Z
.end method

.method public abstract isUpdateRegistering()Z
.end method

.method public abstract keepEmergencyTask(Z)V
.end method

.method public abstract needKeepEmergencyTask()Z
.end method

.method public abstract resetTaskOnPdnDisconnected()V
.end method

.method public abstract setDeregiReason(I)V
.end method

.method public abstract setDnsQueryRetryCount(I)V
.end method

.method public abstract setEpdgHandoverInProgress(Z)V
.end method

.method public abstract setHasForcedPendingUpdate(Z)V
.end method

.method public abstract setHasPendingDeregister(Z)V
.end method

.method public abstract setHasPendingEpdgHandover(Z)V
.end method

.method public abstract setImmediatePendingUpdate(Z)V
.end method

.method public abstract setImsRegistration(Lcom/sec/ims/ImsRegistration;)V
.end method

.method public abstract setIsRefreshReg(Z)V
.end method

.method public abstract setKeepPdn(Z)V
.end method

.method public abstract setLastRegiFailReason(I)V
.end method

.method public abstract setNotAvailableReason(I)V
.end method

.method public abstract setPaniSet(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPcscfHostname(Ljava/lang/String;)V
.end method

.method public abstract setPdnType(I)V
.end method

.method public abstract setPendingUpdate(Z)V
.end method

.method public abstract setReason(Ljava/lang/String;)V
.end method

.method public abstract setRecoveryReason(Ljava/lang/String;)V
.end method

.method public abstract setRegiFailReason(I)V
.end method

.method public abstract setRegiRequestType(Lcom/sec/internal/constants/ims/DiagnosisConstants$REGI_REQC;)V
.end method

.method public abstract setRegistrationRat(I)V
.end method

.method public abstract setResultMessage(Landroid/os/Message;)V
.end method

.method public abstract setState(Lcom/sec/internal/constants/ims/core/RegistrationConstants$RegisterTaskState;)V
.end method

.method public abstract setUpdateRegistering(Z)V
.end method

.method public abstract setUserAgent(Lcom/sec/internal/interfaces/ims/core/IUserAgent;)V
.end method
