.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;
.super Ljava/lang/Object;
.source "SendFtSessionParams.java"


# instance fields
.field public final mCallback:Landroid/os/Message;

.field public mConfUri:Lcom/sec/ims/util/ImsUri;

.field public mContentType:Ljava/lang/String;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public mDispositionNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mFileFingerPrint:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFilePath:Ljava/lang/String;

.field public mFileSize:J

.field public mFileTransferID:Ljava/lang/String;

.field public mImdnId:Ljava/lang/String;

.field public mImdnTime:Ljava/util/Date;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsPublicAccountMsg:Z

.field public mIsResuming:Z

.field public mMessageId:I

.field public mOwnImsi:Ljava/lang/String;

.field public mRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

.field public final mSessionHandleCallback:Landroid/os/Message;

.field public mThumbPath:Ljava/lang/String;

.field public mTimeDuration:I

.field public mTransferredBytes:J

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Landroid/os/Message;Ljava/util/List;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;ZJLjava/util/Set;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;IZLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "ZJ",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 65
    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    move-object v1, p3

    .line 66
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    move-object v1, p4

    .line 67
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    move-object v1, p5

    .line 68
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    move-object v1, p6

    .line 69
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mSessionHandleCallback:Landroid/os/Message;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    move-object v2, p7

    invoke-direct {v1, p7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    move-object v1, p8

    .line 72
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    move-object v1, p9

    .line 73
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    move-object v1, p11

    .line 74
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFilePath:Ljava/lang/String;

    move-object v1, p10

    .line 75
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileName:Ljava/lang/String;

    move-wide v1, p12

    .line 76
    iput-wide v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    move-object/from16 v1, p14

    .line 77
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContentType:Ljava/lang/String;

    move-object v1, p2

    .line 78
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 79
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move/from16 v1, p16

    .line 80
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsResuming:Z

    move-wide/from16 v1, p17

    .line 81
    iput-wide v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    move-object/from16 v1, p19

    .line 82
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDispositionNotification:Ljava/util/Set;

    move-object/from16 v1, p20

    .line 83
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 84
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnTime:Ljava/util/Date;

    move-object/from16 v1, p22

    .line 85
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 86
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    move/from16 v1, p24

    .line 87
    iput v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTimeDuration:I

    move/from16 v1, p25

    .line 88
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsPublicAccountMsg:Z

    move-object/from16 v1, p26

    .line 89
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileFingerPrint:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 90
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mOwnImsi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendFtSessionParams [mMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mMessageId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mConversationId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mInReplyToContributionId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mRecipients="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mRecipients:Ljava/util/List;

    .line 99
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mConfUri="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mConfUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUserAlias="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mUserAlias:Ljava/lang/String;

    .line 101
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFilePath="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFilePath:Ljava/lang/String;

    .line 102
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFileName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileName:Ljava/lang/String;

    .line 103
    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mFileSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", mContentType="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsResuming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsResuming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mTransferredBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTransferredBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDispositionNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mDispositionNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mImdnTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mFileTransferID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileTransferID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSessionHandleCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mSessionHandleCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mThumbPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mTimeDuration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mTimeDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPublicAccountMsg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mIsPublicAccountMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFileFingerPrint = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendFtSessionParams;->mFileFingerPrint:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
