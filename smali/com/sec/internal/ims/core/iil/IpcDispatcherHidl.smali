.class public Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;
.super Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.source "IpcDispatcherHidl.java"


# instance fields
.field private final mImsSecChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

.field protected volatile mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

.field private final mSecChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;-><init>(I)V

    const/4 p1, 0x0

    .line 15
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 25
    new-instance p1, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mImsSecChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

    .line 26
    new-instance p1, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;

    return-void
.end method

.method private declared-synchronized createChannelProxyBySimSlotCount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    sget-object v0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->CHANNEL_SERVICE_NAME:[Ljava/lang/String;

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->getService(Ljava/lang/String;)Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 93
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl$SecChannelProxyDeathRecipient;

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 95
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mImsSecChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecChannelCallback;

    invoke-interface {v0, v1}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->setCallback(Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannelCallback;)V

    .line 96
    const-string v0, "IpcDispatcher"

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v2, "notify IIL Connected"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrantsForIilConnected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 98
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 101
    :cond_0
    const-string v0, "IpcDispatcher"

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v2, "getSecChannelProxy: mSecChannelProxy == null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-eqz v0, :cond_0

    .line 74
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-object p0

    .line 78
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->createChannelProxyBySimSlotCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 81
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecChannelProxy getService/setCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IpcDispatcher"

    invoke-static {v2, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 84
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->publishChannelProxyDeadEvent(J)V

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-object p0
.end method

.method protected handleChannelProxyDead(J)V
    .locals 4

    .line 50
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_SEC_CHANNEL_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSecChannelProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 50
    const-string v2, "IpcDispatcher"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->resetProxy()V

    .line 54
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    :cond_0
    return-void
.end method

.method protected handleSendIpc([B)V
    .locals 4

    .line 36
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    move-result-object v0

    .line 37
    const-string v1, "getSecChannelProxy"

    const-string v2, "IpcDispatcher"

    invoke-static {v2, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v3, "ImsModemSender(): send"

    invoke-static {v2, v1, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    invoke-static {p1}, Lcom/sec/internal/ims/core/iil/IpcUtil;->primitiveArrayToArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p1}, Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;->send(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    const-string/jumbo v0, "send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->handleChannelProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected initChannel()V
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->getSecChannelProxy()Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    return-void
.end method

.method protected resetProxy()V
    .locals 1

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherHidl;->mSecChannelProxy:Lvendor/samsung/hardware/radio/channel/V2_0/ISehChannel;

    .line 62
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method
