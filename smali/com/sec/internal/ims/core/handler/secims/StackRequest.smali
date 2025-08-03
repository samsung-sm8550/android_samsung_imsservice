.class public Lcom/sec/internal/ims/core/handler/secims/StackRequest;
.super Ljava/lang/Object;
.source "StackRequest.java"


# instance fields
.field private final mRequestBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

.field private final mRequestOffSet:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->mRequestBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->mRequestOffSet:I

    return-void
.end method

.method constructor <init>(Lcom/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->mRequestBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    .line 17
    iput p2, p0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->mRequestOffSet:I

    return-void
.end method


# virtual methods
.method public getBuilder()Lcom/google/flatbuffers/FlatBufferBuilder;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->mRequestBuilder:Lcom/google/flatbuffers/FlatBufferBuilder;

    return-object p0
.end method

.method public getOffset()I
    .locals 0

    .line 25
    iget p0, p0, Lcom/sec/internal/ims/core/handler/secims/StackRequest;->mRequestOffSet:I

    return p0
.end method
