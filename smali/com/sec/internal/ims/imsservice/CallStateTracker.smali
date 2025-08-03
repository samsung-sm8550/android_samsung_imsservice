.class public Lcom/sec/internal/ims/imsservice/CallStateTracker;
.super Ljava/lang/Object;
.source "CallStateTracker.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/core/ISequentialInitializable;


# static fields
.field public static final CALL_CONNECTED:I = 0x2

.field public static final CALL_DISCONECTED:I = 0x1

.field public static final CALL_RESUMED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "CallStateTracker"


# instance fields
.field private final mCallLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/imsservice/CallStateTracker$Call;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mCallStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mCountLists:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallLists(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallLists:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountLists(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/Map;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCountLists:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListeners(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceModuleManager(Lcom/sec/internal/ims/imsservice/CallStateTracker;)Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;)V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallLists:Ljava/util/Map;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCountLists:Ljava/util/Map;

    .line 50
    new-instance v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/CallStateTracker$1;-><init>(Lcom/sec/internal/ims/imsservice/CallStateTracker;)V

    iput-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 182
    iput-object p1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mContext:Landroid/content/Context;

    .line 183
    iput-object p2, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mHandler:Landroid/os/Handler;

    .line 184
    iput-object p3, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mServiceModuleManager:Lcom/sec/internal/ims/servicemodules/ServiceModuleManager;

    return-void
.end method


# virtual methods
.method public initSequentially()V
    .locals 6

    .line 189
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 190
    const-string v0, "com.samsung.rcs.CALL_STATE_CHANGED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mCallStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 193
    new-instance v0, Lcom/sec/internal/ims/imsservice/CallStateTracker$2;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/imsservice/CallStateTracker$2;-><init>(Lcom/sec/internal/ims/imsservice/CallStateTracker;)V

    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/imsservice/CallStateTracker;->register(Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;)V

    return-void
.end method

.method public register(Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;)V
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Lcom/sec/internal/ims/imsservice/CallStateTracker$Listener;)V
    .locals 0

    .line 207
    iget-object p0, p0, Lcom/sec/internal/ims/imsservice/CallStateTracker;->mListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
