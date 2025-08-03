.class public Lcom/sec/internal/constants/ims/SipErrorTmoUs;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorTmoUs.java"


# static fields
.field private static final CAUSE_IS_200:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEXT_CONTAINS_LOCATION:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final USER_NOT_REGISTERED_NR_NOWARNING:Lcom/sec/ims/util/SipError;

.field public static final VERSION_NOT_SUPPORTED:Lcom/sec/ims/util/SipError;


# direct methods
.method public static synthetic $r8$lambda$4ZW88r7Kbj_bAnUIQQDAJYdH4T0(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->lambda$static$0(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lwfWzdfh8mQJyyuB8hrTj4NfSDI(Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->lambda$static$1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x1f9

    const-string v2, "SIP Version Not Supported"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->VERSION_NOT_SUPPORTED:Lcom/sec/ims/util/SipError;

    .line 23
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x193

    const-string v2, "Forbidden - No Warning"

    invoke-direct {v0, v1, v2}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->USER_NOT_REGISTERED_NR_NOWARNING:Lcom/sec/ims/util/SipError;

    .line 25
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->CAUSE_IS_200:Ljava/util/function/Predicate;

    .line 26
    new-instance v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/sec/internal/constants/ims/SipErrorTmoUs$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->TEXT_CONTAINS_LOCATION:Ljava/util/function/Predicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method

.method public static isCountryBlockingForbidden(Lcom/sec/ims/util/SipError;)Z
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getCode()I

    move-result v0

    const/16 v1, 0x193

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/ims/util/SipError;->getReasonHeader()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->CAUSE_IS_200:Ljava/util/function/Predicate;

    sget-object v1, Lcom/sec/internal/constants/ims/SipErrorTmoUs;->TEXT_CONTAINS_LOCATION:Ljava/util/function/Predicate;

    .line 39
    invoke-interface {v0, v1}, Ljava/util/function/Predicate;->and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$static$0(Ljava/lang/String;)Z
    .locals 1

    .line 25
    const-string v0, ".+cause\\s*=\\s*200.+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$1(Ljava/lang/String;)Z
    .locals 1

    .line 26
    const-string v0, ".+text\\s*=.+location.+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public requireSmsCsfb()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public requireVoLteCsfb()Z
    .locals 1

    .line 44
    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->ALTERNATIVE_SERVICE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->BAD_REQUEST:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->UNAUTHORIZED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->FORBIDDEN:Lcom/sec/ims/util/SipError;

    .line 45
    invoke-virtual {p0, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->METHOD_NOT_ALLOWED:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/sec/internal/constants/ims/SipErrorBase;->NOT_ACCEPTABLE:Lcom/sec/ims/util/SipError;

    invoke-virtual {p0, v0}, Lcom/sec/ims/util/SipError;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
