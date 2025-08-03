.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;
.super Ljava/lang/Object;
.source "SendMessageParams.java"


# instance fields
.field public mBody:Ljava/lang/String;

.field public mCallback:Landroid/os/Message;

.field public mContentType:Ljava/lang/String;

.field public mDispositionNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mGroupCcList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mImdnMessageId:Ljava/lang/String;

.field public mImdnTime:Ljava/util/Date;

.field public mMaapTrafficType:Ljava/lang/String;

.field public mRawHandle:Ljava/lang/Object;

.field public mRcsReferenceId:Ljava/lang/String;

.field public mRcsReferenceType:Ljava/lang/String;

.field public mReferenceId:Ljava/lang/String;

.field public mReferenceType:Ljava/lang/String;

.field public mReferenceValue:Ljava/lang/String;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/util/Set;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Landroid/os/Message;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    .line 58
    iput-object p2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    .line 62
    iput-object p6, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    .line 63
    iput-object p9, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mCallback:Landroid/os/Message;

    .line 64
    iput-object p7, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    .line 65
    iput-object p8, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mGroupCcList:Ljava/util/Set;

    .line 66
    iput-object p10, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    .line 67
    iput-object p11, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    .line 68
    iput-object p12, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    .line 69
    iput-object p13, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    .line 70
    iput-object p14, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    .line 71
    iput-object p15, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageParams [mRawHandle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRawHandle:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mBody:Ljava/lang/String;

    .line 77
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mUserAlias:Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaapTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;->mRcsReferenceType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
