.class public Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;
.super Lcom/sec/internal/ims/core/iil/IpcDispatcher;
.source "IpcDispatcherAidl.java"


# instance fields
.field private mBinderDeathCount:J

.field private final mImsSecRadioChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;

.field protected volatile mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

.field private final mSecRadioChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBinderDeathCount(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mBinderDeathCount:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputmBinderDeathCount(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mBinderDeathCount:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 22
    invoke-direct {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 25
    invoke-direct {p0, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;-><init>(I)V

    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    .line 26
    new-instance p1, Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mImsSecRadioChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;

    .line 27
    new-instance p1, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;

    invoke-direct {p1, p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;-><init>(Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;)V

    iput-object p1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mBinderDeathCount:J

    return-void
.end method

.method private declared-synchronized createChannelBySlotCount()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->CHANNEL_SERVICE_NAME:[Ljava/lang/String;

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0, v0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->getSehRadioChannelInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 100
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    if-eqz v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    invoke-interface {v0}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxyDeathRecipient:Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl$SecRadioChannelProxyDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 102
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    iget-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mImsSecRadioChannelCallback:Lcom/sec/internal/ims/core/iil/ImsSecRadioChannelCallback;

    invoke-interface {v0, v1}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;->setCallback(Lvendor/samsung/hardware/radio/channel/ISehRadioChannelCallback;)V

    .line 103
    const-string v0, "IpcDispatcher"

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v2, "notify IIL Connected"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->s(Ljava/lang/String;ILjava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mRegistrantsForIilConnected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .line 105
    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 108
    :cond_1
    const-string v0, "IpcDispatcher"

    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v2, "getSecRadioChannelProxy: mSecRadioChannelProxy == null"

    invoke-static {v0, v1, v2}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected getSecRadioChannelProxy()Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    if-eqz v0, :cond_0

    .line 76
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    return-object p0

    .line 79
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->createChannelBySlotCount()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 81
    iput-object v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    .line 82
    iget v1, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SecRadioChannelProxy getService/setCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "IpcDispatcher"

    invoke-static {v2, v1, v0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->publishChannelProxyDeadEvent(J)V

    .line 89
    :cond_1
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    return-object p0
.end method

.method protected getSehRadioChannelInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;
    .locals 0

    .line 113
    invoke-static {p1}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    move-result-object p0

    return-object p0
.end method

.method protected handleChannelProxyDead(J)V
    .locals 4

    .line 38
    iget v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage: EVENT_SEC_RADIO_CHANNEL_PROXY_DEAD cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " mSecChannelProxyCookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    .line 39
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string v2, "IpcDispatcher"

    invoke-static {v2, v0, v1}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->resetProxy()V

    .line 42
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->getSecRadioChannelProxy()Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    :cond_0
    return-void
.end method

.method protected handleSendIpc([B)V
    .locals 4

    .line 55
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->getSecRadioChannelProxy()Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    const-string v1, "IpcDispatcher"

    iget v2, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mSlotId:I

    const-string v3, "ImsModemSender(): send"

    invoke-static {v1, v2, v3}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 59
    invoke-interface {v0, p1}, Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;->send([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    const-string/jumbo v0, "send"

    invoke-virtual {p0, v0, p1}, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->handleChannelProxyExceptionForRR(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected initChannel()V
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->getSecRadioChannelProxy()Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    return-void
.end method

.method protected resetProxy()V
    .locals 1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcherAidl;->mSecRadioChannelProxy:Lvendor/samsung/hardware/radio/channel/ISehRadioChannel;

    .line 50
    iget-object p0, p0, Lcom/sec/internal/ims/core/iil/IpcDispatcher;->mChannelProxyCookie:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    return-void
.end method
