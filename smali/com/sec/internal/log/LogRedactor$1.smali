.class final enum Lcom/sec/internal/log/LogRedactor$1;
.super Lcom/sec/internal/log/LogRedactor;
.source "LogRedactor.java"


# instance fields
.field final IMEI_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/log/LogRedactor;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor-IA;)V

    .line 14
    const-string p1, "^(\\d{3})(\\d{8,10})(\\d{3})$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/log/LogRedactor$1;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$1-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/log/LogRedactor$1;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/sec/internal/log/LogRedactor$1;->IMEI_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method protected hideAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 23
    const-string p0, "\\d"

    const-string v0, "*"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideMatched(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 3

    .line 28
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x2

    .line 29
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\d"

    const-string v2, "*"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    .line 30
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
