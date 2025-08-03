.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
.super Ljava/lang/Enum;
.source "ImSessionRejectReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum CHATBOT_PROFILE_RETRIEVAL_FAIL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum FUNCTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum ISFOCUS_ALREADY_ASSIGNED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum NO_MESSAGES:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum TOO_MANY_PARTICIPANTS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

.field public static final enum VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;


# instance fields
.field private final mSipCode:I

.field private final mWarningCode:I

.field private final mWarningText:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .locals 19

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->CHATBOT_PROFILE_RETRIEVAL_FAIL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v9, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TOO_MANY_PARTICIPANTS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->ISFOCUS_ALREADY_ASSIGNED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v11, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FUNCTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v13, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v14, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NO_MESSAGES:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v15, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v16, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v17, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    sget-object v18, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    filled-new-array/range {v0 .. v18}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 18
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "VOLUNTARILY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 20
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v7, -0x1

    const-string v8, "Service Unavailable, User Dreged"

    const-string v4, "INVOLUNTARILY"

    const/4 v5, 0x1

    const/16 v6, 0x1f7

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->INVOLUNTARILY:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "DEDICATED_BEARER_UNAVAILABLE_TIMEOUT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->DEDICATED_BEARER_UNAVAILABLE_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 24
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "GC_FORCE_CLOSE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->GC_FORCE_CLOSE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 25
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v8, "Temporarily Unavailable"

    const-string v4, "TEMPORARILY_UNAVAILABLE"

    const/4 v5, 0x4

    const/16 v6, 0x1e0

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 26
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v13, -0x1

    const-string v14, "Busy Here"

    const-string v10, "BUSY_HERE"

    const/4 v11, 0x5

    const/16 v12, 0x1e6

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 28
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/16 v5, 0x7f

    const-string v6, "Service not authorised"

    const-string v2, "FORBIDDEN"

    const/4 v3, 0x6

    const/16 v4, 0x193

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FORBIDDEN:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 30
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v11, -0x1

    const-string v12, "Bad request"

    const-string v8, "CHATBOT_PROFILE_RETRIEVAL_FAIL"

    const/4 v9, 0x7

    const/16 v10, 0x190

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->CHATBOT_PROFILE_RETRIEVAL_FAIL:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 31
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v5, -0x1

    const-string v6, "Not Acceptable Here"

    const-string v2, "NOT_ACCEPTABLE_HERE"

    const/16 v3, 0x8

    const/16 v4, 0x1e8

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 48
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "TOO_MANY_PARTICIPANTS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->TOO_MANY_PARTICIPANTS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 49
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "ISFOCUS_ALREADY_ASSIGNED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->ISFOCUS_ALREADY_ASSIGNED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 50
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "ANONYMITY_NOT_ALLOWED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->ANONYMITY_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 51
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "FUNCTION_NOT_ALLOWED"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->FUNCTION_NOT_ALLOWED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 52
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const/4 v7, -0x1

    const-string v8, ""

    const-string v4, "SESSION_DOES_NOT_EXIST"

    const/16 v5, 0xd

    const/16 v6, 0x1e1

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SESSION_DOES_NOT_EXIST:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 53
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "NO_MESSAGES"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NO_MESSAGES:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 54
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "SERVICE_NOT_AUTHORISED"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SERVICE_NOT_AUTHORISED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 55
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "NO_DESTINATIONS"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->NO_DESTINATIONS:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 56
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "VERSION_NOT_SUPPORTED"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->VERSION_NOT_SUPPORTED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 57
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    const-string v1, "SIZE_EXCEEDED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    .line 14
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x25b

    .line 64
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mSipCode:I

    const/4 p1, -0x1

    .line 65
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningCode:I

    .line 66
    const-string p1, ""

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningText:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mSipCode:I

    .line 71
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningCode:I

    .line 72
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;

    return-object v0
.end method


# virtual methods
.method public getSipCode()I
    .locals 0

    .line 76
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mSipCode:I

    return p0
.end method

.method public getWarningCode()I
    .locals 0

    .line 80
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningCode:I

    return p0
.end method

.method public getWarningText()Ljava/lang/String;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/ImSessionRejectReason;->mWarningText:Ljava/lang/String;

    return-object p0
.end method
