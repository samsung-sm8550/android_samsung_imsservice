.class Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;
.super Landroid/os/FileObserver;
.source "EncryptedLogger.java"


# static fields
.field public static final CHILD_PATH_REGEX:Ljava/lang/String; = "20\\d{6}_\\d{6}"


# instance fields
.field private lastWriteTime:J

.field private mPath:Ljava/nio/file/Path;

.field final synthetic this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

.field private timer:Ljava/util/Timer;


# direct methods
.method static bridge synthetic -$$Nest$fgetlastWriteTime(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->lastWriteTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmPath(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/nio/file/Path;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->mPath:Ljava/nio/file/Path;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgettimer(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)Ljava/util/Timer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputlastWriteTime(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->lastWriteTime:J

    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;Ljava/nio/file/Path;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    .line 319
    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/io/File;)V

    .line 314
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    .line 321
    iput-object p2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->mPath:Ljava/nio/file/Path;

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x100

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    .line 372
    :try_start_0
    const-string p1, "20\\d{6}_\\d{6}"

    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->mPath:Ljava/nio/file/Path;

    invoke-interface {p1, p2}, Ljava/nio/file/Path;->resolve(Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p1

    .line 374
    iget-object p2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    new-instance v0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;

    invoke-direct {v0, p0, p1}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$KeyTimerTask;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;Ljava/nio/file/Path;)V

    const-wide/16 p0, 0x7d0

    invoke-virtual {p2, v0, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 378
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public startWatching()V
    .locals 5

    .line 326
    invoke-super {p0}, Landroid/os/FileObserver;->startWatching()V

    .line 328
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startWatching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v3}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->getNameCount()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->timer:Ljava/util/Timer;

    new-instance v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver$1;-><init>(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 357
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public stopWatching()V
    .locals 4

    .line 363
    invoke-super {p0}, Landroid/os/FileObserver;->stopWatching()V

    .line 365
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopWatching : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-interface {v2}, Ljava/nio/file/Path;->getRoot()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {v2}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object v2

    iget-object p0, p0, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher$SilentLogObserver;->this$1:Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-static {p0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->-$$Nest$fgetSILENT_LOG_HOME(Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-interface {p0}, Ljava/nio/file/Path;->getNameCount()I

    move-result p0

    const/4 v3, 0x0

    invoke-interface {v2, v3, p0}, Ljava/nio/file/Path;->subpath(II)Ljava/nio/file/Path;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
