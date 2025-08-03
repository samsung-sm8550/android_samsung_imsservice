.class public Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;
.super Ljava/lang/Object;
.source "ImsExternalCallController.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ImsExternalCallController"


# instance fields
.field mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

.field private mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

.field private mTransferSessionId:I

.field private mTransferTarget:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 27
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    return-void
.end method


# virtual methods
.method public consultativeTransferCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Lcom/sec/ims/ImsRegistration;)V
    .locals 4

    .line 62
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getPhoneId()I

    move-result v0

    if-nez p3, :cond_0

    .line 66
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p3

    const/4 v0, 0x0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/settings/ImsProfile;->getMnoName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/constants/Mno;->fromName(Ljava/lang/String;)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 70
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->getEctNoHoldForActiveCall()Z

    move-result p3

    move-object v3, v0

    move v0, p3

    move-object p3, v3

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    sget-object p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string v0, "No need to hold an active call for ECT."

    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 76
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->pushCallInternal()V

    goto/16 :goto_4

    .line 79
    :cond_1
    new-instance v0, Lcom/sec/ims/volte2/data/MediaProfile;

    sget-object v1, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;Ljava/lang/String;)V

    .line 81
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setHoldBeforeTransfer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 84
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 87
    :goto_1
    sget-object v0, Lcom/sec/internal/constants/Mno;->VODAFONE_SPAIN:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELEFONICA_CZ:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->TELENOR_DK:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->TDC_DK:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->H3G_DK:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->ORANGE:Lcom/sec/internal/constants/Mno;

    if-eq p3, v0, :cond_3

    sget-object v0, Lcom/sec/internal/constants/Mno;->DLOG:Lcom/sec/internal/constants/Mno;

    if-ne p3, v0, :cond_2

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p2

    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 93
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    goto :goto_3

    .line 89
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 90
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    .line 95
    :goto_3
    sget-object p1, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ConsultativeTrasnfer mTransferSessionId : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mTransferTarget : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method

.method public pushCall(Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;Ljava/lang/String;Lcom/sec/ims/ImsRegistration;)V
    .locals 2

    if-eqz p3, :cond_0

    .line 33
    invoke-virtual {p3}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/ims/settings/ImsProfile;->isSoftphoneEnabled()Z

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->HeldCall:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    if-eq v0, v1, :cond_2

    if-eqz p3, :cond_1

    goto :goto_2

    .line 39
    :cond_1
    new-instance p3, Lcom/sec/ims/volte2/data/MediaProfile;

    sget-object v0, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    const-string v1, ""

    invoke-direct {p3, v0, v1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;Ljava/lang/String;)V

    .line 41
    :try_start_0
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V

    const/4 p3, 0x1

    .line 42
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->setHoldBeforeTransfer(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 44
    invoke-virtual {p3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 46
    :goto_1
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    .line 47
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    goto :goto_3

    .line 37
    :cond_2
    :goto_2
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getSessionId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transfer(ILjava/lang/String;)V

    :goto_3
    return-void
.end method

.method public pushCallInternal()V
    .locals 2

    .line 52
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "pushCallInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->transfer(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferSessionId:I

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mTransferTarget:Ljava/lang/String;

    return-void
.end method

.method public transfer(ILjava/lang/String;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-interface {p0, p1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getSession(I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->pushCall(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public transferCall(ILjava/lang/String;Ljava/lang/String;[Lcom/sec/ims/DialogEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "try to transferCall from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to Dialog Id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 116
    :goto_0
    array-length v3, p4

    if-ge v1, v3, :cond_4

    if-eqz v2, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    aget-object v3, p4, v1

    if-eqz v3, :cond_3

    .line 121
    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    .line 122
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, p4, v1

    .line 123
    invoke-virtual {v5}, Lcom/sec/ims/DialogEvent;->getMsisdn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move p1, v1

    move-object v2, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 132
    :cond_4
    :goto_1
    aget-object v1, p4, p1

    if-eqz v1, :cond_b

    .line 133
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    invoke-virtual {v1}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result v1

    invoke-interface {v3, v1}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->getRegInfo(I)Lcom/sec/ims/ImsRegistration;

    move-result-object v1

    if-nez v1, :cond_5

    .line 135
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "can\'t call transfer without registration"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 138
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/ImsRegistration;->getImsProfile()Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->isSamsungMdmnEnabled()Z

    move-result v1

    .line 140
    aget-object v3, p4, p1

    invoke-virtual {v3}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    .line 141
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 142
    sget-object p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "find target Dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    :cond_7
    if-eqz v2, :cond_a

    .line 148
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 149
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_a

    .line 150
    new-instance p3, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p3}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 151
    new-instance v3, Lcom/sec/ims/volte2/data/MediaProfile;

    sget-object v4, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->AUDIO_CODEC_AMRWB:Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    invoke-direct {v3, v4, v5}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>(Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 152
    invoke-virtual {p3, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 153
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v4

    invoke-virtual {p3, v4}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 154
    invoke-virtual {p3, v3}, Lcom/sec/ims/volte2/data/CallProfile;->setMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)V

    .line 155
    invoke-virtual {p3, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCLI(Ljava/lang/String;)V

    if-eqz v1, :cond_8

    .line 158
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/ims/Dialog;->setMdmnExtNumber(Ljava/lang/String;)V

    .line 161
    :cond_8
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    aget-object p4, p4, p1

    invoke-virtual {p4}, Lcom/sec/ims/DialogEvent;->getRegId()I

    move-result p4

    invoke-interface {v0, p3, p4}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->createSession(Lcom/sec/ims/volte2/data/CallProfile;I)Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    .line 162
    invoke-virtual {p3, p2, v2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->pulling(Ljava/lang/String;Lcom/sec/ims/Dialog;)I

    move-result p2

    .line 163
    sget-object p3, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "pulling Success : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_9

    .line 166
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    .line 167
    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->getSessionDescription()Ljava/lang/String;

    move-result-object p3

    .line 166
    invoke-virtual {p2, p3}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 169
    :cond_9
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mModule:Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->mPullingSession:Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/volte2/ImsCallSession;->getCallId()I

    move-result p0

    invoke-interface {p2, p1, p0}, Lcom/sec/internal/ims/servicemodules/volte2/IVolteServiceModuleInternal;->notifyOnPulling(II)V

    goto :goto_2

    .line 171
    :cond_a
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Can\'t find proper target dialog"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 174
    :cond_b
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/ImsExternalCallController;->LOG_TAG:Ljava/lang/String;

    const-string p1, "LastDialogEvent is Empty"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    .line 112
    :cond_c
    :goto_3
    const-string p0, "ignore wrong transfer reqeuset"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
