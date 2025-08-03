.class public Lcom/sec/internal/constants/ims/SipReasonRjil;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonRjil.java"


# static fields
.field public static final INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

.field public static final NETWORK_COVERAGE_LOST:Lcom/sec/internal/constants/ims/SipReason;

.field public static final OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

.field public static final UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final VOPS_DISABLED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "RAT changed"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "SIP"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    .line 9
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Low battery"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    .line 10
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Out of battery"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    .line 11
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "User Disconnected"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    .line 12
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Moved to LTE without VoLTE support"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->VOPS_DISABLED:Lcom/sec/internal/constants/ims/SipReason;

    .line 14
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Network Coverage Lost"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->NETWORK_COVERAGE_LOST:Lcom/sec/internal/constants/ims/SipReason;

    .line 15
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Internal Error"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonRjil;->UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipReason;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;
    .locals 1

    const/4 p0, 0x5

    if-gez p1, :cond_0

    move p1, p0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    if-eq p1, p0, :cond_5

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/16 p0, 0x9

    if-eq p1, p0, :cond_3

    const/16 p0, 0xa

    if-eq p1, p0, :cond_2

    const/16 p0, 0x18

    if-eq p1, p0, :cond_1

    .line 38
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonRjil;->UNKNOWN:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 36
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonRjil;->NETWORK_COVERAGE_LOST:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 30
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonRjil;->OUT_OF_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 34
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonRjil;->VOPS_DISABLED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 28
    :cond_4
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonRjil;->LOW_BATTERY:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 32
    :cond_5
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonRjil;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 26
    :cond_6
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonRjil;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0
.end method
