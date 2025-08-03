.class public Lcom/sec/internal/ims/servicemodules/im/ImCache;
.super Ljava/lang/Object;
.source "ImCache.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "UseSparseArrays"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_CONCURRENT_SESSION:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "ImCache"

.field private static final MAX_CACHED_MESSAGE:I = 0x1e

.field private static final MAX_CACHED_SESSION:I = 0x1f4


# instance fields
.field private final mActiveSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mCachingMessages:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mChatbotRoleUris:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

.field private mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

.field private final mImSessions:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLoaded:Z

.field private final mListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObserver:Ljava/util/Observer;

.field private final mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

.field private mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;


# direct methods
.method public static synthetic $r8$lambda$CBdBXe2m5Rdyg2kjscOYXLXnnyc(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Kg34vg2PwBbl0uIHJ9Bew75OyC4(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YtYHsfOOu56Jwhl-CAllVnmrn_U(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmActiveSessions(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Landroid/util/LruCache;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPersister(Lcom/sec/internal/ims/servicemodules/im/ImCache;)Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcreateSession(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mloadExtras(Lcom/sec/internal/ims/servicemodules/im/ImCache;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$munregisterObserver(Lcom/sec/internal/ims/servicemodules/im/ImCache;Ljava/util/Observable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$1;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    .line 94
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    .line 100
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    .line 111
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;

    const/16 v1, 0x1f4

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$2;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    .line 134
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;

    const/16 v1, 0x1e

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$3;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImCache;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    return-void
.end method

.method private cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;
    .locals 3

    .line 1123
    const-string p0, "chat_id"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1124
    const-string/jumbo v0, "uri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    .line 1125
    const-string/jumbo v1, "status"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1126
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1130
    :goto_0
    new-instance v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object p1

    invoke-direct {v1, p0, p1, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;Lcom/sec/ims/util/ImsUri;)V

    return-object v1
.end method

.method private cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;
    .locals 18

    move-object/from16 v0, p1

    .line 1082
    const-string v1, "chat_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1083
    const-string/jumbo v1, "own_sim_imsi"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1084
    const-string/jumbo v1, "session_uri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1085
    const-string v2, "direction"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1087
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1089
    :cond_0
    const-string v5, "conversation_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1090
    const-string v5, "contribution_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1092
    const-string v5, "is_group_chat"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 1093
    :goto_0
    const-string/jumbo v6, "subject"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1095
    const-string v7, "chat_type"

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    if-nez v7, :cond_3

    if-eqz v5, :cond_2

    .line 1097
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->PARTICIPANT_BASED_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    :goto_1
    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->getId()I

    move-result v5

    goto :goto_2

    :cond_2
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->ONE_TO_ONE_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    goto :goto_1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 1099
    :cond_3
    const-string v5, "chat_mode"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1100
    sget-object v8, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "set own sim imsi: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "sim_imsi"

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_4

    .line 1102
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {v5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1105
    :cond_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v11, 0x0

    if-nez v8, :cond_5

    .line 1106
    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    move-object v14, v1

    goto :goto_3

    :cond_5
    move-object v14, v11

    .line 1108
    :goto_3
    const-string v1, "created_by"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1109
    const-string v8, "invited_by"

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1111
    new-instance v17, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v7

    .line 1112
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v13

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v15

    .line 1113
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    goto :goto_4

    :cond_6
    move-object v1, v11

    :goto_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v8}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    move-object/from16 v16, v2

    goto :goto_5

    :cond_7
    move-object/from16 v16, v11

    :goto_5
    const-string v5, ""

    const/4 v12, 0x0

    move-object/from16 v2, v17

    move-object v8, v13

    move-object v11, v0

    move-object v13, v15

    move-object v15, v1

    invoke-direct/range {v2 .. v16}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;Lcom/sec/ims/util/ImsUri;)V

    return-object v17
.end method

.method private declared-synchronized createSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6

    monitor-enter p0

    .line 417
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipantSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 419
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 423
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 424
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load participants: size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", values()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v2

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v2, v3, :cond_3

    .line 429
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    .line 430
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 432
    :cond_1
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 433
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    goto :goto_2

    .line 435
    :cond_3
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    .line 436
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setContributionId(Ljava/lang/String;)V

    .line 439
    :cond_4
    :goto_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 440
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 442
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getChatRevokeTimer()I

    move-result v3

    if-lez v3, :cond_5

    .line 443
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;

    move-result-object v3

    .line 444
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 445
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 449
    :cond_5
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 451
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 452
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 453
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 454
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 456
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 457
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 458
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 459
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatData(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 460
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participants(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 461
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->needToRevokeMessages(Ljava/util/Map;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 462
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 463
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    monitor-exit p0

    return-object p1

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method private deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2520
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_0

    .line 2521
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    .line 2523
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2525
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget p1, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->mId:I

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V

    :cond_1
    return-void
.end method

.method private getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/im/ImCache;
    .locals 1

    .line 174
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache$SingletoneHolder;->INSTANCE:Lcom/sec/internal/ims/servicemodules/im/ImCache;

    return-object v0
.end method

.method private declared-synchronized getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2795
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v1, "getOrloadChatbotRoleUris()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2796
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2798
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2799
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatbotRoleUris(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2800
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2802
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V
    .locals 4

    .line 2346
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDeleteFtMessage: msgId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " direction:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " transferState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2346
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->removeAutoResumeFileTimer()V

    .line 2349
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2350
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;->CANCELED_BY_SYSTEM:Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->cancelTransfer(Lcom/sec/internal/constants/ims/servicemodules/im/reason/CancelReason;)V

    .line 2353
    :cond_0
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v2, :cond_1

    .line 2354
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteFile()Z

    move-result v0

    .line 2355
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->deleteThumbnail()Z

    move-result v2

    .line 2356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isDeleted:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isThumbnailDeleted:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static synthetic lambda$deleteAllMessages$1(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Z
    .locals 0

    .line 2547
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$deleteAllMessages$2(Ljava/util/HashSet;Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 2547
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$new$0(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 2

    .line 101
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 103
    :cond_0
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v0, :cond_1

    .line 104
    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 105
    :cond_1
    instance-of v0, p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    if-eqz v0, :cond_2

    .line 106
    check-cast p1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    check-cast p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    .line 108
    :cond_2
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown observable :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", data : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private declared-synchronized loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 3

    monitor-enter p0

    .line 1406
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v0

    .line 1407
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1408
    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 1409
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1410
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 1414
    :goto_1
    instance-of v0, p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v0, :cond_2

    .line 1415
    move-object v0, p1

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 1416
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1418
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 1419
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 1420
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 1423
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1424
    monitor-exit p0

    return-object p1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method private loadMessageListForRevoke(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesIdsForRevoke(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 505
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revoke messages count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 510
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 511
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 512
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 514
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 518
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 519
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 520
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v2

    .line 521
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 522
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 523
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private loadPendingMessages(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V
    .locals 6

    .line 467
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryPendingMessageIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 468
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pending messages count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 471
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 472
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 473
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 475
    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_1

    instance-of v3, v5, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_0

    goto :goto_1

    .line 478
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 476
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v4

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_0

    .line 481
    :cond_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 485
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryImImdnRecRoute(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Ljava/util/List;

    move-result-object v3

    .line 486
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setImdnRecRouteList(Ljava/util/List;)V

    .line 487
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    if-nez v3, :cond_5

    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    if-eqz v3, :cond_4

    goto :goto_3

    .line 490
    :cond_4
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    goto :goto_4

    .line 488
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->isFtHttpOverDefaultPdn()Z

    move-result v5

    invoke-virtual {v3, v5, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getNetwork(ZI)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setNetwork(Landroid/net/Network;)V

    .line 492
    :goto_4
    instance-of v3, v2, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v3, :cond_6

    .line 493
    move-object v3, v2

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    .line 494
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->isGroupChat()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setIsGroupChat(Z)V

    .line 495
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getContributionId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setContributionId(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->setConversationId(Ljava/lang/String;)V

    .line 498
    :cond_6
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 499
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method private registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    .line 2590
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2591
    sget-object p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, p0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerObserver(Ljava/util/Observable;)V
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private registerParticipant(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2663
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2664
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    goto :goto_0

    .line 2666
    :cond_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    .line 2562
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2563
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerObserver(Ljava/util/Observable;)V

    .line 2564
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->INSERTED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2565
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 3

    .line 2634
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {p1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2635
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2636
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2637
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private unregisterMessage(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2648
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2649
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2650
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2651
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2652
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterObserver(Ljava/util/Observable;)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mObserver:Ljava/util/Observer;

    invoke-virtual {p1, p0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    return-void
.end method

.method private unregisterParticipant(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    .line 2676
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2677
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 2678
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    .line 2576
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatData()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v0

    .line 2577
    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->DELETED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->triggerObservers(Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 2578
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2579
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    return-void
.end method

.method private updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 246
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 247
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 260
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 261
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateMessage(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 273
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 274
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;",
            ")V"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    .line 287
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;

    .line 288
    invoke-interface {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized addParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2307
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2308
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addToChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2774
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2775
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2774
    monitor-exit p0

    throw p1

    .line 2778
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2603
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->put(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    goto :goto_0

    .line 2605
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Message is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public cancelMessagesforCloudSync(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2376
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCancelRcsMessageList(ILjava/util/List;)V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public closeDB()V
    .locals 0

    .line 2809
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->closeDB()V

    return-void
.end method

.method public declared-synchronized cloudDeleteMessage(Ljava/lang/String;)I
    .locals 3

    monitor-enter p0

    .line 841
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloud delete message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 843
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 845
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz v1, :cond_0

    .line 846
    move-object v1, v0

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 848
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public cloudDeleteParticipant(Ljava/lang/String;)I
    .locals 3

    .line 926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 927
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 928
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 931
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 935
    :cond_1
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->deleteParticipant(Ljava/util/Collection;)V

    .line 936
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 937
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {p0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result p0

    return p0
.end method

.method public cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 831
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertMessage(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 873
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudInsertNotification(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudInsertParticipant(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 894
    const-string v0, "chat_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 895
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v1

    if-nez v1, :cond_0

    .line 897
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cloudInsertParticipant: failed. session is null."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 901
    :cond_0
    new-instance v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    const-string/jumbo v3, "uri"

    .line 902
    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;-><init>(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)V

    .line 903
    const-string/jumbo v0, "status"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 905
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 907
    :cond_1
    const-string/jumbo v0, "type"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 909
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setType(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;)V

    .line 912
    :cond_2
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 913
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 914
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Ljava/util/Collection;)V

    .line 915
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->addParticipant(Ljava/util/Collection;)V

    .line 916
    invoke-virtual {v2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result p0

    int-to-long v0, p0

    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public cloudMakeNewSystemUserMessage(Landroid/content/ContentValues;)V
    .locals 3

    .line 941
    const-string v0, "chat_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 944
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p1, "cloudMakeNewSystemUserMessage: failed. session is null."

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 947
    :cond_0
    const-string/jumbo v1, "participants"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 948
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 950
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    :cond_1
    return-void
.end method

.method public cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 862
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateMessage(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public cloudUpdateParticipant(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 4

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 963
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 964
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 967
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v3

    if-nez v3, :cond_1

    return v2

    .line 971
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    invoke-virtual {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getUri()Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipant(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v0

    if-nez v0, :cond_2

    return v2

    .line 975
    :cond_2
    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 977
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Status;)V

    .line 979
    :cond_3
    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 981
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->setType(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant$Type;)V

    .line 984
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onParticipantUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;)V

    .line 986
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateSession(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized cloudsearchAndInsertSession(Landroid/net/Uri;Landroid/content/ContentValues;[Landroid/content/ContentValues;)I
    .locals 11

    monitor-enter p0

    .line 998
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cloudsearchAndInsertSession: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    if-eqz p2, :cond_e

    if-nez p3, :cond_0

    goto/16 :goto_5

    .line 1008
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1009
    array-length v1, p3

    move v2, p1

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 1010
    const-string/jumbo v4, "uri"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_0
    move-exception p2

    goto/16 :goto_6

    .line 1012
    :cond_1
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudSessionTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object v1

    .line 1013
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v2

    .line 1014
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    const-string v4, "central_msg_store"

    invoke-interface {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;->boolSetting(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1015
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1017
    :cond_3
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v2

    .line 1018
    sget-object v3, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chatType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const-string v3, "conversation_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1020
    const-string/jumbo v4, "status"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1021
    const-string/jumbo v4, "status"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_4
    move v4, p1

    .line 1022
    :goto_1
    const-string v5, "inserted_time_stamp"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x0

    if-nez v5, :cond_5

    .line 1023
    const-string v5, "inserted_time_stamp"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_2

    :cond_5
    move-wide v8, v6

    .line 1025
    :goto_2
    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->REGULAR_GROUP_CHAT:Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    if-ne p2, v2, :cond_6

    .line 1026
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p2, v0, v3, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p2

    goto :goto_3

    .line 1028
    :cond_6
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatMode()Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-result-object v10

    invoke-virtual {p2, v0, v2, v5, v10}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p2

    :goto_3
    if-eqz p2, :cond_8

    if-eqz v3, :cond_7

    .line 1031
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getConversationId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 1032
    invoke-virtual {p2, v3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setConversationId(Ljava/lang/String;)V

    .line 1033
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->onSessionUpdated(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 1035
    :cond_7
    invoke-virtual {p2}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 1038
    :cond_8
    :try_start_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    array-length v0, p3

    move v2, p1

    :goto_4
    if-ge v2, v0, :cond_9

    aget-object v3, p3, v2

    .line 1040
    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->cloudParticipantTranslation(Landroid/content/ContentValues;)Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1042
    :cond_9
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertParticipant(Ljava/util/Collection;)V

    .line 1044
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;

    .line 1045
    invoke-virtual {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;->getId()I

    move-result p3
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-gtz p3, :cond_a

    .line 1059
    monitor-exit p0

    return p1

    :cond_b
    cmp-long p2, v8, v6

    if-lez p2, :cond_c

    .line 1053
    :try_start_3
    invoke-virtual {v1, v8, v9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setInsertedTimeStamp(J)V

    .line 1055
    :cond_c
    invoke-virtual {v1, v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->setState(I)V

    .line 1056
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->insertSession(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;)V

    .line 1057
    invoke-virtual {v1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getId()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return p1

    .line 1063
    :cond_d
    monitor-exit p0

    return p1

    .line 1005
    :cond_e
    :goto_5
    :try_start_4
    const-string p2, "cloudsearchAndInsertSession: no values inserted"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1006
    monitor-exit p0

    return p1

    .line 1070
    :goto_6
    :try_start_5
    invoke-virtual {p2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1071
    monitor-exit p0

    return p1

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method public cloudupdateNotification(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 884
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->cloudUpdateNotification(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public declared-synchronized deleteAllMessages(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    .line 2535
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2536
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllMessageIdsByChatId(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 2537
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllMessages ft message ids : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2539
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2541
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->handleDeleteFtMessage(Lcom/sec/internal/ims/servicemodules/im/FtMessage;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2545
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2546
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 2547
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache$$ExternalSyntheticLambda2;-><init>(Ljava/util/HashSet;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 2548
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2551
    :cond_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2552
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessage(I)V
    .locals 0

    monitor-enter p0

    .line 2504
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2505
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessages(Ljava/util/Map;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 2513
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2514
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    invoke-virtual {p0, v1, v0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->deleteMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2516
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteMessagesforCloudSyncUsingChatId(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2458
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingChatId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2461
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2465
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2466
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2467
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2468
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2470
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 2474
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2476
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2482
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2483
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;Ljava/lang/String;)V

    .line 2485
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 2486
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingChatId(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2488
    :cond_4
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public deleteMessagesforCloudSyncUsingImdnId(Ljava/util/Map;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2420
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingImdnId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2422
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2426
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2427
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->fromId(I)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {p0, v5, v4, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2429
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2430
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 2431
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2434
    :cond_1
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2440
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteMessagesforCloudSyncUsingImdnId: msgListSlot1.size = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " msgListSlot2.size = "

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2441
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 2440
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2444
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;Ljava/lang/String;)V

    .line 2446
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    .line 2447
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingImdnId(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public deleteMessagesforCloudSyncUsingMsgId(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2386
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMessagesforCloudSyncUsingMsgId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 2388
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2389
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2393
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2394
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getOwnIMSI()Ljava/lang/String;

    move-result-object v5

    .line 2395
    sget-object v6, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message imsi "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "getphoneid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v6, v5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 2397
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v5

    goto :goto_0

    .line 2400
    :cond_0
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v5

    goto :goto_0

    .line 2405
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_2

    .line 2406
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;Ljava/lang/String;)V

    .line 2408
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_3

    .line 2409
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onDeleteRcsMessagesUsingMsgId(Ljava/util/List;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public declared-synchronized deleteParticipant(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2316
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterParticipant(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2317
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 2

    monitor-enter p0

    .line 2334
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterMessage(Ljava/util/List;)V

    .line 2335
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->deleteParticipant(Ljava/util/Collection;)V

    .line 2336
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 2337
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2338
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getActiveSessions()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    .line 2704
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getAllImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 670
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 673
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    .line 677
    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllSessionByParticipant(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 678
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_1

    .line 683
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 684
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 686
    :cond_2
    monitor-exit p0

    return-object v1

    .line 679
    :cond_3
    :goto_1
    :try_start_1
    const-string p1, "getImSessionByParticipants: Couldn\'t load from db."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 680
    monitor-exit p0

    return-object v2

    .line 674
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllImSessions()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 731
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllPendingMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    .line 1262
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getConferenceTimestamp(Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    .line 2817
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2818
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatId(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    .line 2819
    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getInsertedTimeStamp()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 2821
    :cond_0
    monitor-exit p0

    const-wide/16 p0, -0x1

    return-wide p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getFtMessage(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 1304
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1305
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_0

    .line 1306
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFtMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 0

    .line 1321
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1322
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    if-eqz p1, :cond_0

    .line 1323
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized getFtMessageforFtRequest(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 4

    monitor-enter p0

    .line 699
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFtMessageforFtRequest chatid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " fileSize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " fileTransferId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-lez v2, :cond_4

    if-nez p5, :cond_0

    goto :goto_1

    .line 706
    :cond_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    if-eqz v2, :cond_1

    .line 708
    invoke-virtual {v2, p2, p3, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->findFtMessage(Ljava/lang/String;JLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    move-object p2, v1

    :goto_0
    if-nez p2, :cond_3

    .line 712
    const-string p2, "getFtMessageforFtRequest Couldn\'t find a FtMessage in ImSession."

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p2, p5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessageByFileTransferId(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 715
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 717
    :cond_2
    :try_start_1
    const-string p1, "getFtMessageforFtRequest Couldn\'t find a FtMessage by fileTransferId in db."

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    monitor-exit p0

    return-object v1

    .line 722
    :cond_3
    monitor-exit p0

    return-object p2

    .line 702
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v1

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public getFtMsrpMessage(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1339
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1340
    instance-of v2, v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v2, :cond_1

    .line 1341
    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    .line 1342
    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->getRawHandle()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getImMessage(I)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 0

    .line 1272
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1273
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_0

    .line 1274
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 0

    .line 1289
    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    .line 1290
    instance-of p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    if-eqz p1, :cond_0

    .line 1291
    check-cast p0, Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 549
    :cond_0
    monitor-enter p0

    .line 550
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 551
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized getImSessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 556
    monitor-exit p0

    return-object v0

    .line 559
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 560
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p3, :cond_1

    .line 561
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 565
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByContributionId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 567
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByContributionId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    monitor-exit p0

    return-object v0

    .line 571
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 4

    monitor-enter p0

    .line 584
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByConversationId cid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isGroupChat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 586
    monitor-exit p0

    return-object v0

    .line 589
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 590
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    if-ne v3, p3, :cond_1

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 591
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 595
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByConversationId(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 598
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByConversationId: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 599
    monitor-exit p0

    return-object v0

    .line 602
    :cond_3
    :try_start_3
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 621
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getImSessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 635
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImSessionByParticipants chatType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-static {p3}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 635
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 638
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_0

    .line 642
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 643
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v3

    .line 644
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "chat Type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " imsi="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatType()Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;

    move-result-object v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 646
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsUri()Ljava/util/Set;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 647
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 651
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByParticipants(Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;

    move-result-object p1

    if-nez p1, :cond_3

    .line 653
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string p2, "getImSessionByParticipants: Couldn\'t load from db."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 654
    monitor-exit p0

    return-object v0

    .line 657
    :cond_3
    :try_start_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImSession;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 639
    :cond_4
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getImSessionByRawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 3

    monitor-enter p0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 613
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->hasImSessionInfo(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 614
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 617
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1

    monitor-enter p0

    .line 1140
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1142
    monitor-exit p0

    return-object v0

    .line 1145
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1147
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1150
    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessage(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 2

    monitor-enter p0

    .line 1386
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1388
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    .line 1390
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 1392
    monitor-exit p0

    return-object v0

    .line 1395
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCachingMessages:Landroid/util/LruCache;

    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;

    invoke-direct {v1, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/data/MessageKey;-><init>(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1436
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForDisplayAggregation(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/Long;)Ljava/util/List;

    move-result-object p0

    .line 1437
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1438
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1439
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1441
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getMessageIdsForDisplayAggregation: list="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1160
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1165
    :try_start_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_0

    .line 1171
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1173
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1167
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 1176
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1177
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1178
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1182
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1226
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1227
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1229
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1231
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1233
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1236
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1237
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1238
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1239
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1242
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesForPendingNotificationByChatId(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1357
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageIdsForPendingNotification(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1358
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pending notifications count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1363
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1364
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1366
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1369
    :cond_1
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1370
    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1371
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1373
    :cond_2
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesUsingChatId(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1186
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 1191
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1192
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1193
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1194
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 1196
    :cond_1
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v3, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatIDExceptPending(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1198
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1199
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1200
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1204
    :cond_2
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v2, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessagesUsingChatID(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1206
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1207
    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->loadExtras(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 1208
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 1214
    :cond_3
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw p1
.end method

.method public getNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1470
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryNotificationStatus(Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getParticipants(Ljava/lang/String;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;"
        }
    .end annotation

    .line 1452
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImSession(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1454
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPendingMessage(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 0

    .line 1252
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p0

    return-object p0
.end method

.method public getPersister()Lcom/sec/internal/ims/servicemodules/im/ImPersister;
    .locals 0

    .line 2813
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    return-object p0
.end method

.method public hasFileTransferInprogress()Z
    .locals 2

    .line 2727
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->getAll()Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2728
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    .line 2729
    instance-of v1, v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    if-eqz v1, :cond_0

    .line 2730
    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMessage;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getStateId()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized hasProcessingFileTransfer()Z
    .locals 3

    monitor-enter p0

    .line 2744
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2745
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mProcessingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;->mPendingFileTransfer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 2746
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    .line 2749
    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public initializeLruCache(I)V
    .locals 1

    if-gtz p1, :cond_0

    const/16 p1, 0x64

    .line 187
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    const/16 v0, 0x1f4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->resize(I)V

    return-void
.end method

.method public declared-synchronized isChatbotRoleUri(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2788
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2789
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 2788
    monitor-exit p0

    throw p1

    .line 2791
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method public isEstablishedSessionExist()Z
    .locals 1

    .line 2713
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 2714
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isEstablishedState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    monitor-enter p0

    .line 400
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized load(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V
    .locals 3

    monitor-enter p0

    .line 296
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 297
    sget-object p1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "Alraedy loaded"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 301
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 302
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-direct {v0, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;-><init>(Landroid/content/Context;Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    .line 303
    new-instance v0, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-direct {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;-><init>(Lcom/sec/internal/ims/servicemodules/im/ImModule;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    const/4 p1, 0x1

    .line 304
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 305
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionByChatType(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionByChatType(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object p1

    .line 312
    sget-object p2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadImSessionByChatType loaded chat ids : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 313
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 314
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 315
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 318
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionForAutoRejoin(Z)V
    .locals 4

    monitor-enter p0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessionForAutoRejoin(Z)Ljava/util/List;

    move-result-object v0

    .line 327
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionForAutoRejoin isForAll : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", Autorejoin chat ids : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 333
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadImSessionWithFailedFTMessages()V
    .locals 4

    monitor-enter p0

    .line 360
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithFailedFTMessages()Ljava/util/List;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithFailedFTMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " failed message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 363
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 364
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 367
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadImSessionWithPendingMessages()V
    .locals 4

    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryAllChatIDwithPendingMessages()Ljava/util/List;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImSessionWithPendingMessages "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pending message(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v2, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 350
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadLastSentMessages(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryLastSentMessages(Ljava/util/List;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    .line 1631
    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->OFF:Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized makeNewEmptySession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 1636
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewEmptySession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ownImsi= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1637
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1636
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1644
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v1, v2, :cond_1

    .line 1645
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v1

    .line 1646
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    .line 1648
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    .line 1651
    :goto_0
    new-instance v3, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1652
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1653
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1654
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1655
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1656
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1657
    invoke-virtual {v4, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1658
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v4

    invoke-virtual {p5}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v5

    invoke-static {p2, p1, v4, v5}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v3

    .line 1659
    invoke-virtual {v3, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1660
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1661
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1662
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1663
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1664
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1665
    invoke-virtual {p1, v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1666
    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1667
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1668
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1670
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1671
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1673
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1675
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 4

    monitor-enter p0

    .line 2203
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2205
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2206
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2207
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2208
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2209
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2210
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2211
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2212
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2213
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2214
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2215
    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2216
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2217
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2218
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2219
    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2220
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2221
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2222
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2223
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2225
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v2, 0x0

    .line 2226
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2227
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2228
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2229
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2230
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2231
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2232
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2233
    invoke-virtual {p4, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2234
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2235
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2236
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2237
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractTtaExtendedRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2238
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2239
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2240
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2242
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2243
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2244
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;
    .locals 4

    monitor-enter p0

    .line 2257
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 2259
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2260
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2261
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2262
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2263
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2264
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2265
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2266
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2267
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 2268
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 2269
    invoke-virtual {v2, v0, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 2270
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 2271
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2272
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2273
    invoke-static {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2274
    invoke-static {v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v2, 0x1

    .line 2275
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 2276
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2277
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 2278
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2280
    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    const/4 v2, 0x0

    .line 2281
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 2282
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2283
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2284
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2285
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2286
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2287
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2288
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2289
    invoke-virtual {p1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2290
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2291
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractTtaExtendedRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2292
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2293
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;

    .line 2294
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpIncomingMessage;

    move-result-object p1

    .line 2296
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2297
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2298
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 6

    monitor-enter p0

    .line 1959
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1960
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1961
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 1964
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1966
    sget-object v2, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeNewIncomingFtMessage msgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1969
    iget-boolean v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsSlmSvcMsg:Z

    if-eqz v3, :cond_2

    .line 1970
    iget-boolean v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsLMM:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1974
    :cond_2
    :goto_1
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1975
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1976
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1977
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1978
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1979
    invoke-virtual {v4}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1980
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1981
    invoke-virtual {v4, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1982
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1983
    invoke-static {v1, v4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1984
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFilePath:Ljava/lang/String;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileName:Ljava/lang/String;

    .line 1985
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-wide v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileSize:J

    .line 1986
    invoke-virtual {v3, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mThumbPath:Ljava/lang/String;

    .line 1987
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1988
    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mTimeDuration:I

    .line 1989
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mSenderUri:Lcom/sec/ims/util/ImsUri;

    .line 1990
    invoke-virtual {v4, v1, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mUserAlias:Ljava/lang/String;

    .line 1991
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    .line 1992
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v3

    .line 1993
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1994
    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1995
    invoke-virtual {v3, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1996
    invoke-virtual {v0, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContentType:Ljava/lang/String;

    .line 1997
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1998
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p4, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 1999
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 2000
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mInReplyToConversationId:Ljava/lang/String;

    .line 2001
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnId:Ljava/lang/String;

    .line 2002
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 2003
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mDisposition:Ljava/util/Set;

    .line 2004
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mFileTransferId:Ljava/lang/String;

    .line 2005
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v0, 0x0

    .line 2006
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2007
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_3

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_3
    invoke-virtual {p4, v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRecRouteList:Ljava/util/List;

    .line 2008
    invoke-virtual {p4, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2009
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {p4, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2010
    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v1, v3, :cond_5

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    :cond_5
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mIsRoutingMsg:Z

    .line 2011
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 2012
    invoke-virtual {p4, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2013
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2014
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2015
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2016
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object p2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/FtIncomingSessionEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 2017
    invoke-static {p2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2018
    invoke-virtual {p1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2019
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object p1

    .line 2021
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2022
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2023
    monitor-exit p0

    return-object p1

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 3

    monitor-enter p0

    .line 1791
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1793
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1794
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1795
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1796
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1797
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1798
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1799
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1800
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1801
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1802
    invoke-virtual {v1, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1803
    invoke-virtual {v1, v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1804
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1805
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1806
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1807
    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1808
    invoke-static {v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1809
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1810
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1811
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p5, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1813
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    invoke-virtual {p5, v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1814
    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1815
    invoke-virtual {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v1

    invoke-virtual {p5, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1816
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1817
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1818
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1819
    invoke-virtual {p5, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1820
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p4

    check-cast p4, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1821
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getContributionId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mDeviceId:Ljava/lang/String;

    .line 1822
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->deviceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1823
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1824
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1825
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractTtaExtendedRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1826
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractTtaExtendedRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1827
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractTtaExtendedRcsReferenceValue(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1828
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractTtaExtendedRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1829
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1830
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1831
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1833
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1835
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1837
    monitor-exit p0

    return-object p2

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;Landroid/net/Network;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 4

    monitor-enter p0

    .line 1849
    :try_start_0
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    invoke-static {v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v0

    .line 1850
    iget-boolean v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsPublicAccountMsg:Z

    if-eqz v1, :cond_0

    .line 1851
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    .line 1853
    :cond_0
    :goto_0
    iget-object v1, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1854
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 1856
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v1

    .line 1858
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1859
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1860
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1861
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1862
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1863
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1864
    invoke-virtual {v3, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1865
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mBody:Ljava/lang/String;

    .line 1866
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1867
    invoke-virtual {v2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->suggestion(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mSender:Lcom/sec/ims/util/ImsUri;

    .line 1868
    invoke-virtual {v2, v1, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->normalizeUri(ILcom/sec/ims/util/ImsUri;)Lcom/sec/ims/util/ImsUri;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mUserAlias:Ljava/lang/String;

    .line 1869
    invoke-virtual {p5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnMessageId:Ljava/lang/String;

    .line 1870
    invoke-virtual {p5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mOriginalToHdr:Ljava/lang/String;

    .line 1871
    invoke-virtual {p5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnIdOriginalTo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1872
    invoke-static {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v2

    invoke-virtual {p5, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1873
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    const/4 v0, 0x1

    .line 1874
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContentType:Ljava/lang/String;

    .line 1875
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1876
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mDispositionNotification:Ljava/util/Set;

    .line 1877
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1878
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p5, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1879
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnTime:Ljava/util/Date;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_1
    invoke-virtual {p5, v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImdnRecRouteList:Ljava/util/List;

    .line 1880
    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnRecordRouteList(Ljava/util/List;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1881
    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v0

    invoke-virtual {p5, v0}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p5

    check-cast p5, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1882
    iget-object v0, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    invoke-static {v1, v0}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractImDirection(ILcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v0

    sget-object v1, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    if-ne v0, v1, :cond_3

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result p2

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    :goto_2
    invoke-virtual {p5, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-boolean p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsRoutingMsg:Z

    .line 1883
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isRoutingMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mRoutingType:Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;

    .line 1884
    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->routingType(Lcom/sec/internal/constants/ims/servicemodules/im/RoutingType;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p5, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mImExtensionMNOHeaders:Ljava/util/Map;

    .line 1885
    invoke-static {p5}, Lcom/sec/internal/helper/ImExtensionMNOHeadersHelper;->isVM2TextMsg(Ljava/util/Map;)Z

    move-result p5

    invoke-virtual {p2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isVM2TextMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1886
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mConversationId:Ljava/lang/String;

    .line 1887
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mContributionId:Ljava/lang/String;

    .line 1888
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1889
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1890
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractMaapTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1891
    iget-boolean p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mIsLMM:Z

    if-eqz p4, :cond_4

    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_LARGE_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    goto :goto_3

    :cond_4
    sget-object p4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->SLM_PAGER_MODE:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    :goto_3
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1892
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractTtaExtendedRcsTrafficType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p4, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1893
    invoke-static {p4}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceId(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p3, p3, Lcom/sec/internal/constants/ims/servicemodules/im/event/SlmIncomingMessageEvent;->mCpimNamespaces:Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;

    .line 1894
    invoke-static {p3}, Lcom/sec/internal/ims/servicemodules/im/util/ImCpimNamespacesHelper;->extractGsmaRcsReferenceType(Lcom/sec/internal/constants/ims/servicemodules/im/ImCpimNamespaces;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p2

    check-cast p2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1895
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p2

    .line 1897
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1899
    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result p4

    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getImdnId()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p1, p4, p5}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReceiveRcsMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1901
    monitor-exit p0

    return-object p2

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewIncomingSession(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    .line 1583
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeNewIncomingSession: chatType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " participants="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    iget-object v1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1587
    new-instance v1, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1588
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1589
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1590
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1591
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1592
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1593
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator()Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1594
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v3

    invoke-virtual {p4}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v4

    invoke-static {p2, v2, v3, v4}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v1

    .line 1595
    invoke-virtual {v1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1596
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1597
    invoke-virtual {p2, p4}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1598
    invoke-virtual {p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mOwnImsi:Ljava/lang/String;

    .line 1599
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    const-string p3, ""

    .line 1600
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSubject:Ljava/lang/String;

    .line 1601
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mContributionId:Ljava/lang/String;

    .line 1602
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mConversationId:Ljava/lang/String;

    .line 1603
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSdpContentType:Ljava/lang/String;

    .line 1604
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    sget-object p3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1605
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    .line 1606
    iget-boolean p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mIsDeferred:Z

    if-eqz p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mRawHandle:Ljava/lang/Object;

    :goto_0
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->rawHandle(Ljava/lang/Object;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mSessionType:Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;

    .line 1607
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionType(Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent$ImSessionType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p3, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mCreatedBy:Lcom/sec/ims/util/ImsUri;

    .line 1608
    invoke-virtual {p2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->createdBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p2

    iget-object p1, p1, Lcom/sec/internal/constants/ims/servicemodules/im/event/ImIncomingSessionEvent;->mInvitedBy:Lcom/sec/ims/util/ImsUri;

    .line 1609
    invoke-virtual {p2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->invitedBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1610
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object p1

    .line 1611
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object p1

    .line 1613
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1614
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1616
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p2, v0, p1}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1618
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewOutgoingFtHttpMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZLandroid/net/Network;ZZZLcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;ZLjava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/net/Network;",
            "ZZZ",
            "Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    monitor-enter p0

    .line 2142
    :try_start_0
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p4}, Lcom/sec/internal/helper/FileUtils;->getSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v4

    .line 2143
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v6

    if-nez p8, :cond_0

    .line 2146
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, p3, p4}, Lcom/sec/internal/helper/FileUtils;->getContentType(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    move-object/from16 v7, p8

    .line 2149
    :goto_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-result-object v8

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2150
    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2151
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2152
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v9

    invoke-interface {v9}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2153
    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2154
    invoke-virtual {v9}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2155
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2156
    invoke-virtual {v9, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2157
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2158
    invoke-virtual {v8, p4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2159
    invoke-virtual {v3, p3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2160
    invoke-virtual {v2, v4, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2161
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object v3, p5

    .line 2162
    invoke-virtual {v2, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    const/4 v4, 0x0

    .line 2163
    invoke-virtual {v3, v6, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2164
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2165
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2166
    invoke-static {v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    sget-object v3, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2167
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p6

    .line 2168
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2170
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2171
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p7

    .line 2172
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2173
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2174
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p14

    .line 2175
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setFileDisposition(Lcom/sec/internal/constants/ims/servicemodules/im/FileDisposition;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v3, p10

    .line 2176
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->network(Landroid/net/Network;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p9

    .line 2177
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->extraFt(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p12

    .line 2178
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v3, p13

    .line 2179
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2180
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move/from16 v2, p15

    .line 2181
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v2, p16

    .line 2182
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    move-object/from16 v2, p17

    .line 2183
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;

    .line 2184
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtHttpOutgoingMessage;

    move-result-object v0

    .line 2186
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    move/from16 v2, p11

    .line 2187
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setFtSms(Z)V

    .line 2188
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2189
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingFtMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Landroid/net/Uri;Lcom/sec/ims/util/ImsUri;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Lcom/sec/ims/util/ImsUri;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/FtMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    monitor-enter p0

    .line 2047
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getDirection()Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->INCOMING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    const/4 v7, 0x0

    if-ne v5, v6, :cond_0

    .line 2048
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getInReplyToContributionId()Ljava/lang/String;

    move-result-object v5

    .line 2049
    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    move-object/from16 v8, p2

    invoke-virtual {v8, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->setDirection(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    move-object/from16 v8, p2

    move-object v5, v7

    .line 2053
    :goto_0
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2054
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2056
    :cond_1
    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v6}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2, v3}, Lcom/sec/internal/helper/FileUtils;->copyFileToCacheFromUri(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 2058
    :goto_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2060
    iget-object v9, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v9, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v9

    if-nez v4, :cond_2

    .line 2063
    invoke-static {v6}, Lcom/sec/internal/helper/FileUtils;->getContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 2066
    :cond_2
    invoke-static {v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v10

    if-eqz p9, :cond_3

    .line 2069
    sget-object v10, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->MULTIMEDIA_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    .line 2072
    :cond_3
    sget-object v11, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "makeNewOutgoingFtMessage msgType: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-result-object v11

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2075
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2076
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2077
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v12

    invoke-interface {v12}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2078
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/FtMessageListener;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2079
    invoke-virtual {v12}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2080
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2081
    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getFtProcessor()Lcom/sec/internal/ims/servicemodules/im/FtProcessor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/internal/ims/servicemodules/im/FtProcessor;->getThumbnailTool()Lcom/sec/internal/ims/util/ThumbnailTool;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->thumbnailTool(Lcom/sec/internal/ims/util/ThumbnailTool;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v12, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2082
    invoke-virtual {v12, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2083
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v12, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 2084
    invoke-virtual {v11, v12}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v11

    check-cast v11, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2085
    invoke-virtual {v11, v2}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->filePath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2086
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->contentUri(Landroid/net/Uri;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2087
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileName(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2088
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-virtual {v2, v11, v12}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileSize(J)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2089
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->thumbnailPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    const/4 v3, 0x0

    .line 2090
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->timeDuration(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v6, p5

    .line 2091
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v6, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2092
    invoke-virtual {v6, v9, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2093
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2094
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isGroupChat(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 2095
    invoke-virtual {v2, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2096
    invoke-virtual {v2, v10}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2097
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2098
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2099
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getConversationId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2100
    invoke-virtual {v2, v5}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->inReplyToConversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v4, p6

    .line 2101
    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2102
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2103
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateFileTransferId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->fileTransferId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2104
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->setState(I)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2105
    invoke-virtual/range {p2 .. p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p7

    .line 2106
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p10

    .line 2107
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;->isResizable(Z)Lcom/sec/internal/ims/servicemodules/im/FtMessage$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move/from16 v3, p11

    .line 2108
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 2109
    invoke-virtual {v3, v9}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v3, p12

    .line 2110
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->extinfo(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2111
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 2112
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v2, p13

    .line 2113
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    move-object/from16 v2, p14

    .line 2114
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;

    .line 2115
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/FtMsrpMessage;

    move-result-object v0

    .line 2117
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 2118
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2119
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    monitor-enter p0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    .line 1696
    :try_start_0
    invoke-virtual/range {v1 .. v18}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingMessage(Ljava/lang/String;Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;ZZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImMessage;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    monitor-enter p0

    if-eqz p8, :cond_0

    .line 1728
    :try_start_0
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->TEXT_PUBLICACCOUNT:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    if-eqz p10, :cond_1

    .line 1730
    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;->LOCATION:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    goto :goto_0

    .line 1732
    :cond_1
    invoke-static {p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getType(Ljava/lang/String;)Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-eqz p11, :cond_2

    const/4 v4, 0x2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 1740
    :goto_1
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v5

    .line 1742
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1743
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1744
    invoke-virtual {v7}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v6

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1745
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1746
    invoke-virtual {v7, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1747
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1748
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1749
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1750
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->isGroupChat()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsString()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v7

    :goto_2
    invoke-virtual {v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->remoteUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v7, p3

    .line 1751
    invoke-virtual {v6, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v6

    check-cast v6, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1752
    invoke-virtual {v7, v5, v3}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUserAlias(IZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->userAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1753
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p4

    .line 1754
    invoke-virtual {v3, p4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->dispNotification(Ljava/util/Set;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v6, p5

    .line 1755
    invoke-virtual {v3, p5}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->contentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1756
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->TO_SEND:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1757
    invoke-virtual {v3, v6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1758
    invoke-virtual {v3, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1759
    invoke-virtual {p2}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipantsSize()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->notDisplayedCounter(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object v3, p6

    .line 1760
    invoke-virtual {v2, p6}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move v3, p7

    .line 1762
    invoke-virtual {v2, p7}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isSlmSvcMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move/from16 v3, p9

    .line 1763
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->isBroadcastMsg(Z)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v3, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1764
    invoke-virtual {v3, v5}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1765
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->simIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p12

    .line 1766
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->maapTrafficType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;->NORMAL:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;

    .line 1767
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->messagingTech(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$MessagingTech;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1768
    invoke-virtual {v0, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->flagMask(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p13

    .line 1769
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceImdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p14

    .line 1770
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p15

    .line 1771
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->referenceValue(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p16

    .line 1772
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-object/from16 v2, p17

    .line 1773
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->rcsReferenceType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1774
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object v0

    .line 1776
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V

    .line 1777
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->addToPendingList(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1778
    monitor-exit p0

    return-object v0

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    monitor-enter p0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 1499
    :try_start_0
    invoke-virtual/range {v1 .. v13}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized makeNewOutgoingSession(Ljava/lang/String;Ljava/util/Set;Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;Ljava/lang/String;Ljava/lang/String;Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSession;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/sec/ims/util/ImsUri;",
            ")",
            "Lcom/sec/internal/ims/servicemodules/im/ImSession;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    monitor-enter p0

    .line 1522
    :try_start_0
    sget-object v4, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makeNewOutgoingSession: chatType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " participants="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " imsi= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->numberChecker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1522
    invoke-static {v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    iget-object v4, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v4, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v4

    .line 1527
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1528
    iget-object v5, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v5, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/internal/ims/servicemodules/im/ImConfig;->getImMsgTech()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    move-result-object v5

    sget-object v6, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;->CPM:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$ImMsgTech;

    if-ne v5, v6, :cond_1

    .line 1529
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateConversationId()Ljava/lang/String;

    move-result-object v5

    .line 1530
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v5

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    .line 1532
    :cond_1
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateContributionId()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    move-object/from16 v5, p10

    goto :goto_0

    :cond_2
    move-object/from16 v5, p10

    move-object/from16 v6, p11

    .line 1536
    :goto_0
    iget-object v7, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v7, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getOwnPhoneNum(I)Ljava/lang/String;

    move-result-object v7

    .line 1537
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v8, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v7, v9}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object v8

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 1538
    :goto_1
    new-instance v9, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    invoke-direct {v9}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;-><init>()V

    .line 1539
    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v10}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->looper(Landroid/os/Looper;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1540
    invoke-virtual {v10}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImSessionProcessor()Lcom/sec/internal/ims/servicemodules/im/ImSessionProcessor;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImSessionListener;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1541
    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1542
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1543
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v10

    invoke-interface {v10}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1544
    invoke-virtual {v10, v4}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1545
    invoke-static {p3}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;->isGroupChat(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Z

    move-result v10

    invoke-virtual/range {p9 .. p9}, Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;->getId()I

    move-result v11

    invoke-static {p2, p1, v10, v11}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateChatId(Ljava/util/Set;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v9

    .line 1546
    invoke-virtual {v9, p2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->participantsUri(Ljava/util/Collection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1547
    invoke-virtual {v2, p3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatType(Lcom/sec/internal/constants/ims/servicemodules/im/ChatData$ChatType;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    move-object/from16 v3, p9

    .line 1548
    invoke-virtual {v2, v3}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->chatMode(Lcom/sec/internal/constants/ims/servicemodules/im/ChatMode;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1549
    invoke-virtual {v2, v7}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownPhoneNum(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v2

    .line 1550
    invoke-virtual {v2, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownSimIMSI(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    const-string v2, ""

    .line 1551
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->ownGroupAlias(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p4

    .line 1552
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->subject(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p8

    .line 1553
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->iconPath(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p5

    .line 1554
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sdpContentType(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move/from16 v2, p6

    .line 1555
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->threadId(I)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p7

    .line 1556
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->requestMessageId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1557
    invoke-virtual {v0, v6}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->contributionId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1558
    invoke-virtual {v0, v5}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->conversationId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    sget-object v2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->OUTGOING:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1559
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1560
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->getter(Lcom/sec/internal/ims/servicemodules/im/interfaces/IGetter;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    move-object/from16 v2, p12

    .line 1561
    invoke-virtual {v0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->sessionUri(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1562
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->createdBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1563
    invoke-virtual {v0, v8}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->invitedBy(Lcom/sec/ims/util/ImsUri;)Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;

    move-result-object v0

    .line 1564
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSessionBuilder;->build()Lcom/sec/internal/ims/servicemodules/im/ImSession;

    move-result-object v0

    .line 1566
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V

    .line 1567
    invoke-virtual {v0}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getParticipants()Ljava/util/Set;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerParticipant(Ljava/util/Collection;)V

    .line 1569
    iget-object v2, v1, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v2, v4, v0}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onCreateSession(ILcom/sec/internal/ims/servicemodules/im/ImSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1571
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1947
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized makeNewSystemUserMessage(Lcom/sec/internal/ims/servicemodules/im/ImSession;Ljava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;Ljava/util/Date;)Lcom/sec/internal/ims/servicemodules/im/ImMessage;
    .locals 3

    monitor-enter p0

    .line 1915
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getOwnImsi()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getPhoneIdByIMSI(Ljava/lang/String;)I

    move-result v0

    .line 1916
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/im/ImMessage;->builder()Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1917
    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->module(Lcom/sec/internal/ims/servicemodules/im/interfaces/IModuleInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1918
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getImHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imsService(Lcom/sec/internal/interfaces/ims/servicemodules/im/IImServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1919
    invoke-static {}, Lcom/sec/internal/ims/registry/ImsRegistry;->getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;->getSlmHandler()Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->slmService(Lcom/sec/internal/interfaces/ims/servicemodules/im/ISlmServiceInterface;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1920
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImProcessor()Lcom/sec/internal/ims/servicemodules/im/ImProcessor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->listener(Lcom/sec/internal/ims/servicemodules/im/listener/ImMessageListener;)Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1921
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getImConfig(I)Lcom/sec/internal/ims/servicemodules/im/ImConfig;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->config(Lcom/sec/internal/ims/servicemodules/im/ImConfig;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1922
    invoke-virtual {v2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->uriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1923
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getChatId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->chatId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1924
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->body(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1925
    invoke-static {}, Lcom/sec/internal/ims/util/StringIdGenerator;->generateImdn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->imdnId(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;->IRRELEVANT:Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;

    .line 1926
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->direction(Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    sget-object p2, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->UNREAD:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    .line 1927
    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->status(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1928
    invoke-virtual {p1, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->type(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Type;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1929
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->insertedTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    if-nez p4, :cond_0

    .line 1930
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-virtual {p4}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->sentTimestamp(J)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    .line 1931
    invoke-virtual {p2, v0}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getRcsStrategy(I)Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;->mnoStrategy(Lcom/sec/internal/ims/servicemodules/im/strategy/IMnoStrategy;)Lcom/sec/internal/ims/servicemodules/im/MessageBase$Builder;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;

    .line 1932
    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImMessage$Builder;->build()Lcom/sec/internal/ims/servicemodules/im/ImMessage;

    move-result-object p1

    .line 1934
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->registerMessage(Lcom/sec/internal/ims/servicemodules/im/MessageBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1935
    monitor-exit p0

    return-object p1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized notifyCloudMsgFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    .locals 1

    monitor-enter p0

    .line 2495
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->notifyFtEvent(Ljava/lang/String;ILjava/lang/String;Lcom/sec/internal/constants/ims/servicemodules/im/ImDirection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2496
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryChatMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 794
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryFtMessagesForTapi([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized queryMessageForOpenApi(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;
    .locals 1

    monitor-enter p0

    .line 1480
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessage(Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 820
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessageNotification([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 768
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryMessages([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->queryParticipants([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 744
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->querySessions([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public readMessagesforCloudSync(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2367
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onReadRcsMessageList(ILjava/util/List;)V

    return-void
.end method

.method public removeActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 0

    .line 2695
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized removeFromChatbotRoleUris(Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2781
    :try_start_0
    iget-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mIsLoaded:Z

    if-eqz v0, :cond_0

    .line 2782
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeFromChatbotRoleUris: uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mChatbotRoleUris:Ljava/util/Map;

    invoke-static {v2}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-direct {p0, p2}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->getOrLoadChatbotRoleUris(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2781
    monitor-exit p0

    throw p1

    .line 2785
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public removeFromPendingList(I)V
    .locals 2

    .line 2616
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->get(I)Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2618
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->unregisterObserver(Ljava/util/Observable;)V

    .line 2619
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPendingMessages:Lcom/sec/internal/ims/servicemodules/im/MessageMap;

    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/im/MessageMap;->remove(I)V

    .line 2620
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removed message from cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2622
    :cond_0
    sget-object p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message is not in the cache:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeImCacheActionListener(Lcom/sec/internal/ims/servicemodules/im/listener/IImCacheActionListener;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mListener:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized sentMessageForCloudSync(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 2491
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mCmStoreInvoker:Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/internal/ims/servicemodules/im/CmStoreInvoker;->onSentMessage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2492
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateActiveSession(Lcom/sec/internal/ims/servicemodules/im/ImSession;)V
    .locals 1

    .line 2688
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mActiveSessions:Landroid/util/LruCache;

    invoke-virtual {p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateDesiredNotificationStatusAsDisplay(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/im/MessageBase;",
            ">;)V"
        }
    .end annotation

    .line 2758
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2759
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2760
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/internal/ims/servicemodules/im/MessageBase;

    if-eqz v3, :cond_0

    .line 2762
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDesiredNotificationStatus(Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;)V

    .line 2763
    invoke-virtual {v3, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setDisplayedTimestamp(J)V

    .line 2764
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getStatus()Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    move-result-object v4

    sget-object v5, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->FAILED:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    if-eq v4, v5, :cond_1

    .line 2765
    sget-object v4, Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;->READ:Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;

    invoke-virtual {v3, v4}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->setStatus(Lcom/sec/internal/constants/ims/servicemodules/im/ImConstants$Status;)V

    .line 2767
    :cond_1
    invoke-virtual {v3}, Lcom/sec/internal/ims/servicemodules/im/MessageBase;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2770
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mPersister:Lcom/sec/internal/ims/servicemodules/im/ImPersister;

    sget-object p1, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->DISPLAYED:Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;

    invoke-virtual {p1}, Lcom/sec/internal/constants/ims/servicemodules/im/NotificationStatus;->getId()I

    move-result p1

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/sec/internal/ims/servicemodules/im/ImPersister;->updateDesiredNotificationStatusAsDisplayed(Ljava/util/Collection;IJ)V

    return-void
.end method

.method public declared-synchronized updateParticipant(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/internal/constants/ims/servicemodules/im/ImParticipant;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 2325
    :try_start_0
    sget-object v0, Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;->UPDATED:Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;

    invoke-direct {p0, p1, v0}, Lcom/sec/internal/ims/servicemodules/im/ImCache;->updateParticipant(Ljava/util/Collection;Lcom/sec/internal/constants/ims/servicemodules/im/ImCacheAction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2326
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateUriGenerator(I)V
    .locals 2

    monitor-enter p0

    .line 373
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUriGenerator"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImModule:Lcom/sec/internal/ims/servicemodules/im/ImModule;

    invoke-virtual {v0, p1}, Lcom/sec/internal/ims/servicemodules/im/ImModule;->getUriGenerator(I)Lcom/sec/internal/ims/util/UriGenerator;

    move-result-object p1

    .line 375
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/im/ImCache;->mImSessions:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/im/ImSession;

    .line 376
    invoke-virtual {v1, p1}, Lcom/sec/internal/ims/servicemodules/im/ImSession;->updateUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 378
    :cond_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method
