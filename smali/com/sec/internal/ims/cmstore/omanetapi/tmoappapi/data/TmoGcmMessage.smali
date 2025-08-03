.class public Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;
.super Ljava/lang/Object;
.source "TmoGcmMessage.java"


# instance fields
.field public call_duration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call-duration"
    .end annotation
.end field

.field public call_status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call-status"
    .end annotation
.end field

.field public call_timestamp:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call-timestamp"
    .end annotation
.end field

.field public call_type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "call-type"
    .end annotation
.end field

.field public client_correlator:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client-correlator"
    .end annotation
.end field

.field public content:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/RcsContent;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "content"
    .end annotation
.end field

.field public direction:Ljava/lang/String;

.field public emailAddress:Ljava/lang/String;

.field public failed_rcpt_list:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "failed-rcpt-list"
    .end annotation
.end field

.field public folderSyncPath:Ljava/lang/String;

.field public folderURL:Ljava/net/URL;

.field public id:Ljava/lang/String;

.field public imdn_message_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "imdn-message-id"
    .end annotation
.end field

.field public message_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message-id"
    .end annotation
.end field

.field public message_time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message-time"
    .end annotation
.end field

.field public objectIconURL:Ljava/net/URL;

.field public objectURL:Ljava/net/URL;

.field public participating_device:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "participating-device"
    .end annotation
.end field

.field public reassembled:Ljava/lang/String;

.field public recipients:[Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoPushNotificationRecipients;

.field public sender:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public store:Ljava/lang/String;

.field public subject:Ljava/lang/String;

.field public thread_id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "thread-id"
    .end annotation
.end field

.field public vvmPin:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pin"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
