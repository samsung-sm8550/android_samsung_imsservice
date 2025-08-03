.class public Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;
.super Lcom/sec/internal/helper/parser/HttpHeaderParser;
.source "WwwAuthHeaderParser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WwwAuthHeaderParser"


# instance fields
.field private paramSplitHeader:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/sec/internal/helper/parser/HttpHeaderParser;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    return-void
.end method

.method private parse(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setScheme(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setRealm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setNonce(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setAlgorithm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setQop(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setStale(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->setOpaque(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private setAlgorithm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1

    .line 107
    const-string v0, "algorithm[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 111
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setAlgorithm(Ljava/lang/String;)V

    return-void
.end method

.method private setNonce(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1

    .line 95
    const-string v0, "nonce[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 99
    :cond_0
    const-string p0, ","

    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    .line 100
    invoke-virtual {p2, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 102
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setNonce(Ljava/lang/String;)V

    return-void
.end method

.method private setOpaque(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1

    .line 129
    const-string/jumbo v0, "opaque[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 131
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 133
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setOpaque(Ljava/lang/String;)V

    return-void
.end method

.method private setQop(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 3

    .line 116
    const-string/jumbo v0, "qop[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    .line 118
    const-string v0, "WwwAuthHeaderParser"

    if-nez p2, :cond_0

    .line 119
    const-string/jumbo p0, "setQop - no qop"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQop - paramSplitHeader: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", qopVal : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object p0, p2

    .line 124
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setQop(Ljava/lang/String;)V

    return-void
.end method

.method private setRealm(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1

    .line 86
    const-string/jumbo v0, "realm[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 88
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 90
    :goto_0
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setRealm(Ljava/lang/String;)V

    return-void
.end method

.method private setScheme(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1

    .line 75
    const-string p0, "Digest"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_0
    const-string p0, "Basic"

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 78
    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_1
    const-string p0, "Unknown"

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setScheme(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setStale(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V
    .locals 1

    .line 138
    const-string/jumbo v0, "stale[\\s]*="

    invoke-virtual {p0, v0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getSplitHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->paramSplitHeader:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 140
    invoke-virtual {p0, p2}, Lcom/sec/internal/helper/parser/HttpHeaderParser;->getParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 142
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->setStale(Z)V

    return-void
.end method


# virtual methods
.method public parseHeaderValue(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 1

    .line 55
    new-instance v0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    invoke-direct {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;-><init>()V

    .line 56
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parse(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 57
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "WwwAuthenticateHeader - parseHeaderValue : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WwwAuthHeaderParser"

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public wwwAuthHeaderParse(Ljava/lang/String;)Lcom/sec/internal/helper/header/WwwAuthenticateHeader;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_0
    new-instance v0, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;

    invoke-direct {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;-><init>()V

    .line 48
    invoke-direct {p0, v0, p1}, Lcom/sec/internal/helper/parser/WwwAuthHeaderParser;->parse(Lcom/sec/internal/helper/header/WwwAuthenticateHeader;Ljava/lang/String;)V

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "WwwAuthenticateHeader - wwwAuthHeaderParse : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/sec/internal/helper/header/WwwAuthenticateHeader;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WwwAuthHeaderParser"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method
