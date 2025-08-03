.class public Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;
.super Ljava/lang/Object;
.source "EucSendResponseStatus.java"


# instance fields
.field private final mId:Ljava/lang/String;

.field private final mOwnIdentity:Ljava/lang/String;

.field private final mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field private final mStatus:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

.field private final mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->PERSISTENT:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucType;->VOLATILE:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EucType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not applicable for EucSendResponseStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/helper/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 77
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mId:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    .line 79
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 80
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mOwnIdentity:Ljava/lang/String;

    .line 81
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mStatus:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mId:Ljava/lang/String;

    return-object p0
.end method

.method public getKey()Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;
    .locals 4

    .line 116
    new-instance v0, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mId:Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mOwnIdentity:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/sec/internal/ims/servicemodules/euc/data/EucMessageKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/euc/data/EucType;Lcom/sec/ims/util/ImsUri;)V

    return-object v0
.end method

.method public getOwnIdentity()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mOwnIdentity:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getStatus()Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mStatus:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " [mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mType:Lcom/sec/internal/ims/servicemodules/euc/data/EucType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnIdentity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mOwnIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus;->mStatus:Lcom/sec/internal/ims/servicemodules/euc/data/EucSendResponseStatus$Status;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
