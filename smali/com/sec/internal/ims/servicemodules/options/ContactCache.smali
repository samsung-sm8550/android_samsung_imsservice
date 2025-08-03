.class public final Lcom/sec/internal/ims/servicemodules/options/ContactCache;
.super Ljava/lang/Object;
.source "ContactCache.java"


# static fields
.field private static final DELAY_REFRESH_COUNT:I = 0x12c

.field private static final DELAY_REFRESH_TIME:I = 0x12c

.field private static final LOG_TAG:Ljava/lang/String; = "ContactCache"

.field private static final MAX_COUNT:I = 0x3e8


# instance fields
.field protected mBackgroundHandler:Landroid/os/Handler;

.field private final mCapabilitiesCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;"
        }
    .end annotation
.end field

.field protected mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

.field protected mContactCurCount:I

.field protected final mContactList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/Contact;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field protected mCountryCode:Ljava/lang/String;

.field private mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

.field protected mIsBlockedContactChange:Z

.field protected mIsBlockedInitialContactSyncBeforeRegi:Z

.field private mIsContactUpdated:Z

.field protected mIsLimiting:Z

.field protected mIsThrottle:Z

.field protected mLastRawId:Ljava/lang/String;

.field private mLastRefreshTimeInMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMno:Lcom/sec/internal/constants/Mno;

.field protected mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

.field private mPrevRefreshTimeInMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedNumbers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mStartIndex:I

