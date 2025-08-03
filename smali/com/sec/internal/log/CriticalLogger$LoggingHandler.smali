.class Lcom/sec/internal/log/CriticalLogger$LoggingHandler;
.super Landroid/os/Handler;
.source "CriticalLogger.java"


# static fields
.field static final EVENT_ADD:I = 0x1

.field static final EVENT_SAVE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/sec/internal/log/CriticalLogger;


# direct methods
.method constructor <init>(Lcom/sec/internal/log/CriticalLogger;Landroid/os/Looper;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->this$0:Lcom/sec/internal/log/CriticalLogger;

    .line 112
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private save(Ljava/util/concurrent/CountDownLatch;)V
    .locals 3

    .line 136
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->-$$Nest$sfgetmBuffer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->this$0:Lcom/sec/internal/log/CriticalLogger;

    iget-object p0, p0, Lcom/sec/internal/log/CriticalLogger;->mLogFileManager:Lcom/sec/internal/log/LogFileManager;

    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->-$$Nest$sfgetmBuffer()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/sec/internal/ims/settings/SettingsProvider$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, ""

    .line 138
    const-string v2, "\n"

    invoke-static {v2, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    .line 137
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/internal/log/LogFileManager;->write(Ljava/lang/String;)V

    .line 139
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->-$$Nest$sfgetmBuffer()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    if-eqz p1, :cond_1

    .line 143
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0, p1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->save(Ljava/util/concurrent/CountDownLatch;)V

    .line 127
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/32 v2, 0x927c0

    .line 128
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->-$$Nest$sfgetmBuffer()Ljava/util/ArrayList;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger;->-$$Nest$sfgetmBuffer()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x1e

    if-lt p1, v0, :cond_2

    const/4 p1, 0x0

    .line 121
    invoke-direct {p0, p1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;->save(Ljava/util/concurrent/CountDownLatch;)V

    :cond_2
    :goto_0
    return-void
.end method
