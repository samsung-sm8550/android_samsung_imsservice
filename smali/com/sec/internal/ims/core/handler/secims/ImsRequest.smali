.class Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
.super Ljava/lang/Object;
.source "StackIF.java"


# instance fields
.field private mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

.field mResult:Landroid/os/Message;

.field mTid:I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(Lcom/google/flatbuffers/FlatBufferBuilder;Landroid/os/Message;)Lcom/sec/internal/ims/core/handler/secims/ImsRequest;
    .locals 1

    .line 196
    new-instance v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;

    invoke-direct {v0}, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;-><init>()V

    .line 198
    iput-object p0, v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 199
    iput-object p1, v0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mResult:Landroid/os/Message;

    if-eqz p1, :cond_1

    .line 201
    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Message target must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getReqBuffer()Lcom/google/flatbuffers/FlatBufferBuilder;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/ImsRequest;->mReqBuffer:Lcom/google/flatbuffers/FlatBufferBuilder;

    return-object p0
.end method
