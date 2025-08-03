.class public Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;
.super Ljava/lang/Object;
.source "StartImSessionParams.java"


# instance fields
.field public mAcceptTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mAcceptWrappedTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCallback:Landroid/os/Message;

.field public mChatId:Ljava/lang/String;

.field public mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mDedicatedBearerCallback:Landroid/os/Message;

.field public mInReplyToContributionId:Ljava/lang/String;

.field public mIsChatbotParticipant:Z

.field public mIsClosedGroupChat:Z

.field public mIsConf:Z

.field public mIsGeolocationPush:Z

.field public mIsInviteForBye:Z

.field public mIsRejoin:Z

.field public mOwnImsi:Ljava/lang/String;

.field public mPrevContributionId:Ljava/lang/String;

.field public mReceivers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mSdpContentType:Ljava/lang/String;

.field public mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

.field public mServiceId:Ljava/lang/String;

.field public mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

.field public mSubject:Ljava/lang/String;

.field public mSynchronousCallback:Landroid/os/Message;

.field public mUserAlias:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;ZLjava/lang/String;Landroid/os/Message;Landroid/os/Message;Landroid/os/Message;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;ZLcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;",
            "Z",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            "Landroid/os/Message;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 69
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatId:Ljava/lang/String;

    move-object v1, p2

    .line 70
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    move-object v2, p3

    invoke-direct {v1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    move-object v1, p4

    .line 72
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    move-object v1, p5

    .line 73
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    move-object v1, p6

    .line 74
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    move-object v1, p7

    .line 75
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    move v1, p8

    .line 76
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsConf:Z

    move-object v1, p9

    .line 77
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    move-object v1, p10

    .line 78
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    move-object v1, p12

    .line 79
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSynchronousCallback:Landroid/os/Message;

    move-object v1, p11

    .line 80
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mDedicatedBearerCallback:Landroid/os/Message;

    move-object/from16 v1, p13

    .line 81
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    move-object/from16 v1, p14

    .line 82
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 83
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    move/from16 v1, p16

    .line 84
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsRejoin:Z

    move/from16 v1, p17

    .line 85
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsClosedGroupChat:Z

    move/from16 v1, p18

    .line 86
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsInviteForBye:Z

    move-object/from16 v1, p19

    .line 87
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    .line 88
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p20

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v2, p21

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    move-object/from16 v1, p22

    .line 90
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mOwnImsi:Ljava/lang/String;

    move/from16 v1, p23

    .line 91
    iput-boolean v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsChatbotParticipant:Z

    move-object/from16 v1, p24

    .line 92
    iput-object v1, v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartImSessionParams [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSubject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSubject:Ljava/lang/String;

    .line 98
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReceivers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mReceivers:Ljava/util/List;

    .line 99
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPrevContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mPrevContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mConversationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mConversationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInReplyToContributionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mInReplyToContributionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mUserAlias:Ljava/lang/String;

    .line 104
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceType:Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams$ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsConf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsConf:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSdpContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSdpContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mCallback:Landroid/os/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSendMessageParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mSendMessageParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageParams;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsRejoin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsRejoin:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsClosedGroupChat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsClosedGroupChat:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsInviteForBye="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsInviteForBye:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mServiceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mServiceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAcceptWrappedTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mAcceptWrappedTypes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOwnImsi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mOwnImsi:Ljava/lang/String;

    .line 116
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsChatbotParticipant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mIsChatbotParticipant:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChatMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/constants/ims/servicemodules/im/params/StartImSessionParams;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
