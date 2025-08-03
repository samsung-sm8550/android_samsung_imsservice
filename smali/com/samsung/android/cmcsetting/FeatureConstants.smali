.class abstract Lcom/samsung/android/cmcsetting/FeatureConstants;
.super Ljava/lang/Object;
.source "FeatureConstants.java"


# static fields
.field static SHIP_BUILD:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    .line 11
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cmcsetting/FeatureConstants;->SHIP_BUILD:Z

    return-void
.end method