.field final mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$BMXR8nqc_7KieLQ1NxQMJ3Md2fM(Lcom/sec/internal/ims/servicemodules/options/ContactCache;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$startContactSync$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Dximtz3u0qJN_CVFBExKYdLwfkM(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$startContactSync$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$N4bebO6zP5vE6iOGrQia6oszlSM(Lcom/sec/internal/ims/servicemodules/options/ContactCache;ZI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->lambda$setThrottleContactSync$0(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    .line 70
    sget-object v0, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 72
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 77
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    .line 78
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    .line 80
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 83
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    .line 84
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    .line 88
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 89
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    .line 90
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    .line 91
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    .line 93
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 99
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 101
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 105
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/sec/internal/helper/SimpleEventLog;

    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-direct {v0, p1, v1, v2}, Lcom/sec/internal/helper/SimpleEventLog;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    .line 108
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "ContactCacheHandler"

    const/16 v1, 0xa

    invoke-direct {p1, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 109
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    .line 112
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 114
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpContactList()V
    .locals 6

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/Contact;

    add-int/lit8 v1, v1, 0x1

    const/16 v3, 0x28

    if-le v1, v3, :cond_1

    goto :goto_1

    .line 440
    :cond_1
    const-string v3, "ContactId ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    RawId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getRawId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "    Name: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->getContactNumberList()Ljava/util/ArrayList;

    move-result-object v2

    .line 444
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    .line 445
    const-string v5, "    Number: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "    E164: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;->getNormalizedNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 448
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 0
    return-object p1
.end method

.method private isAllowedContactSync(I)Z
    .locals 4

    .line 675
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/sec/internal/ims/rcs/util/RcsUtils$UiUtils;->isRcsEnabledinSettings(Landroid/content/Context;I)Z

    move-result v0

    .line 676
    const-string/jumbo v1, "rcs_contact_sync_in_switch_off"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result v1

    .line 678
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {p0, v3, p1}, Lcom/sec/internal/constants/ims/ImsConstants$SystemSettings;->getRcsUserSetting(Landroid/content/Context;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    move p0, v2

    goto :goto_0

    :cond_0
    move p0, v3

    :goto_0
    if-nez v0, :cond_1

    .line 682
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: rcs is off in customer."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    :cond_1
    if-nez p0, :cond_2

    if-nez v1, :cond_2

    .line 685
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: CONTACT_SYNC_IN_SWITCH_OFF is false."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 687
    :cond_2
    invoke-static {p1}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/internal/constants/Mno;->isChn()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 688
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: Chn always false."

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v3

    .line 692
    :cond_3
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "isAllowedContactSync: contact sync is allowed"

    invoke-static {p0, p1, v0}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    return v2
.end method

.method private synthetic lambda$setThrottleContactSync$0(ZI)V
    .locals 3

    .line 460
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setThrottleContactSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-eq v1, p1, :cond_3

    .line 462
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-nez p1, :cond_3

    .line 463
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz p1, :cond_3

    .line 464
    :cond_0
    iget-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz p1, :cond_2

    .line 465
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 466
    invoke-virtual {p0, p2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processChangeDuringLimiting(I)V

    .line 468
    :cond_1
    iget p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    add-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 469
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setThrottleContactSync : Limiting, mStartIndex = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_2
    const-string/jumbo p1, "setThrottleContactSync : try to resync"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    .line 473
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_3
    return-void
.end method

.method private synthetic lambda$startContactSync$1(I)V
    .locals 1

    .line 816
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    const-string v0, "Explicit GC after sync"

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 817
    invoke-static {}, Lcom/sec/internal/helper/os/SystemWrapper;->explicitGc()V

    return-void
.end method

.method private synthetic lambda$startContactSync$2()V
    .locals 6

    .line 776
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 777
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    sget-object v2, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-ne v0, v2, :cond_0

    .line 778
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "startContactSync: operator is unknown. bail"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 782
    :cond_0
    invoke-virtual {v0}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    .line 785
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 786
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "startContactSync: start caching contacts."

    invoke-static {v2, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 788
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->refresh(I)Z

    move-result v3

    .line 790
    iget v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    .line 791
    iput-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 792
    invoke-virtual {p0, v4, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setThrottleContactSync(ZI)V

    goto :goto_0

    .line 794
    :cond_2
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    .line 795
    iput v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    .line 798
    :goto_0
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 800
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 801
    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 802
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->sendMessageContactSync()V

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    .line 807
    const-string/jumbo v1, "startContactSync: removed, check removed contacts."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 808
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    move-result v3

    goto :goto_1

    .line 809
    :cond_4
    iget-boolean v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    if-eqz v4, :cond_5

    .line 810
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 811
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    .line 814
    :cond_5
    :goto_1
    invoke-static {}, Lcom/sec/internal/helper/os/BuildProxy;->isShipBuild()Z

    move-result v1

    if-nez v1, :cond_6

    .line 815
    new-instance v1, Ljava/lang/Thread;

    new-instance v4, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda0;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;I)V

    invoke-direct {v1, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 818
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 823
    const-string/jumbo v1, "startContactSync: Done. contact updated."

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 824
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 825
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;->onChanged()V

    goto :goto_3

    .line 828
    :cond_7
    const-string/jumbo p0, "startContactSync: Done. contact no found."

    invoke-static {v2, v0, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method private refresh(I)Z
    .locals 13

    .line 309
    const-string/jumbo v0, "refresh: found "

    .line 310
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 312
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refresh: cc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 321
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setProjection()[Ljava/lang/String;

    move-result-object v6

    .line 322
    const-string v7, "contact_last_updated_timestamp > ?"

    .line 323
    iget-boolean v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    goto :goto_0

    :goto_1
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "raw_contact_id LIMIT "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x3e8

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 327
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 328
    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "refresh: mStartIndex "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, p1, v10}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ",REFR:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mStartIndex:I

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v10, 0x12060000

    invoke-static {v10, v3}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 331
    :try_start_0
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_2

    .line 333
    :try_start_1
    const-string/jumbo p0, "refresh: no contact found"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_1

    .line 421
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    :goto_2
    return v3

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 336
    :cond_2
    :try_start_3
    iget-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsLimiting:Z

    if-nez v5, :cond_3

    .line 337
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh: set mPrevRefreshTimeInMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 340
    :cond_3
    iget-object v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    iput v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    .line 342
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " contacts. mLastRefreshTimeInMs = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 342
    invoke-static {v2, p1, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " contacts."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/sec/internal/helper/SimpleEventLog;->add(ILjava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",REFR:FOUND:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x12060001

    invoke-static {v2, v0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 349
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_c

    move v0, v3

    .line 351
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_b

    add-int/2addr v0, v5

    .line 352
    rem-int/lit16 v2, v0, 0x12c
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v2, :cond_4

    const-wide/16 v6, 0x12c

    .line 356
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 362
    :catch_1
    :cond_4
    :try_start_5
    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 363
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    .line 364
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x3

    .line 365
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    .line 366
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 372
    :try_start_6
    iget-object v10, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    if-eqz v10, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iget-object v11, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-gt v10, v11, :cond_5

    .line 374
    sget-object v10, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "refresh: ContactUpdated, rawId ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, p1, v11}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 375
    iput-boolean v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsContactUpdated:Z

    .line 378
    :cond_5
    iget v5, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCurCount:I

    if-ne v0, v5, :cond_6

    .line 379
    iput-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    .line 382
    :cond_6
    invoke-virtual {p0, v8, v9}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    goto :goto_3

    .line 387
    :cond_7
    invoke-virtual {p0, v5, v9}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 389
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/options/Contact;

    if-nez v9, :cond_8

    .line 396
    iget-object v9, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/internal/ims/servicemodules/options/Contact;

    :cond_8
    if-nez v9, :cond_9

    .line 401
    new-instance v9, Lcom/sec/internal/ims/servicemodules/options/Contact;

    invoke-direct {v9, v2, v6}, Lcom/sec/internal/ims/servicemodules/options/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_9
    invoke-virtual {v9, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setId(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v9, v7}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setName(Ljava/lang/String;)V

    .line 407
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    if-nez v8, :cond_a

    const/4 v7, 0x0

    goto :goto_4

    .line 408
    :cond_a
    const-string v7, "[- ()]"

    const-string v10, ""

    invoke-virtual {v8, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-direct {v2, v5, v7}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    invoke-virtual {v9, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->insertContactNumberIntoList(Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;)V

    .line 411
    invoke-interface {v1, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 368
    :catch_2
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Exception in cur.getString"

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 413
    :cond_b
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "refresh: mLastRawId = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(ILjava/lang/String;)V

    goto :goto_5

    :cond_c
    move v5, v3

    .line 416
    :goto_5
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 417
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 419
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->dumpContactList()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 421
    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_0

    return v5

    :goto_6
    if-eqz v4, :cond_d

    .line 331
    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_d
    :goto_7
    throw p0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0

    .line 422
    :goto_8
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh: Can not refresh : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",REFR:ER"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const p1, 0x12060002

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    return v3
.end method

.method private setProjection()[Ljava/lang/String;
    .locals 4

    .line 295
    const-string p0, "data1"

    const-string v0, "data4"

    const-string v1, "contact_id"

    const-string/jumbo v2, "raw_contact_id"

    const-string v3, "display_name"

    filled-new-array {v1, v2, v3, p0, v0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 273
    const-string v0, "mx"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 254
    :cond_0
    const-string v1, "*67"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*82"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    :cond_1
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "parsing for special character"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 259
    :cond_2
    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "N"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 263
    const-string p2, "mx"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 264
    :cond_4
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/internal/helper/UriUtil;->isValidNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    return-object p1

    :cond_6
    :goto_0
    return-object v0
.end method

.method public dump()V
    .locals 3

    .line 877
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->dump(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->increaseIndent(Ljava/lang/String;)V

    .line 879
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    invoke-virtual {p0}, Lcom/sec/internal/helper/SimpleEventLog;->dump()V

    .line 880
    invoke-static {v0}, Lcom/sec/internal/log/IMSLog;->decreaseIndent(Ljava/lang/String;)V

    return-void
.end method

.method getAllNumber()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 232
    :goto_0
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCapabilitiesCacheList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;

    invoke-virtual {v2}, Lcom/sec/internal/ims/servicemodules/options/CapabilitiesCache;->getCapabilitiesNumberWithContactId()Ljava/util/List;

    move-result-object v2

    .line 234
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 235
    invoke-interface {v0, v3, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getAllNumbersInContactDB()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 589
    const-string v1, "data1"

    const-string v3, "data4"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 595
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 596
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    .line 598
    :try_start_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getAllNumbersInContactDB: no contact found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 631
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 601
    :cond_1
    :try_start_3
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAllNumbersInContactDB: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " contacts."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    move v4, v3

    .line 606
    :cond_2
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 607
    rem-int/lit16 v6, v4, 0x12c
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v6, :cond_3

    const-wide/16 v6, 0x12c

    .line 611
    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 616
    :catch_1
    :cond_3
    :try_start_5
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 617
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    goto :goto_1

    .line 624
    :cond_4
    invoke-virtual {p0, v6, v5}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 626
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 631
    :cond_5
    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    return-object v0

    :goto_2
    if-eqz v2, :cond_6

    .line 596
    :try_start_7
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_8
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw p0
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_0

    .line 632
    :goto_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAllNumbersInContactDB: Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getAndFlushRemovedNumbers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 245
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getBlockedInitialContactSyncBeforeRegi()Z
    .locals 0

    .line 705
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    return p0
.end method

.method public getContactProviderStatus()I
    .locals 6

    .line 850
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 853
    sget-object p0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "provider_status"

    invoke-static {p0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, -0x1

    .line 854
    :try_start_0
    const-string/jumbo v2, "status"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 856
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 857
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 854
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 860
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 861
    :goto_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContactProviderStatus: Exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :cond_1
    :goto_3
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getContactProviderStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getContacts()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/servicemodules/options/Contact;",
            ">;"
        }
    .end annotation

    .line 224
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 225
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-object v0
.end method

.method public getIsBlockedContactChange()Z
    .locals 0

    .line 697
    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    return p0
.end method

.method public getLastRefreshTime(I)J
    .locals 3

    .line 175
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLastRefreshTime: mLastRefreshTimeInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method public getNumberlistByContactId(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 182
    const-string v1, "data1"

    const-string v3, "data4"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v4

    .line 188
    const-string v5, "contact_id = ?"

    .line 189
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    .line 191
    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    const/4 v7, 0x0

    const/4 p1, 0x0

    .line 192
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 194
    :try_start_1
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "getNumberlistByContactId: no contact found"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    .line 217
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    return-object p1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 197
    :cond_1
    :try_start_3
    sget-object v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNumberlistByContactId: found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " contacts."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_4

    .line 201
    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 202
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 203
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 210
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 217
    :cond_4
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v0

    :goto_2
    if-eqz v1, :cond_5

    .line 192
    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    throw p0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    .line 218
    :goto_4
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumberlistByContactId: Exception "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method isAllowedContactSync()Z
    .locals 4

    .line 656
    invoke-static {}, Lcom/sec/internal/ims/rcs/util/RcsUtils$DualRcs;->isDualRcsSettings()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    .line 657
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 658
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync(I)Z

    move-result v3

    if-eqz v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    :cond_1
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method isAllowedInitialContactSyncBeforeRegi(I)Z
    .locals 1

    .line 671
    const-string/jumbo p0, "rcs_initial_contact_sync_before_regi"

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lcom/sec/internal/ims/registry/ImsRegistry;->getBoolean(ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isReady(I)Z
    .locals 2

    .line 166
    invoke-virtual {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getLastRefreshTime(I)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 281
    const-string v0, "[- ()]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 283
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    if-eqz v0, :cond_0

    const-string v0, "US"

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/util/UriGenerator;->getNormalizedUri(Ljava/lang/String;Z)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/sec/internal/helper/UriUtil;->parseNumber(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object p0

    if-nez p0, :cond_1

    .line 288
    sget-object p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string v0, "normalize: invalid number."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 291
    :cond_1
    invoke-static {p0}, Lcom/sec/internal/helper/UriUtil;->getMsisdnNumber(Lcom/sec/ims/util/ImsUri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method onStartContactSync()V
    .locals 3

    .line 759
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onStartContactSync : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    if-nez v1, :cond_0

    .line 761
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mSyncInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 762
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->startContactSync(Lcom/sec/internal/constants/Mno;)V

    goto :goto_0

    .line 764
    :cond_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mResyncRequired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 765
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onStartContactSync : Sync In Progress. Sync will start later, mIsThrottle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method processChangeDuringLimiting(I)V
    .locals 10

    .line 480
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processChangeDuringLimiting: Start."

    invoke-static {v0, p1, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 483
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 490
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->setProjection()[Ljava/lang/String;

    move-result-object v4

    .line 491
    const-string v5, "contact_last_updated_timestamp > ?"

    .line 492
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v6

    .line 493
    const-string/jumbo v7, "raw_contact_id"

    .line 495
    sget-object p1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getRemoteUriwithUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    .line 497
    :try_start_0
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    .line 499
    :try_start_1
    const-string/jumbo p0, "processChangeDuringLimiting: no contact found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 501
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 503
    const-string/jumbo v1, "processChangeDuringLimiting: found 0, removed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->processRemovedContact()Z

    goto/16 :goto_5

    .line 506
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processChangeDuringLimiting: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 508
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    .line 509
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 511
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-le v5, v6, :cond_2

    .line 513
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "processChangeDuringLimiting: rawId > mLastRawId, rawId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mLastRawId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRawId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 519
    :cond_2
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    .line 520
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 521
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    .line 522
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 524
    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->checkNumberAndE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 529
    :cond_3
    invoke-virtual {p0, v6, v7}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->changeE164ByNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 531
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/internal/ims/servicemodules/options/Contact;

    if-nez v8, :cond_4

    .line 533
    new-instance v8, Lcom/sec/internal/ims/servicemodules/options/Contact;

    invoke-direct {v8, v2, v4}, Lcom/sec/internal/ims/servicemodules/options/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    :cond_4
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setId(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v8, v5}, Lcom/sec/internal/ims/servicemodules/options/Contact;->setName(Ljava/lang/String;)V

    .line 538
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;

    if-nez v7, :cond_5

    const/4 v5, 0x0

    goto :goto_1

    .line 539
    :cond_5
    const-string v5, "[- ()]"

    const-string v9, ""

    invoke-virtual {v7, v5, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {v2, v6, v5}, Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {v8, v2}, Lcom/sec/internal/ims/servicemodules/options/Contact;->insertContactNumberIntoList(Lcom/sec/internal/ims/servicemodules/options/Contact$ContactNumber;)V

    .line 542
    invoke-interface {v0, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    move v2, v3

    goto/16 :goto_0

    :cond_6
    :goto_3
    if-eqz v2, :cond_7

    .line 546
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 547
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processChangeDuringLimiting: Done. contact updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;

    .line 549
    invoke-interface {v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;->onChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_7
    :goto_5
    if-eqz p1, :cond_9

    .line 554
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    goto :goto_8

    :goto_6
    if-eqz p1, :cond_8

    .line 497
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8
    :goto_7
    throw p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 555
    :goto_8
    sget-object p1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processChangeDuringLimiting: Exception "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_9
    return-void
.end method

.method processRemovedContact()Z
    .locals 5

    .line 560
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "processRemovedContact: Start."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAllNumber()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 565
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->getAllNumbersInContactDB()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 571
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    .line 574
    :cond_1
    const-string/jumbo v4, "processRemovedContact: start remove"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 576
    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 572
    :cond_2
    :goto_1
    const-string/jumbo v3, "processRemovedContact: No numbers in Contact DB"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_3
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mEventLog:Lcom/sec/internal/helper/SimpleEventLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processRemovedContact: Done. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " numbers removed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/internal/helper/SimpleEventLog;->logAndAdd(Ljava/lang/String;)V

    .line 581
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 583
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    .line 566
    :cond_5
    :goto_2
    const-string/jumbo p0, "processRemovedContact: No cached numbers. return"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public registerListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetRefreshTime(I)V
    .locals 4

    .line 844
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sendMessageContactSync()V
    .locals 7

    .line 709
    invoke-virtual {p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedContactSync()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 710
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageContactSync: block the contact sync."

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    goto :goto_0

    .line 713
    :cond_0
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 715
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getActiveDataPhoneId()I

    move-result v0

    .line 716
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->isAllowedInitialContactSyncBeforeRegi(I)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    .line 717
    sget-object v3, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "sendMessageContactSync: block the initial contact sync before regi."

    invoke-static {v3, v0, v4}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 718
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    goto :goto_1

    .line 720
    :cond_1
    iput-boolean v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 722
    :goto_1
    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 726
    :cond_2
    sget-object v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "sendMessageContactSync: Try contact sync after 3 sec."

    invoke-static {v1, v0, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 727
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactCacheHandler:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactCacheHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setIsBlockedContactChange(Z)V
    .locals 0

    .line 701
    iput-boolean p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    return-void
.end method

.method public setLastRefreshTime(JI)V
    .locals 3

    .line 170
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLastRefreshTime: mLastRefreshTimeInMs is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p3, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 171
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setMno(Lcom/sec/internal/constants/Mno;)V
    .locals 3

    .line 834
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMno: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 837
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    if-eq p1, v1, :cond_0

    .line 838
    invoke-virtual {p1}, Lcom/sec/internal/constants/Mno;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    .line 839
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMno: mCountryCode = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setThrottleContactSync(ZI)V
    .locals 2

    .line 456
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance v1, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda1;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUriGenerator(Lcom/sec/internal/ims/util/UriGenerator;)V
    .locals 0

    .line 452
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUriGenerator:Lcom/sec/internal/ims/util/UriGenerator;

    return-void
.end method

.method public start()V
    .locals 5

    .line 129
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "start:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 130
    iput-boolean v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsThrottle:Z

    .line 131
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "BackgroundHandler"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 132
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 133
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    .line 135
    iget-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v2, p0, v3}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start: Contact observer for userId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Lcom/sec/ims/extensions/Extensions$ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    iget p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mUserId:I

    invoke-static {v0, v2, v1, v3, p0}, Lcom/sec/ims/extensions/Extensions$ContentResolver;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 143
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method startContactSync(Lcom/sec/internal/constants/Mno;)V
    .locals 3

    .line 770
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startContactSync: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iput-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mMno:Lcom/sec/internal/constants/Mno;

    .line 772
    iget-object p1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mBackgroundHandler:Landroid/os/Handler;

    if-nez p1, :cond_0

    return-void

    .line 775
    :cond_0
    new-instance v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/servicemodules/options/ContactCache$$ExternalSyntheticLambda2;-><init>(Lcom/sec/internal/ims/servicemodules/options/ContactCache;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 6

    .line 149
    sget-object v0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mObserver:Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactObserver;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mContactList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 156
    iget-object v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mRemovedNumbers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedContactChange:Z

    .line 158
    iput-boolean v0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mIsBlockedInitialContactSyncBeforeRegi:Z

    .line 159
    :goto_0
    invoke-static {}, Lcom/sec/internal/helper/SimUtil;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mLastRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mPrevRefreshTimeInMs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public unregisterListener(Lcom/sec/internal/ims/servicemodules/options/ContactCache$ContactEventListener;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/options/ContactCache;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
