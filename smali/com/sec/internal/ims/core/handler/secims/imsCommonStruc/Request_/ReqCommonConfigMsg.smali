.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/ReqCommonConfigMsg;
.super Ljava/lang/Object;
.source "ReqCommonConfigMsg.java"


# static fields
.field public static final NONE:B = 0x0t

.field public static final call_config:B = 0x3t

.field public static final names:[Ljava/lang/String;

.field public static final rcs_config:B = 0x4t

.field public static final regi_config:B = 0x1t

.field public static final screen_config:B = 0x6t

.field public static final serviceversion_config:B = 0x5t

.field public static final xdm_config:B = 0x2t


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 15
    const-string/jumbo v5, "serviceversion_config"

    const-string/jumbo v6, "screen_config"

    const-string v0, "NONE"

    const-string/jumbo v1, "regi_config"

    const-string/jumbo v2, "xdm_config"

    const-string v3, "call_config"

    const-string/jumbo v4, "rcs_config"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/ReqCommonConfigMsg;->names:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static name(I)Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Request_/ReqCommonConfigMsg;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
