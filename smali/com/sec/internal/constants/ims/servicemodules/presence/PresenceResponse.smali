.class public Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;
.super Ljava/lang/Object;
.source "PresenceResponse.java"


# instance fields
.field private mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

.field private mErrorPhrase:Ljava/lang/String;

.field private mPhoneId:I

.field private mRetryTime:I

.field private mSipErrorCode:I

.field private mSubscribeId:Ljava/lang/String;

.field private mSubscribeTerminatedReason:Ljava/lang/String;

.field private mSuccess:Z


# direct methods
.method public constructor <init>(ZILjava/lang/String;II)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSuccess:Z

    .line 28
    iput p2, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSipErrorCode:I

    .line 29
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mErrorPhrase:Ljava/lang/String;

    if-nez p1, :cond_0

    .line 31
    invoke-direct {p0, p2, p3}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->translateSipError(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    .line 33
    :cond_0
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mRetryTime:I

    .line 34
    iput p5, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mPhoneId:I

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSubscribeId:Ljava/lang/String;

    .line 39
    iput-boolean p1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSuccess:Z

    .line 40
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mPhoneId:I

    .line 41
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSubscribeTerminatedReason:Ljava/lang/String;

    return-void
.end method

.method private checkReasonPhrase(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 1

    .line 151
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSPECIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    const/16 v0, 0x193

    if-eq p1, v0, :cond_2

    const/16 v0, 0x198

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    const-string/jumbo p0, "transaction timeout"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 171
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT_RETRY:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_0

    .line 173
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->REQUEST_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_0

    .line 155
    :cond_2
    const-string p0, "not authorized for presence"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 156
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_PROVISIONED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_0

    .line 157
    :cond_3
    const-string/jumbo p0, "user not registered"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 158
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_REGISTERED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_0

    .line 160
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    :goto_0
    return-object p0
.end method

.method private translateSipError(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 2

    .line 81
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSPECIFIED_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    if-eqz p2, :cond_0

    .line 83
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const/16 v1, 0x384

    if-lt p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_1

    const/16 p1, 0x3e7

    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 143
    :sswitch_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->NO_RESPONSE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 139
    :sswitch_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DOES_NOT_EXIST_ANYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 136
    :sswitch_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 133
    :sswitch_3
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_EVERYWHERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 130
    :sswitch_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVICE_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 127
    :sswitch_5
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->SERVER_INTERNAL_ERROR:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 124
    :sswitch_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BAD_EVENT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 121
    :sswitch_7
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 118
    :sswitch_8
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 115
    :sswitch_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INTERVAL_TOO_SHORT:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 112
    :sswitch_a
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->UNSUPPORTED_MEDIA_TYPE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 109
    :sswitch_b
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->ENTITY_TOO_LARGE:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 106
    :sswitch_c
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->CONDITIONAL_REQUEST_FAILED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 103
    :sswitch_d
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->checkReasonPhrase(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v0

    goto :goto_1

    .line 100
    :sswitch_e
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->METHOD_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 97
    :sswitch_f
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->USER_NOT_FOUND:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    goto :goto_1

    .line 94
    :sswitch_10
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->checkReasonPhrase(ILjava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    move-result-object v0

    goto :goto_1

    .line 91
    :sswitch_11
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;->INVALID_REQUEST:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    :goto_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_11
        0x193 -> :sswitch_10
        0x194 -> :sswitch_f
        0x195 -> :sswitch_e
        0x198 -> :sswitch_d
        0x19c -> :sswitch_c
        0x19d -> :sswitch_b
        0x19f -> :sswitch_a
        0x1a7 -> :sswitch_9
        0x1e0 -> :sswitch_8
        0x1e6 -> :sswitch_7
        0x1e9 -> :sswitch_6
        0x1f4 -> :sswitch_5
        0x1f7 -> :sswitch_4
        0x258 -> :sswitch_3
        0x25b -> :sswitch_2
        0x25c -> :sswitch_1
        0x2c4 -> :sswitch_0
        0x3e7 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getErrorDescription()Ljava/lang/String;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mErrorPhrase:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 65
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mPhoneId:I

    return p0
.end method

.method public getReason()Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    return-object p0
.end method

.method public getRetryTime()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mRetryTime:I

    return p0
.end method

.method public getSipError()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSipErrorCode:I

    return p0
.end method

.method public getSubscribeId()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSubscribeId:Ljava/lang/String;

    return-object p0
.end method

.method public getSubscribeTerminatedReason()Ljava/lang/String;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSubscribeTerminatedReason:Ljava/lang/String;

    return-object p0
.end method

.method public isSuccess()Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSuccess:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PresenceResponse [mSuccess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSuccess:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSipErrorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mSipErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mError="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mError:Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse$PresenceFailureReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mErrorPhrase="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mErrorPhrase:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRetryTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mRetryTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/presence/PresenceResponse;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
