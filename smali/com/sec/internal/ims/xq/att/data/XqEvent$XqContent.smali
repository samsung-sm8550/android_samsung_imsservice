.class public Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;
.super Ljava/lang/Object;
.source "XqEvent.java"


# instance fields
.field intVal:I

.field strVal:Ljava/lang/String;

.field type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 53
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UNDEFINED:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_0

    .line 50
    :cond_0
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->STRING:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_0

    .line 47
    :cond_1
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UINT32:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_0

    .line 44
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->USHORT:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    goto :goto_0

    .line 41
    :cond_3
    sget-object p1, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;->UCHAR:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    iput-object p1, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    .line 56
    :goto_0
    iput p2, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    .line 57
    iput-object p3, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIntVal()I
    .locals 0

    .line 81
    iget p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    return p0
.end method

.method public getStrVal()Ljava/lang/String;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->type:Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContentType;

    return-object p0
.end method

.method public hasIntVal()Z
    .locals 0

    .line 75
    iget p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->intVal:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasStrVal()Z
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/sec/internal/ims/xq/att/data/XqEvent$XqContent;->strVal:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
