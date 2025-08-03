.class public Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;
.super Ljava/lang/Object;
.source "ParamBulkCreation.java"


# instance fields
.field public final bufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

.field public final mLine:Ljava/lang/String;

.field public final uploadObjectInfo:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/ObjectList;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/util/Pair;Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/sec/internal/omanetapi/nms/data/ObjectList;",
            "Ljava/util/List<",
            "Lcom/sec/internal/helper/httpclient/HttpPostBody;",
            ">;>;",
            "Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;->uploadObjectInfo:Landroid/util/Pair;

    .line 27
    iput-object p2, p0, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;->bufferDbParamList:Lcom/sec/internal/ims/cmstore/params/BufferDBChangeParamList;

    .line 28
    iput-object p3, p0, Lcom/sec/internal/ims/cmstore/params/ParamBulkCreation;->mLine:Ljava/lang/String;

    return-void
.end method
