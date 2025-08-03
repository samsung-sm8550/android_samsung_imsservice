.class public Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;
.super Ljava/lang/Object;
.source "RelayChannel.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RelayChannel"


# instance fields
.field private mChannelId:I

.field private mExtStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

.field private mIntStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mChannelId:I

    .line 14
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->LOG_TAG:Ljava/lang/String;

    const-string v0, "RelayChannel created"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;I)V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mChannelId:I

    .line 18
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RelayChannel created channelId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mIntStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 20
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mExtStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    .line 21
    iput p3, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mChannelId:I

    return-void
.end method


# virtual methods
.method public getChannelId()I
    .locals 0

    .line 41
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mChannelId:I

    return p0
.end method

.method public getExtStream()Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mExtStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    return-object p0
.end method

.method public getIntStream()Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mIntStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    return-object p0
.end method

.method public setExtStream(Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mExtStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    return-void
.end method

.method public setIntStream(Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mIntStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelayChannel [mIntStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mIntStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtStream="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mExtStream:Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayChannel;->mChannelId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
