.class Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$LazyExecutor;
.super Ljava/lang/Object;
.source "SrvDnsResolver.java"


# static fields
.field public static final INSTANCE:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 222
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/helper/SrvDnsResolver$SrvRecordAnswerAccumulator$LazyExecutor;->INSTANCE:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
