.class public Lcom/sec/internal/ims/cmstore/CloudMessageService;
.super Landroid/app/Service;
.source "CloudMessageService.java"

# interfaces
.implements Lcom/sec/internal/interfaces/ims/IImsFramework;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static mClients:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/sec/internal/ims/cmstore/MessageStoreClient;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

.field private mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

.field private mImsFramework:Lcom/sec/internal/ims/ImsFramework;

.field private mInitSyncShow:I

.field private serviceHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    .line 92
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 93
    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private enableGba()V
    .locals 5

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 162
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->getAllSimManagers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 165
    new-instance v1, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/sec/internal/ims/cmstore/CloudMessageService$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 168
    invoke-static {}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->initInstances()V

    const/4 v0, 0x0

    .line 170
    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->getInstance(I)Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->setContext(Landroid/content/Context;)V

    .line 171
    new-instance v1, Lcom/sec/internal/ims/gba/GbaServiceModule;

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v1, v2, v3, v4}, Lcom/sec/internal/ims/gba/GbaServiceModule;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    .line 172
    invoke-static {v0}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->getInstance(I)Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;

    move-result-object v0

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {v0, p0}, Lcom/sec/internal/ims/gba/GbaServiceModuleProxy;->setGbaServiceModule(Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    .line 173
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string v0, "enableGbaModule done"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getClientByID(I)Lcom/sec/internal/ims/cmstore/MessageStoreClient;
    .locals 1

    if-ltz p0, :cond_1

    .line 97
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0

    .line 98
    :cond_1
    :goto_0
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    return-object p0
.end method

.method private registerGCMIntentReceiver(Landroid/content/Context;)V
    .locals 2

    .line 494
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 495
    const-string v0, "com.samsung.nsds.action.RECEIVED_GCM_EVENT_NOTIFICATION"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 496
    new-instance v0, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Lcom/sec/internal/ims/cmstore/receiver/GcmIntentBroadcastReceiver;-><init>(Ljava/util/Hashtable;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 455
    const-string p1, "Dump of CloudMessageService"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MCS Interface Version for slot"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    .line 459
    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 460
    invoke-interface {v1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getCloudMessageStrategyManager()Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/strategy/CloudMessageStrategyManager;->getStrategy()Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;

    move-result-object v1

    invoke-interface {p3}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result p3

    invoke-interface {v1, p3}, Lcom/sec/internal/interfaces/ims/cmstore/ICloudMessageStrategy;->getClientVersion(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 458
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_0
    sget-object p1, Lcom/sec/internal/helper/httpclient/HttpController;->queue_sim:Ljava/util/List;

    const/4 p3, 0x0

    move v0, p3

    .line 465
    :goto_1
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 466
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;

    invoke-virtual {v1}, Lcom/sec/internal/ims/cmstore/helper/CircularQueue;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 468
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 472
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 474
    :cond_2
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/sec/internal/log/IMSLog;->prepareDump(Landroid/content/Context;Ljava/io/PrintWriter;)V

    .line 476
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    .line 477
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getClientID()I

    move-result v0

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-nez p3, :cond_4

    .line 480
    invoke-interface {p1}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getMultilineStatusValues()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 481
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 482
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 483
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    const/4 p1, 0x1

    move p3, p1

    .line 488
    :cond_4
    invoke-static {v0}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->dump(I)V

    goto :goto_4

    .line 490
    :cond_5
    invoke-static {p2}, Lcom/sec/internal/log/IMSLog;->postDump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableRcsByPhoneId(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public getAECModule()Lcom/sec/internal/interfaces/ims/aec/IAECModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getAMBSPhaseVersion(Landroid/content/Context;I)I
    .locals 7

    .line 424
    sget-object p0, Lcom/sec/ims/settings/ImsSettings;->GLOBAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 426
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Context is null, return default Phase 4"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 430
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo p0, "rcs_phase_version"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 432
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_3

    .line 436
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 437
    const-string p1, "RCS_ATT_PHASE2"

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 441
    :cond_2
    :goto_0
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    goto :goto_4

    .line 430
    :goto_1
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1

    :cond_3
    :goto_3
    if-eqz p0, :cond_4

    .line 441
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    return v0

    .line 442
    :goto_4
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!!!Could not get RCS_PHASE_VERSION from db "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_5
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "get RCS_PHASE_VERSION: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getAllServiceModules()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/internal/ims/servicemodules/base/ServiceModuleBase;",
            ">;"
        }
    .end annotation

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;)Landroid/os/Binder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBinder(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Binder;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoolean(ILjava/lang/String;Z)Z
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getBooleanGlobalSettings(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getCallCount(I)[I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcAccountManager()Lcom/sec/internal/interfaces/ims/core/ICmcAccountManager;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCmcConnectivityController()Lcom/sec/internal/imsphone/cmc/ICmcConnectivityController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigModule()Lcom/sec/internal/interfaces/ims/config/IConfigModule;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getConfigValues([Ljava/lang/String;I)Landroid/content/ContentValues;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 403
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getFcmHandler()Lcom/sec/internal/ims/fcm/interfaces/IFcmHandler;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getGeolocationController()Lcom/sec/internal/interfaces/ims/core/IGeolocationController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandlerFactory()Lcom/sec/internal/interfaces/ims/core/handler/IHandlerFactory;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIilManager(I)Lcom/sec/internal/interfaces/ims/core/iil/IIilManager;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getImsDiagMonitor()Lcom/sec/internal/interfaces/ims/core/imslogger/IImsDiagMonitor;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    return-object p0
.end method

.method public getInt(ILjava/lang/String;I)I
    .locals 0

    .line 313
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getIntGlobalSettings(Landroid/content/Context;ILjava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMvnoController()Lcom/sec/internal/extension/mvno/IMvnoController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNetworkType(I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public getNtpTimeController()Lcom/sec/internal/interfaces/ims/core/INtpTimeController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPdnController()Lcom/sec/internal/interfaces/ims/core/IPdnController;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRawSipSender()Lcom/sec/internal/interfaces/ims/core/IRawSipSender;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRcsPolicyManager()Lcom/sec/internal/interfaces/ims/rcs/IRcsPolicyManager;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRcsProfileType(I)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationInfoByPhoneId(I)[Lcom/sec/ims/ImsRegistration;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getRegistrationManager()Lcom/sec/internal/interfaces/ims/core/IRegistrationManager;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 501
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p2, p1, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getServiceModuleManager()Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-static {v0, p0}, Lcom/sec/internal/ims/cmstore/ambs/CmsServiceModuleManager;->getInstance(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)Lcom/sec/internal/interfaces/ims/servicemodules/IServiceModuleManager;

    move-result-object p0

    return-object p0
.end method

.method public getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1, p2, p3}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->getStringGlobalSettings(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStringArray(ILjava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 413
    invoke-virtual {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.imsservice.sip.signalling.READ_PERMISSION"

    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getInstance(Landroid/content/Context;I)Lcom/sec/internal/ims/settings/GlobalSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/sec/internal/ims/settings/GlobalSettingsManager;->getStringArray(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getWfcEpdgManager()Lcom/sec/internal/interfaces/ims/core/IWfcEpdgManager;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isCrossSimCallingSupportedByPhoneId(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isDefaultDmValue(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isRcsEnabledByPhoneId(I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceAvailable(Ljava/lang/String;II)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isServiceEnabledByPhoneId(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyImsReady(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    .line 105
    const-string/jumbo v0, "sim_slot"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 106
    invoke-static {v0}, Lcom/sec/internal/helper/SimUtil;->getSimMno(I)Lcom/sec/internal/constants/Mno;

    move-result-object v1

    .line 107
    sget-object v2, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onBind() simSlot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mno: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "null"

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-static {v2, v0, v3}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->infoLogAndAdd(Ljava/lang/String;ILjava/lang/String;)V

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const v3, -0x6ffffffc

    .line 109
    invoke-static {v3, p1}, Lcom/sec/internal/log/IMSLog;->c(ILjava/lang/String;)V

    .line 111
    sget-object p1, Lcom/sec/internal/constants/Mno;->DEFAULT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 112
    const-string p0, "do not bind for DEFAULT mno"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 114
    :cond_2
    sget-object p1, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 115
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/sec/internal/ims/cmstore/utils/CmsUtil;->isMcsSupported(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 116
    new-instance p1, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v0, v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;-><init>(ILandroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;)V

    .line 117
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/ims/cmstore/mcs/MCSClient;->onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    .line 118
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 119
    :cond_3
    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isKorOpenOnlyOmcCode()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-static {}, Lcom/sec/internal/helper/OmcCode;->isSKTOmcCode()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    .line 123
    :cond_4
    sget-object p1, Lcom/sec/internal/constants/Mno;->ATT:Lcom/sec/internal/constants/Mno;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 124
    iget-object p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getAMBSPhaseVersion(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsPhaseVersion(I)V

    .line 125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Carrier: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " phase:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->ambsPhaseVersion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_5
    new-instance p1, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {p1, v0, v1, p0, v2}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;-><init>(ILandroid/content/Context;Lcom/sec/internal/ims/cmstore/CloudMessageService;Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    .line 128
    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    iget-object p0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mGbaServiceModule:Lcom/sec/internal/ims/gba/GbaServiceModule;

    invoke-virtual {p1, v1, p0}, Lcom/sec/internal/ims/cmstore/ambs/AMBSClient;->onCreate(Lcom/sec/internal/interfaces/ims/IImsFramework;Lcom/sec/internal/ims/gba/GbaServiceModule;)V

    .line 129
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 120
    :cond_6
    :goto_1
    const-string p0, "MCS not enabled for this KOR model"

    invoke-static {v2, p0}, Lcom/sec/internal/log/IMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 132
    :cond_7
    :goto_2
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mClients:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/internal/ims/cmstore/MessageStoreClient;

    invoke-interface {p0}, Lcom/sec/internal/ims/cmstore/MessageStoreClient;->getBinder()Landroid/os/Binder;

    move-result-object p0

    return-object p0
.end method

.method public onCreate()V
    .locals 4

    .line 137
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 138
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    .line 140
    invoke-virtual {p0, v1, v2}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getAMBSPhaseVersion(Landroid/content/Context;I)I

    move-result v1

    invoke-static {v1}, Lcom/sec/internal/ims/cmstore/helper/ATTGlobalVariables;->setAmbsPhaseVersion(I)V

    .line 141
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    .line 142
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 143
    iget-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/internal/ims/core/sim/SimManagerFactory;->createInstance(Landroid/os/Looper;Landroid/content/Context;)V

    .line 144
    new-instance v0, Lcom/sec/internal/ims/ImsFramework;

    invoke-direct {v0, p0}, Lcom/sec/internal/ims/ImsFramework;-><init>(Lcom/sec/internal/interfaces/ims/IImsFramework;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsFramework:Lcom/sec/internal/ims/ImsFramework;

    .line 145
    new-instance v0, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    iget-object v1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->serviceHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mImsDiagMonitor:Lcom/sec/internal/ims/core/imslogger/ImsDiagnosticMonitorNotificationManager;

    .line 146
    invoke-direct {p0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->enableGba()V

    :goto_0
    const/4 v0, 0x2

    if-ge v2, v0, :cond_0

    .line 148
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc8

    invoke-static {v0, v1, v3, v2}, Lcom/sec/internal/ims/cmstore/helper/EventLogHelper;->initialise(Landroid/content/Context;Ljava/lang/String;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->registerGCMIntentReceiver(Landroid/content/Context;)V

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.rcs.framework.cloudmessage.RESTART"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/sec/ims/extensions/ContextExt;->ALL:Landroid/os/UserHandle;

    invoke-static {p0, v0, v1}, Lcom/sec/ims/extensions/ContextExt;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 450
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 180
    sget-object p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onStartCommand(): Received start id "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;ZI)Ljava/lang/String;
    .locals 0

    .line 277
    const-string p0, ""

    return-object p0
.end method

.method public registerImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0

    .line 0
    return-void
.end method

.method public sendDeregister(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public setDefaultDmValue(Ljava/lang/String;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public setIsimLoaded()V
    .locals 0

    .line 0
    return-void
.end method

.method public setRttMode(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public showInitsyncIndicator(ZI)V
    .locals 11

    .line 505
    sget-object v0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showInitsyncIndicator: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    if-nez v1, :cond_0

    .line 511
    const-string/jumbo p0, "notifyManager is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 520
    :cond_0
    new-instance v2, Landroid/app/NotificationChannel;

    const-string v3, "ambs_channel_ni"

    const/4 v4, 0x2

    const-string v5, "ambs_channel"

    invoke-direct {v2, v5, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, 0x0

    .line 522
    invoke-virtual {v2, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 523
    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 524
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 527
    const-string/jumbo v4, "stat_notify_ambs_sync_esim"

    const-string/jumbo v5, "stat_notify_ambs_sync_sim1"

    const-string v6, "Messages syncing..."

    const-string v7, "Messages Backup & Sync"

    const/4 v8, 0x3

    const-string v9, "drawable"

    const/4 v10, 0x1

    if-eqz p1, :cond_3

    .line 528
    const-string p1, "init sync will be displayed"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 530
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 531
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 532
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    add-int/2addr p2, v10

    .line 535
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    or-int/2addr p1, p2

    if-ne p1, v8, :cond_1

    .line 536
    const-string/jumbo p1, "slot1&2 sync at same time."

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string/jumbo p1, "stat_notify_ambs_sync_both_sims"

    invoke-virtual {p0, v9, p1}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 538
    iput v8, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    goto :goto_1

    .line 540
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show indicator for slot "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v10, :cond_2

    .line 543
    invoke-virtual {p0, v9, v5}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p0, v9, v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 547
    :goto_0
    iput p2, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    .line 549
    :goto_1
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {v1, v10, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_3

    :cond_3
    add-int/2addr p2, v10

    .line 552
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    and-int/2addr p1, p2

    if-nez p1, :cond_4

    .line 553
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "already cancelled indicator for slot "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 557
    :cond_4
    invoke-virtual {v1, v10}, Landroid/app/NotificationManager;->cancel(I)V

    .line 559
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    if-ne p1, v8, :cond_6

    .line 560
    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 561
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 562
    invoke-virtual {p1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 563
    invoke-virtual {p1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    if-ne p2, v10, :cond_5

    .line 565
    invoke-virtual {p0, v9, v4}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_2

    .line 567
    :cond_5
    invoke-virtual {p0, v9, v5}, Lcom/sec/internal/ims/cmstore/CloudMessageService;->getResourceIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 569
    :goto_2
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {v1, v10, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 571
    :cond_6
    iget p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    xor-int/2addr p1, p2

    iput p1, p0, Lcom/sec/internal/ims/cmstore/CloudMessageService;->mInitSyncShow:I

    :goto_3
    return-void
.end method

.method public startAutoConfig(ZLandroid/os/Message;)V
    .locals 0

    .line 0
    return-void
.end method

.method public suspendRegister(ZI)V
    .locals 0

    .line 0
    return-void
.end method

.method public triggerAutoConfigurationForApp(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public unregisterImsRegistrationListener(Lcom/sec/ims/IImsRegistrationListener;)V
    .locals 0

    .line 0
    return-void
.end method
