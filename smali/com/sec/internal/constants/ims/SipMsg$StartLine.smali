.class public abstract Lcom/sec/internal/constants/ims/SipMsg$StartLine;
.super Ljava/lang/Object;
.source "SipMsg.java"


# instance fields
.field sipVer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asRequestLine()Lcom/sec/internal/constants/ims/SipMsg$RequestLine;
    .locals 1

    .line 277
    instance-of v0, p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;

    const-string v0, ""

    filled-new-array {v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg$RequestLine;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public asStatusLine()Lcom/sec/internal/constants/ims/SipMsg$StatusLine;
    .locals 2

    .line 281
    instance-of v0, p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;

    const-string v0, "0"

    const-string v1, ""

    filled-new-array {v1, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/constants/ims/SipMsg$StatusLine;-><init>([Ljava/lang/String;)V

    :goto_0
    return-object p0
.end method

.method public getSipVer()Ljava/lang/String;
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/sec/internal/constants/ims/SipMsg$StartLine;->sipVer:Ljava/lang/String;

    return-object p0
.end method
