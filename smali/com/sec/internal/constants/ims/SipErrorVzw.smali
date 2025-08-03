.class public Lcom/sec/internal/constants/ims/SipErrorVzw;
.super Lcom/sec/internal/constants/ims/SipErrorBase;
.source "SipErrorVzw.java"


# static fields
.field public static final BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

.field public static final BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

.field public static final CALL_REJECTED_BY_NOANSWER:Lcom/sec/ims/util/SipError;

.field public static final CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

.field public static final FORBIDDEN_ORIG_USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

.field public static final FORBIDDEN_ORIG_USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

.field public static final FORBIDDEN_USER_NOT_AUTHORIZED_FOR_PRESENCE:Lcom/sec/ims/util/SipError;

.field public static final FORBIDDEN_USER_NOT_AUTHORIZED_FOR_SERVICE:Lcom/sec/ims/util/SipError;

.field public static final FORBIDDEN_USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

.field public static final IMS_OUTAGE:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_1X_CALL_SETUP:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_CODEC_NOT_SUPPORTED:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_MOVED_TO_EHRPD:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_NO_PROVISIONING:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

.field public static final NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

.field public static final TTY_ON:Lcom/sec/ims/util/SipError;

.field public static final VIDEO_UPGRADE_REQUEST_IN_PROGRESS:Lcom/sec/ims/util/SipError;

.field public static final VOWIFI_OFF:Lcom/sec/ims/util/SipError;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 19
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Forbidden - Originating user not registered"

    const/16 v2, 0x193

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_ORIG_USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    .line 22
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Forbidden: Originating User Not Registered"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_ORIG_USER_NOT_REGISTERED2:Lcom/sec/ims/util/SipError;

    .line 25
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Forbidden - User Not Registered"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_USER_NOT_REGISTERED:Lcom/sec/ims/util/SipError;

    .line 27
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Forbidden - Not authorized for Presence"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_USER_NOT_AUTHORIZED_FOR_PRESENCE:Lcom/sec/ims/util/SipError;

    .line 31
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Forbidden. Not Authorized for Service"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->FORBIDDEN_USER_NOT_AUTHORIZED_FOR_SERVICE:Lcom/sec/ims/util/SipError;

    .line 34
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Establishing Another Call"

    const/16 v2, 0x1e6

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ESTABLISHING_ANOTHER_CALL:Lcom/sec/ims/util/SipError;

    .line 36
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Already On Two Calls"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->BUSY_ALREADY_IN_TWO_CALLS:Lcom/sec/ims/util/SipError;

    .line 39
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "TTY On"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->TTY_ON:Lcom/sec/ims/util/SipError;

    .line 41
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "VoWiFi OFF"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VOWIFI_OFF:Lcom/sec/ims/util/SipError;

    .line 44
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "On eHRPD"

    const/16 v3, 0x1e8

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ON_EHRPD:Lcom/sec/ims/util/SipError;

    .line 45
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Moved to eHRPD"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_MOVED_TO_EHRPD:Lcom/sec/ims/util/SipError;

    .line 47
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "VOPS OFF"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_VOPS:Lcom/sec/ims/util/SipError;

    .line 48
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "SSAC ON"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_SSAC_ON:Lcom/sec/ims/util/SipError;

    .line 49
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "VoLTE setting Off"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_VOLTE_OFF:Lcom/sec/ims/util/SipError;

    .line 50
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "On active 1X call"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_ACTIVE_1X_CALL:Lcom/sec/ims/util/SipError;

    .line 52
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "On 1X call setup"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_1X_CALL_SETUP:Lcom/sec/ims/util/SipError;

    .line 54
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Codec not supported"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_CODEC_NOT_SUPPORTED:Lcom/sec/ims/util/SipError;

    .line 56
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Subscriber not provisioned for VoLTE"

    invoke-direct {v0, v3, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_NO_PROVISIONING:Lcom/sec/ims/util/SipError;

    .line 59
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x1f7

    const-string v3, "Service Unavailable: IMS Outage"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->IMS_OUTAGE:Lcom/sec/ims/util/SipError;

    .line 62
    new-instance v0, Lcom/sec/ims/util/SipError;

    const/16 v1, 0x258

    const-string v3, "Call Rejected By User"

    invoke-direct {v0, v1, v3}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

    .line 63
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "No Answer"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->CALL_REJECTED_BY_NOANSWER:Lcom/sec/ims/util/SipError;

    .line 66
    new-instance v0, Lcom/sec/ims/util/SipError;

    const-string v1, "Video Upgrade Request In Progress"

    invoke-direct {v0, v2, v1}, Lcom/sec/ims/util/SipError;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/SipErrorVzw;->VIDEO_UPGRADE_REQUEST_IN_PROGRESS:Lcom/sec/ims/util/SipError;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/sec/internal/constants/ims/SipErrorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .locals 1

    const/4 v0, 0x3

    if-gez p1, :cond_0

    move p1, v0

    :cond_0
    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0xd

    if-eq p1, v0, :cond_1

    .line 88
    invoke-super {p0, p1}, Lcom/sec/internal/constants/ims/SipErrorBase;->getFromRejectReason(I)Lcom/sec/ims/util/SipError;

    move-result-object p0

    return-object p0

    .line 86
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorVzw;->CALL_REJECTED_BY_NOANSWER:Lcom/sec/ims/util/SipError;

    return-object p0

    .line 84
    :cond_2
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorVzw;->NOT_ACCEPTABLE_MOVED_TO_EHRPD:Lcom/sec/ims/util/SipError;

    return-object p0

    .line 76
    :cond_3
    sget-object p0, Lcom/sec/internal/constants/ims/SipErrorVzw;->CALL_REJECTED_BY_USER:Lcom/sec/ims/util/SipError;

    return-object p0
.end method
