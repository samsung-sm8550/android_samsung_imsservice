.class public Lcom/sec/internal/omanetapi/nms/data/AttributeContent;
.super Ljava/lang/Object;
.source "AttributeContent.java"


# instance fields
.field public clientCorrelator:Ljava/lang/String;

.field public contentType:Ljava/lang/String;

.field public date:Ljava/lang/String;

.field public direction:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public messageContext:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public miMeVersion:Ljava/lang/String;

.field public reportRequested:Ljava/lang/String;

.field public to:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->date:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->messageContext:Ljava/lang/String;

    .line 21
    iput-object p3, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->messageId:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->miMeVersion:Ljava/lang/String;

    .line 23
    iput-object p5, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->direction:Ljava/lang/String;

    .line 24
    iput-object p6, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->clientCorrelator:Ljava/lang/String;

    .line 25
    iput-object p7, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->from:Ljava/lang/String;

    .line 26
    array-length p1, p8

    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->to:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 27
    :goto_0
    array-length p2, p8

    if-ge p1, p2, :cond_0

    .line 28
    iget-object p2, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->to:[Ljava/lang/String;

    aget-object p3, p8, p1

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 30
    :cond_0
    iput-object p9, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->contentType:Ljava/lang/String;

    .line 31
    iput-object p10, p0, Lcom/sec/internal/omanetapi/nms/data/AttributeContent;->reportRequested:Ljava/lang/String;

    return-void
.end method
