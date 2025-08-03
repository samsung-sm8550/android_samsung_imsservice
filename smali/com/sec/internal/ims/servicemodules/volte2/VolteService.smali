.class public Lcom/sec/internal/ims/servicemodules/volte2/VolteService;
.super Lcom/sec/ims/volte2/IVolteService$Stub;
.source "VolteService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION:Ljava/lang/String; = "com.sec.imsservice.PERMISSION"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/sec/ims/volte2/IVolteService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    .line 35
    check-cast p1, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    .line 36
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isPermissionGranted()Z
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v0, "com.sec.imsservice.PERMISSION"

    .line 236
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
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

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->updateAudioInterface(II)V

    return-void
.end method

.method public createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createCallProfile(II)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public createSessionWithRegId(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deRegisterForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    return-void
.end method

.method public deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 97
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deregisterForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void

    .line 98
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deregisterForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->deregisterForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void

    .line 118
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enableCallWaitingRule(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->enableCallWaitingRule(Z)V

    return-void
.end method

.method public getCallCount()[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getTotalCallCount(I)I

    move-result v0

    .line 153
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getVideoCallCount(I)I

    move-result v2

    .line 154
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getDowngradedCallCount(I)I

    move-result v3

    .line 155
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getE911CallCount(I)I

    move-result p0

    filled-new-array {v0, v2, v3, p0}, [I

    move-result-object p0

    return-object p0

    .line 148
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getImsCallInfos(I)[Lcom/sec/ims/volte2/data/ImsCallInfo;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getNetworkType(I)I

    move-result p0

    return p0
.end method

.method public getParticipantIdForMerge(II)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getParticipantIdForMerge(II)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getPendingSession(Ljava/lang/String;)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getPendingSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 219
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;

    move-result-object p0

    return-object p0
.end method

.method public getRttMode()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getRttMode()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSession(I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getSessionByCallId(I)Lcom/sec/ims/volte2/IImsCallSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->getSessionByCallId(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    return-object p0
.end method

.method public getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->getTrn(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public notifyProgressIncomingCall(ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    instance-of v0, p2, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 141
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->notifyProgressIncomingCall(ILjava/util/HashMap;)V

    :cond_0
    return-void
.end method

.method public registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForCallStateEvent(Lcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Permission denied"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerForCallStateEventForSlot(ILcom/sec/ims/volte2/IImsCallEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->isPermissionGranted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForCallStateEvent(ILcom/sec/ims/volte2/IImsCallEventListener;)V

    return-void

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Permission denied"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerForVolteServiceEvent(ILcom/sec/ims/volte2/IVolteServiceEventListener;)V

    return-void
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 209
    invoke-static {p1, p2, p3}, Lcom/sec/internal/ims/registry/ImsRegistry;->registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)V

    return-void
.end method

.method public registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    return-void
.end method

.method public sendRttSessionModifyRequest(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    return-void
.end method

.method public sendRttSessionModifyResponse(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    return-void
.end method

.method public setAutomaticMode(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->setAutomaticMode(IZ)V

    return-void
.end method

.method public setTtyMode(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->setTtyMode(I)V

    return-void
.end method

.method public startLocalRingBackTone(III)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->startLocalRingBackTone(III)I

    move-result p0

    return p0
.end method

.method public stopLocalRingBackTone()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->stopLocalRingBackTone()I

    move-result p0

    return p0
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {p1}, Lcom/sec/internal/ims/registry/ImsRegistry;->unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V

    return-void
.end method

.method public unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    return-void
.end method

.method public updateEccUrn(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.imsservice.PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/VolteService;->mServiceModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModule;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;->updateEccUrn(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
