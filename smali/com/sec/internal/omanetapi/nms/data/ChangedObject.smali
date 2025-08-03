.class public Lcom/sec/internal/omanetapi/nms/data/ChangedObject;
.super Ljava/lang/Object;
.source "ChangedObject.java"


# instance fields
.field public correlationId:Ljava/lang/String;

.field public correlationTag:Ljava/lang/String;

.field public extendedMessage:Lcom/sec/internal/ims/cmstore/omanetapi/tmoappapi/data/TmoGcmMessage;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field public flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

.field public imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

.field public lastModSeq:Ljava/lang/Long;

.field public parentFolder:Ljava/net/URL;

.field public protocol:Ljava/lang/String;

.field public resourceURL:Ljava/net/URL;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
