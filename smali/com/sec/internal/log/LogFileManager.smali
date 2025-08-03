.class Lcom/sec/internal/log/LogFileManager;
.super Ljava/lang/Object;
.source "LogFileManager.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = "LogFileManager"


# instance fields
.field private mFullPath:Ljava/lang/String;

.field private mMaxCount:I

.field private mMaxSize:I

.field private mMeter:Lcom/sec/internal/log/LogFileManager$MeteredWriter;

.field private mPaths:[Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 34
    iput-object p1, p0, Lcom/sec/internal/log/LogFileManager;->mFullPath:Ljava/lang/String;

    .line 35
    iput p2, p0, Lcom/sec/internal/log/LogFileManager;->mMaxSize:I

    .line 36
    iput p3, p0, Lcom/sec/internal/log/LogFileManager;->mMaxCount:I

    return-void

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private cleanupLegacyLogs()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/log/LogFileManager;->isLogGroup(Ljava/nio/file/Path;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object p0, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object p0, p0, v1

    invoke-interface {p0}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/internal/helper/FileUtils;->deleteDirectory(Ljava/nio/file/Path;)Z

    :cond_0
    return-void
.end method

.method private isLogGroup(Ljava/nio/file/Path;)Z
    .locals 2

    .line 65
    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object p0

    .line 66
    iget p0, p0, Landroid/system/StructStat;->st_gid:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 p1, 0x3ef

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 70
    sget-object p1, Lcom/sec/internal/log/LogFileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLogGroup exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private open(Ljava/nio/file/Path;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    sget-object v0, Ljava/nio/file/StandardOpenOption;->WRITE:Ljava/nio/file/StandardOpenOption;

    const/4 v1, 0x0

    .line 88
    new-array v2, v1, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    invoke-static {p1}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v2

    .line 90
    sget-object v0, Ljava/nio/file/StandardOpenOption;->APPEND:Ljava/nio/file/StandardOpenOption;

    goto :goto_0

    .line 92
    :cond_0
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v2

    new-array v3, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 93
    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/sec/internal/log/LogFileManager;->setPermission(Ljava/nio/file/Path;)V

    .line 94
    new-array v2, v1, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {p1, v2}, Ljava/nio/file/Files;->createFile(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    .line 95
    invoke-direct {p0, p1}, Lcom/sec/internal/log/LogFileManager;->setPermission(Ljava/nio/file/Path;)V

    const-wide/16 v2, 0x0

    .line 98
    :goto_0
    new-instance v4, Lcom/sec/internal/log/LogFileManager$MeteredWriter;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/nio/file/OpenOption;

    aput-object v0, v5, v1

    invoke-static {p1, v5}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object p1

    invoke-direct {v4, p1, v2, v3}, Lcom/sec/internal/log/LogFileManager$MeteredWriter;-><init>(Ljava/io/Writer;J)V

    iput-object v4, p0, Lcom/sec/internal/log/LogFileManager;->mMeter:Lcom/sec/internal/log/LogFileManager$MeteredWriter;

    return-void
.end method

.method private declared-synchronized rotate()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lcom/sec/internal/log/LogFileManager;->mMaxCount:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 103
    iget-object v2, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v2, v2, v0

    new-array v3, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-object v2, v2, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v1

    invoke-static {v3, v2, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/sec/internal/log/LogFileManager;->open(Ljava/nio/file/Path;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method private setPermission(Ljava/nio/file/Path;)V
    .locals 2

    .line 78
    :try_start_0
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3e8

    const/16 v1, 0x3ef

    invoke-static {p0, v0, v1}, Landroid/system/Os;->chown(Ljava/lang/String;II)V

    .line 79
    invoke-interface {p1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x1e8

    invoke-static {p0, p1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 81
    sget-object p1, Lcom/sec/internal/log/LogFileManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPermission exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method init()V
    .locals 6

    .line 40
    iget v0, p0, Lcom/sec/internal/log/LogFileManager;->mMaxCount:I

    new-array v0, v0, [Ljava/nio/file/Path;

    iput-object v0, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    const/4 v0, 0x0

    move v1, v0

    .line 41
    :goto_0
    iget v2, p0, Lcom/sec/internal/log/LogFileManager;->mMaxCount:I

    if-ge v1, v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, p0, Lcom/sec/internal/log/LogFileManager;->mFullPath:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s.%d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/sec/internal/log/LogFileManager;->cleanupLegacyLogs()V

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/log/LogFileManager;->open(Ljava/nio/file/Path;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 50
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method declared-synchronized write(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/log/LogFileManager;->mMeter:Lcom/sec/internal/log/LogFileManager$MeteredWriter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v1, v1, v0

    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->notExists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    .line 116
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/sec/internal/log/LogFileManager;->open(Ljava/nio/file/Path;)V

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/sec/internal/log/LogFileManager;->mMeter:Lcom/sec/internal/log/LogFileManager$MeteredWriter;

    invoke-virtual {v1, p1}, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 126
    :catch_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/internal/log/LogFileManager;->mPaths:[Ljava/nio/file/Path;

    aget-object v0, v1, v0

    invoke-direct {p0, v0}, Lcom/sec/internal/log/LogFileManager;->open(Ljava/nio/file/Path;)V

    .line 127
    iget-object v0, p0, Lcom/sec/internal/log/LogFileManager;->mMeter:Lcom/sec/internal/log/LogFileManager$MeteredWriter;

    invoke-virtual {v0, p1}, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->write(Ljava/lang/String;)V

    .line 130
    :goto_1
    iget-object p1, p0, Lcom/sec/internal/log/LogFileManager;->mMeter:Lcom/sec/internal/log/LogFileManager$MeteredWriter;

    iget-wide v0, p1, Lcom/sec/internal/log/LogFileManager$MeteredWriter;->written:J

    iget p1, p0, Lcom/sec/internal/log/LogFileManager;->mMaxSize:I

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/sec/internal/log/LogFileManager;->rotate()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p1

    .line 134
    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 136
    :cond_2
    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw p1
.end method
