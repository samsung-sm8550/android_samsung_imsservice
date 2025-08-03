.class final enum Lcom/sec/internal/log/LogRedactor$3;
.super Lcom/sec/internal/log/LogRedactor;
.source "LogRedactor.java"


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/log/LogRedactor;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$3-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/log/LogRedactor$3;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 0

    .line 67
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LogRedactor.DOMAIN doesn\'t support getMatcher()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method hideAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LogRedactor.DOMAIN doesn\'t support hideAll()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method hideMatched(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 0

    .line 77
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "LogRedactor.DOMAIN doesn\'t support hideMatched()"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method hideSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 62
    const-string p0, "\\w"

    const-string v0, "*"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
