.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/XCapDirection;
.super Ljava/lang/Object;
.source "XCapDirection.java"


# static fields
.field public static final XCAP_REQUEST:I = 0x0

.field public static final XCAP_RESPONSE:I = 0x1

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 10
    const-string v0, "XCAP_REQUEST"

    const-string v1, "XCAP_RESPONSE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/XCapDirection;->names:[Ljava/lang/String;

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

    .line 12
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/XCapDirection;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
