.class public Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;
.super Ljava/lang/Object;
.source "GeoLocation.java"


# instance fields
.field public mLatitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "latitude"
    .end annotation
.end field

.field public mLongitude:Ljava/lang/Double;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "longitude"
    .end annotation
.end field

.field public mRadius:F
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "radius"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Double;Ljava/lang/Double;F)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mLatitude:Ljava/lang/Double;

    .line 31
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mLongitude:Ljava/lang/Double;

    .line 32
    iput p3, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;->mRadius:F

    return-void
.end method
