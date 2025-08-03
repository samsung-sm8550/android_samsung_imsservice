.class public Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;
.super Landroid/os/Handler;
.source "GroupChatRetrievingHandler.java"


# static fields
.field private static final EVENT_GROUP_INFO_NOTIFICATION:I = 0x2

.field private static final EVENT_GROUP_LIST_NOTIFICATION:I = 0x1

.field private static final EVENT_SUBSCRIBE_NEXT_GROUP_CHAT_INFO:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGroupChatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Uri;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

.field private final mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

.field private final mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

.field private final mOwnImsi:Ljava/lang/String;

.field private final mOwnPhoneNumber:Ljava/lang/String;

.field private final mPendingGroupChatUri:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/ImTranslation;Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 43
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    .line 50
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mContext:Landroid/content/Context;

    .line 51
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    .line 52
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    .line 53
    iput-object p5, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    .line 54
    iput-object p6, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    .line 55
    iput-object p7, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    return-void
.end method

.method private handleGroupInfoNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V
    .locals 13

    .line 140
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 141
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGroupInfoNotification() start, uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mChatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mChatId:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 145
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 146
    const-string p0, "handleGroupInfoNotification() fail, can not find that group chat in pending list"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;

    if-nez v2, :cond_1

    .line 152
    const-string p0, "handleGroupInfoNotification() fail, can not find that group chat in map"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V

    .line 157
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->pConvID:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_3

    .line 159
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 160
    iget-object v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;

    .line 161
    iget-object v3, v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConferenceParticipantInfo;->mUri:Lcom/sec/ims/util/ImsUri;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 163
    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mOwnImsi:Ljava/lang/String;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    sget-object v7, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    sget-object v8, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual/range {v3 .. v8}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v3

    .line 166
    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->pConvID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 167
    iget-object v4, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setSessionUri(Lcom/sec/ims/util/ImsUri;)V

    .line 168
    iget-object v2, v2, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->subject:Ljava/lang/String;

    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateSubject(Ljava/lang/String;)V

    .line 169
    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateSubjectData(Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;)V

    .line 170
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;->CLOSED_BY_USER:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;

    invoke-virtual {v3, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->updateState(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$State;)V

    .line 173
    :cond_3
    new-instance v12, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mConferenceInfoType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;

    iget-object v5, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mParticipantsInfo:Ljava/util/List;

    iget v6, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mMaxUserCount:I

    iget-object v7, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mSubjectData:Lcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;

    iget-object v8, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mRawHandle:Ljava/lang/Object;

    iget-object v9, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mOwnImsi:Ljava/lang/String;

    iget-object v10, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mIconData:Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;

    iget-object v11, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;->mTimeStamp:Ljava/lang/String;

    move-object v2, v12

    invoke-direct/range {v2 .. v11}, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent$ImConferenceInfoType;Ljava/util/List;ILcom/sec/internal/constants/ims/servicemodules/im/ImSubjectData;Ljava/lang/Object;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImIconData;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0, v12}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->onConferenceInfoUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    .line 178
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImCache:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImTranslation:Lcom/sec/internal/ims/servicemodules/im/ImTranslation;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V

    .line 180
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    .line 181
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_4
    return-void
.end method

.method private handleGroupListNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;)V
    .locals 4

    .line 114
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iget v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->version:I

    .line 116
    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;->entryList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 118
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;

    .line 119
    iget-object v2, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 120
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent$Entry;->sessionUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grouplist_setting_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 127
    const-string/jumbo v1, "version"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p1, 0x3

    .line 129
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private subscribeNextGroupChatInfo()V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "subscribeNextGroupChatInfo() finish, list is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 192
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 194
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unRegisterForGroupChatListUpdate(Landroid/os/Handler;)V

    .line 195
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    invoke-interface {v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->unRegisterForGroupChatInfoUpdate(Landroid/os/Handler;)V

    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->subscribeGroupChatInfo(Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->subscribeNextGroupChatInfo()V

    goto :goto_0

    .line 69
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 70
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->handleGroupInfoNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImSessionConferenceInfoUpdateEvent;)V

    goto :goto_0

    .line 64
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/helper/AsyncResult;

    .line 65
    iget-object p1, p1, Lcom/sec/internal/helper/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->handleGroupListNotification(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingGroupChatListEvent;)V

    :goto_0
    return-void
.end method

.method public startToRetrieveGroupChatList()V
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 87
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    const-string v0, " can not retrieve the group chat list because own number is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "grouplist_setting_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 92
    const-string/jumbo v1, "version"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 93
    const-string v3, "increaseMode"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v1, :cond_1

    .line 95
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " startToRetrieveGroupChatList() version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mGroupChatMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 100
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mPendingGroupChatUri:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 102
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForGroupChatListUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 103
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v4}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->registerForGroupChatInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 105
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mImService:Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/GroupChatRetrievingHandler;->mOwnImsi:Ljava/lang/String;

    invoke-interface {v2, v1, v0, p0}, Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;->subscribeGroupChatList(IZLjava/lang/String;)V

    return-void
.end method
