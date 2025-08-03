.class public Lcom/sec/internal/constants/ims/SipReasonVzw;
.super Lcom/sec/internal/constants/ims/SipReason;
.source "SipReasonVzw.java"


# static fields
.field public static final INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

.field public static final NEW_DIALOG_ESTABLISHED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final SESSION_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

.field public static final USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Moved to eHRPD"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "SIP"

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonVzw;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    .line 21
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "Session Expired"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonVzw;->SESSION_EXPIRED:Lcom/sec/internal/constants/ims/SipReason;

    .line 23
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "New Dialog Established"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonVzw;->NEW_DIALOG_ESTABLISHED:Lcom/sec/internal/constants/ims/SipReason;

    .line 25
    new-instance v0, Lcom/sec/internal/constants/ims/SipReason;

    const-string v1, "User Triggered"

    new-array v3, v2, [Ljava/lang/String;

    invoke-direct {v0, v4, v2, v1, v3}, Lcom/sec/internal/constants/ims/SipReason;-><init>(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipReasonVzw;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

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
    .locals 2

    const/4 v0, 0x5

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-eq p1, v0, :cond_1

    .line 39
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipReason;->getFromUserReason(I)Lcom/sec/internal/constants/ims/SipReason;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonVzw;->USER_TRIGGERED:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0

    .line 37
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipReasonVzw;->INTER_RAT:Lcom/sec/internal/constants/ims/SipReason;

    return-object p0
.end method
