.class public abstract enum Lcom/sec/internal/log/LogRedactor;
.super Ljava/lang/Enum;
.source "LogRedactor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/log/LogRedactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/log/LogRedactor;

.field public static final enum DOMAIN:Lcom/sec/internal/log/LogRedactor;

.field public static final enum IMEI:Lcom/sec/internal/log/LogRedactor;

.field public static final enum IMPI:Lcom/sec/internal/log/LogRedactor;

.field public static final enum IMPU:Lcom/sec/internal/log/LogRedactor;

.field public static final enum IMSI:Lcom/sec/internal/log/LogRedactor;

.field public static final enum MSISDN:Lcom/sec/internal/log/LogRedactor;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/log/LogRedactor;
    .locals 6

    .line 9
    sget-object v0, Lcom/sec/internal/log/LogRedactor;->IMEI:Lcom/sec/internal/log/LogRedactor;

    sget-object v1, Lcom/sec/internal/log/LogRedactor;->IMSI:Lcom/sec/internal/log/LogRedactor;

    sget-object v2, Lcom/sec/internal/log/LogRedactor;->DOMAIN:Lcom/sec/internal/log/LogRedactor;

    sget-object v3, Lcom/sec/internal/log/LogRedactor;->IMPI:Lcom/sec/internal/log/LogRedactor;

    sget-object v4, Lcom/sec/internal/log/LogRedactor;->MSISDN:Lcom/sec/internal/log/LogRedactor;

    sget-object v5, Lcom/sec/internal/log/LogRedactor;->IMPU:Lcom/sec/internal/log/LogRedactor;

    filled-new-array/range {v0 .. v5}, [Lcom/sec/internal/log/LogRedactor;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lcom/sec/internal/log/LogRedactor$1;

    const-string v1, "IMEI"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/log/LogRedactor$1;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$1-IA;)V

    sput-object v0, Lcom/sec/internal/log/LogRedactor;->IMEI:Lcom/sec/internal/log/LogRedactor;

    .line 33
    new-instance v0, Lcom/sec/internal/log/LogRedactor$2;

    const-string v1, "IMSI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/log/LogRedactor$2;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$2-IA;)V

    sput-object v0, Lcom/sec/internal/log/LogRedactor;->IMSI:Lcom/sec/internal/log/LogRedactor;

    .line 59
    new-instance v0, Lcom/sec/internal/log/LogRedactor$3;

    const-string v1, "DOMAIN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/log/LogRedactor$3;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$3-IA;)V

    sput-object v0, Lcom/sec/internal/log/LogRedactor;->DOMAIN:Lcom/sec/internal/log/LogRedactor;

    .line 80
    new-instance v0, Lcom/sec/internal/log/LogRedactor$4;

    const-string v1, "IMPI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/log/LogRedactor$4;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$4-IA;)V

    sput-object v0, Lcom/sec/internal/log/LogRedactor;->IMPI:Lcom/sec/internal/log/LogRedactor;

    .line 100
    new-instance v0, Lcom/sec/internal/log/LogRedactor$5;

    const-string v1, "MSISDN"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/log/LogRedactor$5;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$5-IA;)V

    sput-object v0, Lcom/sec/internal/log/LogRedactor;->MSISDN:Lcom/sec/internal/log/LogRedactor;

    .line 125
    new-instance v0, Lcom/sec/internal/log/LogRedactor$6;

    const-string v1, "IMPU"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/internal/log/LogRedactor$6;-><init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor$6-IA;)V

    sput-object v0, Lcom/sec/internal/log/LogRedactor;->IMPU:Lcom/sec/internal/log/LogRedactor;

    .line 9
    invoke-static {}, Lcom/sec/internal/log/LogRedactor;->$values()[Lcom/sec/internal/log/LogRedactor;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/log/LogRedactor;->$VALUES:[Lcom/sec/internal/log/LogRedactor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sec/internal/log/LogRedactor-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/log/LogRedactor;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/log/LogRedactor;
    .locals 1

    .line 9
    const-class v0, Lcom/sec/internal/log/LogRedactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/log/LogRedactor;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/log/LogRedactor;
    .locals 1

    .line 9
    sget-object v0, Lcom/sec/internal/log/LogRedactor;->$VALUES:[Lcom/sec/internal/log/LogRedactor;

    invoke-virtual {v0}, [Lcom/sec/internal/log/LogRedactor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/log/LogRedactor;

    return-object v0
.end method


# virtual methods
.method abstract getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;
.end method

.method abstract hideAll(Ljava/lang/String;)Ljava/lang/String;
.end method

.method abstract hideMatched(Ljava/util/regex/Matcher;)Ljava/lang/String;
.end method

.method hideSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 172
    invoke-virtual {p0, p1}, Lcom/sec/internal/log/LogRedactor;->getMatcher(Ljava/lang/String;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/sec/internal/log/LogRedactor;->hideMatched(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/log/LogRedactor;->hideAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public redact(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->validToShowPrivacyLog(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 164
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 165
    const-string p0, "<null>"

    goto :goto_0

    :cond_1
    const-string p0, "<empty>"

    :goto_0
    return-object p0

    .line 168
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sec/internal/log/LogRedactor;->hideSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
