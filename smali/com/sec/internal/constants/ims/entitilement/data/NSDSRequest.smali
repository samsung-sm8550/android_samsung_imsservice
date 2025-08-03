.class public Lcom/sec/internal/constants/ims/entitilement/data/NSDSRequest;
.super Ljava/lang/Object;
.source "NSDSRequest.java"


# instance fields
.field public deviceId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device-id"
    .end annotation
.end field

.field public messageId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message-id"
    .end annotation
.end field

.field public method:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
