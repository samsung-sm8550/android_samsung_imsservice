.class public abstract Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
.super Ljava/lang/Object;
.source "MessageBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBody:Ljava/lang/String;

.field private mChatId:Ljava/lang/String;

.field private mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field private mContentType:Ljava/lang/String;

.field private mContributionId:Ljava/lang/String;

.field private mConversationId:Ljava/lang/String;

.field private mDeliveredTimestamp:J

.field private mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field private mDeviceId:Ljava/lang/String;

.field private mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field private final mDispNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedTimestamp:J

.field private mExtInfo:Ljava/lang/String;

.field private mFlagMask:I

.field private mId:I

.field private mImdnId:Ljava/lang/String;

.field private mImdnOriginalTo:Ljava/lang/String;

.field private mImdnRecRouteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation
.end field

.field private mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private mInsertedTimestamp:J

.field private mIsBroadcastMsg:Z

.field private mIsRoutingMsg:Z

.field private mIsSlmSvcMsg:Z

.field private mIsVM2TextMsg:Z

.field private mMaapTraficType:Ljava/lang/String;

.field private mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field private mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field private mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

.field private mNetwork:Landroid/net/Network;

.field private mNotDisplayedCounter:I

.field private mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field private mPreferredUri:Lcom/sec/ims/util/ImsUri;

.field private mRcsReferenceId:Ljava/lang/String;

.field private mRcsReferenceType:Ljava/lang/String;

.field private mRcsTrafficType:Ljava/lang/String;

.field private mReferenceImdnId:Ljava/lang/String;

.field private mReferenceType:Ljava/lang/String;

.field private mReferenceValue:Ljava/lang/String;

.field private mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field private mRequestMessageId:Ljava/lang/String;

.field private mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field private mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field private mSentTimestamp:J

.field private mSimIMSI:Ljava/lang/String;

.field private mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field private mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field private mSuggestion:Ljava/lang/String;

.field private mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

.field private mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mUserAlias:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBody(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChatId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContentType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContributionId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContributionId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmConversationId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeliveredTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeliveredTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmDesiredNotificationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDirection(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDispNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/Set;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDispNotification:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayedTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDisplayedTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mExtInfo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlagMask(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mFlagMask:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmImdnId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImdnOriginalTo(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnOriginalTo:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImdnRecRouteList(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnRecRouteList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmInsertedTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mInsertedTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsBroadcastMsg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRoutingMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsRoutingMsg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSlmSvcMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsSlmSvcMsg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsVM2TextMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsVM2TextMsg:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaapTraficType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMaapTraficType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMessagingTech(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMnoStrategy(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNetwork(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Landroid/net/Network;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotDisplayedCounter(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotDisplayedCounter:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRcsReferenceId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsReferenceId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRcsReferenceType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsReferenceType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRcsTrafficType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsTrafficType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceImdnId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceImdnId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReferenceValue(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteUri(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestMessageId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRequestMessageId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRevocationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRoutingType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSentTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSentTimestamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmSimIMSI(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSimIMSI:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlmService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSuggestion(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSuggestion:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailTool(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/ThumbnailTool;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserAlias(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 848
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 849
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDispNotification:Ljava/util/Set;

    .line 874
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 875
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 891
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 893
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-void
.end method


# virtual methods
.method public body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1043
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mBody:Ljava/lang/String;

    .line 1044
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 939
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mChatId:Ljava/lang/String;

    .line 940
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/ImConfig;",
            ")TT;"
        }
    .end annotation

    .line 924
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 925
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 961
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContentType:Ljava/lang/String;

    .line 962
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1088
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mContributionId:Ljava/lang/String;

    .line 1089
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1093
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mConversationId:Ljava/lang/String;

    .line 1094
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public deliveredTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 991
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeliveredTimestamp:J

    .line 992
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public desiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ")TT;"
        }
    .end annotation

    .line 1028
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1029
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1098
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDeviceId:Ljava/lang/String;

    .line 1099
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ")TT;"
        }
    .end annotation

    .line 1006
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1007
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDispNotification:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1019
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public displayedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 996
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mDisplayedTimestamp:J

    .line 997
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public extinfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1083
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mExtInfo:Ljava/lang/String;

    .line 1084
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1108
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mFlagMask:I

    .line 1109
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public id(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 934
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mId:I

    .line 935
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 944
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnId:Ljava/lang/String;

    .line 945
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 949
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnOriginalTo:Ljava/lang/String;

    .line 950
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 955
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImdnRecRouteList:Ljava/util/List;

    .line 957
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;",
            ")TT;"
        }
    .end annotation

    .line 909
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 910
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 986
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mInsertedTimestamp:J

    .line 987
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1053
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsBroadcastMsg:Z

    .line 1054
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1063
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsRoutingMsg:Z

    .line 1064
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 971
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsSlmSvcMsg:Z

    .line 972
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TT;"
        }
    .end annotation

    .line 1058
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mIsVM2TextMsg:Z

    .line 1059
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1118
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMaapTraficType:Ljava/lang/String;

    .line 1119
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;",
            ")TT;"
        }
    .end annotation

    .line 1123
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1124
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;",
            ")TT;"
        }
    .end annotation

    .line 1073
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 1074
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;",
            ")TT;"
        }
    .end annotation

    .line 904
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    .line 905
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Network;",
            ")TT;"
        }
    .end annotation

    .line 1078
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNetwork:Landroid/net/Network;

    .line 1079
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 1033
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotDisplayedCounter:I

    .line 1034
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public notificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ")TT;"
        }
    .end annotation

    .line 1023
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 1024
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1148
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsReferenceId:Ljava/lang/String;

    .line 1149
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1153
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsReferenceType:Ljava/lang/String;

    .line 1154
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1143
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRcsTrafficType:Ljava/lang/String;

    .line 1144
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1128
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceImdnId:Ljava/lang/String;

    .line 1129
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1133
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceType:Ljava/lang/String;

    .line 1134
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1138
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mReferenceValue:Ljava/lang/String;

    .line 1139
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/ims/util/ImsUri;",
            ")TT;"
        }
    .end annotation

    .line 1001
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 1002
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1038
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRequestMessageId:Ljava/lang/String;

    .line 1039
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public revocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;",
            ")TT;"
        }
    .end annotation

    .line 1113
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 1114
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;",
            ")TT;"
        }
    .end annotation

    .line 1068
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1069
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method protected abstract self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 981
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSentTimestamp:J

    .line 982
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1103
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSimIMSI:Ljava/lang/String;

    .line 1104
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;",
            ")TT;"
        }
    .end annotation

    .line 914
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 915
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;",
            ")TT;"
        }
    .end annotation

    .line 976
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 977
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1048
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mSuggestion:Ljava/lang/String;

    .line 1049
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/ThumbnailTool;",
            ")TT;"
        }
    .end annotation

    .line 929
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    .line 930
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;",
            ")TT;"
        }
    .end annotation

    .line 966
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 967
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/util/UriGenerator;",
            ")TT;"
        }
    .end annotation

    .line 919
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 920
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method

.method public userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1011
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mUserAlias:Ljava/lang/String;

    .line 1012
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->self()Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p0

    return-object p0
.end method
