.class public Lcom/sec/internal/omanetapi/nms/data/GeoLocation;
.super Ljava/lang/Object;
.source "GeoLocation.java"


# instance fields
.field public mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "circle"
    .end annotation
.end field

.field public mLabel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "label"
    .end annotation
.end field

.field public mTimeOffset:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timeOffset"
    .end annotation
.end field

.field public mTimestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field public mUntil:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "until"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mLabel:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mTimestamp:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mUntil:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mTimeOffset:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/data/GeoLocation;->mCircle:Lcom/sec/internal/omanetapi/nms/data/GeoLocation$Circle;

    return-void
.end method
