.class public Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;
.super Landroid/os/RemoteCallbackList;
.source "RemoteCallbackListWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Landroid/os/RemoteCallbackList<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mBroadcastLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->mBroadcastLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public broadcastCallback(Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster<",
            "TT;>;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper;->mBroadcastLock:Ljava/lang/Object;

    monitor-enter v0

    .line 28
    :try_start_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 31
    :try_start_1
    invoke-virtual {p0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/sec/internal/helper/os/RemoteCallbackListWrapper$Broadcaster;->broadcast(Landroid/os/IInterface;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 33
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 37
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
