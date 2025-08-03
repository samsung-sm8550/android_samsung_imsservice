.class public Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;
.super Ljava/lang/Object;
.source "VshIncomingSessionEvent.java"


# instance fields
.field public mContentType:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field public mSessionId:I

.field public mSource:I


# direct methods
.method public constructor <init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSessionId:I

    .line 28
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 29
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 30
    iput p4, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSource:I

    .line 31
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VshIncomingSessionEvent [mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/VshIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
