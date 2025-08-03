.class public final Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/IconType;
.super Ljava/lang/Object;
.source "IconType.java"


# static fields
.field public static final ICON_TYPE_FILE:I = 0x1

.field public static final ICON_TYPE_NONE:I = 0x0

.field public static final ICON_TYPE_URI:I = 0x2

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 11
    const-string v0, "ICON_TYPE_FILE"

    const-string v1, "ICON_TYPE_URI"

    const-string v2, "ICON_TYPE_NONE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/IconType;->names:[Ljava/lang/String;

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

    .line 13
    sget-object v0, Lcom/sec/internal/ims/core/handler/secims/imsCommonStruc/Notify_/ImConfInfoUpdated_/IconType;->names:[Ljava/lang/String;

    aget-object p0, v0, p0

    return-object p0
.end method
