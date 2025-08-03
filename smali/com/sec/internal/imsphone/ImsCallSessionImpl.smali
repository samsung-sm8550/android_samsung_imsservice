.class public Lcom/sec/internal/imsphone/ImsCallSessionImpl;
.super Lcom/android/ims/internal/IImsCallSession$Stub;
.source "ImsCallSessionImpl.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsCallSessionImpl"

.field protected static final SET_LOCAL_CALL_PROFILE:I = 0x1

.field protected static final SET_LOCAL_REMOTE_CALL_PROFILE:I = 0x3

.field protected static final SET_REMOTE_CALL_PROFILE:I = 0x2


# instance fields
.field protected mCallId:Ljava/lang/String;

.field public mCallIdInt:I

.field public mCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field public mImpl:Lcom/android/ims/internal/IImsCallSession;

.field public mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

.field public mIsCWNotified:Z

.field public mIsConferenceHost:Z

.field public mIsConferenceParticipant:Z

.field private mIsDeclined:Z

.field public mIsEcbmSupport:Z

.field public mIsMultiparty:Z

.field public mIsUssdTerminatedByUser:Z

.field public mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

.field protected mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field public final mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

.field protected mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

.field protected mRingbackToneDirection:I

.field public final mRttEventListener:Lcom/sec/ims/IRttEventListener;

.field public mSession:Lcom/sec/ims/volte2/IImsCallSession;

.field public mState:I

.field protected final mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

.field public final mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;


