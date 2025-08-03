.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;
.super Ljava/lang/Object;
.source "EncryptedLogger.java"


# instance fields
.field EVENT:[I

.field NAME:[Ljava/lang/String;

.field private final SILENT_LOG_HOME:Ljava/nio/file/Path;

.field fileObservers:[Landroid/os/FileObserver;

.field final synthetic this$0:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method static bridge synthetic -$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    return-object p0
.end method

.method public constructor <init>(Lcom/sec/internal/log/EncryptedLogger;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 252
    iput-object v1, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    .line 248
    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "/sdcard/log/ap_silentlog"

    invoke-static {v4, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    .line 250
    invoke-interface {v3}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    new-array v3, v3, [Landroid/os/FileObserver;

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    const/16 v3, 0xd

    .line 299
    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->EVENT:[I

    .line 305
    const-string v15, "MOVE_SELF"

    const-string v16, "ALL_EVENTS"

    const-string v4, "ACCESS"

    const-string v5, "MODIFY"

    const-string v6, "ATTRIB"

    const-string v7, "CLOSE_WRITE"

    const-string v8, "CLOSE_NOWRITE"

    const-string v9, "OPEN"

    const-string v10, "MOVED_FROM"

    const-string v11, "MOVED_TO"

    const-string v12, "CREATE"

    const-string v13, "DELETE"

    const-string v14, "DELETE_SELF"

    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->NAME:[Ljava/lang/String;

    move v3, v2

    .line 254
    :goto_0
    iget-object v4, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->getNameCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 256
    iget-object v4, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    invoke-interface {v4}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v2, v6}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    .line 257
    iget-object v5, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    new-instance v7, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;

    invoke-interface {v4}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v7, v0, v4, v1, v3}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$1;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/io/File;Lcom/sec/internal/log/EncryptedLogger;I)V

    aput-object v7, v5, v3

    move v3, v6

    goto :goto_0

    .line 291
    :cond_0
    iget-object v1, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    new-instance v2, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;

    iget-object v4, v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->SILENT_LOG_HOME:Ljava/nio/file/Path;

    invoke-direct {v2, v0, v4}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/nio/file/Path;)V

    aput-object v2, v1, v3

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
        0x100
        0x200
        0x400
        0x800
        0xfff
    .end array-data
.end method


# virtual methods
.method public startWatch()V
    .locals 1

    .line 295
    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->fileObservers:[Landroid/os/FileObserver;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method
