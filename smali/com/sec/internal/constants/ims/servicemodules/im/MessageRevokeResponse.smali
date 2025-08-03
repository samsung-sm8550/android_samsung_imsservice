.class public Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;
.super Ljava/lang/Object;
.source "MessageRevokeResponse.java"


# instance fields
.field public final mImdnId:Ljava/lang/String;

.field public final mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field public final mResult:Z


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 24
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mResult:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageRevokeResponse [mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/MessageRevokeResponse;->mResult:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
