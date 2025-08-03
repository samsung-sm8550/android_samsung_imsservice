.class final enum Lcom/sec/internal/log/LogRedactor$6;
.super Lcom/sec/internal/log/LogRedactor;
.source "LogRedactor.java"


# instance fields
.field final GROUP_1_SCHEMA_OPTIONAL:Ljava/lang/String;

.field final GROUP_2_MSISDN_OR_IMSI:Ljava/lang/String;

.field final GROUP_3_DOMAIN:Ljava/lang/String;

.field final IMPU_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lcom/sec/internal/log/LogRedactor;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor-IA;)V

    .line 126
    const-string p1, "^(sip:|tel:)?"

    iput-object p1, p0, Lcom/sec/internal/log/LogRedactor$6;->GROUP_1_SCHEMA_OPTIONAL:Ljava/lang/String;

    .line 127
    const-string p1, "(\\d.+)"

    iput-object p1, p0, Lcom/sec/internal/log/LogRedactor$6;->GROUP_2_MSISDN_OR_IMSI:Ljava/lang/String;

    .line 128
    const-string p1, "(.+)$"

    iput-object p1, p0, Lcom/sec/internal/log/LogRedactor$6;->GROUP_3_DOMAIN:Ljava/lang/String;

    .line 130
    const-string p1, "^(sip:|tel:)?(\\d.+)@(.+)$"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/log/LogRedactor$6;->IMPU_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$6-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/log/LogRedactor$6;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/sec/internal/log/LogRedactor$6;->IMPU_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    return-object p0
.end method

.method protected hideAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 144
    const-string p0, "\\w"

    const-string v0, "*"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected hideMatched(Ljava/util/regex/Matcher;)Ljava/lang/String;
    .locals 2

    const/4 p0, 0x1

    .line 149
    invoke-virtual {p1, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x2

    .line 150
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/sec/internal/log/LogRedactor;->MSISDN:Lcom/sec/internal/log/LogRedactor;

    .line 153
    invoke-virtual {p0, v0}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "@"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/sec/internal/log/LogRedactor;->DOMAIN:Lcom/sec/internal/log/LogRedactor;

    const/4 v0, 0x3

    .line 155
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sec/internal/log/LogRedactor;->redact(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
