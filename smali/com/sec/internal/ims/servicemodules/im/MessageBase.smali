.class public abstract Lcom/sec/internal/ims/servicemodules/im/MessageBase;
.super Ljava/util/Observable;
.source "MessageBase.java"


# static fields
.field public static final FLAG_FT_SMS:I = 0x1

.field public static final FLAG_TEMPORARY:I = 0x2

.field protected static final LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mBody:Ljava/lang/String;

.field protected final mChatId:Ljava/lang/String;

.field private mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

.field protected final mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field protected mContentType:Ljava/lang/String;

.field protected mContributionId:Ljava/lang/String;

.field protected mConversationId:Ljava/lang/String;

.field protected mCurrentRetryCount:I

.field protected mDeliveredTimestamp:J

.field protected mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mDeviceId:Ljava/lang/String;

.field protected final mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field protected mDispNotification:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation
.end field

.field protected mDisplayedTimestamp:J

.field protected mExtInfo:Ljava/lang/String;

.field protected mFlagMask:I

.field protected mId:I

.field protected final mImdnId:Ljava/lang/String;

.field protected mImdnOriginalTo:Ljava/lang/String;

.field protected mImdnRecRouteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation
.end field

.field protected final mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field protected final mInsertedTimestamp:J

.field protected mIsBroadcastMsg:Z

.field protected mIsRoutingMsg:Z

.field protected mIsSlmSvcMsg:Z

.field protected mIsVM2TextMsg:Z

.field protected mLastDisplayedTimestamp:J

.field protected mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mMaapTrafficType:Ljava/lang/String;

.field protected mMessageCreator:Ljava/lang/String;

.field protected mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

.field protected mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

.field protected final mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

.field protected mNetwork:Landroid/net/Network;

.field protected mNotDisplayedCounter:I

.field protected mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

.field protected mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

.field protected mRcsReferenceId:Ljava/lang/String;

.field protected mRcsReferenceType:Ljava/lang/String;

.field protected mRcsTrafficType:Ljava/lang/String;

.field protected mReferenceImdnId:Ljava/lang/String;

.field protected mReferenceType:Ljava/lang/String;

.field protected mReferenceValue:Ljava/lang/String;

.field protected mRemoteUri:Lcom/sec/ims/util/ImsUri;

.field protected mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

.field protected mRequestMessageId:Ljava/lang/String;

.field protected mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

.field protected mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

.field protected mSentTimestamp:J

.field protected mSimIMSI:Ljava/lang/String;

.field protected final mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field protected mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

.field protected mSuggestion:Ljava/lang/String;

.field protected final mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

.field protected mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

