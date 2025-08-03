.class public Lcom/sec/internal/helper/os/ImsFrameworkState;
.super Ljava/lang/Object;
.source "ImsFrameworkState.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsFrameworkState"

.field private static final MUTEX:Ljava/lang/Object;

.field private static volatile sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState; = null

.field private static volatile sIsFwReady:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFwStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mListeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFwStatusReceiver(Lcom/sec/internal/helper/os/ImsFrameworkState;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mFwStatusReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmContext(Lcom/sec/internal/helper/os/ImsFrameworkState;Landroid/content/Context;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/sec/internal/helper/os/ImsFrameworkState;->notifyFrameworkState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetMUTEX()Ljava/lang/Object;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputsIsFwReady(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sIsFwReady:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    .line 37
    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    .line 38
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    .line 39
    new-instance p1, Lcom/sec/internal/helper/os/ImsFrameworkState$1;

    invoke-direct {p1, p0}, Lcom/sec/internal/helper/os/ImsFrameworkState$1;-><init>(Lcom/sec/internal/helper/os/ImsFrameworkState;)V

    iput-object p1, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mFwStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 57
    const-string v0, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mFwStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/internal/helper/os/ImsFrameworkState;
    .locals 2

    .line 77
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState;

    if-nez v0, :cond_1

    .line 80
    sget-object v1, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 81
    :try_start_0
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/sec/internal/helper/os/ImsFrameworkState;

    invoke-direct {v0, p0}, Lcom/sec/internal/helper/os/ImsFrameworkState;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sInstance:Lcom/sec/internal/helper/os/ImsFrameworkState;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 85
    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    return-object v0
.end method

.method public static isFrameworkReady()Z
    .locals 1

    .line 67
    sget-boolean v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->sIsFwReady:Z

    return v0
.end method

.method private notifyFrameworkState()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;

    .line 117
    invoke-interface {v1}, Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;->onFwReady()V

    goto :goto_0

    .line 120
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public registerForFrameworkState(Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;)V
    .locals 2

    .line 97
    const-string v0, "ImsFrameworkState"

    const-string/jumbo v1, "registerForFrameworkState."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    sget-object v0, Lcom/sec/internal/helper/os/ImsFrameworkState;->MUTEX:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    sget-boolean v1, Lcom/sec/internal/helper/os/ImsFrameworkState;->sIsFwReady:Z

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {p1}, Lcom/sec/internal/helper/os/ImsFrameworkState$FrameworkStateListener;->onFwReady()V

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/helper/os/ImsFrameworkState;->mListeners:Ljava/util/HashSet;

    if-eqz p0, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
