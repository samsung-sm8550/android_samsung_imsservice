.class public Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
.super Ljava/lang/Object;
.source "CmcP2pCommand.java"


# instance fields
.field private mCmcSendTime:Ljava/lang/String;

.field private mEventType:I

.field private mMethod:Ljava/lang/String;

.field private mReason:I

.field private mSessionId:Ljava/lang/String;

.field private mState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmCmcSendTime(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mCmcSendTime:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEventType(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mEventType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMethod(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReason(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mReason:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmState(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mState:I

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mEventType:I

    .line 81
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mSessionId:Ljava/lang/String;

    .line 82
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mState:I

    .line 83
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mMethod:Ljava/lang/String;

    .line 84
    iput-object v1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mCmcSendTime:Ljava/lang/String;

    const/16 v0, 0x3e8

    .line 85
    iput v0, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mReason:I

    return-void
.end method


# virtual methods
.method public build()Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;
    .locals 1

    .line 88
    new-instance v0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand;-><init>(Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;)V

    return-object v0
.end method

.method public setCmcSendTime(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mCmcSendTime:Ljava/lang/String;

    return-object p0
.end method

.method public setEventType(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
    .locals 0

    .line 92
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mEventType:I

    return-object p0
.end method

.method public setMethod(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mMethod:Ljava/lang/String;

    return-object p0
.end method

.method public setReason(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
    .locals 0

    .line 117
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mReason:I

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mSessionId:Ljava/lang/String;

    return-object p0
.end method

.method public setState(I)Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;
    .locals 0

    .line 102
    iput p1, p0, Lcom/sec/internal/ims/core/cmc/CmcP2pCommand$Builder;->mState:I

    return-object p0
.end method
