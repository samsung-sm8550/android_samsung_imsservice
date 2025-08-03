.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;
.super Ljava/lang/Object;
.source "ImsCallDedicatedBearer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallDedicatedBearer"


# instance fields
.field private mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

.field private mIsDRBLost:Z

.field private mMno:Lcom/sec/internal/constants/Mno;

.field private mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field private mRegistration:Lcom/sec/ims/ImsRegistration;

.field private mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field private mRttBearerState:I

.field private mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

.field private mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private mVideoBearerState:I

.field private mVideoNGbrBearerState:I

.field private mVoiceBearerState:I

.field private smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;Lcom/sec/ims/ImsRegistration;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;Lcom/sec/internal/constants/Mno;Lcom/sec/internal/helper/PreciseAlarmManager;Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 22
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 23
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 25
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 26
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    .line 27
    sget-char v1, Lcom/sec/internal/constants/Mno;->MVNO_DELIMITER:C

    const/4 v1, 0x3

    .line 29
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    .line 30
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    .line 31
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoNGbrBearerState:I

    .line 32
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 40
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    .line 41
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    .line 42
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 43
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    .line 44
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    .line 45
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    return-void
.end method

.method private isIgnoredDedicatedBearLost(I)Z
    .locals 12

    .line 49
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/16 v0, 0x63

    if-eq p1, v0, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    if-eq v1, v3, :cond_3

    :cond_1
    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    .line 51
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->TELENOR_NORWAY:Lcom/sec/internal/constants/Mno;

    sget-object v5, Lcom/sec/internal/constants/Mno;->SFR:Lcom/sec/internal/constants/Mno;

    sget-object v6, Lcom/sec/internal/constants/Mno;->TELE2NL:Lcom/sec/internal/constants/Mno;

    sget-object v7, Lcom/sec/internal/constants/Mno;->SWISSCOM:Lcom/sec/internal/constants/Mno;

    sget-object v8, Lcom/sec/internal/constants/Mno;->CLARO_PERU:Lcom/sec/internal/constants/Mno;

    sget-object v9, Lcom/sec/internal/constants/Mno;->ENTEL_PERU:Lcom/sec/internal/constants/Mno;

    sget-object v10, Lcom/sec/internal/constants/Mno;->SMARTFREN:Lcom/sec/internal/constants/Mno;

    sget-object v11, Lcom/sec/internal/constants/Mno;->CABLE_PANAMA:Lcom/sec/internal/constants/Mno;

    filled-new-array/range {v3 .. v11}, [Lcom/sec/internal/constants/Mno;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method private onDedicatedBearerLost(I)V
    .locals 5

    .line 58
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->isIgnoredDedicatedBearLost(I)Z

    move-result v0

    const-string v1, " qci:"

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDedicatedBearerLost: ignore DBR lost for mno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->IncomingCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-ne v0, v3, :cond_1

    .line 65
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDedicatedBearerLost: ignore DBR lost at incoming state for mno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getSimManagerFromSimSlot(I)Lcom/sec/internal/interfaces/ims/core/ISimManager;

    move-result-object v0

    .line 71
    const-string v1, ", qci:"

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/core/ISimManager;->isSimAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistrationManager:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 72
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->isVoWiFiSupported(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getEpdgManager()Lcom/sec/epdg/EpdgManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 74
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/epdg/EpdgManager;->isDuringHandoverForIMSBySim(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 75
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->isEpdgCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 76
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDedicatedBearerLost: ignore Dedicated Bearer Lost due to EPDG for mno:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v3, Lcom/sec/internal/constants/Mno;->KDDI:Lcom/sec/internal/constants/Mno;

    if-ne v0, v3, :cond_5

    .line 85
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;->mConfCallAdded:Z

    if-eqz v0, :cond_5

    .line 86
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDedicatedBearerLost: igonre dedicated Bearer Lost mno:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " after ending 3way conference call"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 92
    :cond_5
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onDedicatedBearerLost: Dedicated Bearer Lost mno:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x63

    const/16 v1, 0x1388

    if-ne p1, v0, :cond_6

    .line 94
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    invoke-virtual {p1, v1}, Lcom/sec/internal/helper/StateMachine;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 95
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v0, 0xd2

    .line 96
    invoke-virtual {p1, v0}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    .line 97
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, p1, v0, v1}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_1

    .line 100
    :cond_6
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_7
    const/16 v0, 0x3e8

    .line 105
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    int-to-long v2, v0

    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/sec/internal/helper/StateMachine;->sendMessageDelayed(IIJ)V

    :cond_8
    :goto_1
    return-void
.end method


# virtual methods
.method public getDRBLost()Z
    .locals 0

    .line 228
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    return p0
.end method

.method public getDedicatedBearerState(I)I
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/16 v1, 0x63

    if-eq p1, v1, :cond_0

    .line 174
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown qci:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 164
    :cond_0
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    goto :goto_0

    .line 170
    :cond_1
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoNGbrBearerState:I

    goto :goto_0

    .line 160
    :cond_2
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    goto :goto_0

    .line 155
    :cond_3
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    .line 177
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "qci:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", state:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public setDRBLost(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mIsDRBLost:Z

    return-void
.end method

.method public setDedicatedBearerState(II)V
    .locals 3

    .line 110
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "qci:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v0, :cond_7

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_4

    const/4 v2, 0x7

    if-eq p1, v2, :cond_3

    const/16 v2, 0x8

    if-eq p1, v2, :cond_3

    const/16 v2, 0x9

    if-eq p1, v2, :cond_3

    const/16 v2, 0x63

    if-eq p1, v2, :cond_0

    goto :goto_1

    .line 137
    :cond_0
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    if-ne v2, v1, :cond_1

    if-ne p2, v0, :cond_1

    .line 139
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->stopRttDedicatedBearerTimer()V

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    if-ne p2, v1, :cond_2

    .line 142
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->onDedicatedBearerLost(I)V

    .line 144
    :cond_2
    :goto_0
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttBearerState:I

    goto :goto_1

    .line 134
    :cond_3
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoNGbrBearerState:I

    goto :goto_1

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTC:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/Mno;->CU:Lcom/sec/internal/constants/Mno;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcom/sec/internal/constants/Mno;->CTCMO:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    if-eq v0, v1, :cond_6

    if-ne p2, v1, :cond_6

    .line 126
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->onDedicatedBearerLost(I)V

    .line 128
    :cond_6
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVideoBearerState:I

    goto :goto_1

    .line 113
    :cond_7
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    if-eq v0, v1, :cond_8

    if-ne p2, v1, :cond_8

    .line 115
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->onDedicatedBearerLost(I)V

    .line 117
    :cond_8
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mVoiceBearerState:I

    :goto_1
    return-void
.end method

.method protected setRttDedicatedBearerTimeoutMessage(Landroid/os/Message;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    return-void
.end method

.method protected startRttDedicatedBearerTimer(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    .line 183
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer : millis = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    const-string/jumbo v2, "startRttDedicatedBearerTimer: Not start RttDedicatedBearerTimer"

    if-eq v0, v1, :cond_5

    sget-object v1, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    iget-boolean v0, v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->mIsNrSaMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRegistration:Lcom/sec/ims/ImsRegistration;

    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getUsePrecondition()I

    move-result v0

    if-nez v0, :cond_2

    .line 192
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 v0, 0x63

    .line 197
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->getDedicatedBearerState(I)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    .line 198
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string p1, "RTT Dedicated Bearer opened"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 201
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    if-eqz v0, :cond_4

    .line 202
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string p1, "RTT Dedicated Bearer Timer already has been started"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 206
    :cond_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startRttDedicatedBearerTimer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->stopRttDedicatedBearerTimer()V

    .line 208
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->smCallStateMachine:Lcom/sec/internal/ims/servicemodules/volte2/CallStateMachine;

    const/16 v1, 0xd1

    .line 209
    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    .line 210
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sec/internal/helper/PreciseAlarmManager;->sendMessageDelayed(Landroid/os/Message;J)Lcom/sec/internal/helper/DelayedMessage;

    return-void

    .line 186
    :cond_5
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected stopRttDedicatedBearerTimer()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    if-nez v0, :cond_0

    return-void

    .line 217
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopRttDedicatedBearerTimer: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mAm:Lcom/sec/internal/helper/PreciseAlarmManager;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    invoke-virtual {v0, v1}, Lcom/sec/internal/helper/PreciseAlarmManager;->removeMessage(Landroid/os/Message;)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallDedicatedBearer;->mRttDedicatedBearerTimeoutMessage:Landroid/os/Message;

    return-void
.end method
