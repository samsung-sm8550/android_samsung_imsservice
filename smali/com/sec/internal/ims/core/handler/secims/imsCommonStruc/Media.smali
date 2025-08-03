.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Media;
.super Ljava/lang/Object;
.source "Media.java"


# static fields
.field public static final MEDIA_ALL:I = 0x0

.field public static final MEDIA_APPLICATION:I = 0x4

.field public static final MEDIA_AUDIO:I = 0x1

.field public static final MEDIA_MESSAGE:I = 0x5

.field public static final MEDIA_TEXT:I = 0x3

.field public static final MEDIA_VIDEO:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 14
    const-string v4, "MEDIA_APPLICATION"

    const-string v5, "MEDIA_MESSAGE"

    const-string v0, "MEDIA_ALL"

    const-string v1, "MEDIA_AUDIO"

    const-string v2, "MEDIA_VIDEO"

    const-string v3, "MEDIA_TEXT"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Media;->names:[Ljava/lang/String;

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

    .line 16
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Media;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
