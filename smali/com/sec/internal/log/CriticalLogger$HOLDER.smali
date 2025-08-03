.class Lcom/sec/internal/log/CriticalLogger$HOLDER;
.super Ljava/lang/Object;
.source "CriticalLogger.java"


# static fields
.field private static final INSTANCE:Lcom/sec/internal/log/CriticalLogger;


# direct methods
.method static bridge synthetic -$$Nest$sfgetINSTANCE()Lcom/sec/internal/log/CriticalLogger;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/log/CriticalLogger$HOLDER;->INSTANCE:Lcom/sec/internal/log/CriticalLogger;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Lcom/sec/internal/log/CriticalLogger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sec/internal/log/CriticalLogger;-><init>(Lcom/sec/internal/log/CriticalLogger-IA;)V

    sput-object v0, Lcom/sec/internal/log/CriticalLogger$HOLDER;->INSTANCE:Lcom/sec/internal/log/CriticalLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
