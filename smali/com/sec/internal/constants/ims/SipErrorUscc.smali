.class public Lcom/sec/internal/constants/ims/SipErrorUscc;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorUscc.java"


# static fields
.field public static final BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

.field public static final CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 17
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Establishing Another Call"

    const/16 v2, 0x1e6

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorUscc;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    .line 19
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Call Rejected by User"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorUscc;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1

    const/4 v0, 0x3

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    if-eq p1, v0, :cond_1

    .line 30
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 28
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorUscc;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
