.class public Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;
.super Ljava/lang/Object;
.source "RelayStreams.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RelayStreams"


# instance fields
.field private mBoundStreamId:I

.field private mCmcType:I

.field private mRelayChannelId:I

.field private mSessionId:I

.field private mStreamId:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mCmcType:I

    .line 16
    sget-object p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->LOG_TAG:Ljava/lang/String;

    const-string v0, "RelayStreams"

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mCmcType:I

    .line 20
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "streamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 22
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;I)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 10
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 11
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    .line 12
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mCmcType:I

    .line 26
    sget-object v0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "streamId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getRelayStreamEvent()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cmcType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getStreamId()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    .line 31
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/volte2/IMSMediaEvent;->getSessionID()I

    move-result p1

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    .line 32
    iput p2, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mCmcType:I

    return-void
.end method


# virtual methods
.method public getBoundStreamId()I
    .locals 0

    .line 52
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    return p0
.end method

.method public getCmcType()I
    .locals 0

    .line 44
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mCmcType:I

    return p0
.end method

.method public getRelayChannelId()I
    .locals 0

    .line 60
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    return p0
.end method

.method public getSessionId()I
    .locals 0

    .line 40
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    return p0
.end method

.method public getStreamId()I
    .locals 0

    .line 36
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    return p0
.end method

.method public setBoundStreamId(I)V
    .locals 0

    .line 48
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    return-void
.end method

.method public setRelayChannelId(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelayStreams [mStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBoundStreamId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mBoundStreamId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRelayChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/volte2/data/RelayStreams;->mRelayChannelId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
