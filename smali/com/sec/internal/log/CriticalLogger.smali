.class public Lcom/sec/internal/log/CriticalLogger;
.super Ljava/lang/Object;
.source "CriticalLogger.java"


# static fields
.field private static final FLUSH_TIMEOUT:J = 0x1f4L

.field private static final IMS_CR_LOG_PATH:Ljava/lang/String; = "/data/log/imscr/imscr.log"

.field static final LIMIT_LOG_RECORD:I = 0x1e

.field private static final LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field static final MAX_LOG_SIZE:I = 0x100000

.field private static final NAME:Ljava/lang/String; = "IMSCR"

.field static final NUM_OF_LOGS:I = 0x5

.field private static final SAVE_PERIOD:J = 0x927c0L

.field private static mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mLogFileManager:Lcom/sec/internal/log/LogFileManager;

.field private mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

.field private mLoggingThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmBuffer()Ljava/util/ArrayList;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/sec/internal/log/CriticalLogger;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x1f

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p0}, Lcom/sec/internal/log/CriticalLogger;->init()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/internal/log/CriticalLogger-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/log/CriticalLogger;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/sec/internal/log/CriticalLogger;
    .locals 1

    .line 44
    invoke-static {}, Lcom/sec/internal/log/CriticalLogger$HOLDER;->-$$Nest$sfgetINSTANCE()Lcom/sec/internal/log/CriticalLogger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public flush()V
    .locals 3

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Flush "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#IMSCR"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 95
    :cond_0
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 96
    iget-object p0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 98
    :try_start_0
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method getLogRecordCount()I
    .locals 0

    .line 59
    sget-object p0, Lcom/sec/internal/log/CriticalLogger;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method getLooper()Landroid/os/Looper;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    return-object p0
.end method

.method init()V
    .locals 4

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "IMSCR"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingThread:Landroid/os/HandlerThread;

    .line 50
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    iget-object v1, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/internal/log/CriticalLogger$LoggingHandler;-><init>(Lcom/sec/internal/log/CriticalLogger;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    .line 53
    new-instance v0, Lcom/sec/internal/log/LogFileManager;

    const/high16 v1, 0x100000

    const/4 v2, 0x5

    const-string v3, "/data/log/imscr/imscr.log"

    invoke-direct {v0, v3, v1, v2}, Lcom/sec/internal/log/LogFileManager;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/sec/internal/log/CriticalLogger;->mLogFileManager:Lcom/sec/internal/log/LogFileManager;

    .line 54
    invoke-virtual {v0}, Lcom/sec/internal/log/LogFileManager;->init()V

    return-void
.end method

.method public write(ILjava/lang/String;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/sec/internal/log/CriticalLogger;->LOG_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%s 0x%08X"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 73
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 76
    :cond_0
    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 80
    const-string p2, "#IMSCR"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object p2, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    iget-object p1, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    iget-object p0, p0, Lcom/sec/internal/log/CriticalLogger;->mLoggingHandler:Lcom/sec/internal/log/CriticalLogger$LoggingHandler;

    const-wide/32 v0, 0x927c0

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method
