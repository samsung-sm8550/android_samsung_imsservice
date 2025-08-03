.class public Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;
.super Ljava/lang/Object;
.source "UssdEvent.java"


# instance fields
.field private mDCS:I

.field private mData:[B

.field private mSessionID:I

.field private mSipErrorCode:Lcom/sec/ims/util/SipError;

.field private mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

.field private mStatus:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    .line 7
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;->NOT_INITIALIZED:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    iput-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    .line 8
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    .line 9
    iput v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    .line 11
    iput-object v0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method private setData([B)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    return-void
.end method


# virtual methods
.method public getDCS()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    return p0
.end method

.method public getData()[B
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mData:[B

    return-object p0
.end method

.method public getErrorCode()Lcom/sec/ims/util/SipError;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-object p0
.end method

.method public getSessionID()I
    .locals 0

    .line 28
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    return p0
.end method

.method public getState()Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    return p0
.end method

.method public setDCS(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mDCS:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 1

    .line 60
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 61
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    goto :goto_0

    .line 62
    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    .line 63
    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    goto :goto_0

    .line 64
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 65
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->setData([B)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setErrorCode(Lcom/sec/ims/util/SipError;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSipErrorCode:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public setSessionID(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mSessionID:I

    return-void
.end method

.method public setState(Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mState:Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent$USSD_STATE;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 40
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/volte2/UssdEvent;->mStatus:I

    return-void
.end method
