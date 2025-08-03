.class public Lcom/sec/internal/constants/ims/SipErrorVodafoneCy;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorVodafoneCy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 12
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorBase;->DECLINE:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