.field protected mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field protected mUserAlias:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder<",
            "*>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 87
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 88
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 89
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 104
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 112
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 115
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;->UNKNOWN:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    .line 125
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSlmService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmModule(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    .line 133
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImsService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 134
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSlmService(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    .line 135
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmConfig(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    .line 136
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmThumbnailTool(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mThumbnailTool:Lcom/sec/internal/ims/util/ThumbnailTool;

    .line 137
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmUriGenerator(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    .line 138
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    .line 139
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmChatId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImdnId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    .line 141
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImdnOriginalTo(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    .line 142
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmImdnRecRouteList(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    .line 143
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 144
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsSlmSvcMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    .line 145
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmBody(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    .line 146
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSuggestion(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSuggestion:Ljava/lang/String;

    .line 147
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmContentType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    .line 148
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 149
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDirection(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 150
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmInsertedTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    .line 151
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSentTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    .line 152
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDeliveredTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    .line 153
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDisplayedTimestamp(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    .line 154
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRemoteUri(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 155
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmUserAlias(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDispNotification(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    .line 157
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmNotificationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 158
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDesiredNotificationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 159
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmNotDisplayedCounter(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    .line 160
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRequestMessageId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRequestMessageId:Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsBroadcastMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    .line 162
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsVM2TextMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsVM2TextMsg:Z

    .line 163
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmIsRoutingMsg(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsRoutingMsg:Z

    .line 164
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRoutingType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 165
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmMnoStrategy(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    .line 166
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmNetwork(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Landroid/net/Network;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    .line 167
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmExtInfo(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmConversationId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmContributionId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmDeviceId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmSimIMSI(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmFlagMask(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    .line 173
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRevocationStatus(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 174
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmMaapTraficType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmMessagingTech(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 176
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmReferenceImdnId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceImdnId:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmReferenceType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmReferenceValue(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceValue:Ljava/lang/String;

    .line 179
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRcsTrafficType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRcsReferenceId(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsReferenceId:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->-$$Nest$fgetmRcsReferenceType(Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsReferenceType:Ljava/lang/String;

    return-void
.end method

.method private getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;
    .locals 1

    .line 561
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;->getCapabilityDiscoveryModule()Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    invoke-interface {v0, p1}, Lcom/sec/internal/interfaces/ims/servicemodules/options/ICapabilityDiscoveryModule;->getNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 564
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v0, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 1

    if-eqz p0, :cond_1

    .line 185
    const-string v0, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "application/vnd.gsma.rcspulllocation+xml"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 186
    :cond_0
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0

    .line 189
    :cond_1
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 813
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 816
    :cond_2
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 817
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 818
    iget-object v2, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-eqz v2, :cond_4

    return v1

    .line 821
    :cond_3
    iget-object v3, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 824
    :cond_4
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    if-ne p0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 0

    .line 211
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    return-object p0
.end method

.method public getChatId()Ljava/lang/String;
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public getChatbotMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;
    .locals 0

    .line 454
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    .line 219
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public getContributionId()Ljava/lang/String;
    .locals 0

    .line 494
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    return-object p0
.end method

.method public getConversationId()Ljava/lang/String;
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentRetryCount()I
    .locals 0

    .line 737
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    return p0
.end method

.method public getDeliveredTimestamp()J
    .locals 2

    .line 263
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    return-wide v0
.end method

.method public getDesiredNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method public getDisplayedTimestamp()Ljava/lang/Long;
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getDispositionNotification()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    return-object p0
.end method

.method public getExtInfo()Ljava/lang/String;
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    return-object p0
.end method

.method public getFlagMask()I
    .locals 0

    .line 462
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    return p0
.end method

.method public getId()I
    .locals 0

    .line 203
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    return p0
.end method

.method public getImdnId()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    return-object p0
.end method

.method public getImdnOriginalTo()Ljava/lang/String;
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    return-object p0
.end method

.method public getImdnRecRouteList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    return-object p0
.end method

.method public getInsertedTimestamp()J
    .locals 2

    .line 251
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    return-wide v0
.end method

.method public getIsSlmSvcMsg()Z
    .locals 0

    .line 227
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    return p0
.end method

.method public getLastDisplayedTimestamp()Ljava/lang/Long;
    .locals 2

    .line 279
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastDisplayedTimestamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getLastNotificationType()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method public getMaapTrafficType()Ljava/lang/String;
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    return-object p0
.end method

.method public getMessageCreator()Ljava/lang/String;
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessageCreator:Ljava/lang/String;

    return-object p0
.end method

.method public getMessagingTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;
    .locals 0

    .line 446
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-object p0
.end method

.method public getNewDate(J)Ljava/util/Date;
    .locals 2

    .line 841
    new-instance p0, Ljava/util/Date;

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;
    .locals 7

    .line 406
    new-instance v6, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewDate(J)Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;-><init>(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;)V

    return-object v6
.end method

.method public getNotDisplayedCounter()I
    .locals 0

    .line 327
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    return p0
.end method

.method public getNotificationParticipant()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getNotificationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    .line 311
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-object p0
.end method

.method public getOwnIMSI()Ljava/lang/String;
    .locals 0

    .line 502
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    return-object p0
.end method

.method public getPhoneId()I
    .locals 0

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result p0

    return p0
.end method

.method public getRcsReferenceId()Ljava/lang/String;
    .locals 0

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsReferenceId:Ljava/lang/String;

    return-object p0
.end method

.method public getRcsReferenceType()Ljava/lang/String;
    .locals 0

    .line 553
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsReferenceType:Ljava/lang/String;

    return-object p0
.end method

.method public getRcsStrategy()Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;
    .locals 0

    .line 750
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMnoStrategy:Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    return-object p0
.end method

.method public getRcsTrafficType()Ljava/lang/String;
    .locals 0

    .line 543
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    return-object p0
.end method

.method public getReferenceImdnId()Ljava/lang/String;
    .locals 0

    .line 528
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceImdnId:Ljava/lang/String;

    return-object p0
.end method

.method public getReferenceType()Ljava/lang/String;
    .locals 0

    .line 533
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    return-object p0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 0

    .line 538
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceValue:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteUri()Lcom/sec/ims/util/ImsUri;
    .locals 0

    .line 283
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public getReportMsgParams()Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    return-object p0
.end method

.method public getRequestMessageId()Ljava/lang/String;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRequestMessageId:Ljava/lang/String;

    return-object p0
.end method

.method public getRevocationStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-object p0
.end method

.method public getRoutingType()Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;
    .locals 0

    .line 422
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    return-object p0
.end method

.method public getSentTimestamp()J
    .locals 2

    .line 255
    iget-wide v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    return-wide v0
.end method

.method public abstract getServiceTag()Ljava/lang/String;
.end method

.method public getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-object p0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSuggestion:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    return-object p0
.end method

.method public getUserAlias()Ljava/lang/String;
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 765
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 766
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    add-int/2addr v0, p0

    return v0
.end method

.method public incrementRetryCount()V
    .locals 1

    .line 741
    iget v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    return-void
.end method

.method public isBroadcastMsg()Z
    .locals 0

    .line 410
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    return p0
.end method

.method public isDeliveredNotificationRequired()Z
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDisplayedNotificationRequired()Z
    .locals 2

    .line 395
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFtSms()Z
    .locals 1

    .line 426
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .line 478
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOutgoing()Z
    .locals 1

    .line 474
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRoutingMsg()Z
    .locals 0

    .line 418
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsRoutingMsg:Z

    return p0
.end method

.method public isTemporary()Z
    .locals 1

    .line 434
    iget p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVM2TextMsg()Z
    .locals 0

    .line 414
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsVM2TextMsg:Z

    return p0
.end method

.method protected isWifiConnected()Z
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    invoke-interface {p0}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->isWifiConnected()Z

    move-result p0

    return p0
.end method

.method public onCanceledNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq v0, v1, :cond_0

    .line 720
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Outgoing message received canceled notification, ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 725
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 726
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/util/UriGenerator;->normalize(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 727
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-ne p1, v0, :cond_1

    .line 728
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    goto :goto_0

    .line 730
    :cond_1
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION_UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    :goto_0
    return-void
.end method

.method public onImdnNotificationReceived(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;)V
    .locals 5

    .line 647
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-eq v0, v1, :cond_0

    .line 648
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Incoming message received imdn notification, ignore."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 652
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase$1;->$SwitchMap$com$sec$internal$constants$ims$servicemodules$im$NotificationStatus:[I

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_2

    goto/16 :goto_0

    .line 703
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_MMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 704
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 705
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 706
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 707
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 708
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto/16 :goto_0

    .line 687
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_a

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v1, :cond_4

    goto/16 :goto_0

    .line 690
    :cond_4
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->INTERWORKING_SMS:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 691
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 692
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 693
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 694
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 695
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto/16 :goto_0

    .line 663
    :cond_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-ne v0, v2, :cond_6

    .line 664
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 665
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 666
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 669
    :cond_6
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 670
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastDisplayedTimestamp:J

    .line 671
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    if-lez v2, :cond_7

    .line 672
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onImdnNotificationReceived: Decrease mNotDisplayedCounter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    .line 676
    :cond_7
    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    if-nez v1, :cond_8

    .line 677
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 678
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 681
    :cond_8
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 682
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 654
    :cond_9
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 655
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mLastNotificationType:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 656
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mCpimDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDeliveredTimestamp(J)V

    .line 657
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;->NONE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V

    .line 658
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImdnNotificationEvent;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationParticipant:Lcom/sec/ims/util/ImsUri;

    .line 659
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_a
    :goto_0
    return-void
.end method

.method protected onSendCanceledNotificationDone()V
    .locals 1

    .line 643
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->CANCELLATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    return-void
.end method

.method protected onSendDeliveredNotificationDone()V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    if-eq v0, v1, :cond_0

    .line 633
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    :cond_0
    return-void
.end method

.method protected onSendDisplayedNotificationDone()V
    .locals 1

    .line 638
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    return-void
.end method

.method public onSendMessageDone(Lcom/sec/internal/constants/ims/servicemodules/im/result/Result;Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy$StrategyResponse;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected sendCanceledNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 16

    move-object/from16 v0, p0

    if-eqz p6, :cond_0

    .line 616
    new-instance v1, Lcom/sec/ims/util/ImsUri;

    const-string/jumbo v2, "sip:anonymous@anonymous.invalid"

    invoke-direct {v1, v2}, Lcom/sec/ims/util/ImsUri;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v3, v1

    goto :goto_1

    .line 617
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-eqz v1, :cond_3

    .line 618
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_0

    .line 625
    :goto_1
    new-instance v15, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v4, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v1, :cond_1

    move-object/from16 v5, p2

    goto :goto_2

    :cond_1
    move-object v5, v1

    .line 626
    :goto_2
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object/from16 v6, p3

    goto :goto_3

    :cond_2
    move-object v6, v1

    :goto_3
    iget-object v9, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->CANCELED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 627
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v10

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12}, Ljava/util/Date;-><init>()V

    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v2

    const/4 v7, 0x1

    invoke-interface {v1, v2, v7}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v14

    move-object v1, v15

    move-object/from16 v2, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p4

    move/from16 v11, p6

    move/from16 v13, p7

    invoke-direct/range {v1 .. v14}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;ZLjava/lang/String;)V

    .line 628
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, v15}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendCanceledNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    return-void

    .line 620
    :cond_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string v1, "mRemoteUri is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendDeliveredNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 571
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_0

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDeliveredNotificationDone()V

    return-void

    .line 575
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 577
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 578
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v9, p3

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DELIVERED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 579
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v13

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v17

    move-object v4, v1

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v14, p6

    move/from16 v16, p7

    invoke-direct/range {v4 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;ZLjava/lang/String;)V

    .line 580
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v2, :cond_4

    .line 581
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isVM2TextMsg()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 582
    invoke-static {}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->addVM2TextHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->addImExtensionMNOHeaders(Ljava/util/Map;)V

    .line 584
    :cond_3
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_2

    .line 586
    :cond_4
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDeliveredNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    :goto_2
    return-void
.end method

.method protected sendDisplayedNotification(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;ZZ)V
    .locals 18

    move-object/from16 v0, p0

    .line 592
    iget-object v1, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v1, :cond_0

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->onSendDisplayedNotificationDone()V

    return-void

    .line 596
    :cond_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v3, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getParticipantsNetworkPreferredUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Lcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v6

    .line 599
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;

    iget-object v7, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConversationId:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v8, p2

    goto :goto_0

    :cond_1
    move-object v8, v2

    .line 600
    :goto_0
    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContributionId:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object/from16 v9, p3

    goto :goto_1

    :cond_2
    move-object v9, v2

    :goto_1
    iget-object v12, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 601
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getNewImdnData(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;

    move-result-object v13

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    iget-object v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mModule:Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;

    iget-object v3, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getPhoneId()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v17

    move-object v4, v1

    move-object/from16 v5, p1

    move-object/from16 v10, p5

    move-object/from16 v11, p4

    move/from16 v14, p6

    move/from16 v16, p7

    invoke-direct/range {v4 .. v17}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;-><init>(Ljava/lang/Object;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams$ImdnData;ZLjava/util/Date;ZLjava/lang/String;)V

    .line 602
    iget-boolean v2, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    if-eqz v2, :cond_4

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->isVM2TextMsg()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 604
    invoke-static {}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->addVM2TextHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;->addImExtensionMNOHeaders(Ljava/util/Map;)V

    .line 606
    :cond_3
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;->sendSlmDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    goto :goto_2

    .line 608
    :cond_4
    iget-object v0, v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, v1}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendDisplayedNotification(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendImdnParams;)V

    :goto_2
    return-void
.end method

.method public sendMessageRevokeRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;)V
    .locals 11

    .line 828
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    if-nez v0, :cond_0

    .line 829
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p1, "remote uri is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    sget-object v2, Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;->RCS_URI:Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;

    invoke-virtual {v0}, Lcom/sec/ims/util/ImsUri;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sec/internal/ims/util/UriGenerator;->getNetworkPreferredUri(Lcom/sec/internal/ims/util/UriGenerator$URIServiceType;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v5

    .line 835
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    move-object v4, v0

    move-object v7, p3

    move-object v8, p1

    move-object v9, p2

    move-object v10, p4

    invoke-direct/range {v4 .. v10}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;-><init>(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Landroid/os/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {p0, v0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->sendMessageRevokeRequest(Lcom/sec/internal/constants/ims/servicemodules/im/params/SendMessageRevokeParams;)V

    return-void
.end method

.method public setChatbotMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatbotMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ChatbotMessagingTech;

    return-void
.end method

.method public setDeliveredTimestamp(J)V
    .locals 0

    .line 267
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    return-void
.end method

.method public setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 0

    .line 319
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    return-void
.end method

.method public setDisplayedTimestamp(J)V
    .locals 0

    .line 275
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    return-void
.end method

.method public setFtSms(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 430
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    return-void
.end method

.method public setImdnRecRouteList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImImdnRecRoute;",
            ">;)V"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    return-void
.end method

.method public setMessageCreator(Ljava/lang/String;)V
    .locals 0

    .line 758
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessageCreator:Ljava/lang/String;

    return-void
.end method

.method public setMessagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMessagingTech:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    return-void
.end method

.method public setNetwork(Landroid/net/Network;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNetwork:Landroid/net/Network;

    return-void
.end method

.method public setRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    return-void
.end method

.method public setSentTimestamp(J)V
    .locals 0

    .line 259
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    return-void
.end method

.method public setSlmSvcMsg(Z)V
    .locals 0

    .line 442
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsSlmSvcMsg:Z

    return-void
.end method

.method public setSpamInfo(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 482
    new-instance v0, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;-><init>(Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReportMsgParams:Lcom/sec/internal/constants/ims/servicemodules/im/params/SendReportMsgParams;

    return-void
.end method

.method public setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    return-void
.end method

.method public setTemporary(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 438
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mFlagMask:I

    return-void
.end method

.method public setUserAlias(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    return-void
.end method

.method public toList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageBase [mChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mChatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mBody:Ljava/lang/String;

    .line 774
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 776
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mType:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mContentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mContentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnOriginalTo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnOriginalTo:Ljava/lang/String;

    .line 779
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mImdnRecRouteList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mImdnRecRouteList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInsertedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mInsertedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSentTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSentTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDeliveredTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUserAlias="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mUserAlias:Ljava/lang/String;

    .line 787
    invoke-static {v1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentRetryCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mCurrentRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDispNotification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDispNotification:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesiredNotificationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNotDisplayedCounter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotDisplayedCounter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsBroadcastMsg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mIsBroadcastMsg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaapTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mMaapTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceImdnId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceImdnId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mReferenceValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mReferenceValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsTrafficType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsTrafficType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsReferenceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsReferenceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRcsReferenceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRcsReferenceType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0

    .line 745
    invoke-virtual {p0}, Ljava/util/Observable;->setChanged()V

    .line 746
    invoke-virtual {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    return-void
.end method

.method public updateDeliveredTimestamp(J)V
    .locals 0

    .line 355
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDeliveredTimestamp:J

    .line 356
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDesiredNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 367
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateDisplayedTimestamp(J)V
    .locals 0

    .line 360
    iput-wide p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mDisplayedTimestamp:J

    .line 361
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateExtInfo(Ljava/lang/String;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mExtInfo:Ljava/lang/String;

    .line 351
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 377
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mNotificationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    .line 378
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateOwnIMSI(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 506
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 507
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mSimIMSI:Ljava/lang/String;

    .line 508
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateRemoteUri(Lcom/sec/ims/util/ImsUri;)V
    .locals 0

    .line 513
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRemoteUri:Lcom/sec/ims/util/ImsUri;

    .line 514
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method public updateRevocationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;)V
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 384
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mRevocationStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$RevocationStatus;

    .line 385
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method

.method public updateStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 344
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mStatus:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 345
    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    :cond_0
    return-void
.end method
