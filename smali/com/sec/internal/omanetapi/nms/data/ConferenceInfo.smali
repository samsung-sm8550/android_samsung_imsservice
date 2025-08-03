.class public Lcom/sec/internal/omanetapi/nms/data/ConferenceInfo;
.super Ljava/lang/Object;
.source "ConferenceInfo.java"


# instance fields
.field public mConferenceDescription:Lcom/sec/internal/omanetapi/nms/data/ConferenceDescription;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conference-description"
    .end annotation
.end field

.field public mConferenceState:Lcom/sec/internal/omanetapi/nms/data/ConferenceState;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "conference-state"
    .end annotation
.end field

.field public mCreatedBy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "created-by"
    .end annotation
.end field

.field public mEntity:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "entity"
    .end annotation
.end field

.field public mState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "state"
    .end annotation
.end field

.field public mTimestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "timestamp"
    .end annotation
.end field

.field public mUsers:Lcom/sec/internal/omanetapi/nms/data/Users;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "users"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
