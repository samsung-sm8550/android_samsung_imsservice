.class public final enum Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
.super Ljava/lang/Enum;
.source "CshErrorReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NONE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

.field public static final enum USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;


# direct methods
.method private static synthetic $values()[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 22

    .line 15
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v3, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v4, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v5, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v6, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v7, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v8, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v9, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v10, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v11, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v12, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v13, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v14, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v15, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v16, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v17, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v18, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v19, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v20, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    sget-object v21, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    filled-new-array/range {v0 .. v21}, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 16
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->SUCCESS:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 17
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "USER_BUSY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_BUSY:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 18
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "TEMPORAIRLY_NOT_AVAILABLE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->TEMPORAIRLY_NOT_AVAILABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 19
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "REQUEST_TIMED_OUT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REQUEST_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 20
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "USER_NOT_FOUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->USER_NOT_FOUND:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 21
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "CANCELED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CANCELED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 22
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "REJECTED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REJECTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 23
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "ENGINE_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ENGINE_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 24
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "FILE_IO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FILE_IO:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 25
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "REMOTE_CONNECTION_CLOSED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->REMOTE_CONNECTION_CLOSED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 26
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "FORMAT_NOT_SUPPORTED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORMAT_NOT_SUPPORTED:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 27
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "ACK_TIMEOUT"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 28
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "FORBIDDEN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->FORBIDDEN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 29
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "NOT_REACHABLE"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NOT_REACHABLE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 30
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "BEARER_LOST"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->BEARER_LOST:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 31
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "ACK_TIMED_OUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->ACK_TIMED_OUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 32
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "RTP_RTCP_TIMEOUT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->RTP_RTCP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 33
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "MSRP_TIMEOUT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->MSRP_TIMEOUT:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 34
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "CSH_CAM_ERROR"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->CSH_CAM_ERROR:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 35
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "NORMAL"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NORMAL:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 36
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->UNKNOWN:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 38
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    const-string v1, "NONE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->NONE:Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    .line 15
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->$values()[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1

    .line 15
    const-class v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object p0
.end method

.method public static values()[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;
    .locals 1

    .line 15
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->$VALUES:[Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    invoke-virtual {v0}, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/internal/ims/servicemodules/csh/event/CshErrorReason;

    return-object v0
.end method
