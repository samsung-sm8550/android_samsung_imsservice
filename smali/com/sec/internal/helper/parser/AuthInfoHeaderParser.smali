.class public Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;
.super Lcom/sec/internal/helper/parser/HttpHeaderParser;
.source "AuthInfoHeaderParser.java"


# static fields
.field private static final REGEX_CNONCE:Ljava/lang/String; = "cnonce[\\s]*="

.field private static final REGEX_NEXTNONCE:Ljava/lang/String; = "nextnonce[\\s]*="

.field private static final REGEX_NONCECOUNT:Ljava/lang/String; = "nc[\\s]*="

.field private static final REGEX_RSPAUTH:Ljava/lang/String; = "rspauth[\\s]*="

.field private static final TAG:Ljava/lang/String; = "AuthInfoHeaderParser"


# instance fields
.field private paramSplitHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/sec/internal/helper/parser/HttpHeaderParser;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    return-void
.end method

.method private parse(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setQop(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setRspAuth(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setCNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setNonceCount(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->setNextNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->toString()Ljava/lang/String;

    return-void

    .line 55
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Authentication-Info Header Value is Null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setCNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 1

    .line 76
    const-string v0, "cnonce[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 78
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 80
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setCnonce(Ljava/lang/String;)V

    return-void
.end method

.method private setNextNonce(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 1

    .line 92
    const-string v0, "nextnonce[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 94
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 96
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setNextNonce(Ljava/lang/String;)V

    return-void
.end method

.method private setNonceCount(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 1

    .line 84
    const-string v0, "nc[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 88
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setCnonce(Ljava/lang/String;)V

    return-void
.end method

.method private setQop(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 1

    .line 60
    const-string/jumbo v0, "qop[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 62
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 64
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setQop(Ljava/lang/String;)V

    return-void
.end method

.method private setRspAuth(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V
    .locals 1

    .line 68
    const-string/jumbo v0, "rspauth[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 70
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 72
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->setRspauth(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/AuthenticationInfoHeader;
    .locals 1

    .line 41
    new-instance v0, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;

    invoke-direct {v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;-><init>()V

    .line 42
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/parser/AuthInfoHeaderParser;->parse(Lcom/sec/internal/helper/header/AuthenticationInfoHeader;Ljava/lang/String;)V

    .line 43
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "AuthenticationInfoHeader - parseHeaderValue : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/header/AuthenticationInfoHeader;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AuthInfoHeaderParser"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
