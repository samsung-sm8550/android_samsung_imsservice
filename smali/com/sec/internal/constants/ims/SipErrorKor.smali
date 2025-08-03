.class public Lcom/sec/internal/constants/ims/SipErrorKor;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorKor.java"


# static fields
.field public static final AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x3eb

    const-string v2, "Aka challenge timeout"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorKor;->AKA_CHANLENGE_TIMEOUT:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    .line 21
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->DECLINE:Lcom/sec/ims/util/SipError;

    iput-object v0, p0, Lcom/sec/internal/constants/ims/SipErrorBase;->mDefaultRejectReason:Lcom/sec/ims/util/SipError;

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    .line 32
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE_GLOBALLY:Lcom/sec/ims/util/SipError;

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->DECLINE:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
