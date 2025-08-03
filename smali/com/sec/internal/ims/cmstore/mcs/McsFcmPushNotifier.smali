.class public Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;
.super Ljava/lang/Object;
.source "McsFcmPushNotifier.java"


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mPhoneId:I

.field private final mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;


# direct methods
.method public constructor <init>(Lcom/sec/internal/ims/cmstore/MessageStoreClient;I)V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->LOG_TAG:Ljava/lang/String;

    .line 18
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mLock:Ljava/lang/Object;

    .line 22
    iput-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 23
    iput p2, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mPhoneId:I

    .line 25
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->registerMcsFcmPushNotificationListener()V

    .line 26
    const-string p0, "created"

    invoke-static {v0, p2, p0}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method private registerMcsFcmPushNotificationListener()V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    new-instance v1, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier$1;

    invoke-direct {v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier$1;-><init>(Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;)V

    invoke-interface {v0, v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->setMcsFcmPushNotificationListener(Lcom/sec/internal/interfaces/ims/cmstore/IMcsFcmPushNotificationListener;)V

    return-void
.end method


# virtual methods
.method public notifyMcsFcmPushMessages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 65
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mStoreClient:Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMcsProvisioningListener()Landroid/os/RemoteCallbackList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mPhoneId:I

    const-string/jumbo p2, "notifyMcsFcmPushMessages: listeners is empty"

    invoke-static {p1, p0, p2}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 73
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 74
    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->LOG_TAG:Ljava/lang/String;

    iget v4, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mPhoneId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "notifyMcsFcmPushMessages: length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pushType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sec/internal/log/IMSLog;->i(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 77
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/sec/ims/ICentralMsgStoreServiceListener;

    .line 78
    invoke-interface {v4, p1, p2, p3}, Lcom/sec/ims/ICentralMsgStoreServiceListener;->onCmsPushMessageReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 80
    :try_start_3
    iget-object v5, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->LOG_TAG:Ljava/lang/String;

    iget v6, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mPhoneId:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifyMcsFcmPushMessages: onCmsPushMessageReceived call failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    :cond_1
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    .line 84
    :goto_3
    :try_start_5
    iget-object p2, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->LOG_TAG:Ljava/lang/String;

    iget p0, p0, Lcom/sec/internal/ims/cmstore/mcs/McsFcmPushNotifier;->mPhoneId:I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyMcsFcmPushMessages: failed: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p0, p1}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 88
    :goto_4
    :try_start_6
    monitor-exit v0

    return-void

    .line 86
    :goto_5
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 87
    throw p0

    .line 88
    :goto_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method
