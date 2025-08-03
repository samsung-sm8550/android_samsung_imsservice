.class public Lcom/sec/internal/ims/cmstore/LineManager;
.super Ljava/lang/Object;
.source "LineManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LineManager"


# instance fields
.field private final mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

.field private final mLineStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mLineStatusOberserverList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

    return-void
.end method


# virtual methods
.method public addLine(Ljava/lang/String;)V
    .locals 3

    .line 67
    sget-object v0, Lcom/sec/internal/ims/cmstore/LineManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLine :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/sec/internal/log/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    sget-object v1, Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;->WORKING:Lcom/sec/internal/ims/cmstore/LineManager$LineWorkingStatus;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;

    .line 70
    invoke-interface {v0, p1}, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;->onLineAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initLineStatus()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mILineStatusChangeCallBack:Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;

    invoke-interface {v0}, Lcom/sec/internal/interfaces/ims/cmstore/ILineStatusChangeCallBack;->notifyLoadLineStatus()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 61
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v1}, Lcom/sec/internal/ims/cmstore/LineManager;->addLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void

    .line 57
    :cond_2
    :goto_1
    sget-object p0, Lcom/sec/internal/ims/cmstore/LineManager;->TAG:Ljava/lang/String;

    const-string v0, "no line added yet"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerLineStatusOberser(Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;)V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatusOberserverList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/LineManager;->mLineStatus:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    invoke-interface {p1, v0}, Lcom/sec/internal/ims/cmstore/LineManager$LineStatusObserver;->onLineAdded(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method
