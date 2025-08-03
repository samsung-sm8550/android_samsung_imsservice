.class public Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;
.super Landroid/os/Handler;
.source "SsacManager.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SsacManager"

.field private static final UNAVAILABE_FACTOR:I = 0x64


# instance fields
.field mIsAlwaysBarred:[Z

.field private final mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

.field private final mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

.field mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

.field mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

.field needReRegiAfterCall:[Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;)Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    return-object p0
.end method

.method public constructor <init>(Landroid/os/Looper;Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    .line 47
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    .line 49
    new-array p2, p4, [Z

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    .line 50
    new-array p3, p4, [Z

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    const/4 p3, 0x0

    .line 51
    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 52
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    invoke-static {p2, p3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 54
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 p3, 0x1

    invoke-direct {p2, p1, p3, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    .line 55
    new-instance p2, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    const/4 p3, 0x2

    invoke-direct {p2, p1, p3, p0, p4}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;-><init>(Landroid/os/Looper;ILcom/sec/internal/ims/servicemodules/volte2/SsacManager;I)V

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    return-void
.end method

.method private reRegisterBySSAC(I)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reRegisterBySSAC : updateRegistrationBySSAC ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean v1, v1, p1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SsacManager"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean p0, p0, p1

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->updateRegistrationBySSAC(IZ)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 132
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 133
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 134
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aget-boolean v1, v0, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 135
    aput-boolean v1, v0, p1

    .line 136
    const-string v0, "SsacManager"

    const-string v1, "Call Ended. Now update Registration By SSAC."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    :cond_0
    return-void
.end method

.method public isCallBarred(II)Z
    .locals 1

    .line 59
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isE911Call(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 61
    :cond_0
    invoke-static {p2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result p0

    return p0

    .line 64
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isCallBarred(I)Z

    move-result p0

    return p0
.end method

.method public updateSSACInfo(ILcom/sec/internal/ims/servicemodules/volte2/SsacInfo;)V
    .locals 4

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateSSACInfo : Voice("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceTime()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") Video("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoTime()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 75
    const-string v1, "SsacManager"

    invoke-static {v1, p1, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result v0

    const/16 v2, 0x64

    if-ne v0, v2, :cond_2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->isKnownVoiceBarringType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->isKnownVideoBarringType()Z

    move-result v0

    if-nez v0, :cond_1

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v0

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoTime()I

    move-result p2

    invoke-virtual {p0, p1, v0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 92
    const-string p0, "Update Video SSAC Info."

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    :cond_1
    const-string p0, "Voice factor 100 with isVoiceBarred is unavailable value."

    invoke-static {v1, p1, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceTime()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 99
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVideo:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoFactor()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVideoTime()I

    move-result v3

    invoke-virtual {v0, p1, v2, v3}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->updateSSACInfo(III)V

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/VolteServiceModuleInternal;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;->getImsRegistration(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 103
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/SsacInfo;->getVoiceFactor()I

    move-result p2

    if-nez p2, :cond_3

    .line 106
    const-string/jumbo p2, "set regiMgr.setSSACPolicy as false."

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aput-boolean v2, p2, p1

    .line 108
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->setSSACPolicy(IZ)V

    return-void

    .line 112
    :cond_3
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    if-eqz v0, :cond_4

    .line 114
    invoke-virtual {v0}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object p2

    .line 116
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne p2, v0, :cond_6

    .line 117
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mVoice:Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;

    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager$SSACController;->isAlwaysBarred(I)Z

    move-result p2

    .line 118
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mIsAlwaysBarred:[Z

    aget-boolean v3, v0, p1

    if-eq v3, p2, :cond_6

    .line 119
    aput-boolean p2, v0, p1

    .line 120
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->mRegiMgr:Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;

    invoke-interface {p2, p1}, Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;->getTelephonyCallStatus(I)I

    move-result p2

    if-nez p2, :cond_5

    .line 121
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->reRegisterBySSAC(I)V

    goto :goto_0

    .line 123
    :cond_5
    const-string p2, "A call is exist now. update Regi after this call terminated."

    invoke-static {v1, p1, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 124
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/SsacManager;->needReRegiAfterCall:[Z

    aput-boolean v2, p0, p1

    :cond_6
    :goto_0
    return-void
.end method
