.class final enum Lcom/sec/internal/log/LogRedactor$5;
.super Lcom/sec/internal/log/LogRedactor;
.source "LogRedactor.java"


# instance fields
.field final MSISDN_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/log/LogRedactor;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor-IA;)V

    .line 106
    const-string p1, "^(\\+)?(\\d{8,15})$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/log/LogRedactor$5;->MSISDN_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$5-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/log/LogRedactor$5;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/sec/internal/log/LogRedactor$5;->MSISDN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method protected hideAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 115
    const-string p0, "\\d"

    const-string v0, "*"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideMatched(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x1

    .line 120
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x2

    .line 122
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\d(?=\\d{2})"

    const-string v1, "*"

    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
