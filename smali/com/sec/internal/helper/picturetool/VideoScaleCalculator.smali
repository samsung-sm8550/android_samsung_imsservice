.class public Lcom/sec/internal/helper/picturetool/VideoScaleCalculator;
.super Ljava/lang/Object;
.source "VideoScaleCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(IIII)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    int-to-double v0, p0

    int-to-double v2, p2

    div-double v2, v0, v2

    int-to-double p0, p1

    int-to-double p2, p3

    div-double p2, p0, p2

    .line 21
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide p2

    div-double/2addr v0, p2

    double-to-int v0, v0

    const/4 v1, 0x1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    div-double/2addr p0, p2

    double-to-int p0, p0

    .line 25
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 23
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
