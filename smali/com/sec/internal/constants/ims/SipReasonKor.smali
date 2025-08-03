.class public Lcom/sec/internal/constants/ims/SipReasonKor;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonKor.java"


# static fields
.field public static final INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

.field public static final OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

.field public static final SESSION_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "fc=9501"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "USER"

    const/16 v3, 0x65

    const-string v4, "User triggered"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonKor;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "fc=9602"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "SIP"

    const/16 v3, 0x67

    const-string v4, "Session-Expire"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonKor;->SESSION_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "fc=9558"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "eHPRD"

    const/16 v3, 0x69

    const-string v4, "Inter-RAT"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonKor;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    .line 23
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "fc=9701"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "Power"

    const/16 v3, 0x6a

    const-string v4, "Low Battery"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonKor;->LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    .line 25
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "fc=9999"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x6b

    const-string v5, "Out of battery"

    invoke-direct {v0, v2, v4, v5, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonKor;->OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    .line 27
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v2, "Unknown"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v3, "ETC"

    const/16 v4, 0x68

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonKor;->UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 0

    if-gez p1, :cond_0

    .line 32
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonKor;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    :cond_0
    const/4 p0, 0x4

    if-eq p1, p0, :cond_5

    const/4 p0, 0x5

    if-eq p1, p0, :cond_4

    const/4 p0, 0x6

    if-eq p1, p0, :cond_3

    const/16 p0, 0xa

    if-eq p1, p0, :cond_2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    .line 48
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonKor;->UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 45
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonKor;->SESSION_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 43
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonKor;->OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 41
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonKor;->LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 37
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonKor;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 39
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonKor;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0
.end method
