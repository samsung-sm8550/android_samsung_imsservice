.class public Lcom/sec/internal/omanetapi/nms/data/NmsEventList;
.super Ljava/lang/Object;
.source "NmsEventList.java"


# instance fields
.field public callbackData:Ljava/lang/String;

.field public index:Ljava/lang/Long;

.field public link:[Lcom/sec/internal/omanetapi/common/data/Link;

.field public nmsEvent:[Lcom/sec/internal/omanetapi/nms/data/NmsEvent;

.field public restartToken:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->index:Ljava/lang/Long;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/sec/internal/omanetapi/nms/data/NmsEventList;->restartToken:Ljava/lang/String;

    return-void
.end method
