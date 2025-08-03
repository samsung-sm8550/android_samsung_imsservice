.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/VshResolution;
.super Ljava/lang/Object;
.source "VshResolution.java"


# static fields
.field public static final CIF:I = 0x4

.field public static final CIF_PORTRAIT:I = 0x8

.field public static final NONE:I = 0x0

.field public static final QCIF:I = 0x1

.field public static final QCIF_PORTRAIT:I = 0x5

.field public static final QVGA:I = 0x2

.field public static final QVGA_PORTRAIT:I = 0x6

.field public static final VGA:I = 0x3

.field public static final VGA_PORTRAIT:I = 0x7

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    const-string v7, "VGA_PORTRAIT"

    const-string v8, "CIF_PORTRAIT"

    const-string v0, "NONE"

    const-string v1, "QCIF"

    const-string v2, "QVGA"

    const-string v3, "VGA"

    const-string v4, "CIF"

    const-string v5, "QCIF_PORTRAIT"

    const-string v6, "QVGA_PORTRAIT"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/VshResolution;->names:[Ljava/lang/String;

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

    .line 19
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/VshResolution;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
