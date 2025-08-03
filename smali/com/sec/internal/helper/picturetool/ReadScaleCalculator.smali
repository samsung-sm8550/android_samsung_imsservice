.class public Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;
.super Ljava/lang/Object;
.source "ReadScaleCalculator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(JIIJII)I
    .locals 0

    .line 24
    invoke-static {p0, p1, p4, p5}, Lcom/sec/internal/helper/picturetool/ReadScaleCalculator;->calculate(JJ)I

    move-result p0

    .line 25
    div-int/2addr p2, p6

    const/4 p1, 0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 26
    div-int/2addr p3, p7

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 28
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static calculate(JJ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    long-to-double p0, p0

    long-to-double p2, p2

    div-double/2addr p0, p2

    .line 16
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
