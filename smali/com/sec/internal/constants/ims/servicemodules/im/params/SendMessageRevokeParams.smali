.class public final Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;
.super Ljava/lang/Object;
.source "SendMessageRevokeParams.java"


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public final mImdnId:Ljava/lang/String;

.field public mOwnImsi:Ljava/lang/String;

.field public final mUri:Lcom/sec/ims/util/ImsUri;


# direct methods
.method public constructor <init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mUri:Lcom/sec/ims/util/ImsUri;

    .line 28
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mImdnId:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    .line 30
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mOwnImsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendRevokeParams [mUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
