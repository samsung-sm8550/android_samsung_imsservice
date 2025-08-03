.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;
.super Ljava/lang/Object;
.source "SendSlmMessageParams.java"


# instance fields
.field public mBody:Ljava/lang/String;

.field public mCallback:Landroid/os/Message;

.field public mChatId:Ljava/lang/String;

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

.field public mImdnMessageId:Ljava/lang/String;

.field public mImdnTime:Ljava/util/Date;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsBroadcastMsg:Z

.field public mIsChatbotParticipant:Z

.field public mIsPublicAccountMsg:Z

.field public mMaapTrafficType:Ljava/lang/String;

.field public mMessageId:I

.field public mOwnImsi:Ljava/lang/String;

.field public mRcsReferenceId:Ljava/lang/String;

.field public mRcsReferenceType:Ljava/lang/String;

.field public mReceivers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/os/Message;ZZLjava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Landroid/os/Message;",
            "ZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 64
    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    move-object v1, p2

    .line 65
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mChatId:Ljava/lang/String;

    move-object v1, p3

    .line 66
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mBody:Ljava/lang/String;

    move-object v1, p4

    .line 67
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    move-object v1, p5

    .line 68
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mUserAlias:Ljava/lang/String;

    move-object v1, p6

    .line 69
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    move-object v1, p7

    .line 70
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    move-object v1, p13

    .line 71
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    move-object v1, p8

    .line 72
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDispositionNotification:Ljava/util/Set;

    move-object v1, p9

    .line 73
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContributionId:Ljava/lang/String;

    move-object v1, p10

    .line 74
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mConversationId:Ljava/lang/String;

    move-object v1, p11

    .line 75
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    move-object v1, p12

    .line 76
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    move/from16 v1, p14

    .line 77
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsPublicAccountMsg:Z

    move/from16 v1, p15

    .line 78
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsBroadcastMsg:Z

    move-object/from16 v1, p16

    .line 79
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mOwnImsi:Ljava/lang/String;

    move/from16 v1, p17

    .line 80
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    move-object/from16 v1, p18

    .line 81
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 82
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceId:Ljava/lang/String;

    move-object/from16 v1, p20

    .line 83
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageParams [mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mBody:Ljava/lang/String;

    .line 90
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnMessageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPublicAccountMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsPublicAccountMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBroadcastMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsBroadcastMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnImsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mOwnImsi:Ljava/lang/String;

    .line 98
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotParticipant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mIsChatbotParticipant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mMaapTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mRcsReferenceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReceivers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendSlmMessageParams;->mReceivers:Ljava/util/Set;

    .line 104
    invoke-static {p0}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
