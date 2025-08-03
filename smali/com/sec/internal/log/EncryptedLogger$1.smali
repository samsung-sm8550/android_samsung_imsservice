.class Lcom/sec/internal/log/EncryptedLogger$1;
.super Ljava/lang/Thread;
.source "EncryptedLogger.java"


# instance fields
.field final synthetic this$0:Lcom/sec/internal/log/EncryptedLogger;


# direct methods
.method constructor <init>(Lcom/sec/internal/log/EncryptedLogger;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    .line 228
    :try_start_0
    const-string v0, "/sdcard"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    new-instance v1, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    invoke-direct {v1, v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;-><init>(Lcom/sec/internal/log/EncryptedLogger;)V

    invoke-static {v0, v1}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$fputsilentLogWatcher(Lcom/sec/internal/log/EncryptedLogger;Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;)V

    .line 230
    iget-object v0, p0, Lcom/sec/internal/log/EncryptedLogger$1;->this$0:Lcom/sec/internal/log/EncryptedLogger;

    invoke-static {v0}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$fgetsilentLogWatcher(Lcom/sec/internal/log/EncryptedLogger;)Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/internal/log/EncryptedLogger$SilentLogWatcher;->startWatch()V

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 233
    :cond_0
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/sdcard is not mounted yet"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0xbb8

    .line 237
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 241
    :goto_1
    invoke-static {}, Lcom/sec/internal/log/EncryptedLogger;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method
