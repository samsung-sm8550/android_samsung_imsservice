.class public Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
.super Ljava/lang/Object;
.source "ImSessionBuilder.java"


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

.field public mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

.field public mChatId:Ljava/lang/String;

.field public mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

.field public mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

.field public mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

.field public mContributionId:Ljava/lang/String;

.field public mConversationId:Ljava/lang/String;

.field public mCreatedBy:Lcom/sec/ims/util/ImsUri;

.field public mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

.field public mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

.field public mIconPath:Ljava/lang/String;

.field public mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field public mInvitedBy:Lcom/sec/ims/util/ImsUri;

.field public mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

.field public mLooper:Landroid/os/Looper;

.field public final mNeedToRevokeMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mOwnGroupAlias:Ljava/lang/String;

.field public mOwnIMSI:Ljava/lang/String;

.field public mOwnNumber:Ljava/lang/String;

.field public final mParticipants:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation
.end field

.field public final mParticipantsUri:Ljava/util/Set;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation
.end field

.field public mRawHandle:Ljava/lang/Object;

.field public mRequestMessageId:Ljava/lang/String;

.field public mSdpContentType:Ljava/lang/String;

.field public mServiceId:Ljava/lang/String;

.field public mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

.field public mSessionUri:Lcom/sec/ims/util/ImsUri;

.field public mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

.field public mSubject:Ljava/lang/String;

.field public mThreadId:I

.field public mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mNeedToRevokeMessages:Ljava/util/Map;

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mThreadId:I

    .line 46
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptTypes:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptWrappedTypes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public acceptTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 200
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptTypes:Ljava/util/List;

    return-object p0
.end method

.method public acceptWrappedTypes(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mAcceptWrappedTypes:Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mLooper:Landroid/os/Looper;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    invoke-static {v0}, Lcom/sec/internal/helper/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 238
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "mChatId is null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 241
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-nez v0, :cond_4

    .line 242
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;->CONFERENCE:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 244
    :cond_2
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_2
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    .line 247
    :cond_4
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;)V

    return-object v0
.end method

.method public chatData(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatData:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    return-object p0
.end method

.method public chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatId:Ljava/lang/String;

    return-object p0
.end method

.method public chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatMode:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    return-object p0
.end method

.method public chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mChatType:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    return-object p0
.end method

.method public config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConfig:Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    return-object p0
.end method

.method public contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mContributionId:Ljava/lang/String;

    return-object p0
.end method

.method public conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mConversationId:Ljava/lang/String;

    return-object p0
.end method

.method public createdBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mDirection:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    return-object p0
.end method

.method public getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mGetter:Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;

    return-object p0
.end method

.method public iconPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mIconPath:Ljava/lang/String;

    return-object p0
.end method

.method public imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mImsService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    return-object p0
.end method

.method public invitedBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mListener:Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;

    return-object p0
.end method

.method public looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mLooper:Landroid/os/Looper;

    return-object p0
.end method

.method public needToRevokeMessages(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mNeedToRevokeMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnGroupAlias:Ljava/lang/String;

    return-object p0
.end method

.method public ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnNumber:Ljava/lang/String;

    return-object p0
.end method

.method public ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mOwnIMSI:Ljava/lang/String;

    return-object p0
.end method

.method public participants(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sec/ims/util/ImsUri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipants:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;)",
            "Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mParticipantsUri:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRawHandle:Ljava/lang/Object;

    return-object p0
.end method

.method public requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mRequestMessageId:Ljava/lang/String;

    return-object p0
.end method

.method public sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSdpContentType:Ljava/lang/String;

    return-object p0
.end method

.method public serviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mServiceId:Ljava/lang/String;

    return-object p0
.end method

.method public sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    return-object p0
.end method

.method public sessionUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSessionUri:Lcom/sec/ims/util/ImsUri;

    return-object p0
.end method

.method public slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSlmService:Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    return-object p0
.end method

.method public subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mSubject:Ljava/lang/String;

    return-object p0
.end method

.method public threadId(I)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 155
    iput p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mThreadId:I

    return-object p0
.end method

.method public uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-object p0
.end method
