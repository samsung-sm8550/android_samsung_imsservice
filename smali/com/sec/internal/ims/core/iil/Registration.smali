.class public Lcom/sec/internal/ims/core/iil/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# static fields
.field public static final CDPN_REGISTERED:I = 0x20

.field public static final RCS_REGISTERED:I = 0x4

.field public static final SMS_OVER_IMS_REGISTERED:I = 0x2

.field public static final VOLTE_REGISTERED:I = 0x1

.field public static final VT_REGISTERED:I = 0x8


# instance fields
.field private mDereiReasonCode:I

.field private mEcmpMode:I

.field private mEpdgMode:I

.field private mError:I

.field private mErrorMsg:Ljava/lang/String;

.field private mFeatureMask:I

.field private mFeatureTags:Ljava/lang/String;

.field private mImpu:Ljava/lang/String;

.field private mLimitedMode:I

.field private mPdnType:I

.field private mRat:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    .line 37
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    .line 38
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    .line 39
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    .line 40
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    .line 41
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    .line 42
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    .line 43
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    .line 14
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    .line 27
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    .line 28
    iput p2, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    .line 29
    iput p3, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    .line 30
    iput p4, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    .line 31
    iput p5, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    .line 32
    iput p6, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    return-void
.end method


# virtual methods
.method public getDeregiReasonCode()I
    .locals 0

    .line 59
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    return p0
.end method

.method public getEcmpMode()I
    .locals 0

    .line 91
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    return p0
.end method

.method public getEpdgMode()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    return p0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getFeatureMask()I
    .locals 0

    .line 75
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    return p0
.end method

.method public getFeatureTags()Ljava/lang/String;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    return-object p0
.end method

.method public getImpu()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    return-object p0
.end method

.method public getLimitedMode()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    return p0
.end method

.method public getNetworkType()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    return p0
.end method

.method public getRegiRat()I
    .locals 0

    .line 131
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    return p0
.end method

.method public getSipError()I
    .locals 0

    .line 51
    iget p0, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    return p0
.end method

.method public setDeregiReasonCode(I)V
    .locals 0

    .line 55
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mDereiReasonCode:I

    return-void
.end method

.method public setEcmpMode(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEcmpMode:I

    return-void
.end method

.method public setEpdgMode(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mEpdgMode:I

    return-void
.end method

.method public setErrorMessage(Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mErrorMsg:Ljava/lang/String;

    return-void
.end method

.method public setFeatureMask(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureMask:I

    return-void
.end method

.method public setFeatureTags(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mFeatureTags:Ljava/lang/String;

    return-void
.end method

.method public setImpu(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mImpu:Ljava/lang/String;

    return-void
.end method

.method public setLimitedMode(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mLimitedMode:I

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mPdnType:I

    return-void
.end method

.method public setRegiRat(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mRat:I

    return-void
.end method

.method public setSipError(I)V
    .locals 0

    .line 47
    iput p1, p0, Lcom/sec/internal/ims/core/iil/Registration;->mError:I

    return-void
.end method
