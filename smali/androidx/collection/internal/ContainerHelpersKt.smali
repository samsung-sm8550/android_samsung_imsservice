.class public abstract Landroidx/collection/internal/ContainerHelpersKt;
.super Ljava/lang/Object;
.source "ContainerHelpers.kt"


# static fields
.field public static final EMPTY_INTS:[I

.field public static final EMPTY_LONGS:[J

.field public static final EMPTY_OBJECTS:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    .line 22
    new-array v1, v0, [I

    sput-object v1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_INTS:[I

    .line 25
    new-array v1, v0, [J

    sput-object v1, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_LONGS:[J

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/collection/internal/ContainerHelpersKt;->EMPTY_OBJECTS:[Ljava/lang/Object;

    return-void
.end method

.method public static final binarySearch([III)I
    .locals 3

    const-string v0, "array"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x0

    :goto_0
    if-gt v0, p1, :cond_2

    add-int v1, v0, p1

    ushr-int/lit8 v1, v1, 0x1

    .line 60
    aget v2, p0, v1

    if-ge v2, p2, :cond_0

    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 p1, v1, -0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    not-int p0, v0

    return p0
.end method

.method public static final equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 49
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
