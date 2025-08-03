.class public Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;
.super Ljava/lang/Object;
.source "IshIncomingSessionEvent.java"


# instance fields
.field public mFt:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

.field public mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field public mSessionId:I

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mSessionId:I

    .line 26
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 27
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mFt:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IshIncomingSessionEvent [mSessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mSessionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 34
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/IshIncomingSessionEvent;->mFt:Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
