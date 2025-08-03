.class public Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;
.super Ljava/lang/Object;
.source "ParamObjectUpload.java"


# instance fields
.field public final bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

.field public final uploadObjectInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/Object;",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->uploadObjectInfo:Landroid/util/Pair;

    .line 17
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamObjectUpload;->bufferDbParam:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParam;

    return-void
.end method
