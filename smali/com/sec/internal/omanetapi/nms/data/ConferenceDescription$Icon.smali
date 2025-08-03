.class public Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon;
.super Ljava/lang/Object;
.source "ConferenceDescription.java"


# instance fields
.field public mFileInfo:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription$Icon$FileInfo;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "file-info"
    .end annotation
.end field

.field public mIconUri:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "icon-uri"
    .end annotation
.end field

.field public mParticipant:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "participant"
    .end annotation
.end field

.field public mTimestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
