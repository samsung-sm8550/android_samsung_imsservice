.class public Lcom/sec/internal/ims/servicemodules/csh/CshCache;
.super Ljava/lang/Object;
.source "CshCache.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "CshCache"

.field private static imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

.field private static imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

.field private static sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;


# instance fields
.field private final mSessions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;
    .locals 1

    .line 51
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    invoke-direct {v0}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    .line 54
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->sInstance:Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    return-object v0
.end method

.method public static getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;
    .locals 1

    .line 37
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    if-nez v0, :cond_0

    .line 38
    sput-object p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    .line 40
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;)Lcom/sec/internal/ims/servicemodules/csh/CshCache;
    .locals 1

    .line 44
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    if-nez v0, :cond_0

    .line 45
    sput-object p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    .line 47
    :cond_0
    invoke-static {}, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->getInstance()Lcom/sec/internal/ims/servicemodules/csh/CshCache;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public deleteSession(I)V
    .locals 3

    .line 90
    sget-object v0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove share sessionId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public getSession(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    return-object p0
.end method

.method public getSession(J)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 4

    const/4 v0, 0x0

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {v1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareId:J

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSessionAt(I)Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public newIncommingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;ILcom/sec/ims/util/ImsUri;Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .locals 2

    .line 120
    new-instance p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 v0, 0x1

    .line 123
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 125
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 126
    iget-object p3, p1, Lcom/sec/internal/ims/servicemodules/csh/CshModuleBase;->mContext:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/sec/internal/ims/util/StorageEnvironment;->generateStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 127
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFileTransfer;->getSize()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataSize:J

    .line 129
    invoke-virtual {p4}, Lcom/sec/internal/ims/servicemodules/csh/event/IshFile;->getMimeType()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->mimeType:Ljava/lang/String;

    .line 131
    new-instance p3, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    sget-object p4, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-direct {p3, p4, p1, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    .line 132
    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;->setSessionId(I)V

    return-object p3
.end method

.method public newIncommingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;ILcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 1

    .line 154
    new-instance p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 v0, 0x2

    .line 157
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 158
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 159
    iput-object p4, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 164
    new-instance p3, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    sget-object p4, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-direct {p3, p4, p1, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    .line 165
    invoke-virtual {p3, p2}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;->setSessionId(I)V

    return-object p3
.end method

.method public newOutgoingImageShare(Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/ImageShare;
    .locals 1

    .line 105
    new-instance p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    const/4 v0, 0x1

    .line 106
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    .line 107
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 109
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 110
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 112
    new-instance p2, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForIsh:Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;

    invoke-direct {p2, p3, p1, p0}, Lcom/sec/internal/ims/servicemodules/csh/ImageShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IIshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/ImageShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    return-object p2
.end method

.method public newOutgoingVideoShare(Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/ims/util/ImsUri;Ljava/lang/String;)Lcom/sec/internal/ims/servicemodules/csh/VideoShare;
    .locals 1

    .line 138
    new-instance p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;-><init>()V

    const/4 v0, 0x1

    .line 139
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareDirection:I

    const/4 v0, 0x2

    .line 140
    iput v0, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareType:I

    .line 141
    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->shareContactUri:Lcom/sec/ims/util/ImsUri;

    .line 142
    iput-object p3, p0, Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;->dataPath:Ljava/lang/String;

    .line 147
    new-instance p2, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;

    sget-object p3, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->imsServiceForVsh:Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;

    invoke-direct {p2, p3, p1, p0}, Lcom/sec/internal/ims/servicemodules/csh/VideoShare;-><init>(Lcom/sec/internal/ims/servicemodules/csh/event/IvshServiceInterface;Lcom/sec/internal/ims/servicemodules/csh/VideoShareModule;Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;)V

    return-object p2
.end method

.method public putSession(Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;)V
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->mSessions:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getSessionId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 86
    sget-object p0, Lcom/sec/internal/ims/servicemodules/csh/CshCache;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Added share ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/sec/internal/ims/servicemodules/csh/event/IContentShare;->getContent()Lcom/sec/internal/ims/servicemodules/csh/event/CshInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
