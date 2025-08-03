.class public Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;
.super Landroid/content/ContentProvider;
.source "SharedMultimediaProvider.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.rcs.sharedmultimedia"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final sUriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContentType:Ljava/lang/Object;

.field private mDirection:Ljava/lang/Object;

.field private mFilePath:Ljava/lang/Object;

.field private mInsertedTimestamp:Ljava/lang/Object;

.field private mRemoteUri:Ljava/lang/Object;

.field private final session_columns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 27
    const-class v0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->LOG_TAG:Ljava/lang/String;

    .line 35
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->sUriMatcher:Landroid/content/UriMatcher;

    .line 41
    const-string/jumbo v1, "shared_multimedia"

    const/4 v2, 0x1

    const-string v3, "com.samsung.rcs.sharedmultimedia"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mRemoteUri:Ljava/lang/Object;

    .line 30
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mFilePath:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mDirection:Ljava/lang/Object;

    .line 32
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mInsertedTimestamp:Ljava/lang/Object;

    .line 33
    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mContentType:Ljava/lang/Object;

    .line 44
    const-string v0, "inserted_timestamp"

    const-string v1, "content_type"

    const-string/jumbo v2, "remote_uri"

    const-string v3, "file_path"

    const-string v4, "direction"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->session_columns:[Ljava/lang/String;

    return-void
.end method

.method private onContentsInserted()V
    .locals 4

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-string v1, "com.samsung.rcs.framework.multimediadata.category.NOTIFICATION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "com.samsung.rcs.framework.multimediadata.notification.MULTI_DATA_INSERTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    sget-object v1, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 54
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2

    .line 64
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 66
    sget-object v0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->LOG_TAG:Ljava/lang/String;

    const-string v1, "insert"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string/jumbo v1, "remote_uri"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mRemoteUri:Ljava/lang/Object;

    .line 68
    const-string v1, "file_path"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mFilePath:Ljava/lang/Object;

    .line 69
    const-string v1, "direction"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mDirection:Ljava/lang/Object;

    .line 70
    const-string v1, "inserted_timestamp"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mInsertedTimestamp:Ljava/lang/Object;

    .line 71
    const-string v1, "content_type"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mContentType:Ljava/lang/Object;

    .line 72
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mFilePath:Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 73
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFilePath : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mFilePath:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mDirection:Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 76
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDirection : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mDirection:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_1
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mInsertedTimestamp:Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mInsertedTimestamp : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mInsertedTimestamp:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mContentType:Ljava/lang/Object;

    if-eqz p2, :cond_3

    .line 82
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mContentType : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mContentType:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_3
    invoke-direct {p0}, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->onContentsInserted()V

    return-object p1

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 94
    sget-object p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->LOG_TAG:Ljava/lang/String;

    const-string v0, "SharedMultimediaProvider : onCreate()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 101
    sget-object p2, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->sUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 103
    sget-object p1, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo p2, "query"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance p1, Landroid/database/MatrixCursor;

    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->session_columns:[Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mRemoteUri:Ljava/lang/Object;

    iget-object p3, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mFilePath:Ljava/lang/Object;

    iget-object p4, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mDirection:Ljava/lang/Object;

    iget-object p5, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mInsertedTimestamp:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sec/internal/ims/servicemodules/session/SharedMultimediaProvider;->mContentType:Ljava/lang/Object;

    filled-new-array {p2, p3, p4, p5, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object p1

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 122
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
