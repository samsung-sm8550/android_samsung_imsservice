.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;
.super Ljava/lang/Object;
.source "RcsContent.java"


# instance fields
.field public charset:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public content_duration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content-duration"
    .end annotation
.end field

.field public content_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content-id"
    .end annotation
.end field

.field public content_size:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content-size"
    .end annotation
.end field

.field public content_transfer_encoding:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content-transfer-encoding"
    .end annotation
.end field

.field public content_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content-type"
    .end annotation
.end field

.field public rcsdata:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rcs-data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
