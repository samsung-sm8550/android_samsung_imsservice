.class public Lcom/sec/internal/constants/ims/SipReasonTmoUs;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonTmoUs.java"


# static fields
.field public static final DEDICATED_BEARER_LOST:Lcom/sec/internal/constants/ims/SipReason;

.field public static final INVITE_18X_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final INVITE_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "RELEASE_CAUSE"

    const/4 v4, 0x1

    const-string v5, "User ends call"

    invoke-direct {v0, v3, v4, v5, v2}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v2, "User ends call and SIP response time-out"

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x5

    invoke-direct {v0, v3, v5, v2, v4}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->INVITE_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v2, "Media bearer loss"

    new-array v4, v1, [Ljava/lang/String;

    const/4 v5, 0x3

    invoke-direct {v0, v3, v5, v2, v4}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->DEDICATED_BEARER_LOST:Lcom/sec/internal/constants/ims/SipReason;

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v2, "Call-setup time-out"

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x6

    invoke-direct {v0, v3, v4, v2, v1}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->INVITE_18X_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 1

    const/4 v0, 0x5

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    if-eq p1, v0, :cond_4

    const/16 v0, 0xb

    if-eq p1, v0, :cond_3

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_1

    .line 42
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object p0

    return-object p0

    .line 36
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->INVITE_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 40
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->INVITE_18X_TIMEOUT:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 38
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->DEDICATED_BEARER_LOST:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 34
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonTmoUs;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0
.end method
