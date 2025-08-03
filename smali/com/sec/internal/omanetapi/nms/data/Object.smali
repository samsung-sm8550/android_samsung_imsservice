.class public Lcom/sec/internal/omanetapi/nms/data/Object;
.super Ljava/lang/Object;
.source "Object.java"


# instance fields
.field public attributes:Lcom/sec/internal/omanetapi/nms/data/AttributeList;

.field public correlationId:Ljava/lang/String;

.field public correlationTag:Ljava/lang/String;

.field public flags:Lcom/sec/internal/omanetapi/nms/data/FlagList;

.field public imdns:Lcom/sec/internal/omanetapi/nms/data/ImdnList;

.field public importance:Ljava/lang/String;

.field public lastModSeq:Ljava/lang/Long;

.field public parentFolder:Ljava/net/URL;

.field public parentFolderPath:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public payloadPart:[Lcom/sec/internal/omanetapi/nms/data/PayloadPartInfo;

.field public payloadURL:Ljava/net/URL;

.field public protocol:Ljava/lang/String;

.field public resourceURL:Ljava/net/URL;

.field public sensitivity:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
