.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;
.super Ljava/lang/Object;
.source "SendSlmFileTransferParams.java"


# instance fields
.field public mCallback:Landroid/os/Message;

.field public mConfUri:Ljava/lang/String;

.field public mContentType:Ljava/lang/String;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mDispositionNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mImdnMsgId:Ljava/lang/String;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsBroadcastMsg:Z

.field public mMessageId:I

.field public mOwnImsi:Ljava/lang/String;

.field public mRecipients:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mSdpContentType:Ljava/lang/String;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Landroid/os/Message;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 47
    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    move-object v1, p2

    .line 48
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    move-object v1, p3

    .line 49
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    move-object v1, p4

    .line 50
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    move-object v1, p5

    .line 51
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileName:Ljava/lang/String;

    move-object v1, p6

    .line 52
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFilePath:Ljava/lang/String;

    move-wide v1, p7

    .line 53
    iput-wide v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    move-object v1, p9

    .line 54
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContentType:Ljava/lang/String;

    move-object v1, p10

    .line 55
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mSdpContentType:Ljava/lang/String;

    move-object v1, p11

    .line 56
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    move-object v1, p12

    .line 57
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    move-object/from16 v1, p13

    .line 58
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    move-object/from16 v1, p14

    .line 59
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 60
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDispositionNotification:Ljava/util/Set;

    move-object/from16 v1, p16

    .line 61
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    move/from16 v1, p17

    .line 62
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mIsBroadcastMsg:Z

    move-object/from16 v1, p18

    .line 63
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mOwnImsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendSlmFileTransferParams [mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecipients="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mRecipients:Ljava/util/Set;

    .line 69
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConfUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConfUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mUserAlias:Ljava/lang/String;

    .line 71
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileName:Ljava/lang/String;

    .line 72
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFilePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFilePath:Ljava/lang/String;

    .line 73
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mFileSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdpContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mSdpContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMsgId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mImdnMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBroadcastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmFileTransferParams;->mIsBroadcastMsg:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
