.class public final enum Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
.super Ljava/lang/Enum;
.source "FtRejectReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field public static final enum BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field public static final enum DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field public static final enum FORBIDDEN_MAX_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field public static final enum FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field public static final enum NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field public static final enum SESSION_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

.field public static final enum TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;


# instance fields
.field private final mSipCode:I

.field private final mWarningCode:I

.field private final mWarningText:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    .locals 7

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->FORBIDDEN_MAX_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->SESSION_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    filled-new-array/range {v0 .. v6}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    .line 18
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/16 v4, 0x85

    const-string v5, "Size Exceeded"

    const-string v1, "FORBIDDEN_MAX_SIZE_EXCEEDED"

    const/4 v2, 0x0

    const/16 v3, 0x193

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->FORBIDDEN_MAX_SIZE_EXCEEDED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 22
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/16 v11, 0x7f

    const-string v12, "Service not authorised"

    const-string v8, "FORBIDDEN_SERVICE_NOT_AUTHORIZED"

    const/4 v9, 0x1

    const/16 v10, 0x193

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->FORBIDDEN_SERVICE_NOT_AUTHORIZED:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 26
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const-string v1, "DECLINE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->DECLINE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 30
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v7, -0x1

    const-string v8, "Not Acceptable Here"

    const-string v4, "NOT_ACCEPTABLE_HERE"

    const/4 v5, 0x3

    const/16 v6, 0x1e8

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->NOT_ACCEPTABLE_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 34
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v13, -0x1

    const-string v14, "User not responding"

    const-string v10, "SESSION_TIMEOUT"

    const/4 v11, 0x4

    const/16 v12, 0x198

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->SESSION_TIMEOUT:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 35
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v5, -0x1

    const-string v6, "Temporarily Unavailable"

    const-string v2, "TEMPORARILY_UNAVAILABLE"

    const/4 v3, 0x5

    const/16 v4, 0x1e0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->TEMPORARILY_UNAVAILABLE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 39
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    const/4 v11, -0x1

    const-string v12, "Busy Here"

    const-string v8, "BUSY_HERE"

    const/4 v9, 0x6

    const/16 v10, 0x1e6

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;-><init>(Ljava/lang/String;IIILjava/lang/String;)V

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->BUSY_HERE:Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    .line 14
    invoke-static {}, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->$values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/16 p1, 0x25b

    .line 46
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mSipCode:I

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mWarningCode:I

    .line 48
    const-string p1, "Decline"

    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mWarningText:Ljava/lang/String;

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

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    iput p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mSipCode:I

    .line 53
    iput p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mWarningCode:I

    .line 54
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mWarningText:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    .locals 1

    .line 14
    const-class v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;
    .locals 1

    .line 14
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->$VALUES:[Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    invoke-virtual {v0}, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;

    return-object v0
.end method


# virtual methods
.method public getSipCode()I
    .locals 0

    .line 58
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mSipCode:I

    return p0
.end method

.method public getWarningCode()I
    .locals 0

    .line 62
    iget p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mWarningCode:I

    return p0
.end method

.method public getWarningText()Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/FtRejectReason;->mWarningText:Ljava/lang/String;

    return-object p0
.end method