# direct methods
.method static bridge synthetic -$$Nest$mgetSessionId(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getSessionId()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V
    .locals 3

    .line 89
    invoke-direct {p0}, Lcom/android/ims/internal/IImsCallSession$Stub;-><init>()V

    .line 71
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 72
    new-instance v0, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;-><init>(II)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRingbackToneDirection:I

    .line 75
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceHost:Z

    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsCWNotified:Z

    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsMultiparty:Z

    .line 76
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    const/4 v1, -0x1

    .line 83
    iput v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallIdInt:I

    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 84
    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsDeclined:Z

    .line 744
    new-instance v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl$1;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    .line 782
    new-instance v1, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;

    invoke-direct {v1, p0}, Lcom/sec/internal/imsphone/ImsCallSessionEventListener;-><init>(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    .line 90
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 91
    invoke-virtual {p0, v2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setCallProfile(I)V

    .line 92
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 93
    iput-object p3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 95
    iput-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImpl:Lcom/android/ims/internal/IImsCallSession;

    .line 96
    iput-object p4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    .line 97
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getVolteServiceModule()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez p2, :cond_0

    return-void

    .line 104
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, v1}, Lcom/sec/ims/volte2/IImsCallSession;->registerSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 105
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result p2

    invoke-interface {p1, p2, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->registerRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    .line 106
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallIdInt:I

    if-lez p1, :cond_1

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallId:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :catch_0
    :cond_1
    new-instance p1, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-direct {p1, p2}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;-><init>(Lcom/sec/ims/volte2/IImsCallSession;)V

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    return-void
.end method

.method private convertDtmfToCode(C)I
    .locals 1

    .line 0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_0

    const/16 v0, 0x39

    if-gt p1, v0, :cond_0

    sub-int/2addr p1, p0

    return p1

    :cond_0
    const/16 p0, 0x2a

    if-ne p1, p0, :cond_1

    const/16 p0, 0xa

    return p0

    :cond_1
    const/16 p0, 0x23

    if-ne p1, p0, :cond_2

    const/16 p0, 0xb

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method private getOir(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/volte2/data/CallProfile;)I
    .locals 1

    .line 1030
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object p0

    .line 1031
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1033
    invoke-static {p0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0

    .line 1038
    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1039
    const-string/jumbo p0, "unknown"

    .line 1042
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/Mno;->DOCOMO:Lcom/sec/internal/constants/Mno;

    if-ne p1, v0, :cond_3

    .line 1043
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object p0

    .line 1044
    invoke-static {p0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->getOirExtraFromDialingNumberForDcm(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 1046
    :cond_3
    invoke-static {p0}, Lcom/sec/internal/imsphone/DataTypeConvertor;->getOirExtraFromDialingNumber(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private getSessionId()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 168
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result p0

    return p0
.end method

.method private inviteParticipants(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 514
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 519
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->inviteParticipants(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private setAudioCodecAttr(Ljava/lang/String;Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V
    .locals 9

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAudioCodecAttr() bitrate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsCallSessionImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    .line 1066
    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v0, v2

    const/4 v4, 0x1

    aput v3, v0, v4

    const/4 v5, 0x2

    aput v3, v0, v5

    const/4 v6, 0x3

    aput v3, v0, v6

    .line 1067
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v7, "-"

    if-nez v3, :cond_2

    .line 1068
    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 1070
    :try_start_0
    array-length v3, p1

    const/high16 v8, 0x447a0000    # 1000.0f

    if-ne v3, v4, :cond_0

    .line 1072
    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p1, v8

    aput p1, v0, v4

    aput p1, v0, v2

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 1073
    :cond_0
    array-length v3, p1

    if-ne v3, v5, :cond_2

    .line 1074
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getAudioQuality()I

    move-result v3

    if-ge v3, v6, :cond_1

    .line 1076
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    div-float/2addr v3, v8

    aput v3, v0, v2

    .line 1077
    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    div-float/2addr p1, v8

    aput p1, v0, v4

    goto :goto_1

    .line 1080
    :cond_1
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v0, v2

    .line 1081
    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1085
    :goto_0
    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1092
    :cond_2
    :goto_1
    sget-object p1, Lcom/sec/internal/imsphone/ImsCallSessionImpl$2;->$SwitchMap$com$sec$ims$volte2$data$VolteConstants$AudioCodecType:[I

    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const p2, 0x3ca3d70a    # 0.02f

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const p1, 0x3e99999a    # 0.3f

    .line 1110
    aput p1, v0, v5

    const p1, 0x4059999a    # 3.4f

    aput p1, v0, v6

    goto :goto_2

    :pswitch_1
    const p1, 0x3d4ccccd    # 0.05f

    .line 1107
    aput p1, v0, v5

    const/high16 p1, 0x40e00000    # 7.0f

    aput p1, v0, v6

    goto :goto_2

    .line 1104
    :pswitch_2
    aput p2, v0, v5

    const/high16 p1, 0x40800000    # 4.0f

    aput p1, v0, v6

    goto :goto_2

    .line 1100
    :pswitch_3
    aput p2, v0, v5

    const/high16 p1, 0x41000000    # 8.0f

    aput p1, v0, v6

    goto :goto_2

    .line 1097
    :pswitch_4
    aput p2, v0, v5

    const/high16 p1, 0x41800000    # 16.0f

    aput p1, v0, v6

    goto :goto_2

    .line 1094
    :pswitch_5
    aput p2, v0, v5

    const/high16 p1, 0x41a00000    # 20.0f

    aput p1, v0, v6

    .line 1117
    :goto_2
    :try_start_1
    aget p1, v0, v2

    aget p2, v0, v4

    cmpl-float v3, p1, p2

    if-lez v3, :cond_3

    .line 1119
    aput p2, v0, v2

    .line 1120
    aput p1, v0, v4

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    .line 1123
    :cond_3
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setAudioCodecAttr() final bitrate due to Cellcom network error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v4

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", bandwidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v5

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v0, v6

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    new-instance p1, Landroid/telephony/ims/AudioCodecAttributes;

    aget p2, v0, v4

    new-instance v1, Landroid/util/Range;

    aget v2, v0, v2

    .line 1126
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    aget v2, v0, v6

    new-instance v3, Landroid/util/Range;

    aget v4, v0, v5

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aget v0, v0, v6

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    invoke-direct {p1, p2, v1, v2, v3}, Landroid/telephony/ims/AudioCodecAttributes;-><init>(FLandroid/util/Range;FLandroid/util/Range;)V

    .line 1127
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setAudioCodecAttributes(Landroid/telephony/ims/AudioCodecAttributes;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    .line 1129
    :goto_4
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 406
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 407
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 412
    :cond_1
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    .line 413
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallType(I)I

    move-result p1

    .line 416
    invoke-static {v0}, Lcom/sec/internal/helper/ImsCallUtil;->isTtyCall(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 420
    :cond_3
    :goto_0
    new-instance p1, Lcom/sec/ims/volte2/data/CallProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/CallProfile;-><init>()V

    .line 421
    invoke-virtual {p1, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 422
    invoke-virtual {p1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v0

    iget p2, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    invoke-virtual {v0, p2}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 425
    :try_start_0
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2, p1}, Lcom/sec/ims/volte2/IImsCallSession;->accept(Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 427
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_4

    .line 428
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public callSessionNotifyAnbr(III)V
    .locals 0

    .line 0
    return-void
.end method

.method public cancelTransferCall()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1194
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p0, :cond_0

    .line 1197
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->cancelTransfer()V

    return-void

    .line 1195
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public changeCmcErrorReason(II)Landroid/telephony/ims/ImsReasonInfo;
    .locals 1

    .line 789
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;

    move-result-object p0

    return-object p0
.end method

.method public changeCmcErrorReason(IILjava/lang/String;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 7

    .line 793
    new-instance p0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-static {p2}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallErrorReasonToFw(I)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    .line 795
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcPrimaryType(I)Z

    move-result v0

    const/16 v1, 0x177c

    const-string v2, "SERVER_RELAY_RESTRICTED"

    const/16 v3, 0x193

    const/16 v4, 0x45b

    const/16 v5, 0x579

    if-eqz v0, :cond_2

    if-eq p2, v4, :cond_1

    if-ne p2, v5, :cond_0

    goto :goto_0

    :cond_0
    if-ne p2, v3, :cond_b

    .line 800
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x14d

    .line 801
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 802
    iput v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    :cond_1
    :goto_0
    const/16 p1, 0x1f5

    .line 798
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0xc8

    .line 799
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    .line 804
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result p1

    if-eqz p1, :cond_b

    const/16 p1, 0x194

    const/16 v0, 0x160

    if-ne p2, p1, :cond_3

    .line 805
    const-string v6, "PD_NOT_REGISTERED"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 806
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1771

    .line 807
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    :cond_3
    if-ne p2, p1, :cond_4

    .line 808
    const-string p1, "SD_NOT_REGISTERED"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 809
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1774

    .line 810
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto/16 :goto_1

    :cond_4
    const/16 p1, 0x1e0

    if-ne p2, p1, :cond_5

    .line 811
    const-string p1, "REJECT_REASON_PD_UNREACHABLE"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 812
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1772

    .line 813
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_5
    const/16 p1, 0x1e6

    if-ne p2, p1, :cond_6

    .line 814
    sget-object v6, Lcom/sec/internal/constants/ims/SipErrorBase;->E911_NOT_ALLOWED_ON_SD:Lcom/sec/ims/util/SipError;

    invoke-virtual {v6}, Lcom/sec/ims/util/SipError;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 815
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1773

    .line 816
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    .line 818
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 819
    iput v5, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_7
    const/16 v5, 0x19f

    if-ne p2, v5, :cond_8

    .line 820
    const-string v5, "SD_NOT_SUPPORTED_VT"

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 821
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1775

    .line 822
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_8
    if-ne p2, v4, :cond_9

    .line 824
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x1776

    .line 825
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_9
    if-ne p2, p1, :cond_a

    .line 826
    const-string p1, "PD_CALL_EXISTS_ON_THE_OTHER_SLOT"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 827
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 p1, 0x177b

    .line 828
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    goto :goto_1

    :cond_a
    if-ne p2, v3, :cond_b

    .line 829
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 830
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 831
    iput v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    :cond_b
    :goto_1
    return-object p0
.end method

.method public close()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallIdInt:I

    invoke-virtual {v0, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->onCallClosed(I)V

    .line 129
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;->setCallback(Lcom/android/ims/internal/IImsVideoCallCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public consultativeTransfer(Lcom/android/ims/internal/IImsCallSession;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1188
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p1}, Lcom/android/ims/internal/IImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 1189
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    .line 1188
    invoke-interface {v0, p1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->consultativeTransferCall(II)V

    return-void
.end method

.method public deflect(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public extendToConference([Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 596
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 597
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 598
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x66

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 604
    :cond_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 606
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 607
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x67

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceExtendFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCallId()Ljava/lang/String;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallId:Ljava/lang/String;

    return-object p0
.end method

.method public getCallIdInt()I
    .locals 0

    .line 147
    iget p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallIdInt:I

    return p0
.end method

.method public getCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method public getCmcCallSessionManager()Lcom/sec/internal/imsphone/cmc/CmcCallSessionManager;
    .locals 1

    .line 121
    const-string p0, "ImsCallSessionImpl"

    const-string v0, "getCmcCallSessionManager(), duplicate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 240
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 243
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallStateOrdinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-object p0
.end method

.method public getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "call_mode_changeable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 188
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return-object p0
.end method

.method public getPrevInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    .line 248
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->Idle:Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    return-object p0

    .line 251
    :cond_0
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;->values()[Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getPrevCallStateOrdinal()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 227
    :cond_0
    const-string v0, "RawInviteMessage"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 229
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getIncomingInviteRawSip()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v1
.end method

.method public getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "call_mode_changeable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 217
    :goto_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v0, p0, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    return-object p0
.end method

.method public getState()I
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceParticipant:Z

    if-eqz v0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 260
    :cond_0
    iget p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    return p0
.end method

.method public getTtyModeFromCallType(II)I
    .locals 1

    .line 1221
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1225
    :cond_0
    invoke-interface {p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result p0

    if-nez p0, :cond_1

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVideoCallProvider()Lcom/android/ims/internal/IImsVideoCallProvider;
    .locals 0

    .line 711
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mImsVideoCallProvider:Lcom/sec/internal/imsphone/ImsVideoCallProviderImpl;

    return-object p0
.end method

.method public hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 477
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 478
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 479
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x66

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 485
    :cond_1
    :try_start_0
    new-instance p1, Lcom/sec/ims/volte2/data/MediaProfile;

    invoke-direct {p1}, Lcom/sec/ims/volte2/data/MediaProfile;-><init>()V

    .line 487
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1, p1}, Lcom/sec/ims/volte2/IImsCallSession;->hold(Lcom/sec/ims/volte2/data/MediaProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 489
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 490
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x67

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionHoldFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initP2pImpl()V
    .locals 1

    .line 117
    const-string p0, "ImsCallSessionImpl"

    const-string v0, "initP2pImpl(), duplicate"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public inviteParticipants([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 615
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 620
    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->extendToConference([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isEmergencyCall()Z
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v1, "e_call"

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget p0, p0, Landroid/telephony/ims/ImsCallProfile;->mServiceType:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

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

.method public isInCall()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    iget v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 266
    sget-object v0, Lcom/sec/internal/imsphone/ImsCallSessionImpl$2;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$volte2$CallConstants$STATE:[I

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getInternalState()Lcom/sec/internal/constants/ims/servicemodules/volte2/CallConstants$STATE;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isMultiparty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 697
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsMultiparty:Z

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result p0

    :goto_0
    return p0
.end method

.method public isWifiCall()Z
    .locals 1

    .line 706
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v0, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {p0, v0}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x12

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public merge()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 526
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/16 v1, 0x66

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 534
    :cond_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    .line 536
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v3}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 537
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallIdInt()I

    move-result v0

    .line 540
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getParticipantIdForMerge(II)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 543
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 544
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    return-void

    .line 549
    :cond_3
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v4}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->hasConferenceHost()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 550
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v0, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setInitialMerge(Z)V

    .line 551
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p0

    .line 552
    invoke-direct {p0, v3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->inviteParticipants(I)V

    goto/16 :goto_2

    .line 554
    :cond_4
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getTtyMode(I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    move v4, v5

    goto :goto_0

    :cond_5
    move v4, v2

    .line 555
    :goto_0
    iget-object v6, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v6

    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-static {v6, v7, v4}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToSecCallProfile(ILandroid/telephony/ims/ImsCallProfile;Z)Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v4

    .line 556
    invoke-virtual {v4, v5}, Lcom/sec/ims/volte2/data/CallProfile;->setConferenceCall(I)V

    .line 557
    iget-object v6, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getLineMsisdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setLineMsisdn(Ljava/lang/String;)V

    .line 558
    iget-object v6, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v6}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/ims/volte2/data/CallProfile;->getOriginatingUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sec/ims/volte2/data/CallProfile;->setOriginatingUri(Lcom/sec/ims/util/ImsUri;)V

    const/4 v6, 0x0

    .line 563
    :try_start_0
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v7, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->createSession(Lcom/sec/ims/volte2/data/CallProfile;)Lcom/sec/ims/volte2/IImsCallSession;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v4, v6

    :goto_1
    if-nez v4, :cond_7

    .line 568
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_6

    .line 569
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_6
    return-void

    .line 574
    :cond_7
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v1, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraInt(Ljava/lang/String;)I

    move-result v1

    const/16 v7, 0x12

    if-ne v1, v7, :cond_8

    move v2, v5

    :cond_8
    invoke-interface {v4, v2}, Lcom/sec/ims/volte2/IImsCallSession;->setEpdgState(Z)V

    .line 575
    iput-boolean v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsConferenceHost:Z

    .line 576
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1, v5}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setInitialMerge(Z)V

    .line 577
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v1, p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->setConferenceHost(Lcom/sec/internal/imsphone/ImsCallSessionImpl;)V

    .line 579
    new-instance v1, Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-direct {v1, v2, v4, v6, v5}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;-><init>(Landroid/telephony/ims/ImsCallProfile;Lcom/sec/ims/volte2/IImsCallSession;Landroid/telephony/ims/aidl/IImsCallSessionListener;Lcom/sec/internal/imsphone/MmTelFeatureImpl;)V

    .line 582
    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->notifyReadyToHandleImsCallbacks()V

    .line 583
    invoke-interface {v4, v3, v0}, Lcom/sec/ims/volte2/IImsCallSession;->merge(II)V

    .line 584
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-virtual {v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v0

    invoke-interface {p0, v1, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeStarted(Lcom/android/ims/internal/IImsCallSession;Landroid/telephony/ims/ImsCallProfile;)V

    :goto_2
    return-void

    .line 527
    :cond_9
    :goto_3
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_a

    .line 528
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v0, v1, v2}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionMergeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_a
    return-void
.end method

.method public needDeclineDuringQecCall()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1248
    iget-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsDeclined:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {p0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->hasQecInCall()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyReadyToHandleImsCallbacks()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 1214
    :try_start_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSessionEventListener;->notifyReadyToHandleImsCallbacks()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1211
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public onSuppServiceReceived(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 739
    new-instance v7, Landroid/telephony/ims/ImsSuppServiceNotification;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/telephony/ims/ImsSuppServiceNotification;-><init>(IIIILjava/lang/String;[Ljava/lang/String;)V

    .line 741
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    invoke-interface {p0, v7}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionSuppServiceReceived(Landroid/telephony/ims/ImsSuppServiceNotification;)V

    return-void
.end method

.method public reject(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_1

    .line 436
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 437
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x1

    .line 443
    :try_start_0
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsDeclined:Z

    .line 444
    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallRejectReasonFromFW(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/ims/volte2/IImsCallSession;->reject(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 446
    const-string p1, "Reject Failed"

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 447
    :cond_2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected releaseSessionListeners()V
    .locals 3

    .line 152
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_1

    .line 153
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteEventListener:Lcom/sec/ims/volte2/IImsCallSessionEventListener;

    invoke-interface {v0, v1}, Lcom/sec/ims/volte2/IImsCallSession;->unregisterSessionEventListener(Lcom/sec/ims/volte2/IImsCallSessionEventListener;)V

    .line 154
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v1

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRttEventListener:Lcom/sec/ims/IRttEventListener;

    invoke-interface {v0, v1, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->unregisterRttEventListener(ILcom/sec/ims/IRttEventListener;)V

    :cond_0
    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    .line 158
    iput-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public removeParticipants([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    .line 632
    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 633
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v3, v2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getParticipantId(Ljava/lang/String;)I

    move-result v2

    .line 634
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    const-string v4, "disconnecting"

    const/4 v5, 0x3

    invoke-virtual {v3, v2, v4, v5}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateParticipant(ILjava/lang/String;I)V

    .line 635
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3, v2}, Lcom/sec/ims/volte2/IImsCallSession;->removeParticipants(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_1
    return-void
.end method

.method public resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 497
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 498
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 499
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x66

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 505
    :cond_1
    :try_start_0
    invoke-interface {p1}, Lcom/sec/ims/volte2/IImsCallSession;->resume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 507
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 508
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v1, 0x67

    invoke-direct {p1, v1, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionResumeFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 657
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    .line 661
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->convertDtmfToCode(C)I

    move-result p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-interface {v0, p0, p1, v1}, Lcom/sec/ims/volte2/IImsCallSession;->sendDtmf(IILandroid/os/Message;)V

    if-eqz p2, :cond_1

    .line 663
    iget-object p0, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    if-eqz p0, :cond_1

    .line 664
    invoke-virtual {p0, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1202
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p0, :cond_0

    .line 1205
    invoke-interface {p0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->sendImsCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 1203
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendRtpHeaderExtensions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/RtpHeaderExtension;",
            ">;)V"
        }
    .end annotation

    .line 0
    return-void
.end method

.method public sendRttMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz p0, :cond_0

    .line 1144
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->sendText(Ljava/lang/String;I)V

    return-void

    .line 1142
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1155
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_0

    .line 1158
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result v0

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result p1

    invoke-interface {p0, v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyRequest(IZ)I

    return-void

    .line 1156
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public sendRttModifyResponse(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1169
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0, p1}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1170
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    invoke-interface {v0, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->sendRttSessionModifyResponse(IZ)V

    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 688
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 691
    iput-boolean v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    const/4 p0, 0x2

    .line 692
    invoke-interface {v0, p0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    return-void
.end method

.method protected setCallProfile(I)V
    .locals 5

    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    and-int/lit8 v1, p1, 0x1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 196
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 197
    sget-object v1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/ImsCallProfile;

    iput-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mLocalCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 198
    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v4, v3, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v4, v1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 199
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    :cond_0
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    .line 202
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 203
    sget-object p1, Landroid/telephony/ims/ImsCallProfile;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/ims/ImsCallProfile;

    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRemoteCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 204
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget v1, p0, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    iput v1, p1, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 205
    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {p1, p0}, Landroid/telephony/ims/ImsStreamMediaProfile;->copyFrom(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 207
    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public setListener(Landroid/telephony/ims/aidl/IImsCallSessionListener;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public start(Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x1

    .line 307
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 308
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x3

    .line 309
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setCallProfile(I)V

    .line 311
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object p2

    .line 312
    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setDialingNumber(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->rilRadioTechnologyToNetworkType(I)I

    move-result v3

    const-string v4, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 316
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/ims/volte2/data/CallProfile;->isCrossSimCall()Z

    move-result v3

    const-string v4, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v2, v4, v3}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 319
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v3

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v4}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->setAutomaticMode(IZ)V

    .line 320
    invoke-virtual {p2}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v3, v3, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->getRttMode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/ims/volte2/data/MediaProfile;->setRttMode(I)V

    .line 322
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallPull"

    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtraBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p1, p1, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    const-string v2, "android.telephony.ims.extra.OEM_EXTRAS"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    .line 324
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v3, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v3}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getLastDialogEvent(I)Lcom/sec/ims/DialogEvent;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_5

    .line 328
    const-string v3, "android.telephony.ImsExternalCallTracker.extra.EXTERNAL_CALL_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 330
    invoke-virtual {v2}, Lcom/sec/ims/DialogEvent;->getDialogList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :catch_0
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/Dialog;

    if-nez v4, :cond_3

    goto :goto_0

    .line 336
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v5}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v5

    .line 337
    sget-object v6, Lcom/sec/internal/constants/Mno;->VZW:Lcom/sec/internal/constants/Mno;

    if-ne v5, v6, :cond_4

    .line 338
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sec/internal/helper/ImsCallUtil;->getIdForString(Ljava/lang/String;)I

    move-result v5

    goto :goto_1

    .line 341
    :cond_4
    :try_start_0
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getDialogId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-ne p1, v5, :cond_2

    .line 348
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipCallId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 349
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipLocalTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 350
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getSipRemoteTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 351
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result v3

    invoke-static {v3}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v3

    iput v3, p1, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 352
    invoke-virtual {v4}, Lcom/sec/ims/Dialog;->getCallType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/sec/ims/volte2/data/CallProfile;->setCallType(I)V

    .line 353
    invoke-virtual {p2, v0}, Lcom/sec/ims/volte2/data/CallProfile;->setPullCall(Z)V

    .line 355
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

    :cond_5
    const/16 p1, 0x65

    .line 365
    :goto_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_8

    .line 366
    new-instance p2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p2, p1, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p2}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    .line 370
    :cond_6
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0, p1, p2}, Lcom/sec/ims/volte2/IImsCallSession;->start(Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result p1

    if-ltz p1, :cond_7

    goto :goto_3

    .line 371
    :cond_7
    new-instance p1, Landroid/os/RemoteException;

    const-string/jumbo p2, "start return -1"

    invoke-direct {p1, p2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 374
    :catch_2
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_8

    .line 375
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_8
    :goto_3
    return-void

    .line 301
    :cond_9
    :goto_4
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_a

    .line 302
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_a
    return-void
.end method

.method public startConference([Ljava/lang/String;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 385
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 386
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x66

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 392
    :try_start_0
    iput v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    .line 393
    iput-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/4 p2, 0x3

    .line 394
    invoke-virtual {p0, p2}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setCallProfile(I)V

    .line 395
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p2}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/sec/ims/volte2/IImsCallSession;->startConference([Ljava/lang/String;Lcom/sec/ims/volte2/data/CallProfile;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_2

    .line 398
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 p2, 0x67

    invoke-direct {p1, p2, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionInitiatingFailed(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 670
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez v0, :cond_0

    return-void

    .line 674
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->convertDtmfToCode(C)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/sec/ims/volte2/IImsCallSession;->startDtmf(I)V

    return-void
.end method

.method public stopDtmf()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 679
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-nez p0, :cond_0

    return-void

    .line 683
    :cond_0
    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->stopDtmf()V

    return-void
.end method

.method public terminate(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 455
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_0

    .line 456
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x66

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_0
    return-void

    .line 462
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_2

    const/4 p1, 0x1

    .line 463
    iput-boolean p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsUssdTerminatedByUser:Z

    .line 464
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    const-string v0, "1"

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0}, Lcom/sec/ims/volte2/IImsCallSession;->info(ILjava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-static {p1}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertCallEndReasonFromFW(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/sec/ims/volte2/IImsCallSession;->terminate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 469
    :catch_0
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-eqz p0, :cond_3

    .line 470
    new-instance p1, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v0, 0x67

    invoke-direct {p1, v0, v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-interface {p0, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionTerminated(Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public transfer(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1183
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {p0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallId()I

    move-result p0

    invoke-interface {p2, p0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->pushCall(ILjava/lang/String;)V

    return-void

    .line 1181
    :cond_0
    new-instance p0, Landroid/os/RemoteException;

    const-string p1, "not support assured transfer"

    invoke-direct {p0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public update(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateCallProfile()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    if-eqz v0, :cond_23

    .line 843
    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v0

    .line 844
    iget-object v1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v1}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 849
    :cond_0
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHDIcon()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    .line 850
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v4, v2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    goto :goto_0

    .line 852
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iput v3, v2, Landroid/telephony/ims/ImsCallProfile;->mRestrictCause:I

    .line 855
    :goto_0
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v2

    const-string v6, "dialstring"

    const-string v7, "android.telephony.ims.extra.CONFERENCE"

    if-eqz v2, :cond_2

    .line 856
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 857
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v6, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 859
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 860
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 863
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getOir(Lcom/sec/internal/constants/Mno;Lcom/sec/ims/volte2/data/CallProfile;)I

    move-result v2

    .line 864
    iget-object v6, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string/jumbo v7, "oir"

    invoke-virtual {v6, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 865
    iget-object v6, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "cnap"

    invoke-virtual {v6, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 867
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v5

    const-string v7, "com.samsung.telephony.extra.IS_TWO_PHONE_MODE"

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 868
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "com.samsung.telephony.extra.PHOTO_RING_AVAILABLE"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getPhotoRing()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "com.samsung.telephony.extra.ALERT_INFO"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getAlertInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getNumberPlus()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 871
    iget-object v6, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "android.telephony.ims.extra.FORWARDED_NUMBER"

    invoke-virtual {v6, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 872
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "com.samsung.telephony.extra.SKT_CONFERENCE_CALL_SUPPORT"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getConferenceSupported()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v6, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    const-string v8, "0"

    if-eqz v2, :cond_4

    .line 875
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 876
    iget-object v9, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v9, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 877
    const-string v2, "anonymous"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getHistoryInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.CALL_FORWARDING_PRESENTATION"

    if-eqz v2, :cond_3

    .line 878
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 880
    :cond_3
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCode()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_5

    .line 885
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "com.samsung.telephony.extra.VCRBT_CAUSE"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectCode()I

    move-result v9

    invoke-virtual {v2, v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 888
    :cond_5
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectProtocol()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 889
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "com.samsung.telephony.extra.VCRBT_REASON_PROTOCOL"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectProtocol()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :cond_6
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 893
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "com.samsung.telephony.extra.TEXT_DESCRIPTION"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRejectText()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :cond_7
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 897
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "com.samsung.telephony.extra.DTMF_EVENT"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDtmfEvent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :cond_8
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getIsFocus()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "com.samsung.telephony.extra.MT_CONFERENCE"

    invoke-virtual {v2, v7, v6}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 902
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v6, "com.samsung.telephony.extra.REMOTE_HELD"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isRemoteHeld()Z

    move-result v7

    invoke-virtual {v2, v6, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 904
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    const-string v6, "ImsCallSessionImpl"

    const-string/jumbo v7, "oi"

    if-nez v2, :cond_a

    .line 905
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 906
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 907
    :cond_9
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isLatin()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCallProfile.setCallExtra: EXTRA_OI = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 912
    :cond_a
    sget-object v2, Lcom/sec/internal/constants/Mno;->KT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_b

    .line 913
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v9

    const-string v10, "+82"

    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v11

    invoke-static {v9, v10, v8, v11}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 914
    :cond_b
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isAus()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 915
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v9

    const-string v10, "+61"

    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v11

    invoke-static {v9, v10, v8, v11}, Lcom/sec/internal/helper/ImsCallUtil;->removeUriPlusPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 916
    :cond_c
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v7}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 917
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDialingNumber()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    :cond_d
    :goto_3
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 921
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-eqz v2, :cond_f

    .line 922
    :cond_e
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "cna"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getLetteringText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_f
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "com.samsung.telephony.extra.CMC_RECORDING_EVENT"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCmcRecordEvent()I

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 928
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleCallType(I)I

    move-result v7

    iput v7, v2, Landroid/telephony/ims/ImsCallProfile;->mCallType:I

    .line 929
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v7

    invoke-static {v7}, Lcom/sec/internal/imsphone/DataTypeConvertor;->convertToGoogleMediaProfile(Lcom/sec/ims/volte2/data/MediaProfile;)Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v7

    iput-object v7, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    .line 931
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 932
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioBitRate()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getMediaProfile()Lcom/sec/ims/volte2/data/MediaProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/MediaProfile;->getAudioCodec()Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setAudioCodecAttr(Ljava/lang/String;Lcom/sec/ims/volte2/data/VolteConstants$AudioCodecType;)V

    .line 935
    :cond_10
    iget v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mState:I

    const/4 v7, 0x2

    if-gt v2, v7, :cond_11

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isMOCall()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 937
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v2, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRingbackToneDirection:I

    iput v7, v2, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 940
    :cond_11
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v7, "call_mode_changeable"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->hasRemoteVideoCapa()Z

    move-result v8

    invoke-virtual {v2, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 941
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isVideoCRBT()Z

    move-result v2

    const-string v7, "com.samsung.telephony.extra.VIDEO_CRT_MT"

    const-string v8, "com.samsung.telephony.extra.VIDEO_CRBT"

    if-eqz v2, :cond_17

    .line 942
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-nez v2, :cond_13

    .line 943
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v8, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 944
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 945
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "ims_call_extra_cvat_video"

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 947
    :cond_12
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "ims_call_extra_cvat_voice"

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 949
    :cond_13
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v2

    if-ne v2, v5, :cond_18

    .line 950
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDelayRinging()Z

    move-result v2

    if-eqz v2, :cond_14

    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    goto :goto_4

    :cond_14
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_AVAILABLE:I

    .line 951
    :goto_4
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getVcrtLocalTone()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 952
    sget v2, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->VCRT_AVAILABLE_VIDEO_ONLY:I

    .line 954
    :cond_15
    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v4, v7, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 955
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getCallType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isVideoCall(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 956
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "ims_call_extra_cvrs_video"

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 958
    :cond_16
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "ims_call_extra_cvrs_voice"

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    goto :goto_5

    .line 962
    :cond_17
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v2, v8, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 963
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    sget v4, Lcom/sec/internal/constants/ims/ImsConstants$VcrtPost;->NO_VCRT:I

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 966
    :cond_18
    :goto_5
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/helper/ImsCallUtil;->isCmcSecondaryType(I)Z

    move-result v2

    const-string v4, "android.telephony.ims.extra.CALL_NETWORK_TYPE"

    if-eqz v2, :cond_19

    .line 967
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const/16 v7, 0xd

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_7

    .line 969
    :cond_19
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;

    move-result-object v2

    if-eqz v2, :cond_1c

    .line 970
    invoke-virtual {p0}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->isEmergencyCall()Z

    move-result v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    .line 971
    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/ims/volte2/data/CallProfile;->getNetworkType()I

    move-result v7

    const/16 v8, 0xf

    if-eq v7, v8, :cond_1c

    .line 972
    :cond_1a
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->isSoftphoneEnabled()Z

    move-result v7

    if-nez v7, :cond_1c

    .line 973
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 974
    iget-object v8, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v8}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v8

    invoke-interface {v2, v8}, Lcom/sec/internal/interfaces/ims/core/IPdnController;->isEpdgConnected(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    const/16 v2, 0x12

    goto :goto_6

    :cond_1b
    const/16 v2, 0xe

    :goto_6
    invoke-static {v2}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->rilRadioTechnologyToNetworkType(I)I

    move-result v2

    .line 973
    invoke-virtual {v7, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    goto :goto_7

    .line 977
    :cond_1c
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    .line 978
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRadioTech()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/helper/os/ServiceStateWrapper;->rilRadioTechnologyToNetworkType(I)I

    move-result v7

    .line 977
    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 982
    :goto_7
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->isKor()Z

    move-result v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getCmcType()I

    move-result v2

    if-nez v2, :cond_1d

    .line 983
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getRegistration()Lcom/sec/ims/ImsRegistration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/ImsRegistration;->getCurrentRat()I

    move-result v2

    .line 984
    invoke-static {v2}, Lcom/sec/internal/helper/NetworkUtil;->is3gppPsVoiceNetwork(I)Z

    move-result v7

    if-nez v7, :cond_1d

    .line 985
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set EXTRA_CALL_NETWORK_TYPE for 3gvt  currentRat["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v7, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 990
    :cond_1d
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "android.telephony.ims.extra.IS_CROSS_SIM_CALL"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->isCrossSimCall()Z

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 991
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    iget-object v7, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v7}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v7

    invoke-interface {v4, v7}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->isVolteSupportECT(I)Z

    move-result v4

    const-string v7, "com.samsung.telephony.extra.CAN_TRANSFER_CALL"

    invoke-virtual {v2, v7, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 992
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "com.samsung.telephony.extra.CALL_DIRECTION"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getDirection()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 993
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "com.samsung.telephony.extra.AUDIO_RX_TRACK_ID"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getAudioRxTrackId()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 994
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "feature_caps"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getFeatureCaps()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "com.samsung.telephony.extra.VIDEO_SCREEN_SHARE"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getIdcScreenShareRunning()Z

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 996
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "com.samsung.telephony.extra.VIDEO_ARCALL"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getIdcArCallRunning()Z

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 998
    sget-object v2, Lcom/sec/internal/constants/Mno;->TMOUS:Lcom/sec/internal/constants/Mno;

    sget-object v4, Lcom/sec/internal/constants/Mno;->SPRINT:Lcom/sec/internal/constants/Mno;

    filled-new-array {v2, v4}, [Lcom/sec/internal/constants/Mno;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/constants/Mno;->isOneOf([Lcom/sec/internal/constants/Mno;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 999
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSession:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v4}, Lcom/sec/ims/volte2/IImsCallSession;->getSessionId()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", EPSFB:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "com.samsung.ims.extra.EPSFB_SUCCESS"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEPSFBsuccess()Z

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1001
    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 1002
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "com.samsung.ims.extra.ECHO_CELL_ID"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getEchoCellId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    :cond_1e
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "com.samsung.telephony.extra.VT_RECORDING_STATE"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getRecordState()I

    move-result v7

    invoke-virtual {v2, v4, v7}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1008
    iget-boolean v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsEcbmSupport:Z

    if-eqz v2, :cond_1f

    .line 1009
    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "imsEcmSupport"

    invoke-virtual {v2, v4, v5}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1012
    :cond_1f
    sget-object v2, Lcom/sec/internal/constants/Mno;->CMCC:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_20

    .line 1013
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "com.samsung.telephony.extra.VIDEO_CRT_IS_ALERTING"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getVcrtIsAlerting()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1014
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    const-string v2, "com.samsung.telephony.extra.VCS_TOUCH_SCREEN_ENABLED"

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getTouchScreenEnabled()Z

    move-result v4

    invoke-virtual {v0, v2, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraBoolean(Ljava/lang/String;Z)V

    .line 1018
    :cond_20
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->isQuantumEncryptionServiceAvailable()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update extra com.samsung.telephony.extra.QUANTUM_ENCRYPTION_STATUS: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Lcom/sec/ims/volte2/data/CallProfile;->getQuantumSecurityInfo()Lcom/sec/ims/volte2/data/QuantumSecurityInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->getEncryptStatus()I

    move-result v2

    const-string v4, "com.samsung.telephony.extra.QUANTUM_ENCRYPTION_STATUS"

    invoke-virtual {v0, v4, v2}, Landroid/telephony/ims/ImsCallProfile;->setCallExtraInt(Ljava/lang/String;I)V

    .line 1022
    :cond_21
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mVolteServiceModule:Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/IVolteServiceModule;->getCmcServiceHelper()Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v2}, Lcom/sec/ims/volte2/IImsCallSession;->getPhoneId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/sec/internal/interfaces/ims/servicemodules/volte2/ICmcServiceHelper;->isCmcRegExist(I)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1023
    invoke-virtual {p0, v1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V

    .line 1025
    :cond_22
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mSession:Lcom/sec/ims/volte2/IImsCallSession;

    invoke-interface {v0}, Lcom/sec/ims/volte2/IImsCallSession;->getCallProfile()Lcom/sec/ims/volte2/data/CallProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/ims/volte2/data/CallProfile;->isConferenceCall()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mIsMultiparty:Z

    .line 1026
    invoke-virtual {p0, v3}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->setCallProfile(I)V

    return-void

    .line 840
    :cond_23
    new-instance p0, Landroid/os/RemoteException;

    invoke-direct {p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method protected updateCmcCallExtras(Lcom/sec/ims/volte2/data/CallProfile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public updateConferenceStatus(ILjava/lang/String;)V
    .locals 2

    .line 715
    const-string v0, "disconnected"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 716
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, p2, v1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateParticipant(ILjava/lang/String;I)V

    goto :goto_0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateParticipant(ILjava/lang/String;)V

    .line 722
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p1}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getConferenceHost()Lcom/sec/internal/imsphone/ImsCallSessionImpl;

    move-result-object p1

    .line 723
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {p2, v0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->updateSecConferenceInfo(Landroid/telephony/ims/ImsCallProfile;)V

    .line 725
    iget-object p2, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    if-nez p2, :cond_1

    if-eqz p1, :cond_2

    .line 726
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 727
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p2

    iget-object v0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p2, v0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 728
    invoke-virtual {p1}, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->getListener()Landroid/telephony/ims/aidl/IImsCallSessionListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V

    goto :goto_1

    .line 731
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    invoke-interface {p2, p1}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionUpdated(Landroid/telephony/ims/ImsCallProfile;)V

    .line 732
    iget-object p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mListener:Landroid/telephony/ims/aidl/IImsCallSessionListener;

    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mMmTelFeatureImpl:Lcom/sec/internal/imsphone/MmTelFeatureImpl;

    invoke-virtual {p0}, Lcom/sec/internal/imsphone/MmTelFeatureImpl;->getImsConferenceState()Landroid/telephony/ims/ImsConferenceState;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IImsCallSessionListener;->callSessionConferenceStateUpdated(Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method public updateHoldToneType(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1053
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    const/4 p1, 0x0

    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    :cond_0
    return-void
.end method

.method public updateRingbackToneDirection(I)V
    .locals 0

    .line 1058
    iput p1, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mRingbackToneDirection:I

    .line 1059
    iget-object p0, p0, Lcom/sec/internal/imsphone/ImsCallSessionImpl;->mCallProfile:Landroid/telephony/ims/ImsCallProfile;

    iget-object p0, p0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    const/4 p1, -0x1

    .line 1060
    iput p1, p0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    return-void
.end method
